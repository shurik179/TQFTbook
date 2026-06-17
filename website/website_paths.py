"""Single source of truth for every build/serve location.

Reads ``config.ini`` (sitting next to this file) and exposes resolved paths.
Both the build script (system python) and the Flask app (venv python) import
this, so NO script needs a hardcoded absolute path -- edit config.ini instead.

Relative paths in config.ini are resolved against ROOT (the website/ directory,
i.e. this file's directory). Locations *inside* website/ (build, site, repos,
venvs) are derived from ROOT and are not configurable.
"""
import os
import configparser

ROOT = os.path.dirname(os.path.abspath(__file__))          # website/

_cfg = configparser.ConfigParser()
if not _cfg.read(os.path.join(ROOT, "config.ini")):
    raise SystemExit("website_paths: cannot find config.ini next to %s" % __file__)


def _resolve(p):
    """Absolute path: leave as-is. Relative path: resolve against ROOT."""
    return p if os.path.isabs(p) else os.path.normpath(os.path.join(ROOT, p))


# --- external TeX source tree + the files we read from it ---------------------
SOURCE  = _resolve(_cfg["paths"]["source"])
AUX     = _cfg["source_files"]["aux"]
BIB     = _cfg["source_files"]["bibliography"]
PREFACE = _cfg["source_files"]["preface"]
PDF     = _cfg["source_files"]["pdf"]

# --- the render wrapper + server settings -------------------------------------
MASTER  = _cfg["build"]["master"]
OUTDIR  = os.path.splitext(MASTER)[0]                       # e.g. "partI"
PORT    = _cfg["server"]["port"]
TEX_BIN = _cfg.get("tools", "tex_bin", fallback="")

# --- locations inside website/ (derived; not configurable) --------------------
BUILD   = os.path.join(ROOT, "build")
SITE    = os.path.join(ROOT, "site")
WEBHOME = os.path.join(ROOT, "repos", "gerby-website")
WEB     = os.path.join(WEBHOME, "gerby")
STATIC  = os.path.join(WEB, "static")
VENV    = os.path.join(ROOT, "venv")
VENVTEX = os.path.join(ROOT, "venv-tex")
