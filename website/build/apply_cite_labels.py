#!/usr/bin/env python3
"""Replace raw citation keys with the alphabetic labels the PDF uses.
The labels come from the compiled .aux (amsrefs writes \\bibcite{key}{{LABEL}{}}).
Usage: python apply_cite_labels.py TQFTnotes.aux <tagdir>
Rewrites the displayed text of cite anchors (<a href="/bibliography/KEY">KEY</a>
-> ...>LABEL</a>); the href (key) is left intact, so citation linking still works.
Also writes labels.csv (key,label) for the website to show on /bibliography."""
import re, sys, os, glob, html

aux, tagdir = sys.argv[1], sys.argv[2]

def read_braced(s, i):
    depth = 0; start = i + 1
    while i < len(s):
        if s[i] == '{': depth += 1
        elif s[i] == '}':
            depth -= 1
            if depth == 0: return s[start:i], i + 1
        i += 1
    raise SystemExit("unbalanced braces")

_ACCENT = {r'{\"e}': 'ë', r'{\"o}': 'ö', r'{\"u}': 'ü', r'{\"a}': 'ä',
           r"{\'e}": 'é', r"{\'o}": 'ó', r"{\'a}": 'á', r"{\'c}": 'ć',
           r'{\`e}': 'è', r'{\^e}': 'ê', r'{\^o}': 'ô', r'{\v c}': 'č',
           r'{\v{c}}': 'č', r'{\ss}': 'ß'}
def clean_label(s):
    for k, v in _ACCENT.items(): s = s.replace(k, v)
    s = re.sub(r'\\["\'`^~=.v]\s*\{?([a-zA-Z])\}?', r'\1', s)
    return s.replace('{', '').replace('}', '').replace('\\', '')

auxtext = open(aux).read()
labels = {}
for m in re.finditer(r'\\bibcite\{([^}]*)\}\{', auxtext):
    k = m.end()
    while k < len(auxtext) and auxtext[k] != '{': k += 1
    inner, _ = read_braced(auxtext, k)
    labels[m.group(1)] = clean_label(inner)

# write a key,label map next to the tags (consumed by the website)
with open(os.path.join(tagdir, "labels.csv"), "w") as f:
    for k, v in labels.items():
        f.write("%s,%s\n" % (k, v))

n = 0
for path in glob.glob(os.path.join(tagdir, "*.tag")):
    s = open(path).read()
    out = s
    for key, label in labels.items():
        anchor = '<a href="/bibliography/%s">%s</a>' % (key, key)
        repl = '<a href="/bibliography/%s">%s</a>' % (key, html.escape(label))
        out = out.replace(anchor, repl)
    if out != s:
        open(path, "w").write(out)
        n += 1
print("relabeled cites in %d tag files (%d labels)" % (n, len(labels)))
