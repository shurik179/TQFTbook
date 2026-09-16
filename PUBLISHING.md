# Publishing cheat sheet

Two separate things:

1. **GitHub** keeps the sources (and the built website) at
   <https://github.com/shurik179/TQFTbook>, branch `main`.
2. **The website** on PythonAnywhere serves the *committed* build of the site.
   PythonAnywhere never builds anything itself, so an edit in `source/` reaches
   the website only after you **rebuild locally → commit → push → pull on
   PythonAnywhere**.

Live site: `https://USERNAME.pythonanywhere.com` <!-- replace USERNAME -->

---

## A. Push source changes to GitHub

```bash
cd ~/Dropbox/papers/TQFTbook
git status                  # look before you add
git add -u source           # every modified, already-tracked file in source/
git add source/NEWFILE      # any new file the book needs (e.g. source/figures)
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

Then on **PythonAnywhere** → *Consoles* → start a **Bash** console and run:

```bash
~/TQFTbook/website/deploy/pa_update.sh
```

It pulls the new commit and reloads the web app. If it says there is no WSGI
file, press the green **Reload** button on the *Web* tab instead.

---

## Good to know

- **Faster rebuild:** `python3 build_site.py --keep-figures` skips recompiling
  figures. Only safe if no TikZ picture changed.
- **Just preview, no rebuild:** `cd website && ./serve.sh`, then open
  <http://127.0.0.1:5005>.
- **What stays private:** `private/` (review tracker, notes, library) is
  git-ignored and never leaves your machine.
- **What is safe to add:** `website/venv`, `website/venv-tex` and the live
  `comments.sqlite` are git-ignored, so `git add -A website` never picks them
  up, and reader comments are never overwritten.
- **Don't commit backups** such as `source/c13-defects-July5.tex`.
- **If `pa_update.sh` refuses to pull** (it uses `git pull --ff-only`), the
  copy on PythonAnywhere has diverged from GitHub. Never edit files directly on
  PythonAnywhere; make changes locally and push.

## Fuller documentation

- `website/deploy/DEPLOY-PYTHONANYWHERE.md` — one-time PythonAnywhere setup
- `website/README.md` — build details and the two virtualenvs
- `website/CONTINUE-HERE.md`, `website/FINDINGS.md` — pipeline notes and history
- `website/DEPLOYMENT.md` — plan for automatic builds via GitHub Actions
