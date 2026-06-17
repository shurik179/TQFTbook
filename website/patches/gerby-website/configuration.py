# Configuration for the Gerby website. All locations come from website_paths.py
# (which reads config.ini at the website/ root) -- nothing is hardcoded here, so
# the whole tree can be moved without editing this file.
import os, sys

# website/ is three levels up from this file (gerby/ -> gerby-website/ -> repos/).
_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
if _ROOT not in sys.path:
    sys.path.insert(0, _ROOT)
import website_paths as _cfg

COMMENTS = os.path.join(_cfg.SITE, "comments.sqlite")
DATABASE = os.path.join(_cfg.SITE, "tqft.sqlite")
UNIT = "section"
DEPTH = 0

# configuration for the import
PATH = os.path.join(_cfg.BUILD, _cfg.OUTDIR)
PAUX = os.path.join(_cfg.BUILD, _cfg.OUTDIR + ".paux")
TAGS = os.path.join(_cfg.BUILD, "tags")
PDF = ""

# whole-book PDF filename (served at /<PDF_FILE>; the front-page tile links here)
PDF_FILE = _cfg.PDF
