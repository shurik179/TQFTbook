#!/usr/bin/env python3
"""Convert an amsrefs bibliography (\\bib{key}{type}{field={..},...}) to BibTeX.
Usage: python amsrefs2bib.py bibliography.tex > tqft.bib
Keeps field values verbatim (LaTeX braces/accents are valid BibTeX)."""
import re, sys

src = open(sys.argv[1]).read()

def read_braced(s, i):
    """s[i] must be '{'. Return (inner_content, index_after_closing_brace)."""
    depth = 0
    start = i + 1
    while i < len(s):
        if s[i] == '{':
            depth += 1
        elif s[i] == '}':
            depth -= 1
            if depth == 0:
                return s[start:i], i + 1
        i += 1
    raise SystemExit("unbalanced braces")

_ACCENT = {r'{\"e}': 'ë', r'{\"o}': 'ö', r'{\"u}': 'ü', r'{\"a}': 'ä',
           r"{\'e}": 'é', r"{\'o}": 'ó', r"{\'a}": 'á', r"{\'c}": 'ć',
           r'{\`e}': 'è', r'{\^e}': 'ê', r'{\^o}': 'ô', r'{\v c}': 'č',
           r'{\v{c}}': 'č', r'{\ss}': 'ß'}
def clean_label(s):
    for k, v in _ACCENT.items():
        s = s.replace(k, v)
    s = re.sub(r'\\["\'`^~=.v]\s*\{?([a-zA-Z])\}?', r'\1', s)  # strip leftover accents
    return s.replace('{', '').replace('}', '').replace('\\', '')

def aux_labels(auxtext):
    """key -> alphabetic label, from amsrefs \\bibcite{key}{{LABEL}{...}} (brace-safe)."""
    labels = {}
    for m in re.finditer(r'\\bibcite\{([^}]*)\}\{', auxtext):
        k = m.end()
        while k < len(auxtext) and auxtext[k] != '{':
            k += 1
        inner, _ = read_braced(auxtext, k)
        labels[m.group(1)] = clean_label(inner)
    return labels

# optional 2nd arg: compiled .aux -> embed the PDF's alphabetic label per entry
LABELS = aux_labels(open(sys.argv[2]).read()) if len(sys.argv) > 2 else {}

FIELD = re.compile(r'([a-zA-Z]+)\s*=\s*\{')

def parse_fields(body):
    """Return list of (name, value); repeated names (author) preserved in order."""
    fields, i = [], 0
    while True:
        m = FIELD.search(body, i)
        if not m:
            break
        val, j = read_braced(body, m.end() - 1)
        fields.append((m.group(1).lower(), val))
        i = j
    return fields

def year_of(date):
    m = re.search(r'\d{4}', date)
    return m.group(0) if m else date

def clean_url(u):
    u = re.sub(r'\\textasciitilde\s*', '~', u)
    u = u.replace(r'$\sim$', '~').replace(r'\sim', '~').replace(r'\~{}', '~')
    return u.rstrip('.,;)')

def split_note_url(note):
    """Pull a URL out of an amsrefs note. Return (url_or_None, note_without_url)."""
    # normalize LaTeX tildes first so a "\textasciitilde " space doesn't cut the
    # URL short during extraction.
    note = re.sub(r'\\textasciitilde\s*', '~', note)
    note = note.replace(r'$\sim$', '~').replace(r'\sim', '~').replace(r'\~{}', '~')
    m = re.search(r'\\url\{([^}]*)\}', note)
    url = m.group(1) if m else None
    if url is None:
        m = re.search(r'https?://[^\s}]+', note)
        url = m.group(0) if m else None
    if url is None:
        return None, note
    rest = re.sub(r'\\url\{[^}]*\}', '', note)
    rest = re.sub(r'https?://[^\s}]+', '', rest)
    rest = re.sub(r'(?i)\bavailable\s+(from|at|as)\b', '', rest)
    rest = re.sub(r'\s+', ' ', rest).strip(' ;,.')
    return clean_url(url), rest

# locate each \bib{KEY}{TYPE}{BODY}
BIB = re.compile(r'\\bib\{([^}]*)\}\{([a-zA-Z]+)\}\s*\{')
entries = []
pos = 0
while True:
    m = BIB.search(src, pos)
    if not m:
        break
    key, atype = m.group(1), m.group(2)
    body, pos = read_braced(src, m.end() - 1)
    entries.append((key, atype, parse_fields(body)))

def emit(key, atype, fields):
    authors, editors, out = [], [], {}
    bibtype = {"article": "article", "book": "book",
               "thesis": "phdthesis"}.get(atype, atype)
    for name, val in fields:
        val = " ".join(val.split())          # collapse internal whitespace/newlines
        if name == "author":
            authors.append(val); continue
        if name == "editor":
            editors.append(val); continue
        if name == "date":
            out["year"] = year_of(val); continue
        if name == "review":                  # {\MR{1414088}} -> 1414088
            mr = re.search(r'\\MR\{([^}]*)\}', val)
            out["mrnumber"] = mr.group(1) if mr else val; continue
        if name == "place":
            out["address"] = val; continue
        if name == "institution":             # thesis
            out["school"] = val; continue
        if name in ("conference", "book"):     # nested -> proceedings article
            bibtype = "incollection"
            for sub, sval in parse_fields(val):
                sval = " ".join(sval.split())
                if sub == "title":
                    out["booktitle"] = sval
                elif sub == "date":
                    out.setdefault("year", year_of(sval))
                elif sub == "place":
                    out["address"] = sval
                else:
                    out.setdefault(sub, sval)
            continue
        out[name] = val
    if authors:
        out["author"] = " and ".join(authors)
    if editors:
        out["editor"] = " and ".join(editors)
    if key in LABELS:
        out["label"] = LABELS[key]

    # eprint: drop the "arXiv:" prefix so the template's arxiv.org/abs link works
    if "eprint" in out:
        out["eprint"] = re.sub(r'(?i)^ar[xX]iv:\s*', '', out["eprint"])
    # a URL inside a note (online-only refs) -> real url field (+ keep the rest)
    if "note" in out and "url" not in out:
        url, rest = split_note_url(out["note"])
        if url:
            out["url"] = url
            if rest:
                out["note"] = rest
            else:
                del out["note"]

    # ordering: author/editor/title first, then the rest
    order = ["label", "author", "editor", "title", "booktitle", "journal", "series",
             "volume", "number", "pages", "publisher", "address", "school",
             "edition", "year", "note", "url", "eprint", "doi", "issn", "isbn",
             "mrnumber", "language", "type"]
    keys = [k for k in order if k in out] + [k for k in out if k not in order]
    lines = ["@%s{%s," % (bibtype, key)]
    for k in keys:
        lines.append("  %s = {%s}," % (k, out[k]))
    lines.append("}")
    return "\n".join(lines)

print("%% Generated from amsrefs by amsrefs2bib.py -- do not edit by hand.\n")
for key, atype, fields in entries:
    print(emit(key, atype, fields))
    print()
sys.stderr.write("converted %d entries\n" % len(entries))
