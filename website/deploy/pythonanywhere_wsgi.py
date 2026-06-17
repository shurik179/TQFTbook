# PythonAnywhere WSGI entry point for the TQFT website.
#
# Copy this content into the WSGI file PythonAnywhere created for your web app
# (Web tab -> "WSGI configuration file", e.g.
#  /var/www/USERNAME_pythonanywhere_com_wsgi.py), replacing whatever is there.
# Change USERNAME below to your PythonAnywhere username.
#
# (The virtualenv is set separately in the Web tab's "Virtualenv" field, not here.)

import sys

USERNAME = "USERNAME"                                   # <-- edit this
WEBSITE  = "/home/%s/TQFTbook/website" % USERNAME        # repo cloned at ~/TQFTbook
GERBY    = WEBSITE + "/repos/gerby-website"

for p in (GERBY, WEBSITE):                               # make `gerby` + website_paths importable
    if p not in sys.path:
        sys.path.insert(0, p)

from gerby.application import app as application          # noqa: E402
