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
  1. read build/partI.tex to learn the chapter list + order (edit partI.tex to
     add chapters/parts);
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
MASTER  = cfg.MASTER            # the hand-maintained build wrapper in build/
BIB     = cfg.BIB               # amsrefs bibliography in SRC
AUX     = cfg.AUX               # compiled .aux in SRC (for citation labels)
PREFACE = cfg.PREFACE           # rendered to a standalone /preface page
PDF     = cfg.PDF               # whole-book PDF (copied to site/, served at /<pdf>)
PORT    = cfg.PORT

NO_SERVE      = "--no-serve" in sys.argv
KEEP_FIGURES  = "--keep-figures" in sys.argv

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

# ------------------------------------------------------------------ build -----
master_path = os.path.join(BUILD, MASTER)
includes = re.findall(r'^\s*\\include\{([^}]*)-src-gerby\}', open(master_path).read(), re.M)
if not includes:
    sys.exit("No \\include{...-src-gerby} lines found in %s" % MASTER)
print("Chapters (in order): " + ", ".join(includes))

step("1/8  preparing chapter sources")
MATH_LABEL_MAP = build_math_label_map(includes)
if MATH_LABEL_MAP:
    print("  remapping %d underscore equation labels (e.g. %s -> %s)"
          % (len(MATH_LABEL_MAP), *next(iter(MATH_LABEL_MAP.items()))))
for base in includes:
    prep_chapter(base)
    print("  prepped %s" % base)

step("2/8  extracting TikZ figures")
for base in includes:
    run([VENVTEX_PY, "extract_figs.py", base + "-src.tex"], quiet=True)
print("  %d figure snippets" % len(glob.glob(os.path.join(BUILD, "figures", "*fig*.tex"))))

if KEEP_FIGURES:
    step("3/8  compiling figures to SVG (SKIPPED --keep-figures)")
else:
    step("3/8  compiling figures to SVG  (slowest step)")
    run(["bash", "build_figs.sh"], env={"TEX_BIN": cfg.TEX_BIN})

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
outdir = os.path.splitext(MASTER)[0]                 # partI
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
for svg in glob.glob(os.path.join(BUILD, "figures", "*.svg")):
    shutil.copy(svg, figdst)
shutil.copy(os.path.join(BUILD, "tqft.bib"), os.path.join(tagdir, "tqft.bib"))
db = os.path.join(SITE, "tqft.sqlite")
if os.path.exists(db): os.remove(db)                  # comments.sqlite is kept
run([VENV_PY, os.path.join(WEB, "tools", "update.py")],
    cwd=HERE, env={"PYTHONPATH": WEBHOME}, quiet=True)

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
