#!/bin/bash
# Serve the TQFT website. Reads the port from config.ini and uses the venv
# python directly (no `activate`), so the tree can be moved without edits.
cd "$(dirname "$0")"
export FLASK_APP=gerby
export PYTHONPATH=repos/gerby-website
PORT=$(venv/bin/python -c "import website_paths; print(website_paths.PORT)")
echo "Open  http://127.0.0.1:$PORT  in your browser (Ctrl-C to stop)."
exec venv/bin/python -m flask run --port "$PORT"
