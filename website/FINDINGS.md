# Gerby proof-of-concept — findings

> **See `CONTINUE-HERE.md` first** — it has the current status, quickstart, build
> recipe, and the list of toolchain patches (backed up in `patches/`). This file
> is the detailed chronological log; a few early notes were later superseded
> (flagged inline below).

Sandbox built under `website/`. **No original files were modified** (sources copied into `build/`).

## Environment (works)
- Python 3.9.6 venv at `website/venv`
- Gerby plasTeX fork (`gerby` branch) installed from source + `unidecode`
- Pins matching Gerby CI: MarkupSafe 1.1.1, Jinja2 2.11.2
- `Gerby` renderer present and functional

## Validated end-to-end
- Gerby's official `hello-world` renders cleanly to `.tag` fragments (`build/hw/`).
- `tagger.py` assigns base-34 tags from `\label{}` (generated 24 tags for c2).
- The Gerby renderer **requires a `tags` file to exist before running**.

## What works from THIS book
- `definitions.tex` — all 176 lines of custom macros parse fine, given a stub
  `\providecommand{\xRightarrow}` (mathtools macro it relies on).
- Theorem environments work; just ensure `\theoremstyle{plain}` precedes the
  first `\newtheorem` (LaTeX defaults it; plasTeX needs it explicit).

## Blockers (must be ported for a plasTeX preamble)
1. **`mathtools` / `mhsetup`** — hard crash (`ord()` TypeError). Drop it; stub the
   few macros used (`\xRightarrow`, `\coloneqq`, ...).
2. **`euscript`** — no plasTeX implementation; `\usepackage[mathscr]{euscript}`
   warns/fails. Replace `\mathscr` with a MathJax-friendly stub.
3. **`amsrefs`** — `\bibdiv/\biblist/\bib{}` and `\ocite` not supported. Bibliography
   needs conversion (BibTeX) or custom handling; stub `\ocite`→`\cite` for body.
4. **`imakeidx`** — bypassed; Gerby has its own indexing.
5. **TikZ — the main blocker.** `tikzsetup.tex` (pgfplots, tikz-3dplot, spath3,
   tikz-cd, custom `\pic`/`\tikzset`) crashes plasTeX outright. ~138 `tikzpicture`
   environments across the book. Each must be pre-rendered to an image (PNG/SVG)
   and `\includegraphics`'d, OR rendered via plasTeX's imager with a drastically
   simplified, compatible tikz preamble.

## Figure pipeline prototype (path A) — VALIDATED on c2
Scripts in `build/`: `extract_figs.py`, `figpre.tex`.
1. `extract_figs.py` pulls every `tikzpicture`/`tikzcd` block (comment-aware —
   it correctly skips commented-out diagrams) into `figures/figNN.tex` and
   writes `c2-categories-gerby.tex` with `\includegraphics{figures/figNN.svg}`.
2. Each figure compiles with the REAL preamble (`figpre.tex`: mathtools, euscript,
   full tikzsetup/tikzcob) = full-fidelity SVG. 7/7 real figures rendered.
   - **SUPERSEDED:** this section originally used `latex -> dvi -> dvisvgm`, but
     that collapses tikz bounding boxes (clipped images). The working route is
     `pdflatex -> PDF -> pdftocairo -svg` — see `build/build_figs.sh` and the
     "Diagrams inside equations (FIXED)" section below.
3. `plastex --renderer=Gerby` on the rewritten chapter => 24 correctly tagged
   `.tag` fragments (theorems/defs/equations, stable IDs 0000..000P), no crash.

### Two gaps found & fixed/flagged
- **Gerby renderer had NO `\includegraphics` template** — it silently dropped
  images. Fixed by appending one template to the renderer's `Misc.jinja2s`
  (emits `<img>`). This is a one-line patch to carry in the build.
- **Diagrams inside `\begin{equation}...\end{equation}`** (pentagon/hexagon/
  triangle axioms) are passed to MathJax verbatim, so `\includegraphics` is lost
  there. **NOW FIXED** — see "Diagrams inside equations (FIXED)" below; the
  extractor swallows the wrapper and emits a centered image.
- Gerby natively emits `<tikzpicture>`/`<tikzcd>` wrapper tags (Kerodon renders
  these client-side). The heavy spath3/pgfplots pictures here won't survive a
  browser TikZ renderer, so pre-rendered SVG (path A) is the right call.

## Website bugs found & fixed (gerby-website defaults)
- **plasTeX and gerby-website MUST use separate venvs.** Installing the website
  upgraded Jinja2 to 3.x, which silently broke plasTeX's renderer (it only wrote
  the first `.tag`, the rest failed with `Errno 2`). Fixed by a dedicated
  `venv-tex` pinning Jinja2 2.11.2 / MarkupSafe 1.1.1 for rendering only.
- Website deps pulled **broken transitive versions** on py3.9: `peewee 4.0.7`
  (needs 3.x for `SqliteExtDatabase`) and `PyPDF2 3.x` (needs <3 for
  `PdfFileReader`). Pinned.
- **"Chapter page turns into a messy list of links" (user-reported):** the
  default templates load `jquery-bonsai` from a CDN with a **stale SRI integrity
  hash** (jsDelivr re-minified the file, so the hash no longer matches and the
  browser blocks the script -> `$(...).bonsai is not a function` -> the nav tree
  never collapses). Fixed by self-hosting `jquery.bonsai.{css,min.js}` under
  `static/vendor/` and removing the `integrity`/`crossorigin` attrs in
  `templates/tag.show.html` and `templates/toc.parts.html`. Confirmed the tree
  now renders as a collapsible widget.

## Diagrams inside equations (FIXED)
Problem: diagrams written as `\begin{equation}\label{..}\begin{tikzcd}..\end{tikzcd}\end{equation}`
rendered as "Undefined control sequence \includegraphics" because plasTeX passes
the whole equation body to MathJax verbatim, and `\includegraphics` is not a
MathJax command. Fixes:
1. `extract_figs.py` now detects a display-math wrapper (equation/align/gather/
   displaymath, optionally with a `\label`) around a diagram and **swallows the
   wrapper**, emitting `\begin{center}\includegraphics{..}\end{center}` so the
   image sits OUTSIDE math. (The four diagram labels e:triangle/pentagon/hexagon
   are never \ref'd in the book, so no numbering needs preserving.)
2. The `includegraphics` template must be added to the **venv-tex** Gerby renderer
   too (each venv has its own plasTeX/templates).
3. **SVG geometry:** the `latex`->DVI->dvisvgm route collapses a tikz picture's
   bounding box to ~one line (height ~10pt), so images render clipped/overlapping.
   `dvisvgm --pdf` needs a Ghostscript shared lib (not present; gs here is a
   static binary). Fix: render figures with **pdflatex -> PDF -> `pdftocairo -svg`**
   (poppler), which preserves correct dimensions and needs no Ghostscript.
   Confirmed triangle/pentagon now render full-size in the browser.

## Figure captions (FIXED)
The Gerby renderer ships no `figure`/`caption` template, so a `\caption` rendered
as bare inline text (beside the image, no "Figure N."). Added
`Renderers/Gerby/Floats.jinja2s` (in venv-tex) with:
- `figure` -> `<figure>...</figure>` block wrapper;
- `caption`/`nestedfigurecaption` -> block `<figcaption>` reading
  `{{ obj.counter|capitalize }} {{ obj.ref }}. {{ obj }}` = "Figure 1.1. <text>".
Note: `obj.title` (used by plasTeX's stock renderers for the word "Figure") is
empty because the `book` class didn't populate `\figurename`; deriving the word
from `obj.counter` avoids that.

## Page model: section labeling & sections-only TOC (FIXED/explained)
- Gerby splits the book into pages **at every tagged (labeled) unit** (like
  Kerodon). A `\section` WITHOUT a `\label` cannot become its own page, so its
  full text stays glued onto the chapter page; labeled sections become separate
  pages and appear only as TOC entries. The mixed behavior the user saw (some
  sections inline, others only as tree links) was exactly this — c2 §1.1/§1.2
  were unlabeled. Fix for the real book: **label every section**. (Demonstrated
  by adding `\label{s:cat-basics}` / `\label{s:abelian-cats}`.)
- Chapter TOC was listing every descendant (equations, theorems, captions...).
  Filtered to structural headings only: `views/tag.py` chapter-tree query now
  has `Tag.type << headings` (headings = part/chapter/section/subsection...).
  Page granularity is the `UNIT` config knob (currently "section").

## Figure size matching (FIXED)
Figures compile at the book's ~10pt but the website body/math text is larger, so
SVGs looked ~20% small. Fix lives in `build/build_figs.sh` (`FIGSCALE=1.25`):
after `pdftocairo`, each SVG's root `width`/`height` (in pt) are multiplied by
FIGSCALE while the `viewBox` is left unchanged -> vector-perfect uniform
enlargement, layout reserves the right space, works in every browser.
- Do NOT wrap the figure body in `\scalebox` in LaTeX: it breaks `tikzcd`
  ("Single ampersand used with wrong catcode") since `&` cell-separators conflict
  with scalebox's box scanning. Scaling the SVG output avoids that entirely.
- Also removed `set -e` from build_figs.sh so one bad figure can't abort the batch.

## Chapter TOC tweaks (DONE)
In `templates/tag.show.html`:
- Whole section title is now the link (was: only the number). The tree `<a>` now
  wraps `{{ item.type }} {{ item.ref }}: {{ item.name }}`.
- Removed the "Expand all / Collapse all" controls (useless now the TOC is
  sections-only / flat): bonsai init changed to `addExpandAll: false`, and the
  dead `div.expand-all` click handler deleted.

## Breadcrumb links (DONE)
In `templates/macros.html`, the `breadcrumb` macro previously linked only the
number; the `<a>` now wraps the whole `{{ type }} {{ ref }}: {{ name }}` so each
breadcrumb entry (e.g. "Chapter 1: Algebraic prerequisites...", "Section 1.3:
Monoidal categories") is fully clickable. The `(cite)` link stays separate.
Note: the active (current) breadcrumb is now a self-link too; guard on
`loop.last` if you want it unlinked. Backup: `patches/gerby-website/templates-macros.html`.

## Breadcrumb went too deep on §1.1 (FIXED)
`views/methods.py getBreadcrumb()` builds the breadcrumb by selecting every tag
whose `ref` is a prefix of the current ref. But figure captions are numbered
per-chapter (Caption 1.1), so "Caption 1.1" shares the ref string "1.1" with
"Section 1.1" and leaked into §1.1's breadcrumb. Fix: keep only heading-type
ancestors plus the current tag —
`tags = [t for t in tags if t.type in HEADINGS or t.tag == tag.tag]`.
Backup: `patches/gerby-website/views-methods.py`.
- Remaining quirk (pre-existing, NOT fixed): a figure/caption page's OWN
  breadcrumb infers its parent section from the figure number, which is
  chapter-scoped, so it can show the wrong section (e.g. Caption 1.1 -> "Section
  1.1" though the figure is in §1.3). Only affects direct navigation to a
  figure's tag URL. A real fix needs the float's actual parent from the `.paux`.

## Front-page rebrand (PARTIAL)
Title/subtitle changed from Stacks to "Lectures on TQFT" / "Lecture notes on
extended topological field theory":
- `templates/layout.html` — banner `<h1>` (line ~62), tab `<title>` (~11), meta
  description (~13).
- `templates/index.html` — front-page subtitle (`tagline` block, ~21).
Backups: `patches/gerby-website/templates-layout.html`, `...-index.html`.
More front-page changes (DONE):
- Statistics blurb: `index.html` ~46 "The Stacks project now consists of" ->
  "The TQFT lectures now consist of" (consists->consist: plural grammar fix).
- "Recent blog posts" feed REMOVED: commented out the `"blog"` entry in the
  `feeds` dict in `application.py` (~40-44). The original block (kept commented
  in place for easy restore) was:
      "blog": {
        "url": "https://www.math.columbia.edu/~dejong/wordpress/?feed=rss2",
        "title": "Recent blog posts",
        "link": "https://www.math.columbia.edu/~dejong/wordpress",
      },
  To restore: uncomment it (and restart Flask). The `updates` loop in
  `index.html` (~35) renders whatever feeds remain, so no template change needed.

/about page (DONE, PLACEHOLDER): `templates/single/about.html` body fully
rewritten from Stacks prose to a TQFT placeholder (intro from the book preface,
5 quick facts, an "Acknowledgements: To be added" stub). Editable spots flagged
with `<!-- PLACEHOLDER -->` comments. Route is `application.py` `/about` ->
`render_template("single/about.html")`. Backup: `patches/gerby-website/templates-single-about.html`.

Single-page sidebar (DONE): removed "acknowledgements", "how to contribute",
"contributors", and "API" from the `singlePageLinks` macro in
`templates/macros.html` (used by both the right sidebar and the hamburger menu).
Remaining items: about, statistics, tags explained. The underlying
/acknowledgements, /contribute, /contributors, /api routes still exist but are
no longer linked.

/statistics page (FIXED): was a 500 — the original `show_statistics` view
(`application.py`) queried "record-breaking" cross-reference data
(`Dependency`/`TagStatistic` ... `[0]`) that an empty/small import doesn't have
(IndexError). Rewrote the view to render the same simple summary as the
front-page sidebar via the existing `get_statistics()` helper, and replaced
`templates/single/statistics.html` body with that list ("The TQFT lectures now
consist of: N lines of code / tags / sections / chapters / slogans"). Backups:
`patches/gerby-website/application.py`, `...-single-statistics.html`.

Top nav (DONE): header quicklinks in `layout.html` (~67) changed from
"bibliography / blog" to "bibliography / about" (blog pointed at de Jong's
WordPress).

Front-page "blog" tile REMOVED (`index.html` `index-blog` li); GitHub tile left
in place per request.

GitHub repointed to the user's repo (`shurik179/tqft-lectures`): the front-page
GitHub tile (`index.html`) and the "Recent commits" feed (`feeds` dict `"github"`
in application.py, now `.../tqft-lectures/commits/main.atom`). Logo + favicon
replaced (cobordism image).

Still Stacks-specific (TODO): the /tags "tags explained" page text. (/bibliography
is now the user's own entries.)

## Multi-chapter conversion: preface + Part I (DONE; preface omitted)
Scaled from 1 chapter to Part I (c1/c2/c3) rendered in ONE plasTeX run via
`build/book.tex`. New machinery & fixes:
- `extract_figs.py` namespaces figures per chapter (`c2-fig01`, `c3-fig01`);
  `build_figs.sh` globs `*-fig*.tex`; `tagger.py` takes filenames as args.
- Render preamble (`book.tex`): redefine `\chref/\seref/\thref/...` to plain
  `\ref` (they used `\ref*` -> empty); add `\numberwithin{equation|table|figure}{section}`.
- `\part{...}\label{...}` -> proper tagged part page; part-overview `\chapter*`
  heading stripped so its text is the part intro.
- Renderer crash on unnumbered `\chapter*` in a part: patched `partsList` (see
  renderer patch list). Website 500 on the part page: patched `tag.py` PDF-name.
- **Preface: standalone /preface page (DONE).** Unnumbered `\chapter*` front
  matter doesn't tag cleanly in Gerby, so instead of a tag tree node it's served
  as its own page (Kerodon-style), leaving chapter numbering untouched. How:
  `build_site.py` strips the `\chapter*`/`\clearpage` from `c0-preface.tex`,
  renders the body with plasTeX/Gerby via the `build/preface.tex` wrapper, and
  copies the resulting `preface/index` HTML to `site/preface.html`. The new
  `/preface` route (application.py) reads that file and renders
  `templates/single/preface.html`; a "preface" tile links it from the front page.
  Regenerated from the TeX on every `build_site.py` run. (Math is `$...$`, which
  the site's MathJax tex2jax inlineMath handles.) Backups: application.py,
  templates-index.html, templates-single-preface.html in patches/;
  build/preface.tex + build_site.py are committed build files.

Latent issue (harmless here): a captionless `table`/float that still has a
`\label` (e.g. `tab:mechanics`, with `%\caption` commented out) — the label
binds to the enclosing section and can take over the section's tag id. In c1
neither the section labels nor the table labels are referenced anywhere, so no
visible breakage; watch for it in chapters that DO reference such labels.

## PDF download links (REMOVED per request)
The site never had PDFs: the per-tag "View as pdf" link (`macros.html`) was
hard-coded to `https://stacks.math.columbia.edu/download/...`, and the per-chapter
/ "Download the book" links (`toc.parts.html`) hit the local `/download/<f>`
route (`views/stacks.py`), which serves from a non-existent `tex/tags/tmp/` dir
(the Stacks build generates per-tag PDFs there; we don't). All 404'd. Removed all
PDF links: `macros.html` (View-as-pdf block), `toc.parts.html` (per-chapter pdf +
"Download the book"), and the prose pdf link in `single/tags.html`. The
`/download` route still exists but is no longer linked. Backups in `patches/`.
To add PDFs later: generate them and serve from the `download_pdf` dir, or wire a
whole-book PDF (e.g. the monograph's `TQFTbook.pdf`).

## Tables not rendered (FIXED)
`tabular` environments rendered as a stack of `<p>` paragraphs (cells lost their
grid) because the Gerby renderer had NO text-mode tabular template (only math
arrays in Math.jinja2s). Added `Renderers/Gerby/Arrays.jinja2s` (copied from the
stock HTML5 renderer): `tabular array tabular* tabularx` -> `<table class="tabular">`
with `<tr>/<th>/<td>`, plus `multicolumn` and the booktabs rule no-ops. Tables
now render as proper grids (col alignment + `\hline` borders, MathJax in cells).
Backup: `patches/gerby-renderer/Arrays.jinja2s`.
Also added cell padding in `static/css/style.css` (`table.tabular td/th { padding:
0.3em 0.7em }` + `border-collapse: collapse`) so content isn't flush against the
column rules. Backup: `patches/gerby-website-static/style.css`.

## Kerodon-style restyle (DONE)
Copied parts of Kerodon's CSS (https://kerodon.net/static/css/style.css) for a
cleaner look. In `static/css/style.css`:
- font: `@import` Roboto + Roboto Mono (the old "Droid Sans" body font was never
  even loaded -> fell back to Arial); `body` -> "Roboto", code -> "Roboto Mono".
- link color `#1d5cb4` -> Kerodon teal `#0089BC`.
- `div#first-bar` (title bar) `#d9d8d1` -> white; `section#meta` (right sidebar)
  given Kerodon cream `#f4f0ea`.
- `layout.html` mobile `theme-color` -> white.
Kept the 14px base (our calc(rem/14) layout is calibrated to it; Kerodon uses 15).
Backups: `patches/gerby-website-static/style.css`, `patches/.../templates-layout.html`.

## Diagrams interleaved with math in a numbered equation (FIXED)
Eq 3.2.1 (`e:1d-tqft-rigidity`) had its graphic missing: the equation is an
`aligned` with diagrams interleaved among math ("diagram = formula = id"), so the
per-diagram extraction left `\includegraphics` inside the equation -> dumped to
MathJax -> not rendered. Can't pull the diagrams out (they're positioned in the
alignment), and the equation is numbered + `\eqref`'d 3x, so the number/label
must survive. Fix (3 parts):
1. `extract_figs.py` Pass 1: for a NUMBERED equation/align/gather that contains a
   diagram AND has leftover math (interleaved), render the WHOLE body as one
   figure and rewrite the equation to `\begin{equation}\label{..}\includegraphics{..}\end{equation}`.
   (Sole-diagram equations like the pentagon are untouched -> still swallowed.)
   The figure body is wrapped in inline `$\displaystyle ...$` — NOT `\[..\]`/
   `equation*`, which standalone's `preview` cropping intercepts and breaks.
2. `build_figs.sh` glob widened to `*fig*.tex` (to catch `<chap>-eqfigNN`).
3. Gerby `Math.jinja2s` equation template: when the body source contains
   `\includegraphics`, emit `<img>` instead of feeding it to MathJax (the number
   span is rendered separately, so numbering + `\eqref` keep working).
Backup: `patches/gerby-renderer/Math.jinja2s`.

## \eqref renders raw label (FIXED)
plasTeX's `\eqref{x}` output the raw label text (e.g. "e:1d-tqft-rigidity")
instead of "(3.2.1)". Plain `\ref` works (resolves equation labels too), so
book.tex now `\renewcommand{\eqref}[1]{(\ref{#1})}`. Fixes all ~86 `\eqref`
across the book.

## Bibliography: amsrefs -> BibTeX (DONE)
Gerby ingests the bibliography with pybtex (BibTeX only); the source was amsrefs
(`\bib{key}{type}{...}`). Converted in three parts:
1. `build/amsrefs2bib.py` parses `bibliography.tex` -> `build/tqft.bib` (96 entries:
   article/book/incollection/phdthesis). Handles multiple authors (-> " and "),
   `date`->`year`, `review={\MR{N}}`->`mrnumber`, `place`->`address`,
   nested `conference={}`/`book={}` -> `@incollection` (booktitle/series/...),
   thesis -> `@phdthesis` (institution->school). pybtex parses all 96, 0 errors.
   The monograph's amsrefs `bibliography.tex` is left untouched (PDF still uses it).
2. Citations: converted `\ocite{k}*{loc}` -> `\cite[loc]{k}` and `\ocite{k}` ->
   `\cite{k}` in the chapter `-src.tex` (perl). Removed the old `[key]` `\ocite`/
   `\cite` stubs from `book.tex` so plasTeX's real `\cite` (Gerby cite template)
   is used -> renders `[<a href="/bibliography/key">key</a>]`, with `*{loc}`
   becoming the postnote.
3. `build/tqft.bib` is copied into the render output dir (`book/`) before
   `update.py`, which reads `.bib` from PATH (pybtex) to populate the
   `/bibliography` page and links the in-text citations.
Result: `/bibliography` lists all 96 (grouped by author, alpha index), entry
pages work, and in-text `\cite` links resolve.

Online-only refs (URL in note, e.g. `dijkgraaf-thesis`): the PDF linked them but
Gerby didn't (the URL sat in `note`, which the entry template didn't show, and
wasn't a link). Fixed: `amsrefs2bib.py` now pulls a URL out of `note` into a real
`url={}` field (normalizing `\textasciitilde`/`$\sim$`->`~`, stripping `\url{}`
and "available from"), and strips the `arXiv:` prefix from `eprint` so the
template's arxiv link works. Added a `note` row to `templates/bibliography.entry.html`
(the `url` row already renders as a link). 11 entries now have working url links.
Backup: `patches/gerby-website/templates-bibliography.entry.html`.

## Citation labels [EGNO2015] instead of [key] (DONE)
In-text citations showed the raw bibkey ([etingof-fusion]); the PDF shows
amsrefs alphabetic labels ([EGNO2015]). The exact labels are in the compiled
`TQFTbook.aux` (`\bibcite{key}{{LABEL}{}}`). `build/apply_cite_labels.py` reads
that map and rewrites the *display text* of cite anchors in `book/*.tag`
(`<a href="/bibliography/KEY">KEY</a>` -> `...>LABEL</a>`), leaving the href=key
intact (so `makeInternalCitations`, which keys off the href, still links). Run
post-render, pre-`update.py`. No key renaming needed. (Only the in-text display
was changed.)
Bibliography PAGE labels too: `amsrefs2bib.py` now takes the `.aux` as a 2nd
arg and embeds each entry's alphabetic label as a `label = {..}` field (brace-safe
parse of `\bibcite{key}{{LABEL}{}}` + accent cleaning, e.g. `To{\"e}2004`->`Toë2004`).
`bibliography.overview.html` prefixes each entry with `[label]`; `bibliography.entry.html`
shows "Cited as [label]". Backups: `patches/.../templates-bibliography.{overview,entry}.html`.

## Citation locator order (DONE)
Citations with a locator rendered as `[Section 1.2, Lei2004]` (postnote first);
swapped to the conventional `[Lei2004, Section 1.2]` (key first), matching the PDF.
Two coordinated edits: (1) Gerby `Bibliography.jinja2s` cite template now emits the
keys then the postnote; (2) `update.py` `makeInternalCitations` regex made
order-independent (`<span class="cite">\[(.+?)\]</span>` instead of `...</a>\]...`)
so postnote citations are still tracked. Backups:
`patches/gerby-renderer/Bibliography.jinja2s`, `patches/gerby-website/tools-update.py`.

## Posting comments crashed with 500 (FIXED — two bugs)
1. **`post_comment` (views/comments.py)** read the tag from `request.headers["Referer"]`
   -> `KeyError` (500) when the browser omits the Referer header (privacy
   settings/policies). The tag is already in a hidden form field, so switched to
   `tag = request.form["tag"]` (captcha still `check == tag`); dropped the Referer.
2. **Rendering a page that HAS a comment** also 500'd: `sfm()` (views/methods.py)
   built `markdown.Markdown(extensions=[math, BleachExtension(...)])`, but
   `mdx_bleach` 0.1.4 uses the pre-3.0 Markdown extension API and crashes on the
   installed Markdown 3.9 (`extendMarkdown() missing 'md_globals'`). Fix: convert
   with the math extension only, then sanitize the HTML with the `bleach` library
   directly (`bleach.clean`). Also fixed a variable-name collision — the allowed
   `tags` list was overwritten by the `\ref` lookup (`tags = Tag.select(...)`)
   before the bleach call, which stripped math `<script>` and `\ref` links;
   renamed to `allowed_tags`/`allowed_attributes`.
Comments now post (no Referer needed), display, render math (MathJax), and keep
`\ref{tag}` links. Backups: `patches/gerby-website/views-comments.py`, `views-methods.py`.

## Comment moderation / spam (no web admin)
Gerby has NO admin login / web moderation UI. Comments are soft-moderated via the
`active` flag (display queries filter `where(Comment.active)`). Built-in tool:
`gerby/delete-comment.py <id>` toggles active (needs venv + PYTHONPATH). Added a
simpler standalone helper `website/moderate.py` (stdlib sqlite3, no venv, no
restart — site reads comments.sqlite live):
`python3 moderate.py` (list), `hide <id>...`, `show <id>...`, `delete <id>...`.
Note: comments are open to anyone (only a retype-the-tag captcha), so for the
public site, plan for spam (moderate with this tool, or add stronger anti-spam,
or disable comments).

## "About" page removed (DONE)
The About page duplicated the preface, so removed it: front-page tile
(index.html), top-nav link (layout.html), sidebar link (`singlePageLinks` in
macros.html), and the `/about` route commented out in application.py (the
`templates/single/about.html` file is left in place but unused; uncomment the
route + re-add the three links to restore). Backups in patches/.

## Collapsible Comments section (DONE)
The "Post a comment" section was collapsible (clickable `<h2>` with a +/- icon,
toggles `h2 ~ *`, state in localStorage — see `static/js/comments.js` +
`static/css/comments.css`); the "Comments" list was not. Added the same widget to
`section#comments`: CSS gives its `<h2>` the minus/plus icon (`comments.css`); JS
makes the heading clickable to fold/unfold and persists `comments-visible`
(`comments.js`). Defaults **collapsed** (mirrors "Post a comment"); click the
heading to expand. Backups in patches/gerby-website-static/.

## Whole-book build: all 5 parts / 20 chapters (DONE)
Extended the conversion from Part I to the entire book by rewriting the build
wrapper `build/book.tex` to `\part`+`\include` all 5 parts and chapters c1-c20
(part overviews p1/p2/p3 exist; there is NO p4-overview.tex). `build_site.py`
drives the rest unchanged. Result: 5 parts, 20 chapters, 479 tags, 122/122
figures. Part labels: p:basic-definitions, p:2d, p:cobordism-hypothesis,
p:tensor-categories, p:chern-simons.

Two figure failures surfaced in ch4-20 and were fixed in the pipeline:
- **c7-fig07** used a chapter-local TikZ style `l` (`\tikzset{l/.style=...}` at
  c7-2categories.tex:556) defined in the body OUTSIDE the tikzpicture, so figure
  extraction dropped it. Fix: hoisted `\tikzset{l/.style={font=\fontsize{8}{8}
  \selectfont}}` into `build/figpre.tex` (the figure-compile preamble).
  (c13's layer/style defs are INSIDE its tikzpicture, so they survive extraction
  -- no hoist needed.)
- **c18-eqfig04** is an equation-with-diagram from an `align` env, so its body
  has alignment tabs `&` / row breaks `\\`. The Pass-1 wrapper `$\displaystyle
  ...$` (inline math) can't hold those. Fix in `extract_figs.py`: when the body
  has `&`/`\\`, wrap it in `\begin{aligned}...\end{aligned}` (still inline math,
  so standalone preview cropping stays happy).

Benign warnings during build: "document does not contain tag XXXX" -- (a) the
preface mini-render doesn't contain the book's tags; (b) equation `\label`s get a
permanent tag id from the tagger but Gerby doesn't emit a per-equation permalink
page (the equation still renders + `\eqref` resolves via its number). Both
pre-existing, not breakage.

## Diagrams in display/inline math reaching MathJax (DONE)
Symptom: "Undefined control sequence \includegraphics" (and \tinycopants) on
section 4.3 etc. Diagrams sitting inside math wrappers left a bare
\includegraphics (or a hidden-tikz macro) for MathJax to choke on. Fixed in
`build/extract_figs.py` by widening figure extraction so EVERY math wrapper that
contains a diagram is imaged whole:
- Pass 1 (numbered envs equation/align/gather): now fires on a diagram + EITHER
  residual math OR >1 diagram (was: residual only) -> handles multi-diagram
  numbered displays.
- Pass 1.5 (NEW): unnumbered display wrappers `$$..$$`, `\[..\]`, and starred
  envs (align*, equation*, gather*, ...) + displaymath -> whole wrapper becomes
  one `\begin{center}\includegraphics\end{center}` image. (Pure-math displays,
  no diagram, are left for MathJax.)
- Pass 0 (NEW): inline `$..$` containing a diagram -> imaged inline.
- Diagram detection (`_HASDIAG`) covers literal tikzpicture/tikzcd AND the
  `\tiny*` mini-diagram macros (`\tinypants`, `\tinycup`, ... pulled from
  tikzcob.tex), which expand to a tikzpicture hidden behind the macro name. The
  extracted snippet keeps the macro; figpre.tex defines it, so it compiles.
Result: 150/150 figures, 0 `\includegraphics` and 0 tiny-diagram macros leaking
into rendered math. (Remaining: the LaTeX `\tiny` FONT command in `\text{\tiny
$\circ$}` in section 8.1 -- cosmetic, not a diagram; left as-is.)

## Bare < > inside math break rendering (DONE)
The author writes math relations as bare `<`/`>` (e.g. `$a_0<c_1$`). In HTML the
browser parses `<c_1$, $f...>` as a stray tag BEFORE MathJax runs, eating the
formula (symptom: "math after Definition 4.1.4 not rendered"). Fix in
`build_site.py` step 6: `_esc_math()` escapes `<`->`&lt;` and `>`->`&gt;` ONLY
inside math regions ($...$, $$...$$, \[...\], and equation/align/... envs).
MathJax decodes the entities, so the TeX is unchanged; real HTML tags and <img>
figures live outside math and are untouched. Affected ~115 files. (The Stacks
project sidesteps this by requiring authors to write `\lt`/`\gt`.)

## Equation \eqref rendering as "(None)" (DONE)
`\eqref` to certain equations showed "(None)" instead of the number. Two causes,
both fixed; after the fixes zero None-links remain:
1. **Underscore in a math-mode label.** plasTeX serializes equation passthrough
   with a space after `_`/`^` (`x^ n`), so `\label{e:crit_point}` registers as
   "e:crit_ point" and no longer matches the tags file / the \eqref target ->
   no tag, ref = None. Labels WITHOUT `_` (e.g. ch3 `e:rigidity`) always worked.
   Fix: `build_site.py` `build_math_label_map()` collects labels declared inside
   math envs that contain `_`, and prep_chapter rewrites `_`->`-` in those label
   names AND every {..}/{..,..} reference to them (global, so cross-chapter
   \eqref stays consistent). Text-mode labels (sections/theorems/defs) keep `_`.
2. **Sole-diagram equation: label swallowed.** An equation whose only content is
   a tikzpicture (e.g. `e:swallowtail1`, `e:S-local`) was handled by the
   "sole-diagram swallow" in `extract_figs.py`, which lifted the image OUT as
   `\begin{center}..\end{center}` and DROPPED the `\label` -> no tag, ref = None.
   Fix: when the swallowed wrapper carried a `\label`, emit a numbered labeled
   `\begin{equation}\label{..}\includegraphics{..}\end{equation}` instead (like a
   Pass-1 eqfig) so the tag is created and \eqref resolves.

## Front-page-specific styling (DONE)
To style ONLY the front page differently from all other pages: `layout.html`
`<body class="{% block bodyclass %}{% endblock %}">`, and `index.html` sets
`{% block bodyclass %}frontpage{% endblock %}`. CSS then scopes rules under
`.frontpage`. Applied: hide the nav menu (`ul#quicklinks`) and the breadcrumb/
subtitle bar (`nav#second-bar`); ~2x larger title+logo (`header h1` 66px, logo
84px + line-height so it isn't clipped); `.byline` italic; `#index-intro` 1.2em.
(Search box kept.) Regular pages get `body class=""` so they're unaffected.

## Favicon (DONE)
Replaced the Stacks favicon with the user's cobordism image
(`~/Desktop/frobenius.png`, 208x180). Padded to a square white canvas with
`sips --padToHeightWidth 208 208 --padColor FFFFFF`, resized to
`static/favicon-32.png` + `favicon-180.png`. `layout.html` links those as
`rel=icon` (png) + `apple-touch-icon` (replaced the two `stacks.ico` links).
Backups: `patches/gerby-website/templates-layout.html`,
`patches/gerby-website-static/favicon-{32,180}.png`. Browsers cache favicons --
hard-refresh to see it.
Also swapped the header **logo** (the `header h1 a` background-image in
`static/css/style.css`) so the cobordism shows next to "Lectures on TQFT".
Later updated to the user's dedicated logo `logo/tqft-logo-512.png` ->
`static/tqft-logo.png` (blue cobordism in a grey ring).
Backups: `patches/gerby-website-static/{style.css,tqft-logo.png}`.

## Recommended structure (Stacks/Kerodon practice)
Keep the PDF build untouched. Maintain a **separate plasTeX preamble** that:
- swaps amsbook→book, drops mathtools/euscript/amsrefs/imakeidx,
- provides MathJax-safe stubs for the macros above,
- handles figures via pre-rendered images.
Body chapter files (`c*.tex`) can be largely reused as-is once the preamble and
figure pipeline are in place.
