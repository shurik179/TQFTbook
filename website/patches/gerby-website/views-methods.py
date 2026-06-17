import markdown
import bleach
from mdx_bleach.whitelist import ALLOWED_TAGS
from mdx_bleach.whitelist import ALLOWED_ATTRIBUTES
from mdx_math import MathExtension

from gerby.database import *

def is_math(tag, name, value):
  return name == "type" and value in ["math/tex", "math/tex; mode=display"]


# Stacks flavored Markdown parser
def sfm(comment):
  allowed_attributes = dict(ALLOWED_ATTRIBUTES)
  allowed_attributes["a"] = ["data-tag", "class", "href"]
  allowed_attributes["script"] = is_math

  allowed_tags = list(ALLOWED_TAGS) + ["span", "script"]

  # NOTE: mdx_bleach (a Markdown extension) uses the pre-3.0 Markdown extension
  # API and crashes on Markdown 3.x. So we convert with the math extension only
  # and sanitize the resulting HTML with the bleach library afterwards.
  math = MathExtension(enable_dollar_delimiter=True)
  md = markdown.Markdown(extensions=[math])

  # Stacks flavored Markdown: only \ref{tag}, no longer \ref{label}
  references = re.compile(r"\\ref\{([0-9A-Z]{4})\}").findall(comment)
  tags = Tag.select(Tag.tag, Tag.ref).where(Tag.tag << references)
  tags = {tag.tag: tag.ref for tag in tags}

  for reference in references:
    if reference in tags:
      comment = comment.replace("\\ref{" + reference + "}", "<a href=\"/tag/" + reference + "\" data-tag=\"" + reference + "\">" + tags[reference] + "</a>")
    else:
      comment = comment.replace("\\ref{" + reference + "}", "<a href=\"/tag/" + reference + "\" class=\"tag\">" + reference + "</a>")

  comment = md.convert(comment)
  comment = bleach.clean(comment, tags=allowed_tags, attributes=allowed_attributes, strip=True)
  comment = comment.replace("<script>", "<script type=\"text\">")

  return comment


def getBreadcrumb(tag):
  if tag.type == "item":
    return [tag]

  if tag.type == "part":
    return [tag]

  pieces = tag.ref.split(".")
  refs = [".".join(pieces[0:i]) for i in range(len(pieces) + 1)]

  tags = Tag.select().where(Tag.ref << refs, ~(Tag.type << ["item", "part"]))
  # A breadcrumb is the chain of structural ancestors (chapter/section/...) plus
  # the current tag. Ancestors share a ref-prefix, but so can unrelated content
  # of the same number (e.g. a figure "Caption 1.1" shares ref "1.1" with
  # "Section 1.1"). Keep only headings, plus the current tag itself.
  HEADINGS = ["part", "chapter", "section", "subsection", "subsubsection"]
  tags = [t for t in tags if t.type in HEADINGS or t.tag == tag.tag]
  tags = sorted(tags)

  # if there are parts, we look up the corresponding part and add it
  if Tag.select().where(Tag.type == "part").exists():
    chapter = tags[0]
    part = Part.get(Part.chapter == chapter.tag).part
    tags.insert(0, part)

  return tags


