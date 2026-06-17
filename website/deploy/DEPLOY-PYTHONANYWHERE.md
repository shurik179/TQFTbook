# Deploying the TQFT website to PythonAnywhere (manual model)

The repo already contains the **built** site (`site/tqft.sqlite`, rendered
`build/book/*.tag`, the static figure SVGs, `preface.html`, `TQFTbook.pdf`), so
PythonAnywhere only has to **serve** it — no TeX, no plasTeX, no build on the host.

Publishing model (for now): you build locally and `git push`; then on PA you run
one command (`deploy/pa_update.sh`) to pull + reload. (CI is a future upgrade —
see the TODO in `DEPLOYMENT.md`.)

Replace `USERNAME` with your PythonAnywhere username throughout.

---

## One-time setup

### 1. Push the repo to GitHub
From your machine: `git push`. The repo is `github.com/shurik179/TQFTbook`.

### 2. Clone it on PythonAnywhere
PA dashboard → **Consoles** → start a **Bash** console:

```bash
git clone https://github.com/shurik179/TQFTbook.git ~/TQFTbook
```

### 3. Create the website virtualenv and install deps
```bash
cd ~/TQFTbook/website
python3.10 -m venv venv
venv/bin/pip install -r requirements-web.txt
```
(3.10 is fine; use 3.9 to match local exactly. plasTeX is intentionally not in
this list — only the rendering venv needs it, and serving doesn't.)

### 4. Create the web app
PA dashboard → **Web** tab → **Add a new web app** →
- Domain: accept `USERNAME.pythonanywhere.com`
- Framework: **Manual configuration** (NOT "Flask" — we supply our own WSGI)
- Python version: **3.10** (match step 3)

### 5. Point it at the virtualenv
On the Web tab, **Virtualenv** section, enter:
```
/home/USERNAME/TQFTbook/website/venv
```

### 6. Set the WSGI file
On the Web tab, click the **WSGI configuration file** link (opens an editor for
`/var/www/USERNAME_pythonanywhere_com_wsgi.py`). Delete everything and paste the
contents of `deploy/pythonanywhere_wsgi.py` from this repo, then change the
`USERNAME = "USERNAME"` line to your username. Save.

### 7. (Optional but recommended) serve static files directly
Still on the Web tab, **Static files** section, add:
- URL: `/static/`
- Directory: `/home/USERNAME/TQFTbook/website/repos/gerby-website/gerby/static/`

This lets PA serve the figure SVGs/CSS without going through Flask (faster).

### 8. Reload and visit
Hit the green **Reload** button. Open `https://USERNAME.pythonanywhere.com`.
The comments table is created automatically on first run.

---

## Publishing an update later

After you've rebuilt locally and `git push`ed, open a PA **Bash console** and run:

```bash
~/TQFTbook/website/deploy/pa_update.sh
```
It pulls the new content and reloads the app. Your live `comments.sqlite` is
git-ignored, so updates never overwrite reader comments.

---

## Good to know

- **Free-tier renewal:** PA disables free web apps every ~3 months unless you
  click the "Run until 3 months from today" button on the Web tab. Set a reminder.
- **Comment moderation (no SSH on free):** in a PA Bash console,
  `~/TQFTbook/website/venv/bin/python ~/TQFTbook/website/moderate.py`
  (list / hide / delete spam — same tool you use locally).
- **"Recent commits" panel:** the homepage fetches a GitHub feed with a 5 s
  timeout and fails soft — if PA's outbound whitelist blocks it, the page still
  loads, just without that panel.
- **Custom domain / always-on:** not available on free; the Developer plan
  ($10/mo) adds a custom domain, more CPU, and the reload API (which is what a
  future CI deploy would use).
