#!/usr/bin/env python3
"""
Regenerate the whole Gerby website from the LaTeX book sources.

Run this ONE script whenever the book (LaTeX) changes:

    python3 build_site.py            # rebuild everything, then (re)start the server
    python3 build_site.py --no-serve # rebuild only (don't touch the running server)
    python3 build_site.py --keep-figures   # skip recompiling figures (faster; use
                                            # only if no TikZ pictures changed)

It does NOT touch the static/branding parts (logo, About page, GitHub links,
templates, CSS) -- those are configured once in the website and left alone.

What it does, in order:
  1. take the parts and chapters (and their order) from the book's main file
     (TQFTbook.tex) and write them into build/book.tex;
  2. copy each chapter from the monograph, auto-label unlabeled sections, turn
     amsrefs \\ocite into \\cite, drop unnumbered \\chapter* headings;
  3. extract TikZ pictures and compile them to SVG;
  4. convert the amsrefs bibliography to BibTeX (with the PDF's [Author Year] labels);
  5. assign permanent tags and render with plasTeX (Gerby);
  6. post-process the output (figure paths, citation labels);
  7. rebuild the SQLite database;
  8. (re)start the Flask server.

Requires the two virtualenvs and figure tools that are already set up in this
folder (venv-tex for rendering, venv for the website). Adjust CONFIG below if you
move things.
"""
import os, re, sys, glob, shutil, subprocess, signal

# ----------------------------------------------------------------- CONFIG ----
# All locations come from config.ini via website_paths -- nothing is hardcoded
# here. (website_paths.py sits next to this script, so a plain import works.)
import website_paths as cfg

HERE   = cfg.ROOT
SRC    = cfg.SOURCE
BUILD  = cfg.BUILD
WEBHOME = cfg.WEBHOME
WEB    = cfg.WEB
STATIC = cfg.STATIC
SITE   = cfg.SITE
VENVTEX_PY = os.path.join(cfg.VENVTEX, "bin", "python")       # plasTeX venv
# Run plastex as "python <script>" (not the console script) so it doesn't depend
# on the venv's absolute shebang -- keeps the whole tree relocatable.
VENVTEX_PLASTEX = os.path.join(cfg.VENVTEX, "bin", "plastex")
VENV_PY    = os.path.join(cfg.VENV, "bin", "python")          # website venv
MASTER  = cfg.MASTER            # the render wrapper in build/ (book.tex)
MAIN    = cfg.MAIN              # the book's main file in SRC (TQFTbook.tex)
BIB     = cfg.BIB               # amsrefs bibliography in SRC
AUX     = cfg.AUX               # compiled .aux in SRC (for citation labels)
PREFACE = cfg.PREFACE           # rendered to a standalone /preface page
PDF     = cfg.PDF               # whole-book PDF (copied to site/, served at /<pdf>)
PORT    = cfg.PORT

NO_SERVE      = "--no-serve" in sys.argv
KEEP_FIGURES  = "--keep-figures" in sys.argv

# Style files that the figure preamble (build/figpre.tex) and the render wrapper
# (build/book.tex) \input from build/. They are copied from the book's source
# tree on EVERY build, so the website always uses the book's current macros and
# TikZ set-up (stale copies once broke all the figures of chapter 13).
STYLE_FILES = ("definitions.tex", "tikzsetup.tex", "tikzcob.tex")

# The part/chapter tree of the website is generated from the book's main file on
# every build: sync_parts() rewrites the block between these two lines of
# build/book.tex, so the web version always has the book's parts and chapters.
PARTS_BEGIN = "% BEGIN PARTS"
PARTS_END   = "% END PARTS"

# ------------------------------------------------------------------ helpers ---
def step(msg):
    print("\n=== %s ===" % msg, flush=True)

def run(cmd, cwd=BUILD, env=None, quiet=False):
    """Run a subprocess; abort the whole build if it fails."""
    e = dict(os.environ); e.update(env or {})
    r = subprocess.run(cmd, cwd=cwd, env=e,
                       stdout=(subprocess.DEVNULL if quiet else None))
    if r.returncode != 0:
        sys.exit("\nBUILD FAILED at: %s\n" % " ".join(cmd))

def read_braced(s, i):
    """s[i] must be '{'. Return (inner, index_after_closing_brace)."""
    depth, start = 0, i + 1
    while i < len(s):
        if s[i] == '{': depth += 1
        elif s[i] == '}':
            depth -= 1
            if depth == 0: return s[start:i], i + 1
        i += 1
    raise SystemExit("unbalanced braces")

def slug(title):
    t = re.sub(r'\$[^$]*\$', '', title)        # drop inline math
    t = re.sub(r'\\[a-zA-Z]+', '', t)          # drop control sequences
    t = re.sub(r'[^A-Za-z0-9]+', '-', t).strip('-').lower()
    return t[:40] or "section"

def prep_chapter(base):
    """Copy SRC/<base>.tex -> BUILD/<base>-src.tex with web-build transforms."""
    text = open(os.path.join(SRC, base + ".tex")).read()

    # 1) drop unnumbered \chapter* headings (part overviews / preface): they
    #    don't tag cleanly; their text becomes the parent's intro.
    text = re.sub(r'\\chapter\*\{[^}]*\}(\s*\\label\{[^}]*\})?[ \t]*\n?', '', text)

    # 2) auto-label any \section without a following \label (Gerby splits pages
    #    at *labeled* units; unlabeled sections would fold into the chapter).
    out, i = [], 0
    while True:
        m = re.search(r'\\section\{', text[i:])
        if not m:
            out.append(text[i:]); break
        s = i + m.start()
        out.append(text[i:s + len(r'\section')])      # up to "\section"
        title, j = read_braced(text, s + len(r'\section'))
        out.append('{' + title + '}')
        rest = text[j:]
        if not re.match(r'[ \t]*\n?[ \t]*\\label\{', rest):
            out.append('\\label{auto:%s-%s}' % (base, slug(title)))
        i = j
    text = "".join(out)

    # 3) amsrefs citations -> plasTeX \cite (locator -> optional postnote)
    text = re.sub(r'\\ocite\{([^}]*)\}\*\{([^}]*)\}', r'\\cite[\2]{\1}', text)
    text = re.sub(r'\\ocite\{([^}]*)\}', r'\\cite{\1}', text)

    # 4) equation labels containing '_' get mangled by plasTeX's math-mode
    #    serialization (the '_' becomes a subscript, so \label{e:a_b} registers
    #    as "e:a b" and no longer matches the tags file or any \eqref to it ->
    #    the reference renders as "None"). Rewrite '_'->'-' in those label names
    #    AND every {..} reference to them. Text-mode labels (sections, theorems,
    #    definitions) are left alone. MATH_LABEL_MAP is built globally up front so
    #    cross-chapter \eqref targets stay consistent.
    for old, new in MATH_LABEL_MAP.items():
        text = re.sub(r'(?<=[{,])' + re.escape(old) + r'(?=[},])', new, text)

    open(os.path.join(BUILD, base + "-src.tex"), "w").write(text)

# Labels declared INSIDE a math environment that contain '_' (see prep_chapter
# step 4). Collected from ALL chapters before prepping any, so a \eqref in one
# chapter to an equation in another is remapped the same way.
_MATH_ENV = re.compile(
    r'\\begin\{(equation|align|gather|multline|eqnarray|flalign|alignat)\*?\}'
    r'(.*?)\\end\{\1\*?\}', re.S)
def build_math_label_map(bases):
    m = {}
    for base in bases:
        txt = open(os.path.join(SRC, base + ".tex")).read()
        for env in _MATH_ENV.finditer(txt):
            for lbl in re.findall(r'\\label\{([^}]*)\}', env.group(2)):
                if '_' in lbl:
                    m[lbl] = lbl.replace('_', '-')
    return m

def sync_parts():
    """Rewrite the part/chapter block of build/book.tex from the book's main
    file: its \\part and \\include commands, in order (the preface is served
    separately, so it is left out). A part's tag comes from its label, so the
    n-th part keeps the label it had in the block before (unless the book gives
    that \\part a \\label); a part the book adds gets p:part<n>."""
    main = re.sub(r'(?<!\\)%.*', '', open(os.path.join(SRC, MAIN)).read())
    body = main.split("\\begin{document}", 1)[-1].split("\\end{document}", 1)[0]
    master = open(master_path).read()
    try:
        head, rest = master.split(PARTS_BEGIN + "\n", 1)
        old, tail = rest.split(PARTS_END + "\n", 1)
    except ValueError:
        sys.exit("\nBUILD FAILED: %s needs the lines '%s' and '%s'\n"
                 % (MASTER, PARTS_BEGIN, PARTS_END))
    old_labels = re.findall(r'\\part\b[^\n]*?\\label\{([^}]*)\}', old)
    skip = os.path.splitext(PREFACE)[0]
    lines, nparts, nfiles = [], 0, 0
    for m in re.finditer(r'\\(part|include|appendix|backmatter)\b', body):
        cmd, j = m.group(1), m.end()
        if cmd == "backmatter":
            break
        if cmd == "appendix":
            lines.append("\n\\appendix")
            continue
        j += len(body[j:]) - len(body[j:].lstrip())
        if cmd == "include":
            name = read_braced(body, j)[0].strip()
            name = name[:-4] if name.endswith(".tex") else name
            if name == skip:
                continue
            if not os.path.exists(os.path.join(SRC, name + ".tex")):
                sys.exit("\nBUILD FAILED: %s includes %s, which is not in %s\n"
                         % (MAIN, name, SRC))
            lines.append("\\include{%s-src-gerby}" % name)
            nfiles += 1
            continue
        short = ""                                     # \part[short]{title}
        if body.startswith("[", j):
            k = body.index("]", j)
            short = body[j:k + 1]
            j = k + 1
            j += len(body[j:]) - len(body[j:].lstrip())
        title, j = read_braced(body, j)
        nparts += 1
        lm = re.match(r'\s*\\label\{([^}]*)\}', body[j:])
        label = (lm.group(1) if lm else
                 old_labels[nparts - 1] if nparts <= len(old_labels) else
                 "p:part%d" % nparts)
        lines.append("\n\\part%s{%s}\\label{%s}" % (short, " ".join(title.split()), label))
    block = "\n".join(lines).lstrip("\n") + "\n"
    new = head + PARTS_BEGIN + "\n" + block + PARTS_END + "\n" + tail
    if new != master:
        open(master_path, "w").write(new)
    print("Parts and chapters from %s: %d parts, %d files%s"
          % (MAIN, nparts, nfiles, "" if new == master else " (book.tex updated)"))

# ------------------------------------------------------------------ build -----
master_path = os.path.join(BUILD, MASTER)
sync_parts()
includes = re.findall(r'^\s*\\include\{([^}]*)-src-gerby\}', open(master_path).read(), re.M)
if not includes:
    sys.exit("No \\include{...-src-gerby} lines found in %s" % MASTER)
print("Chapters (in order): " + ", ".join(includes))

step("1/8  preparing chapter sources")
for fn in STYLE_FILES:
    if not os.path.exists(os.path.join(SRC, fn)):
        sys.exit("\nBUILD FAILED: %s not found in %s\n" % (fn, SRC))
    shutil.copyfile(os.path.join(SRC, fn), os.path.join(BUILD, fn))
print("  copied %s from the source tree" % ", ".join(STYLE_FILES))
MATH_LABEL_MAP = build_math_label_map(includes)
if MATH_LABEL_MAP:
    print("  remapping %d underscore equation labels (e.g. %s -> %s)"
          % (len(MATH_LABEL_MAP), *next(iter(MATH_LABEL_MAP.items()))))
for base in includes:
    prep_chapter(base)
    print("  prepped %s" % base)

step("2/8  extracting TikZ figures")
FIGDIR = os.path.join(BUILD, "figures")
FIG_EXTS = (".tex", ".pdf", ".svg", ".log", ".aux")
# Extract into a clean slate, so figures/ holds exactly the book's current
# figures (numbers shift when a chapter gains or loses one) ...
for p in glob.glob(os.path.join(FIGDIR, "*fig*.tex")):
    os.remove(p)
for base in includes:
    run([VENVTEX_PY, "extract_figs.py", base + "-src.tex"], quiet=True)
FIGS = sorted(os.path.basename(p)[:-4]
              for p in glob.glob(os.path.join(FIGDIR, "*fig*.tex")))
# ... and drop the output of figures the book no longer has.
for p in glob.glob(os.path.join(FIGDIR, "*fig*.*")):
    name, ext = os.path.splitext(os.path.basename(p))
    if ext in FIG_EXTS and name not in FIGS:
        os.remove(p)
print("  %d figure snippets" % len(FIGS))

if KEEP_FIGURES:
    step("3/8  compiling figures to SVG (SKIPPED --keep-figures)")
else:
    step("3/8  compiling figures to SVG  (slowest step)")
    run(["bash", "build_figs.sh"], env={"TEX_BIN": cfg.TEX_BIN, "TEX_SOURCE": SRC})
# build_figs.sh deletes a figure's old SVG before compiling it, so a missing SVG
# means that figure failed (or, with --keep-figures, was never compiled).
FIG_FAILS = [f for f in FIGS if not os.path.exists(os.path.join(FIGDIR, f + ".svg"))]
if FIG_FAILS:
    print("  WARNING: %d of %d figures have no SVG: %s"
          % (len(FIG_FAILS), len(FIGS), " ".join(FIG_FAILS)))
    if not KEEP_FIGURES and len(FIG_FAILS) > len(FIGS) // 2:
        sys.exit("\nBUILD FAILED: most figures did not compile -- is the TeX "
                 "installation OK? (logs in website/build/figures/)\n")

step("4/8  bibliography  amsrefs -> BibTeX")
with open(os.path.join(BUILD, "tqft.bib"), "w") as f:
    subprocess.run([VENVTEX_PY, "amsrefs2bib.py",
                    os.path.join(SRC, BIB), os.path.join(SRC, AUX)],
                   cwd=BUILD, stdout=f, check=True)

step("5/8  assigning tags + rendering (plasTeX/Gerby)")
gerby_chapters = [b + "-src-gerby.tex" for b in includes]
# APPEND only: tagger.py keeps every existing key->tag and assigns ids only to
# NEW labels, so published tag URLs stay permanent across rebuilds. (Delete
# build/tags only if you deliberately want to renumber from scratch.)
with open(os.path.join(BUILD, "tags"), "a") as f:
    subprocess.run([VENVTEX_PY, "tagger.py", MASTER] + gerby_chapters,
                   cwd=BUILD, stdout=f, check=True)
outdir = os.path.splitext(MASTER)[0]                 # book
shutil.rmtree(os.path.join(BUILD, outdir), ignore_errors=True)
for p in glob.glob(os.path.join(BUILD, outdir + ".paux")):
    os.remove(p)
run([VENVTEX_PY, VENVTEX_PLASTEX, "--renderer=Gerby", "--config=gerby.cfg", MASTER])

step("6/8  post-processing rendered tags")
tagdir = os.path.join(BUILD, outdir)

# The book uses bare < and > as math relations (e.g. $a_0<c_1$). In HTML those
# are read by the browser's parser BEFORE MathJax runs, so "<c_1$, $f...>" looks
# like a stray tag and the formula gets eaten. Escape < and > to &lt;/&gt; but
# ONLY inside math (MathJax decodes the entities, so the TeX is unchanged). Real
# HTML tags and <img> figures live outside math and are left alone.
_MATH = re.compile(
    r'\$\$.*?\$\$'                                          # $$ ... $$
    r'|\\\[.*?\\\]'                                         # \[ ... \]
    r'|\\begin\{(equation|align|gather|multline|eqnarray|flalign|alignat|displaymath)\*?\}'
    r'.*?\\end\{\1\*?\}'                                    # display-math environments
    r'|\$[^$]*?\$',                                         # $ ... $
    re.S)
def _esc_math(html):
    return _MATH.sub(lambda m: m.group(0).replace('<', '&lt;').replace('>', '&gt;'),
                     html)

for tag in glob.glob(os.path.join(tagdir, "*.tag")):
    s = open(tag).read()
    s2 = _esc_math(s.replace('src="figures/', 'src="/static/figures/'))
    if s2 != s: open(tag, "w").write(s2)
run([VENVTEX_PY, "apply_cite_labels.py", os.path.join(SRC, AUX), outdir])  # [Author Year] labels

# Preface: it's unnumbered front matter that doesn't fit Gerby's tag tree, so we
# render c0-preface.tex to a standalone HTML body and serve it at /preface.
print("  generating /preface page from c0-preface.tex")
pref = open(os.path.join(SRC, PREFACE)).read()
pref = re.sub(r'\\chapter\*\{[^}]*\}(%[^\n]*)?\n?', '', pref)   # drop the heading
pref = pref.replace('\\clearpage', '')
open(os.path.join(BUILD, "c0-preface-body.tex"), "w").write(pref)
shutil.rmtree(os.path.join(BUILD, "preface"), ignore_errors=True)
for p in glob.glob(os.path.join(BUILD, "preface.paux")):
    os.remove(p)
run([VENVTEX_PY, VENVTEX_PLASTEX, "--renderer=Gerby", "--config=gerby.cfg", "preface.tex"])
shutil.copy(os.path.join(BUILD, "preface", "index"),
            os.path.join(SITE, "preface.html"))

# Whole-book PDF: copy it next to the database so it's served at /<PDF>
# (the front-page "Get book as PDF" tile links there).
pdf_src = os.path.join(SRC, PDF)
if os.path.exists(pdf_src):
    print("  copying %s to site/" % PDF)
    shutil.copy(pdf_src, os.path.join(SITE, PDF))
else:
    print("  WARNING: %s not found; skipping PDF copy" % pdf_src)

step("7/8  deploying figures + bib, rebuilding database")
figdst = os.path.join(STATIC, "figures"); os.makedirs(figdst, exist_ok=True)
served = set()
for f in FIGS:
    svg = os.path.join(FIGDIR, f + ".svg")
    if os.path.exists(svg):
        shutil.copy(svg, figdst)
        served.add(f + ".svg")
# Remove served figures that the book no longer has or that failed this time,
# so a reused figure number never shows an outdated picture.
for p in glob.glob(os.path.join(figdst, "c*-*fig*.svg")):
    if os.path.basename(p) not in served:
        os.remove(p)
shutil.copy(os.path.join(BUILD, "tqft.bib"), os.path.join(tagdir, "tqft.bib"))
db = os.path.join(SITE, "tqft.sqlite")
if os.path.exists(db): os.remove(db)                  # comments.sqlite is kept
run([VENV_PY, os.path.join(WEB, "tools", "update.py")],
    cwd=HERE, env={"PYTHONPATH": WEBHOME}, quiet=True)

# Record the build date next to the database; the front page shows it as
# "Last updated on ..." (read by the index view).
import datetime
open(os.path.join(SITE, "build_date.txt"), "w").write(
    datetime.date.today().isoformat() + "\n")

if FIG_FAILS:
    print("\nWARNING: %d figure(s) will be missing on the site: %s\n  %s"
          % (len(FIG_FAILS), " ".join(FIG_FAILS),
             "(--keep-figures: run without it to compile them)" if KEEP_FIGURES
             else "(they did not compile; see website/build/figures/<name>.log)"))

# ------------------------------------------------------------------ serve -----
if NO_SERVE:
    step("8/8  done (server not touched)")
    print("Rebuild complete. Restart your server to see changes.")
else:
    step("8/8  (re)starting the web server")
    subprocess.run(["pkill", "-f", "flask run --port " + PORT])
    env = dict(os.environ, FLASK_APP="gerby", PYTHONPATH=WEBHOME)
    log = open(os.path.join(SITE, "flask.log"), "w")
    subprocess.Popen([VENV_PY, "-m", "flask", "run", "--port", PORT],
                     cwd=HERE, env=env, stdout=log, stderr=log,
                     start_new_session=True)
    print("Site rebuilt and served at  http://127.0.0.1:%s" % PORT)
