# Password-protected web UI for comment moderation -- the browser equivalent of
# moderate.py. Lives at /admin/comments, behind HTTP Basic auth (over HTTPS).
#
# Credentials come from the environment so no secret is committed:
#   GERBY_ADMIN_USER      (default "admin")
#   GERBY_ADMIN_PASSWORD  (REQUIRED to enable the page)
# Set them in the PythonAnywhere WSGI file (which is outside the repo). If no
# password is set the page is disabled (returns 404), so there is never an open
# admin with a blank password.
import os
import hmac
import hashlib

from flask import render_template, request, redirect, url_for, abort
from flask_httpauth import HTTPBasicAuth

from gerby.application import app
from gerby.database import Comment

ADMIN_USER = os.environ.get("GERBY_ADMIN_USER", "admin")
ADMIN_PASSWORD = os.environ.get("GERBY_ADMIN_PASSWORD", "")

auth = HTTPBasicAuth()


@auth.verify_password
def _verify(username, password):
  if (ADMIN_PASSWORD
      and hmac.compare_digest(username, ADMIN_USER)
      and hmac.compare_digest(password, ADMIN_PASSWORD)):
    return username
  return None


def _csrf_token():
  # Unguessable without the password, so cross-site POSTs can't forge an action
  # even if the browser still holds the Basic-auth credentials.
  return hashlib.sha256(("gerby-csrf:" + ADMIN_PASSWORD).encode()).hexdigest()


@app.route("/admin/comments")
@auth.login_required
def admin_comments():
  if not ADMIN_PASSWORD:
    abort(404)
  rows = []
  if Comment.table_exists():
    rows = list(Comment.select().order_by(Comment.id.desc()).limit(500))
  return render_template("admin.comments.html", comments=rows, csrf=_csrf_token())


@app.route("/admin/comments/<int:cid>/<action>", methods=["POST"])
@auth.login_required
def admin_comment_action(cid, action):
  if not ADMIN_PASSWORD:
    abort(404)
  if not hmac.compare_digest(request.form.get("csrf", ""), _csrf_token()):
    abort(400)
  if Comment.table_exists():
    try:
      comment = Comment.get(Comment.id == cid)
    except Comment.DoesNotExist:
      abort(404)
    if action == "hide":
      comment.active = False
      comment.save()
    elif action == "show":
      comment.active = True
      comment.save()
    elif action == "delete":
      comment.delete_instance()
    else:
      abort(400)
  return redirect(url_for("admin_comments"))
