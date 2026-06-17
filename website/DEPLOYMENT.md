# Deployment / online hosting

## Current status (2026-06): manual deploy to PythonAnywhere (free tier)

Serving from the **committed build artifacts** (no build on the host). Step-by-step
in **`deploy/DEPLOY-PYTHONANYWHERE.md`**; files in `deploy/` (WSGI template +
`pa_update.sh`). Publish model = **manual**: build locally → `git push` → run
`deploy/pa_update.sh` in a PA Bash console (git pull + reload).

## TODO (future): move to GitHub Actions CI

The author does **not** want to build locally long-term, so the plan is to move
to **CI**: GitHub Actions rebuilds the site on push (install TeX Live +
poppler-utils, run `build_site.py --no-serve`, commit `build/tags` back for tag
permanence) and deploys to the host — on PythonAnywhere via the **reload API**
(needs the paid Developer plan; token in GitHub Secrets), or by switching to a
host with native push-deploy (Railway/Render). The build/serve split and the
host comparison below already cover this; the remaining work is writing
`.github/workflows/build.yml` and wiring the deploy/reload step. See "The commit
-> live pipeline" section further down.

---

The rest of this file is the original hosting investigation (host comparison,
cost notes, the commit->live pipeline, comment-moderation options).

## Key architectural decision: separate BUILD from SERVE

The pipeline has two very different halves; do NOT run both on the web host:

- **Build** (`build_site.py`): needs full TeX Live (~4 GB), `pdftocairo`, the Gerby
  plasTeX fork, two venvs, compiles ~138 figures. Heavy, slow, occasional.
- **Serve**: a small Flask/WSGI app reading a prebuilt `tqft.sqlite` + static SVGs.
  Light, always-on. Also has comments (writes SQLite) and search.

=> **Build in CI; deploy only the artifacts** (`site/tqft.sqlite`, `static/figures/`,
`tqft.bib`) to a host that just serves. The host needs NO TeX.

"CI" = Continuous Integration = an automated job that runs on a server (here:
**GitHub Actions**) on every `git push`. That IS the "rebuild-on-commit webhook" —
no custom webhook server needed.

## Host comparison (serving a Flask + SQLite app)

Prices verified June 2026.

| | PythonAnywhere | Railway | Render | Fly.io |
|---|---|---|---|---|
| Model | Python/WSGI, no Docker | Containers | Containers | micro-VMs (Docker + CLI) |
| SQLite persistence | **Native** (no volume) | needs a **volume** | needs a **paid disk** ($0.25/GB) | **volume $0.15/GB** (cheapest; SQLite-friendly) |
| Always-on / cold start | always-on (paid) | always-on | paid always-on; **free spins down** (~1 min) | always-on, or **scale-to-zero ~1-2 s** |
| Cheapest paid | **Developer $10/mo** (unrestricted net, custom domain, 5000 CPU-s/day, 5 GB) | Hobby **~$5/mo** + usage | **Starter $7/mo** (one source cites +$19 workspace — verify) | **~$2 VM**, ~$5-15 realistic (+ IPv4 $2, egress) |
| Usable free tier | Beginner $0 (tight: 512 MB, 100 CPU-s/day, whitelist, no custom domain) | No (just $5 credit) | Free but **spins down** -> bad public UX | No (trial only; legacy accts keep some) |
| Auto-deploy on push | via CI (PA **reload API**) | **Native** | **Native** | via CI (`flyctl deploy` Action) |
| Ops complexity | **lowest** | medium | medium | **highest** |
| Build TeX on host | No (and don't) | avoid (fat image) | avoid (fat image) | avoid (fat image) |

Notes: cheapest *paid* PythonAnywhere is now **$10/mo "Developer"** (old "$5
Hacker" gone). Railway/Render are near-interchangeable (containers + native
push-deploy + a paid disk/volume for SQLite); Railway a bit cheaper at the floor.
Fly.io is cheapest/most-controllable but highest-ops (Docker + CLI + volume +
IPv4); it likes SQLite (LiteFS / volume) and its scale-to-zero cold start (~1-2 s)
is far better than Render's free spin-down. None of the free tiers suit a public
always-on site.

## Recommendation (tentative)

**GitHub Actions (build) + PythonAnywhere Developer (serve).** Reasons are
non-cost: SQLite persistence is free/automatic (comments + content DB), and it's
the lowest-ops option for a one-person academic site. Alternatives by preference:
Railway/Render if you want native push-to-deploy with moderate setup (volume/disk
+ containers); **Fly.io** if you want the cheapest/most control and are at home
with Docker + a CLI (highest ops, but cheapest volume and SQLite-friendly).
Simplicity order: PythonAnywhere > Railway ~ Render > Fly.io.
Free PA "Beginner" tier can host a private proof-of-deploy but is tight (512 MB,
100 CPU-s/day, outbound whitelist, no custom domain) — Developer for a real site.

## The commit -> live pipeline (concrete)

1. Keep the book LaTeX + the `website` tooling in GitHub. **Commit `build/tags`**
   — that file is what keeps tag URLs permanent across CI runs (CI starts fresh).
2. GitHub Actions `on: push`: install TeX Live + `poppler-utils` + Python deps;
   compile the book once (to get a current `TQFTbook.aux`); run
   `python3 build_site.py --no-serve`; if `build/tags` changed, **commit it back**.
3. Deploy: upload artifacts to PythonAnywhere + POST its reload endpoint
   (`/api/v0/user/<you>/webapps/<domain>/reload/`, token in repo secrets).

## Caveats
- CI build ~5-10 min/push (cache the TeX layer; optionally only rebuild changed
  figures).
- Tag permanence REQUIRES `build/tags` to be versioned in git (append-only).
- PA free tier outbound whitelist may block the "Recent commits" GitHub feed
  (easy to disable; GitHub often whitelisted anyway).
- CI must compile the PDF first so `TQFTbook.aux` (citation labels) is current.

## Comment moderation on the live site (build at deploy time)
Gerby has NO admin login. Locally we moderate with `website/moderate.py`
(edits comments.sqlite directly). On the server that means shell access:
- PythonAnywhere: a **browser Bash console** (no SSH client needed) or SSH (paid).
- Railway/Render/Fly: their CLI exec / SSH into the container.

Better (planned for deploy): add a small **password-protected web admin page** so
moderation needs no shell, from any browser:
- New route e.g. `/admin/comments` behind HTTP Basic auth (`Flask-HTTPAuth` is
  ALREADY a gerby-website dependency); credentials from an env var/secret.
- Lists recent comments with Hide / Delete buttons (toggles the `active` flag /
  deletes the row — same as moderate.py, but in the browser).
- Pair with **approval-required comments**: new comments default `active=False`
  (edit the Comment model default + the post_comment view), so spam never shows
  publicly; the admin page is where you approve good ones. Most spam-proof option.
This is a small, self-contained change to add when we deploy (no rebuild needed —
it's website code, not content).

## Cheaper alternative: static export (free hosting)
If comments + server-side search are NOT needed, a static snapshot of the site
could be hosted FREE on Netlify / GitHub Pages / Cloudflare Pages with trivial
auto-deploy. Gerby doesn't emit a static site out of the box, so this needs extra
work (crawl/snapshot the rendered pages). Eliminates serving cost + most ops, but
loses comments/search.

## Next step when we resume
Pick a host (+ create the account). Then write `.github/workflows/build.yml`
(TeX install, build, commit-tags, deploy+reload), the `/admin/comments` page
(+ optional approval-required comments), and any host-side config.
Claude can write the workflow/admin page but cannot create accounts / hold credentials.

Sources: pythonanywhere.com/pricing (PA plans), Railway pricing pages (saaspricepulse/srvrlss),
railway.com/deploy/sqlite-hub (SQLite on a volume), costbench.com/.../render +
render.com free-tier article (Render spin-down, $7 Starter, $0.25/GB disk),
fly.io/docs/about/pricing + costbench/.../flyio (Fly: no free tier, ~$2 VM,
$0.15/GB volume, IPv4 $2).
