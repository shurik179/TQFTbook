#!/bin/bash
# Publish the latest committed content to the live PythonAnywhere site.
# Run it in a PythonAnywhere *Bash console*:
#
#     ~/TQFTbook/website/deploy/pa_update.sh
#
# It pulls the newest commit (new tqft.sqlite, figures, rendered pages) and
# reloads the web app by touching its WSGI file. Your live comments.sqlite is
# git-ignored, so it is never touched.
set -e

# repo root (two levels up from this script)
cd "$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"

echo "Pulling latest content..."
git pull --ff-only

WSGI="/var/www/${USER}_pythonanywhere_com_wsgi.py"
if [ -f "$WSGI" ]; then
  touch "$WSGI"
  echo "Done — reloaded the web app ($WSGI)."
else
  echo "Pulled OK, but no WSGI file at $WSGI."
  echo "Hit the green Reload button on the PythonAnywhere Web tab instead."
fi
