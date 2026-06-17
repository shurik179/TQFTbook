# TQFT book — website build

This directory builds the online (Kerodon-style) version of the TQFT book from
its LaTeX source. It is built on a fork of the **Gerby project**
(<https://gerby-project.github.io/>, source at
<https://github.com/gerby-project>) — a Flask + SQLite site that serves LaTeX
rendered to HTML by a patched [plasTeX](https://github.com/plastex/plastex). Both
the Gerby website and the plasTeX fork are vendored under `repos/`.

The LaTeX sources are **not** in this directory — they live in the sibling
`../source/` tree and are never modified; the build works on copies in `build/`.

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
| where the LaTeX source tree is | `[paths] source` (relative to `website/`, or absolute) |
| the main `.aux` / bibliography / preface / PDF filenames | `[source_files]` |
| the render wrapper (rarely) | `[build] master` |
| the server port | `[server] port` |
| location of `pdflatex` / `pdftocairo` on this machine | `[tools] tex_bin` |

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

## Directory structure

```
website/
├── config.ini          # ← single source of truth for all locations
├── website_paths.py    # reads config.ini; every script imports paths from here
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
