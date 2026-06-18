# TQFT book — website build

This directory builds the online (Kerodon-style) version of the TQFT book from
its LaTeX source. It is built on a fork of the **Gerby project**
(<https://gerby-project.github.io/>, source at
<https://github.com/gerby-project>) — a Flask + SQLite site that serves LaTeX
rendered to HTML by a patched [plasTeX](https://github.com/plastex/plastex). Both
the Gerby website and the plasTeX fork are vendored under `repos/`.

The LaTeX sources are **not** in this directory — they live in the sibling
`../source/` tree and are never modified; the build works on copies in `build/`.

## Setup (first time / after a fresh clone)

The two virtualenvs are **not** committed (they're machine-specific), so recreate
them once. You need **Python 3.9.x**, plus a TeX distribution (`pdflatex`) and
**poppler** (`pdftocairo`) on your PATH — set their location in `[tools] tex_bin`
in `config.ini` if they aren't already found. From the `website/` directory:

```bash
# 1. rendering venv — plasTeX (with the OLD Jinja2 the Gerby fork needs)
python3.9 -m venv venv-tex
venv-tex/bin/python -m pip install -r requirements-tex.txt
# re-apply our Gerby-renderer patches onto the freshly installed plasTeX:
cp patches/gerby-renderer/* \
   venv-tex/lib/python3.9/site-packages/plasTeX/Renderers/Gerby/

# 2. website venv — Flask app + the gerby fork (editable, already patched in repos/)
python3.9 -m venv venv
venv/bin/python -m pip install -r requirements-web.txt
```

The two venvs **must stay separate**: they pin conflicting Jinja2 versions, and
rendering with the website venv silently corrupts output (see `FINDINGS.md`).
Only `venv-tex` needs the renderer patch re-applied; the website's changes live
in `repos/gerby-website` and come in with the editable install.

## Rebuilding the site

One command regenerates everything from the LaTeX source and (re)starts the
server on the configured port (default 5005):

```bash
cd website
python3 build_site.py              # full rebuild, then (re)start the server
python3 build_site.py --no-serve   # rebuild only; leave the running server alone
python3 build_site.py --keep-figures   # skip recompiling figures (faster; only
                                        # safe if no TikZ pictures changed)
```

Then open <http://127.0.0.1:5005>.

It reads `../source/TQFTbook.aux` for citation labels, so **recompile the book
PDF first** if the bibliography or any `\label` changed.

To just serve the already-built site (no rebuild):

```bash
./serve.sh
```

Comment moderation (hide/show/delete spam): `python3 moderate.py` (see its
header for usage).

## Configuration

All locations live in **`config.ini`** — edit it (nothing else) if things move:

| If you change… | edit in `config.ini` |
| --- | --- |
| site title, subtitle, author, email, GitHub link | `[site]` (shown on every page; takes effect on next server reload, no rebuild) |
| where the LaTeX source tree is | `[paths] source` (relative to `website/`, or absolute) |
| the main `.aux` / bibliography / preface / PDF filenames | `[source_files]` |
| the render wrapper (rarely) | `[build] master` |
| the server port | `[server] port` |
| location of `pdflatex` / `pdftocairo` on this machine | `[tools] tex_bin` |

Anything in the `[site]` section is available in templates as `{{ site.<key> }}`,
so you can add your own keys and use them without touching template files.

`website_paths.py` reads `config.ini` and every script imports its locations from
there, so there are **no hardcoded absolute paths in any script** and the whole
`website/` tree is relocatable: move it and the commands above still work.

**Which TeX files get processed** is *not* in `config.ini` — it is the list of
`\include{…}` lines in the render wrapper **`build/book.tex`**. That file (book
class + porting stubs + the `\part`/`\include` structure) is the master list of
every chapter/part the build processes, in order. To add or reorder
chapters/parts, edit `build/book.tex` (add `\include{…-src-gerby}` and `\part{…}`
lines), then rebuild.

> ⚠️ **Venvs are the exception.** `venv/` and `venv-tex/` contain absolute paths
> internally (script shebangs, `activate`, `pyvenv.cfg`, the editable-install
> finder) — that is intrinsic to Python virtualenvs. The build/serve commands
> above avoid them (they call `bin/python` directly), so a move needs no edits.
> But if you **recreate** Python on this machine or want truly self-contained
> venvs, recreate the venvs at the new location rather than copying them.

## Vendored forks (`repos/`) and our patches

`repos/` contains two upstream projects, vendored (their `.git` directories were
removed so they're tracked as plain files of this repo, not nested submodules):

| folder | forked from | exact commit |
| --- | --- | --- |
| `repos/plastex` | <https://github.com/gerby-project/plastex> (branch `gerby`) | `a75473f890db3d21e3bf76430c5c1ffc0661a69a` |
| `repos/gerby-website` | <https://github.com/gerby-project/gerby-website> (branch `master`) | `01b11bbbbd1a910bc997eb3d53bd1cd8c8de8652` |

**Where our patches live:**

- **`repos/gerby-website`** is edited **in place** — our changes to the Flask
  app, templates, views, CSS/JS, and `configuration.py` are committed directly in
  that folder.
- **`repos/plastex` is left pristine.** plasTeX is *installed* into `venv-tex/`
  (not run from this source tree), and our changes to its Gerby renderer (the
  `*.jinja2s` templates) were applied to that installed copy. Since venvs are not
  committed, those renderer edits — plus copies of every gerby-website edit and
  the build scripts — are backed up in **`website/patches/`**
  (`patches/gerby-renderer/` for the plasTeX renderer templates,
  `patches/gerby-website*/` for the app/static files). Treat `patches/` as the
  canonical record of "what we changed"; re-apply `patches/gerby-renderer/` into
  `venv-tex/.../plasTeX/Renderers/Gerby/` after recreating that venv.

## Directory structure

```
website/
├── config.ini          # ← single source of truth for all locations
├── website_paths.py    # reads config.ini; every script imports paths from here
├── requirements-tex.txt  # deps for venv-tex (rendering)   — see Setup
├── requirements-web.txt  # deps for venv     (website)     — see Setup
├── build_site.py       # the one-command rebuild orchestrator
├── serve.sh            # serve the already-built site
├── moderate.py         # comment moderation CLI
├── build/              # the build workspace (copies of sources + generated files)
│   ├── book.tex        #   render wrapper: lists the parts/chapters to include
│   ├── extract_figs.py #   pulls TikZ out of chapters into standalone figures
│   ├── build_figs.sh   #   compiles figures: pdflatex → pdftocairo → SVG
│   ├── figpre.tex      #   preamble used only for compiling figures
│   ├── amsrefs2bib.py  #   bibliography: amsrefs → BibTeX
│   ├── apply_cite_labels.py  # rewrites citations to [Author Year] labels
│   ├── tagger.py       #   assigns permanent base-34 tags (append-only)
│   ├── gerby.cfg       #   plasTeX/Gerby render config
│   ├── tags            #   the permanent label→tag map (do not delete)
│   ├── figures/        #   generated figure .tex/.svg
│   └── book/           #   generated .tag HTML fragments
├── site/               # served artifacts: tqft.sqlite, comments.sqlite,
│                       #   preface.html, TQFTbook.pdf
├── repos/
│   ├── gerby-website/  #   the Gerby Flask app (fork) — templates, CSS, views
│   └── plastex/        #   the plasTeX fork (Gerby renderer)
├── venv/               # website venv (Flask, peewee, …)   ⚠ see note above
├── venv-tex/           # rendering venv (plasTeX)          ⚠ see note above
├── patches/            # backups of the toolchain modifications
├── CONTINUE-HERE.md    # detailed resume guide
├── FINDINGS.md         # chronological build log / gotchas
└── DEPLOYMENT.md       # online hosting research (not yet deployed)
```
