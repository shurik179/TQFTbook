#!/usr/bin/env python3
"""Comment moderation (spam control). No venv and no server restart needed — the
running site reads the comments database live.

  python3 moderate.py                  # list all comments (with IDs)
  python3 moderate.py hide   <id>...   # hide a comment (removes it from the site)
  python3 moderate.py show   <id>...   # un-hide (reversible)
  python3 moderate.py delete <id>...   # permanently remove the row

There is NO web/admin login in Gerby — moderation is done here from the terminal.
"hide" is a soft delete (sets active=0); "delete" removes the row for good.
"""
import sqlite3, sys, os

import website_paths as _cfg          # location of site/ comes from config.ini
DB = os.path.join(_cfg.SITE, "comments.sqlite")
con = sqlite3.connect(DB)
args = sys.argv[1:]

if not args or args[0] == "list":
    rows = list(con.execute(
        "select id, tag, author, date, active, comment from comment order by id"))
    if not rows:
        print("(no comments)")
    for cid, tag, author, date, active, body in rows:
        flag = "" if active else "   [HIDDEN]"
        print("#%-4d tag=%-6s %-22s %s%s" % (cid, tag, author, date, flag))
        print("      %s\n" % (body or "").replace("\n", " ")[:140])

elif args[0] in ("hide", "show", "delete") and len(args) > 1:
    for cid in (int(x) for x in args[1:]):
        if args[0] == "delete":
            con.execute("delete from comment where id=?", (cid,))
            print("deleted #%d" % cid)
        else:
            con.execute("update comment set active=? where id=?",
                        (1 if args[0] == "show" else 0, cid))
            print("%s #%d" % ("showing" if args[0] == "show" else "hiding", cid))
    con.commit()

else:
    print(__doc__)
