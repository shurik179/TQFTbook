# Publishing cheat sheet

Two separate things:

1. **GitHub** keeps the sources (and the built website) at
   <https://github.com/shurik179/TQFTbook>, branch `main`.
2. **The website** <https://shurik179.pythonanywhere.com> serves the
   *committed* build of the site. PythonAnywhere never builds anything itself,
   so an edit in `source/` reaches the website only after you **rebuild
   locally → commit → push → pull on PythonAnywhere**.

---

## The one command

Run this in a terminal:

```bash
~/Dropbox/papers/TQFTbook/publish.sh
```

The script first shows what has changed, asks about new files, asks for a
commit message, and asks whether to push. Then it compiles the book, rebuilds
the website, commits and pushes, without further questions. At the end it
prints the one step left, which you do on PythonAnywhere (end of section B).

| Option | What it does |
|---|---|
| `--keep-figures` | faster: reuses the TikZ figures (only if no TikZ picture changed) |
| `--skip-pdf` | reuses the PDF you have already compiled |
| `--source-only` | only commits and pushes: no compile, no website rebuild |
| `-n`, `--dry-run` | only shows what would be published |

- **Answering:** Enter takes the default (the capital letter).
- **New files:** `y` adds the file, `n` skips it this time, `i` means never
  ask again (use it for backups and scratch files).
- **If something fails:** if LaTeX or the website build fails, nothing is
  committed.
- **Editing while it runs:** safe. Edits you make during the build are left
  for the next run.

Sections A and B below are the same steps done by hand.

---

## A. Push source changes to GitHub

```bash
cd ~/Dropbox/papers/TQFTbook
git status                  # look before you add
git add -u source           # every modified, already-tracked file in source/
git add source/NEWFILE      # a new file the book needs
git commit -m "describe the change"
git push
```

## B. Update the website

On your computer:

```bash
# 1. recompile the book (the site build reads source/TQFTbook.aux)
cd ~/Dropbox/papers/TQFTbook/source
pdflatex TQFTbook.tex && pdflatex TQFTbook.tex

# 2. rebuild the site
cd ~/Dropbox/papers/TQFTbook/website
python3 build_site.py --no-serve     # without --no-serve: also preview at http://127.0.0.1:5005

# 3. commit and push the rebuilt site
cd ~/Dropbox/papers/TQFTbook
git add -A website
git commit -m "rebuild site"
git push
```

Then, on **PythonAnywhere**:

1. Open *Consoles* (<https://www.pythonanywhere.com/user/shurik179/consoles/>)
   and start a **Bash** console.
2. Run:

   ```bash
   ~/TQFTbook/website/deploy/pa_update.sh
   ```

   It pulls the new commit and reloads the web app. If it says there is no
   WSGI file, press the green **Reload** button on the *Web* tab
   (<https://www.pythonanywhere.com/user/shurik179/webapps/>) instead.
3. Check <https://shurik179.pythonanywhere.com>.

---

## Good to know

- **Faster rebuild:** `python3 build_site.py --keep-figures` (or
  `publish.sh --keep-figures`) skips recompiling figures. Only safe if no TikZ
  picture changed.
- **Just preview, no rebuild:** `cd website && ./serve.sh`, then open
  <http://127.0.0.1:5005>.
- **What stays private:** `private/` (review tracker, notes, library) is
  git-ignored and never leaves your machine.
- **What is safe to add:** `website/venv`, `website/venv-tex` and the live
  `comments.sqlite` are git-ignored, so `git add -A website` never picks them
  up, and reader comments are never overwritten.
- **Backups and scratch files:** don't commit them. When `publish.sh` asks
  about one, answer `i`. The file is then listed in `.git/info/exclude` (on
  this computer only); delete that line to be asked again.
- **If `pa_update.sh` refuses to pull** (it uses `git pull --ff-only`), the
  copy on PythonAnywhere has diverged from GitHub. Never edit files directly on
  PythonAnywhere; make changes locally and push.
- **Shorter command:** add
  `alias publish-tqft=~/Dropbox/papers/TQFTbook/publish.sh` to `~/.zshrc`,
  then just type `publish-tqft`.

## Fuller documentation

- `website/deploy/DEPLOY-PYTHONANYWHERE.md` — one-time PythonAnywhere setup
- `website/README.md` — build details and the two virtualenvs
- `website/CONTINUE-HERE.md`, `website/FINDINGS.md` — pipeline notes and history
- `website/DEPLOYMENT.md` — plan for automatic builds via GitHub Actions
