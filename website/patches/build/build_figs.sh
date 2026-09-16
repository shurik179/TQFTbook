#!/bin/bash
# Compile every figures/figNN.tex to a correctly-sized SVG.
# Route: pdflatex -> PDF (standalone, tight crop) -> pdftocairo -svg (poppler).
# NOT the latex->dvi->dvisvgm route: that collapses tikz bounding boxes to ~1 line.
# pdftocairo needs no Ghostscript (dvisvgm --pdf would, and libgs is absent here).
# No `set -e`: one figure failing must not abort the whole batch.
cd "$(dirname "$0")/figures"
# TEX_BIN comes from config.ini (via build_site.py) so no machine path is
# hardcoded here; prepend it if set.
[ -n "$TEX_BIN" ] && export PATH="$TEX_BIN:$PATH"
# figpre.tex and the style files (definitions/tikz*, refreshed from the book by
# build_site.py) are in build/. TEX_SOURCE (the book's source tree, also set by
# build_site.py) finds files the book itself includes, e.g. figures/M1a.pdf.
export TEXINPUTS="..:${TEX_SOURCE:+$TEX_SOURCE:}"

# Figures compile at the book's ~10pt, but the website body/math text is larger,
# so raw figures look ~20% small. After conversion we scale each SVG's width/
# height attributes by FIGSCALE (leaving the viewBox untouched) -> vector-perfect
# uniform enlargement that works for every figure type (incl. tikzcd, which
# \scalebox breaks) and every browser. Tune FIGSCALE here.
FIGSCALE=1.25

ok=0
failed=""
for f in *fig*.tex; do
  b=${f%.tex}
  # Drop the previous run's output first: a failing pdflatex leaves the old PDF
  # in place, which would then be converted as if it were this figure.
  rm -f "$b.pdf" "$b.svg"
  if pdflatex -interaction=nonstopmode -halt-on-error "$f" >/dev/null 2>&1 \
     && [ -f "$b.pdf" ]; then
    if pdftocairo -svg "$b.pdf" "$b.svg"; then
      FIGSCALE=$FIGSCALE python3 - "$b.svg" <<'PY'
import os, re, sys
s = float(os.environ["FIGSCALE"]); f = sys.argv[1]
t = open(f).read()
# scale only the root <svg> width/height in pt; keep viewBox so content scales up
def mul(m): return '%s="%g%s"' % (m.group(1), float(m.group(2))*s, m.group(3))
t = re.sub(r'\b(width|height)="([0-9.]+)(pt)"', mul, t, count=2)
open(f, "w").write(t)
PY
      ok=$((ok+1))
    else echo "SVG FAIL $b"; failed="$failed $b"; fi
  else
    echo "PDF FAIL $b"; failed="$failed $b"
  fi
done
echo "compiled $ok SVGs (scaled x$FIGSCALE)"
if [ -n "$failed" ]; then
  echo "FAILED:$failed  (see website/build/figures/<name>.log)"
fi
exit 0
