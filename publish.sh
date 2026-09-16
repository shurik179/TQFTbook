#!/bin/bash
#
# publish.sh -- publish the TQFT book in one go: recompile the PDF, rebuild the
# website, commit, and push to GitHub. Run it in a terminal, from anywhere:
#
#     ~/Dropbox/papers/TQFTbook/publish.sh          (options: see --help)
#
# All questions are asked first; then the (long) build runs unattended.
# Nothing is committed or pushed without your OK. The last step -- loading the
# new version on PythonAnywhere -- has to be done there; the script says how.
# See also PUBLISHING.md.

set -euo pipefail
export PATH="$PATH:/Library/TeX/texbin"

PA_USER="shurik179"
SITE_URL="https://${PA_USER}.pythonanywhere.com"
PA_CONSOLES="https://www.pythonanywhere.com/user/${PA_USER}/consoles/"
PA_WEBAPPS="https://www.pythonanywhere.com/user/${PA_USER}/webapps/"
PA_UPDATE='~/TQFTbook/website/deploy/pa_update.sh'
BRANCH="main"

usage() {
  cat <<'EOF'
Usage: publish.sh [options]

  (no options)     recompile the PDF, rebuild the website, commit, push
  --keep-figures   the same, but reuse the TikZ figures from the last build
                   (faster; only if no TikZ picture changed)
  --skip-pdf       the same, but reuse the PDF you compiled yourself
  --source-only    only commit and push: no PDF compile, no website rebuild
  --dry-run, -n    only show what would be published
  --help, -h       show this message

First the script shows what has changed, asks about each new file, asks for
a commit message and whether to push. Then it builds, commits and pushes.
EOF
}

# ------------------------------------------------------------------ output ---
if [ -t 1 ]; then
  BOLD=$'\033[1m'; YEL=$'\033[33m'; RED=$'\033[31m'; OFF=$'\033[0m'
else
  BOLD=; YEL=; RED=; OFF=
fi
say()    { printf '\n%s==> %s%s\n' "$BOLD" "$*" "$OFF"; }
note()   { printf '    %s\n' "$*"; }
warn()   { printf '%s    ! %s%s\n' "$YEL" "$*" "$OFF"; }
die()    { printf '\n%sERROR: %s%s\n' "$RED" "$*" "$OFF" >&2; exit 1; }
indent() { sed 's/^/        /'; }

# ask QUESTION y|n -- succeeds on yes; Enter gives the default, and end of
# input counts as no
ask() {
  local reply hint="[y/N]"
  if [ "$2" = y ]; then hint="[Y/n]"; fi
  read -r -p "    $1 $hint " reply || { echo; reply=n; }
  case "$reply" in
    "")                [ "$2" = y ] ;;
    [yY]|[yY][eE][sS]) true ;;
    *)                 false ;;
  esac
}

# ----------------------------------------------------------------- options ---
MODE=full; SKIP_PDF=0; DRY=0; KEEP_FIGURES=""
for arg in "$@"; do
  case "$arg" in
    --keep-figures) KEEP_FIGURES="--keep-figures" ;;
    --skip-pdf)     SKIP_PDF=1 ;;
    --source-only)  MODE=source ;;
    -n|--dry-run)   DRY=1 ;;
    -h|--help)      usage; exit 0 ;;
    *)              usage >&2; die "unknown option: $arg" ;;
  esac
done

# ------------------------------------------------------------- git helpers ---
# changed tracked files outside website/ (your edits), one porcelain line each
source_changes() {
  git status --porcelain=v1 --untracked-files=no -- . ':(exclude)website'
}

# number of changed or new files in website/ (the built site)
website_changes() {
  git status --porcelain=v1 --untracked-files=all -- website | wc -l | tr -d ' '
}

unpushed() { git rev-list --count "origin/$BRANCH..HEAD"; }

# tracked .tex files edited since the book was last compiled
edited_since_compile() {
  local f
  if [ ! -f source/TQFTbook.aux ]; then
    echo "(the book has not been compiled here yet)"
    return
  fi
  git ls-files -- 'source/*.tex' | while IFS= read -r f; do
    if [ "$f" -nt source/TQFTbook.aux ]; then echo "${f#source/}"; fi
  done
}

# New files outside website/ -> NEW_FILES; Dropbox conflicted copies, which
# are never offered, -> CONFLICTED. (A new folder is listed once, as "dir/".)
collect_new_files() {
  NEW_FILES=(); CONFLICTED=()
  local entry p
  while IFS= read -r -d '' entry; do
    case "$entry" in
      '?? '*) p=${entry:3} ;;
      *)      continue ;;
    esac
    case "$p" in
      *"conflicted copy"*) CONFLICTED+=("$p") ;;
      *)                   NEW_FILES+=("$p") ;;
    esac
  done < <(git status --porcelain=v1 -z --untracked-files=normal -- . ':(exclude)website')
}

# offer_new_file PATH -- y: add it to ADD_LIST; i: never offer it again (it is
# listed in .git/info/exclude, which stays on this computer); otherwise skip
offer_new_file() {
  local reply exclude
  read -r -p "    add $1 ?  [y/N, i = never ask again] " reply || { echo; reply=n; }
  case "$reply" in
    [yY]|[yY][eE][sS])
      ADD_LIST+=("$1") ;;
    [iI])
      exclude=$(git rev-parse --git-path info/exclude)
      mkdir -p "$(dirname "$exclude")"
      printf '/%s\n' "$(printf '%s' "$1" | sed 's/[][*?\\]/\\&/g')" >> "$exclude"
      note "  OK, not asking again (to undo, delete its line in $exclude)" ;;
  esac
}

# Shows what is waiting to be published; sets SRC_CHANGES, SITE_CHANGES, AHEAD.
show_state() {
  local n
  SRC_CHANGES=$(source_changes)
  SITE_CHANGES=$(website_changes)
  AHEAD=$(unpushed)
  if [ -n "$SRC_CHANGES" ]; then
    n=$(printf '%s\n' "$SRC_CHANGES" | wc -l | tr -d ' ')
    note "Changed files ($n):"
    printf '%s\n' "$SRC_CHANGES" | sed -n '1,60p' | indent
    if [ "$n" -gt 60 ]; then note "    ... and $((n - 60)) more"; fi
  else
    note "No changed files (apart from website/)."
  fi
  if [ "$SITE_CHANGES" -gt 0 ]; then
    note "website/: $SITE_CHANGES changed or new file(s) left by an earlier build."
  fi
  if [ "$AHEAD" -gt 0 ]; then
    note "Commits made earlier but not yet on GitHub ($AHEAD):"
    git log --oneline "origin/$BRANCH..HEAD" | sed -n '1,20p' | indent
  fi
}

# ------------------------------------------------------------------- steps ---
compile_pdf() {
  command -v pdflatex >/dev/null || die "pdflatex not found (is MacTeX installed?)"
  say "Compiling the book (source/TQFTbook.tex, 2 passes)"
  local pass pages t0=$SECONDS
  for pass in 1 2; do
    note "pass $pass ..."
    if ! (cd source && pdflatex -interaction=nonstopmode -halt-on-error \
            -file-line-error TQFTbook.tex >/dev/null 2>&1); then
      warn "LaTeX stopped with an error. From source/TQFTbook.log:"
      grep -E -A2 '^!|:[0-9]+: ' source/TQFTbook.log | sed -n '1,20p' | indent || true
      die "fix the LaTeX error and run publish.sh again"
    fi
  done
  pages=$(grep -oE 'Output written on TQFTbook\.pdf \([0-9]+ pages' source/TQFTbook.log \
          | grep -oE '[0-9]+' || true)
  note "OK${pages:+ -- $pages pages} ($((SECONDS - t0)) s)"
  if grep -q 'There were undefined references' source/TQFTbook.log; then
    warn "the book has undefined references (see source/TQFTbook.log)"
  fi
}

build_site() {
  command -v python3 >/dev/null || die "python3 not found"
  say "Rebuilding the website${KEEP_FIGURES:+ (reusing the figures)} -- this takes a while"
  local t0=$SECONDS
  (cd website && python3 build_site.py --no-serve $KEEP_FIGURES) \
    || die "the website build failed (see the messages above)"
  note "website rebuilt ($((SECONDS - t0)) s)"
  # a figure without an SVG did not compile (reported again at the very end)
  local t
  for t in website/build/figures/*fig*.tex; do
    [ -e "$t" ] || continue
    if [ ! -f "${t%.tex}.svg" ]; then t=${t##*/}; FIG_FAILS="$FIG_FAILS ${t%.tex}"; fi
  done
}

preview() {
  local i stale
  say "Dry run -- nothing will be changed"
  show_state
  collect_new_files
  if [ ${#NEW_FILES[@]} -gt 0 ]; then
    note "New files (you would be asked about each):"
    i=0
    while [ $i -lt ${#NEW_FILES[@]} ]; do
      note "    ${NEW_FILES[$i]}"; i=$((i + 1))
    done
  fi
  if [ ${#CONFLICTED[@]} -gt 0 ]; then
    note "Dropbox conflicted copies (never added): ${#CONFLICTED[@]}"
  fi
  if [ "$MODE" = full ]; then
    if [ "$SKIP_PDF" = 1 ]; then
      stale=$(edited_since_compile)
      if [ -n "$stale" ]; then
        note "Edited since the last compile (you would be offered a compile):"
        printf '%s\n' "$stale" | indent
      fi
      note "Then: rebuild the website${KEEP_FIGURES:+ (reusing the figures)}, commit, push."
    else
      note "Then: compile the book, rebuild the website${KEEP_FIGURES:+ (reusing the figures)}, commit, push."
    fi
  else
    note "Then: commit and push (no compile, no website rebuild)."
  fi
}

on_exit() {
  local status=$?
  if [ "$status" -ne 0 ] && [ "$STAGED_BY_US" = 1 ]; then
    git reset -q || true
    echo "    (nothing was committed; your changes are as they were)" >&2
  fi
  if [ -n "$FIG_FAILS" ]; then
    echo
    warn "these figures did not compile, so they are missing on the website:"
    note "     $FIG_FAILS"
    note "  see website/build/figures/<name>.log"
  fi
}

# GitHub answers "HTTP 400" to a push that git sends in chunks, which git does
# for anything bigger than http.postBuffer (1 MB by default) -- so raise it.
push_to_github() {
  git -c http.postBuffer=157286400 "$@" push --quiet origin "$BRANCH"
}

# -------------------------------------------------------------------- main ---
cd "$(dirname "$0")"
ROOT=$(git rev-parse --show-toplevel 2>/dev/null) \
  || die "publish.sh has to stay inside the TQFTbook git repository"
cd "$ROOT"

if [ "$DRY" = 0 ] && [ ! -t 0 ]; then
  die "run this in a terminal -- it needs to ask you some questions"
fi
git remote get-url origin >/dev/null 2>&1 || die "this repository has no 'origin' remote"

branch=$(git symbolic-ref --quiet --short HEAD || echo "(detached HEAD)")
if [ "$branch" != "$BRANCH" ]; then
  warn "you are on '$branch', not on '$BRANCH'"
  if [ "$DRY" = 0 ] && ! ask "Continue anyway?" n; then exit 1; fi
fi
if [ -n "$(git diff --name-only --diff-filter=U)" ]; then
  die "there are unresolved merge conflicts -- resolve them first"
fi

say "Checking GitHub"
if git fetch --quiet origin; then
  behind=$(git rev-list --count "HEAD..origin/$BRANCH")
  if [ "$behind" -gt 0 ]; then
    die "GitHub has $behind commit(s) that are not here yet. Run 'git pull', then publish.sh again."
  fi
  note "OK -- this copy is up to date with GitHub"
else
  warn "could not reach GitHub (offline?) -- going on; the push at the end may fail"
fi
git rev-parse --verify --quiet "origin/$BRANCH" >/dev/null \
  || die "there is no origin/$BRANCH yet -- push once by hand (git push -u origin $BRANCH)"

if [ "$DRY" = 1 ]; then preview; exit 0; fi

# 1. questions -- all of them now, so that the build can run unattended
say "What will be published"
show_state
collect_new_files
i=0
while [ $i -lt ${#CONFLICTED[@]} ]; do
  warn "Dropbox conflicted copy, not added: ${CONFLICTED[$i]}"; i=$((i + 1))
done
ADD_LIST=()
if [ ${#NEW_FILES[@]} -gt 0 ]; then
  echo
  note "New files, not in git yet:"
  i=0
  while [ $i -lt ${#NEW_FILES[@]} ]; do
    offer_new_file "${NEW_FILES[$i]}"; i=$((i + 1))
  done
fi

if [ "$MODE" = full ] && [ "$SKIP_PDF" = 1 ]; then
  stale=$(edited_since_compile)
  if [ -n "$stale" ]; then
    echo
    warn "edited since you last compiled the book:"
    printf '%s\n' "$stale" | indent
    if ask "Compile the book first after all (recommended)?" y; then SKIP_PDF=0; fi
  fi
fi

if [ "$MODE" = source ] && [ -z "$SRC_CHANGES" ] && [ "$SITE_CHANGES" -eq 0 ] \
   && [ ${#ADD_LIST[@]} -eq 0 ] && [ "$AHEAD" -eq 0 ]; then
  say "Nothing to publish -- GitHub is up to date"
  exit 0
fi

today=$(date +%Y-%m-%d)
MSG=""
if [ -n "$SRC_CHANGES" ] || [ ${#ADD_LIST[@]} -gt 0 ]; then
  if [ "$MODE" = full ]; then defmsg="Update book and website ($today)"
  else defmsg="Update book ($today)"; fi
  echo
  note "Commit message: what did you change?"
  note "(Enter = \"$defmsg\", q = quit without doing anything)"
  while :; do
    read -r -p "    > " MSG || { echo; MSG=q; }
    case "$MSG" in
      q|Q) say "Stopped -- nothing was changed"; exit 0 ;;
      [yYnN]|[yY][eE][sS]|[nN][oO])
        note "(that looks like a yes/no answer -- type a commit message, or just press Enter)" ;;
      *) break ;;
    esac
  done
  MSG=${MSG:-$defmsg}
fi
echo
if ask "Push to GitHub at the end?" y; then PUSH=1; else PUSH=0; fi

# 2. stage your edits now, so that edits made during the build stay out
STAGED_BY_US=0
FIG_FAILS=""
trap on_exit EXIT
trap 'exit 130' INT TERM
if git diff --cached --quiet; then INDEX_WAS_CLEAN=1; else INDEX_WAS_CLEAN=0; fi
git add -u -- . ':(exclude)website'
i=0
while [ $i -lt ${#ADD_LIST[@]} ]; do
  git add -- "${ADD_LIST[$i]}"; i=$((i + 1))
done
STAGED_BY_US=$INDEX_WAS_CLEAN

# 3. build
if [ "$MODE" = full ]; then
  if [ "$SKIP_PDF" = 0 ]; then
    compile_pdf
    git add -u -- source/TQFTbook.aux source/TQFTbook.pdf
  else
    say "Using the PDF you compiled earlier (--skip-pdf)"
  fi
  build_site
fi

# 4. commit
git add -A website
if ! git diff --cached --quiet; then
  if [ -z "$MSG" ]; then MSG="Rebuild website ($today)"; fi
  say "Committing: $MSG"
  git commit -q -m "$MSG"
  STAGED_BY_US=0
  note "$(git log -1 --format='%h' --shortstat | tr -s '\n' ' ')"
fi

# 5. push
AHEAD=$(unpushed)
if [ "$AHEAD" -eq 0 ]; then
  say "Nothing to publish -- the website and GitHub are already up to date"
  exit 0
fi
if [ "$PUSH" = 0 ]; then
  say "Committed, not pushed. Later: run 'git push', then do the PythonAnywhere step (PUBLISHING.md)."
  exit 0
fi
old_remote=$(git rev-parse "origin/$BRANCH")
say "Pushing $AHEAD commit(s) to GitHub"
if ! push_to_github; then
  warn "the push failed -- trying once more, over HTTP/1.1"
  push_to_github -c http.version=HTTP/1.1 \
    || die "the push failed (see above). Your commit is saved here; to try again: publish.sh --source-only"
fi
note "OK"

# 6. what is left to do by hand
if git diff --quiet "$old_remote" HEAD -- website; then
  if [ "$MODE" = source ]; then
    say "Done. The website was not rebuilt, so the live site is unchanged."
    note "To update it too, run publish.sh without --source-only."
  else
    say "Done. The website did not change, so there is nothing to do on PythonAnywhere."
  fi
else
  say "Done. Last step -- load the new version on the live site:"
  cat <<EOF
    1. open a Bash console on PythonAnywhere:
         $PA_CONSOLES
    2. run
         $PA_UPDATE
       (if it says there is no WSGI file, press Reload on the Web tab:
         $PA_WEBAPPS )
    3. check the result:
         $SITE_URL
EOF
fi
