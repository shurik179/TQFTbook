# Gerby conversion — continue here

Single entry point for resuming the project. Detailed log is in `FINDINGS.md`.
Online hosting research (for later) is in `DEPLOYMENT.md`.
Everything lives under `website/`. **No files in `source/` were
ever modified** — all work is on copies in `website/build/`.

**All locations are configured in one place: `website/config.ini`** (TeX source
dir, source filenames, the `partI.tex` wrapper, server port, and the machine TeX
toolchain PATH). `website_paths.py` reads it and every script imports from there,
so there are NO hardcoded absolute paths — the whole `website/` tree is
relocatable: move it and `python3 build_site.py` / `./serve.sh` still work (the
venvs run via `bin/python`, not console-script shebangs). If `source/` moves,
edit the one `source = ...` line in config.ini.

## Status (as of last session)

**Part I (chapters 1-3) is fully converted** and live: `c1-motivation`,
`c2-categories`, `c3-cobordisms`, under "Part 1: Basic definitions". Renders
end-to-end with MathJax, all TikZ figures as SVG (including diagrams inside
`equation`s), numbered figure captions, working cross-references, a sections-only
chapter TOC, and the correct part/chapter/section tree. The website chrome is
rebranded "Lectures on TQFT" (front page, About, statistics, sidebar all
de-Stacks'd). The **preface** is served as a standalone `/preface` page
(generated from `c0-preface.tex` by build_site.py; not in the numbered tag tree),
linked from the front page.

Remaining work is mostly **adding more parts/chapters** (same recipe). Not new
research.

## Rebuild the whole site from the LaTeX sources (one command)

`website/build_site.py` automates the entire pipeline (everything in the
"Build recipe" section below). The author runs just this when the book changes —
no Claude needed:

```bash
cd website
# FIRST recompile the book PDF so TQFTbook.aux is current (citation labels +
# any new \label come from it):  cd ../source && latexmk -pdf ...
python3 build_site.py              # rebuild everything, then (re)start the server
python3 build_site.py --no-serve   # rebuild only
python3 build_site.py --keep-figures  # skip recompiling TikZ (fast; if no figures changed)
```
It reads `build/partI.tex` for the chapter list/order (edit partI.tex to add
chapters/parts), auto-labels unlabeled sections, converts `\ocite`->`\cite`,
extracts+builds figures, converts the bibliography, tags (APPEND-only so tag URLs
stay permanent), renders, post-processes, rebuilds the DB, and serves. It does
**not** touch branding/static parts (logo, About, links, templates, CSS).
Caveat: it reads `TQFTbook.aux`, so recompile the PDF first if the bibliography
or labels changed.

## Quickstart: run the website

```bash
cd website
./serve.sh                       # -> http://127.0.0.1:5005
```
Good pages: `/` (TOC) · `/tag/0000` (chapter 1) · `/tag/0006` (§1.3, has the
diagrams + captioned figure).

If `serve.sh` is missing the env, the manual form is:
```bash
source venv/bin/activate
FLASK_APP=gerby PYTHONPATH=repos/gerby-website python -m flask run --port 5005
```

## Architecture — TWO virtualenvs (important)

plasTeX and the website pin **conflicting** Jinja2/MarkupSafe versions, so they
MUST stay separate:
- **`venv/`** — the website (Flask 3.x, Jinja2 3.x). Also has pinned `peewee<4`
  and `PyPDF2<3` (the defaults resolve to broken versions on Python 3.9).
- **`venv-tex/`** — plasTeX only (Gerby fork; Jinja2 2.11.2 / MarkupSafe 1.1.1).
  **Render with this one.** Rendering with the website venv silently corrupts
  output (writes only the first `.tag`, rest fail with `Errno 2`).

## Build recipe (multi-chapter — this is the current Part I flow)

The master wrapper is **`build/partI.tex`** (book class + porting stubs + the
`\part`/`\include`s). Output dir = `build/partI/`. From `website/build/`:

```bash
source ../venv-tex/bin/activate
SRC=../../source

# 1. fresh source copies + labeling fixes (every \section needs a \label;
#    Gerby splits pages at *labeled* units). e.g. add labels to unlabeled
#    sections; label the \part in partI.tex.
for f in c1-motivation c2-categories c3-cobordisms; do cp $SRC/$f.tex $f-src.tex; done
# ...add \label to any unlabeled \section in the -src.tex copies...
# convert amsrefs citations to plasTeX \cite (in each -src.tex):
#   perl -i -pe 's/\\ocite\{([^}]*)\}\*\{([^}]*)\}/\\cite[$2]{$1}/g;
#                s/\\ocite\{([^}]*)\}/\\cite{$1}/g' <chap>-src.tex
# (one-time) build the BibTeX file from the amsrefs source; pass the compiled
# .aux 2nd so each entry gets its alphabetic label (e.g. [EGNO2015]):
#   python amsrefs2bib.py $SRC/bibliography.tex $SRC/TQFTbook.aux > tqft.bib

# 2. extract TikZ from EACH chapter (figures auto-namespaced by chapter prefix:
#    c2-fig01, c3-fig01, ...). Produces <chap>-src-gerby.tex + figures/*.tex
for f in c1-motivation c2-categories c3-cobordisms; do python extract_figs.py $f-src.tex; done

# 3. compile all figures to correctly-sized SVG (pdflatex -> pdftocairo)
./build_figs.sh

# 4. assign permanent tags by scanning ALL chapter bodies + partI.tex in order
#    (tagger.py now takes filenames as args; the \part label lives in partI.tex)
rm -f tags
python tagger.py partI.tex c1-motivation-src-gerby.tex c2-categories-src-gerby.tex c3-cobordisms-src-gerby.tex >> tags

# 5. render the whole thing in ONE plasTeX run (correct cross-chapter numbering)
rm -rf partI partI.paux
plastex --renderer=Gerby --config=gerby.cfg partI.tex

# 6. point img src at served location, deploy SVGs, drop the .bib in the output
sed -i '' 's#src="figures/#src="/static/figures/#g' partI/*.tag
cp figures/*.svg ../repos/gerby-website/gerby/static/figures/
cp tqft.bib partI/          # update.py reads .bib from PATH -> /bibliography + cite links
# replace raw cite keys with the PDF's alphabetic labels (e.g. [EGNO2015]),
# read from the compiled .aux (\bibcite{key}{{LABEL}{}}):
python apply_cite_labels.py $SRC/TQFTbook.aux partI

# 7. rebuild SQLite DB (WEBSITE venv) and restart  (config PATH/PAUX -> partI)
cd .. ; source venv/bin/activate
rm -f site/tqft.sqlite
python repos/gerby-website/gerby/tools/update.py
pkill -f "flask run"; ./serve.sh
```

**partI.tex render-preamble notes (important, reusable for more parts):**
- Drops mathtools/euscript/amsrefs/imakeidx; stubs `\xRightarrow`, `\coloneqq`,
  `\mathscr`, `\ocite`, `\cite`.
- **Cross-ref fix:** `definitions.tex`'s `\chref`/`\seref`/`\thref`/... use
  `\ref*` (hyperref starred), which plasTeX renders empty. partI.tex
  `\renewcommand`s them all to plain `\ref` (Gerby turns that into a tag link).
  Also `\eqref` -> `(\ref{#1})` (plasTeX's `\eqref` renders the raw label).
- **Numbering:** `\numberwithin{equation|table|figure}{section}` matches the
  book AND stops tables/figures/equations from sharing a section's ref (a
  ref collision otherwise lets a float label hijack the section's tag).

**Front matter:** the `\part{...}` gets a `\label` (so it's a proper tagged
page); the part-overview (`p1-overview`, a `\chapter*`) had its `\chapter*`
heading stripped so its text becomes the part's intro. Unnumbered `\chapter*`
does NOT tag cleanly — don't rely on labels after a starred chapter.

## Custom patches applied (backed up in `patches/`)

These edits live inside the installed packages (venv / repos), so they would be
lost on a reinstall. Copies are in `website/patches/` — re-apply if rebuilt.

**plasTeX Gerby renderer** (`venv-tex/.../plasTeX/Renderers/Gerby/`):
- `Misc.jinja2s` — appended an `includegraphics` template (renderer had none →
  images were silently dropped). Emits `<img class="includegraphics" src=...>`.
- `Floats.jinja2s` (NEW) — `figure` block wrapper + `caption`/`nestedfigurecaption`
  template emitting `Figure N. <text>` as a block `<figcaption>` (uses
  `obj.counter|capitalize`, because `obj.title`/`\figurename` is empty here).
- `__init__.py` — `partsList()` guarded with `if node.ref is not None` so an
  unnumbered `\chapter*` inside a `\part` (e.g. a part overview) doesn't crash
  the renderer (`'NoneType' has no attribute 'source'`).
- `Arrays.jinja2s` (NEW) — text-mode `tabular`/`array` -> `<table class="tabular">`
  (the renderer had none, so tables rendered as a stack of `<p>`s).
- `Math.jinja2s` — equation template renders `<img>` when its body source holds
  `\includegraphics` (for numbered equations whose body is a whole-equation
  figure; the number span stays so `\eqref` keeps working).

**gerby-website** (`repos/gerby-website/gerby/`):
- `configuration.py` — absolute paths to this sandbox's build output / site DB.
- `templates/tag.show.html` + `templates/toc.parts.html` — `jquery-bonsai` now
  loads from local `static/vendor/` with the stale SRI `integrity` attrs removed
  (the CDN hash drifted → browser blocked it → nav tree rendered as a flat list).
- `templates/tag.show.html` — chapter TOC: whole section title is the link (not
  just the number); "Expand all/Collapse all" removed (`addExpandAll: false`).
- `templates/macros.html` — `breadcrumb` macro: whole `Type Ref: Name` is the
  link (not just the number).
- `views/methods.py` — `getBreadcrumb()` filtered to heading ancestors + the
  current tag, so figure captions that share a ref string (e.g. "Caption 1.1"
  vs "Section 1.1") no longer leak into the breadcrumb.
- `views/tag.py` — also: per-tag PDF-filename computation (`tag.label.split(...)`)
  wrapped in try/except so non-Stacks label names (e.g. `p:basic-definitions`)
  don't 500 the part page.
- `application.py` — `/statistics` view simplified to the front-page summary
  (the original crashed on sparse imports).
- `views/tag.py` line ~206 — chapter-tree query filtered with
  `Tag.type << headings` so the chapter TOC lists **only sections**, not
  equations/theorems/captions.
- `static/vendor/jquery.bonsai.{css,min.js}` — self-hosted assets.
- `static/figures/*.svg` — figure images served to the site.
- `static/css/style.css` — added `table.tabular` cell padding (backup in
  `patches/gerby-website-static/style.css`).

## Open TODOs (for the full book)

1. **Add the remaining parts/chapters** using the same `partI.tex` recipe
   (add `\include`s + `\part{..}\label{..}`, re-run extract/build/tag/render).
   Remember: label every section (Gerby splits pages at labeled units).
2. **Bibliography for later chapters**: re-run `amsrefs2bib.py` (it converts the
   whole `bibliography.tex`, so it already covers everything); convert `\ocite`
   in new chapters; keep copying `tqft.bib` into the output dir.
3. **Finish de-Stacks'ing** what's left: only the /tags "tags explained" page
   text remains. (Logo, favicon, GitHub tile, and "Recent commits" feed are all
   repointed/replaced.)
4. Minor/known-harmless: captionless tables with `\label` can hijack a section's
   tag id (only matters if such labels are `\ref`'d — none are in Part I);
   plasTeX `<p><ol>`/`<p><div>` invalid nesting (browsers tolerate it).
5. **TODO (\tiny font command in math)**: section 8.1 (tag `s:adjunction`) uses
   the LaTeX `\tiny` FONT-SIZE command inside math, `\text{\tiny $\circ$}` (a
   small ∘), 2 spots. Not a diagram, so the figure passes leave it; MathJax v2
   may render it slightly off. Deal with later — e.g. strip the `\tiny` (and any
   other bare font-size commands) from inside math during prep, or stub it.

Branding/UX + content already DONE: title/subtitle, About, statistics page +
blurb, single-page sidebar, top nav, removed blog (feed + nav + tile), removed
all PDF links, figure scaling, table rendering + padding, TOC/breadcrumb link
tweaks, Kerodon restyle, **bibliography (amsrefs->BibTeX) + working citations**.

## Key file inventory
- `build_site.py` — **one-command full rebuild** of the site from LaTeX (orchestrates
  all of the below). Run `python3 build_site.py`.
- `build/amsrefs2bib.py` — converts amsrefs `bibliography.tex` -> `tqft.bib` (BibTeX).
- `build/apply_cite_labels.py` — rewrites cite display text from raw keys to the
  PDF's alphabetic labels (from `TQFTbook.aux`); run on `partI/*.tag` post-render.
- `build/extract_figs.py` — TikZ extractor (comment-aware; swallows equation wrappers).
- `build/build_figs.sh` — figure → SVG (pdflatex + pdftocairo), then scales each
  SVG's width/height by `FIGSCALE` (=1.25) to match the website text size. Tune
  FIGSCALE there if figures should be bigger/smaller.
- `build/figpre.tex` — REAL preamble used only to compile figures (full fidelity).
- `build/c2render.tex` — plasTeX render wrapper with the porting stubs.
- `build/gerby.cfg` — renderer config (tags file location).
- `build/tagger.py` — assigns base-34 permanent tags from `\label{}`.
- `serve.sh` — start the website.
- `moderate.py` — comment moderation (no web admin in Gerby): `python3 moderate.py`
  to list, `hide`/`show`/`delete <id>` for spam. Live, no restart.
- `patches/` — backups of all toolchain edits.
- `FINDINGS.md` — detailed chronological findings.
