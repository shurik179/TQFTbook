#!/usr/bin/env python3
"""Extract tikzpicture/tikzcd blocks from a chapter, emit standalone .tex per
figure, and write a rewritten chapter with \\includegraphics replacements."""
import re, sys, os

CHAPTER = sys.argv[1]          # e.g. c2-categories.tex
OUTDIR  = "figures"            # where standalone .tex / .svg go
# Namespace figures per chapter so multiple chapters can share figures/ without
# name collisions: c2-categories.tex -> "c2", c3-cobordisms.tex -> "c3", etc.
PREFIX  = os.path.basename(CHAPTER).split("-")[0]
os.makedirs(OUTDIR, exist_ok=True)

src = open(CHAPTER).read()
ENVS = ("tikzpicture", "tikzcd")

# Inline mini-diagram macros (\tinypants, \tinycup, ...) expand to a tikzpicture
# but hide it behind the macro name, so a plain tikz scan can't see them and the
# math reaches MathJax (-> "Undefined control sequence"). Pull their names from
# tikzcob.tex; any math span using one is imaged whole (the figure preamble
# defines the macro, so the extracted snippet still compiles).
def _diagram_macro_names():
    names = set()
    for fn in ("tikzcob.tex", "tikzsetup.tex", "definitions.tex"):
        try: t = open(fn).read()
        except OSError: continue
        for mm in re.finditer(r'\\newcommand\{\\(tiny[A-Za-z]+)\}', t):
            names.add(mm.group(1))
    return names
_DMACROS = _diagram_macro_names()
_HASDIAG = re.compile(
    r'\\begin\{(?:tikzpicture|tikzcd)\}'
    + ((r'|\\(?:%s)\b' % "|".join(sorted(_DMACROS))) if _DMACROS else ''))

def commented(pos):
    """True if an unescaped % precedes pos on the same line (TeX comment)."""
    nl = src.rfind("\n", 0, pos) + 1
    line = src[nl:pos]
    k = 0
    while k < len(line):
        if line[k] == "\\":
            k += 2; continue
        if line[k] == "%":
            return True
        k += 1
    return False

# tokenize into begin/end markers, matching nested-safe per env type
_pat = re.compile(r"\\(begin|end)\{(tikzpicture|tikzcd)\}")
def pattern_search(s, start):
    """Like _pat.search but skips tokens inside TeX comments."""
    p = start
    while True:
        m = _pat.search(s, p)
        if not m or not commented(m.start()):
            return m
        p = m.end()
class _P:
    search = staticmethod(pattern_search)
pattern = _P()
figs = []         # (name, body) standalone snippets

# --- Pass 1: numbered equations with diagrams INTERLEAVED with math ---
# Such a diagram can't be pulled out individually (it's positioned within the
# equation's alignment, e.g. "diagram = formula = id"). Render the WHOLE
# equation body as one image, but keep it a numbered, labeled equation so the
# number shows and \eqref still resolves. (Equations that are JUST a diagram are
# left to the sole-diagram "swallow" handling in the main loop below.)
_EQ = re.compile(r'\\begin\{(equation|align|gather)\}')
_TIKZ = re.compile(r'\\begin\{(tikzpicture|tikzcd)\}.*?\\end\{\1\}', re.S)
_LABEL = re.compile(r'\\label\{([^}]*)\}')
def _residual(body):
    b = _TIKZ.sub('', body)            # drop the diagram(s)
    b = _LABEL.sub('', b)
    b = re.sub(r'\\(begin|end)\{aligned\}|\\q?quad|&|\\\\(\[[^\]]*\])?', '', b)
    return b.strip()                   # leftover math => interleaved
_p1 = []; _i = 0; _eqn = 0
while True:
    _m = _EQ.search(src, _i)
    if not _m:
        _p1.append(src[_i:]); break
    if commented(_m.start()):
        _p1.append(src[_i:_m.end()]); _i = _m.end(); continue
    _env = _m.group(1)
    _me = re.search(r'\\end\{' + _env + r'\}', src[_m.end():])
    if not _me:
        _p1.append(src[_i:]); break
    _bs, _be, _fe = _m.end(), _m.end() + _me.start(), _m.end() + _me.end()
    _body = src[_bs:_be]
    # Render the whole (numbered) env as one image when it has a diagram AND
    # either interleaved math OR more than one diagram -- a single bare diagram
    # is left to the swallow loop below (which can lift it out / keep its label).
    if _HASDIAG.search(_body) and (_residual(_body) or len(_TIKZ.findall(_body)) > 1):
        _eqn += 1
        _name = "%s-eqfig%02d" % (PREFIX, _eqn)
        _lm = _LABEL.search(_body)
        _lbl = ("\\label{%s}" % _lm.group(1)) if _lm else ""
        # Wrap in inline $\displaystyle ...$ (NOT \[ \]/equation*): standalone's
        # preview cropping intercepts display-math environments and breaks the
        # inner aligned; inline math is left alone.
        _clean = _LABEL.sub('', _body).strip()
        # If the source env was an align/gather (multi-row, with alignment tabs
        # &  or row breaks \\), inline math can't hold those -- wrap in aligned
        # (still inline math, so preview cropping stays happy).
        if re.search(r'(?<!\\)&|\\\\', _clean):
            _clean = "\\begin{aligned}\n%s\n\\end{aligned}" % _clean
        figs.append((_name, "$\\displaystyle\n%s\n$" % _clean))
        _p1.append(src[_i:_m.start()])
        _p1.append("\\begin{%s}%s\\includegraphics{%s/%s.svg}\\end{%s}"
                   % (_env, _lbl, OUTDIR, _name, _env))
        _i = _fe
    else:
        _p1.append(src[_i:_fe]); _i = _fe
src = "".join(_p1)

# --- Pass 1.5: UNNUMBERED display wrappers that contain diagram(s) ---
# $$ .. $$, \[ .. \], and starred/displaymath envs are NOT matched by Pass 1
# (numbered envs) nor by the single-diagram swallow loop below, so a diagram in
# one of them would leave a bare \includegraphics inside math -> MathJax shows
# "Undefined control sequence \includegraphics". Render the WHOLE wrapper as one
# centered image. Pure-math displays (no diagram) are left untouched for MathJax.
_DISP = re.compile(
    r'\$\$(.*?)\$\$'                                        # $$ .. $$
    r'|\\\[(.*?)\\\]'                                       # \[ .. \]
    r'|\\begin\{(equation\*|align\*|gather\*|multline\*|flalign\*|alignat\*|displaymath)\}'
    r'(.*?)\\end\{\3\}',                                    # unnumbered envs
    re.S)
_p15 = []; _last = 0
for _m in _DISP.finditer(src):
    if commented(_m.start()):
        continue
    _body = _m.group(1)
    if _body is None: _body = _m.group(2)
    if _body is None: _body = _m.group(4)
    if not _HASDIAG.search(_body):
        continue                                           # pure math -> MathJax
    _eqn += 1
    _name = "%s-eqfig%02d" % (PREFIX, _eqn)
    _clean = _LABEL.sub('', _body).strip()
    if re.search(r'(?<!\\)&|\\\\', _clean):                # alignment -> aligned
        _clean = "\\begin{aligned}\n%s\n\\end{aligned}" % _clean
    figs.append((_name, "$\\displaystyle\n%s\n$" % _clean))
    _p15.append(src[_last:_m.start()])
    _p15.append("\\begin{center}\\includegraphics{%s/%s.svg}\\end{center}"
                % (OUTDIR, _name))
    _last = _m.end()
_p15.append(src[_last:])
src = "".join(_p15)

# --- Pass 0: inline $..$ math that embeds a diagram (literal tikz or a \tiny*
# macro, e.g. "$Z_A(\tinycopants)\colon ..$"). Inline math can't hold an <img>,
# so image the whole span and drop it inline. (Display math is already handled
# by Pass 1 / 1.5; $$ and escaped \$ are excluded by the look-behind.)
_INLINE = re.compile(r'(?<![\$\\])\$([^$]+?)\$(?!\$)', re.S)
_p0 = []; _last = 0
for _m in _INLINE.finditer(src):
    if commented(_m.start()) or not _HASDIAG.search(_m.group(1)):
        continue
    _eqn += 1
    _name = "%s-eqfig%02d" % (PREFIX, _eqn)
    figs.append((_name, "$%s$" % _m.group(1).strip()))     # keep inline size
    _p0.append(src[_last:_m.start()])
    _p0.append("\\includegraphics{%s/%s.svg}" % (OUTDIR, _name))
    _last = _m.end()
_p0.append(src[_last:])
src = "".join(_p0)

out = []          # rewritten chapter pieces
i = 0
n = 0
while True:
    m = pattern.search(src, i)
    if not m:
        out.append(src[i:])
        break
    if m.group(1) != "begin":
        out.append(src[i:m.end()]); i = m.end(); continue
    env = m.group(2)
    # find matching \end{env}, accounting for same-env nesting
    depth = 1
    j = m.end()
    while depth:
        m2 = pattern.search(src, j)
        if not m2:
            raise SystemExit("unbalanced %s" % env)
        if m2.group(2) == env:
            depth += 1 if m2.group(1) == "begin" else -1
        j = m2.end()
    block = src[m.start():j]      # full \begin..\end including options
    # If the diagram is the sole content of a display-math wrapper
    # (equation/align/...), swallow the wrapper so the image is lifted OUT of
    # math mode -- MathJax cannot render \includegraphics.
    ws, we, wrapped, wlabel = m.start(), j, False, None
    pre = src[i:m.start()]
    mpre = re.search(
        r'\\begin\{(equation\*?|align\*?|gather\*?|displaymath)\}[ \t]*'
        r'(\\label\{[^}]*\})?[ \t]*\s*$', pre)
    if mpre:
        mpost = re.match(r'\s*\\end\{' + re.escape(mpre.group(1)) + r'\}',
                         src[j:])
        if mpost:
            ws, we, wrapped = i + mpre.start(), j + mpost.end(), True
            wlabel = mpre.group(2)        # the swallowed \label, if any
    out.append(src[i:ws])         # text before this figure (and its wrapper)
    n += 1
    name = "%s-fig%02d" % (PREFIX, n)
    figs.append((name, block))
    # replacement in chapter (HTML build)
    if wrapped and wlabel:
        # the wrapper carried a \label that something \eqref's -- keep it a
        # numbered, labeled equation-image (like a Pass-1 eqfig) so the tag is
        # created and the cross-reference resolves to the equation number.
        out.append("\\begin{equation}%s\\includegraphics{%s/%s.svg}\\end{equation}"
                   % (wlabel, OUTDIR, name))
    elif wrapped:
        out.append("\\begin{center}\\includegraphics{%s/%s.svg}\\end{center}"
                   % (OUTDIR, name))
    else:
        out.append("\\includegraphics{%s/%s.svg}" % (OUTDIR, name))
    i = we

rewritten = "".join(out)
base = os.path.splitext(os.path.basename(CHAPTER))[0]
open(base + "-gerby.tex", "w").write(rewritten)

template = (
    "\\documentclass[border=3pt]{standalone}\n"
    "\\input{figpre.tex}\n"
    "\\begin{document}\n%s\n\\end{document}\n")
for name, block in figs:
    open(os.path.join(OUTDIR, name + ".tex"), "w").write(template % block)

print("chapter:", base + "-gerby.tex")
print("figures:", len(figs))
for name, _ in figs:
    print("  ", name)
