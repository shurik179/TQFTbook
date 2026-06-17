import os
import os.path
import time
import urllib.request
import socket
import feedparser
import re
from flask import Flask, render_template, request, send_from_directory
#import flask_profiler

from peewee import *
from playhouse.sqlite_ext import *

from gerby.configuration import *
from gerby.database import *

db.init(DATABASE)

# Flask setup code
app = Flask(__name__)
app.config.from_object(__name__)

# Comments are runtime data (user-posted), NOT shipped in the repo, so a fresh
# deploy may have no comments.sqlite. Create the DB + table on startup if missing
# (no-op once it exists); this keeps live comments independent of `git pull`.
try:
  comments.create_tables([Comment], safe=True)
except Exception as e:
  app.logger.warning("could not initialize comments table: %s" % e)

#app.config["flask_profiler"] = {
#    "enabled": "true",
#    "storage": {
#        "engine": "sqlite"
#    },
#    "basicAuth": {
#        "enabled": False,
#    },
#    "ignore": ["^/static/.*"]
#}

feeds = {
  "github": {
    "url": "https://github.com/shurik179/tqft-lectures/commits/main.atom",
    "title": "Recent commits",
    "link": "https://github.com/shurik179/tqft-lectures/commits",
  },
  # "Recent blog posts" feed removed per request (was de Jong's Stacks blog).
  # To restore the panel, uncomment this entry:
  # "blog": {
  #   "url": "https://www.math.columbia.edu/~dejong/wordpress/?feed=rss2",
  #   "title": "Recent blog posts",
  #   "link": "https://www.math.columbia.edu/~dejong/wordpress",
  # },
}

# set timeout for feed request
socket.setdefaulttimeout(5)


def get_statistics():
  statistics = []

  if BookStatistic.table_exists():
    try:
      statistics.append(str(BookStatistic.get(BookStatistic.statistic == "pages").value) + " pages")
    except BookStatistic.DoesNotExist:
      app.logger.warning("No entry 'pages' in table 'BookStatistics'.")

    try:
      statistics.append(str(BookStatistic.get(BookStatistic.statistic == "lines").value) + " lines of code")
    except BookStatistic.DoesNotExist:
      app.logger.warning("No entry 'lines' in table 'BookStatistics'.")

  tags = Tag.select().where(Tag.active == True).count()
  statistics.append(str(tags) + " tags")
  statistics.append(str(Tag.select().where(Tag.type == "section").count()) + " sections")
  statistics.append(str(Tag.select().where(Tag.type == "chapter").count()) + " chapters")
  statistics.append(str(Slogan.select().count()) + " slogans")

  return statistics

feedsDirectory = app.instance_path + "/feeds"

def update_feeds():
  # make sure there is a directory
  if not os.path.exists(feedsDirectory):
    os.makedirs(feedsDirectory)

  # update if needed (i.e. older than 1 hour)
  for label, feed in feeds.items():
    path = feedsDirectory + "/" + label + ".feed"
    if not os.path.isfile(path) or time.time() - os.path.getmtime(path) > 3600:
      try:
        urllib.request.urlretrieve(feed["url"], path)
      except:
        # when this happens we should probably add more information etc. but for now it's just caught
        app.logger.warning("feed '%s' did not load properly" % feed["title"])


@app.route("/")
def show_index():
  update_feeds()

  updates = []
  for label, feed in feeds.items():
    update = {"title": "<a href='" + feed["link"] + "'>" + feed["title"] + "</a>", "entries": []}

    d = feedparser.parse(feedsDirectory + "/" + label + ".feed")
    for i in range(min(5, len(d.entries))):
      entry = "<span class='date'>" + time.strftime("%d %b %Y", d.entries[i].updated_parsed) + "</span>: "
      entry = entry + "<a href='" + d.entries[i].link + "'>" + d.entries[i].title + "</a>"
      update["entries"].append(entry)

    updates.append(update)

  comments = []
  if Comment.table_exists():
    comments = Comment.select().where(Comment.active).order_by(Comment.id.desc()).paginate(1, 5)

  for comment in comments:
    comment.tag = Tag.get(Tag.tag == comment.tag)

  return render_template(
      "index.html",
      updates=updates,
      statistics=get_statistics(),
      comments=comments,
      pdf_file=PDF_FILE,
      )


# "About" removed (duplicated the preface). To restore, uncomment + re-add the
# tile (index.html), nav link (layout.html), and sidebar link (macros.html).
# @app.route("/about")
# def show_about():
#   return render_template("single/about.html")

@app.route("/preface")
def show_preface():
  # Body is generated from c0-preface.tex by build_site.py and written next to
  # the database (site/preface.html).
  path = os.path.join(os.path.dirname(DATABASE), "preface.html")
  try:
    content = open(path).read()
  except OSError:
    content = "<p>The preface has not been generated yet.</p>"
  return render_template("single/preface.html", content=content)


@app.route("/" + PDF_FILE)
def show_pdf():
  # The whole book PDF is copied next to the database by build_site.py. Served
  # here so the front-page "Get book as PDF" tile can link to /<PDF_FILE>. The
  # filename comes from config.ini (PDF_FILE).
  return send_from_directory(os.path.dirname(DATABASE), PDF_FILE)


@app.route("/statistics")
def show_statistics():
  # Show the same simple summary as the front-page "Statistics" sidebar.
  # (The original page also listed "most referenced/complex" records, which
  # require cross-reference dependency data not present in small imports.)
  return render_template("single/statistics.html", statistics=get_statistics())


@app.route("/browse")
def show_chapters():
  # part is top-level
  if Tag.select().where(Tag.type == "part").exists():
    chapters = Part.select()
    parts = Tag.select().join(Part, on=Part.part).order_by(Tag.ref).distinct()

    for part in parts:
      part.chapters = sorted([chapter.chapter for chapter in chapters if chapter.part.tag == part.tag])

    return render_template("toc.parts.html", parts=parts)

  # chapter is top-level
  else:
    chapters = Tag.select().where(Tag.type == "chapter")
    chapters = sorted(chapters)

    return render_template("toc.chapters.html", chapters=chapters)


@app.route("/robots.txt")
def show_robots():
  return send_from_directory(app.static_folder, request.path[1:])


app.jinja_env.add_extension('jinja2.ext.do')

import gerby.views.bibliography
import gerby.views.comments
import gerby.views.search
import gerby.views.tag


#flask_profiler.init_app(app)

# Stacks project specific pages
import gerby.views.stacks
