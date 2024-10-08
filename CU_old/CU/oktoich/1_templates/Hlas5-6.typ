#include("/covers/oktoich/H56.typ")

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  text(18pt, strong(it))
}
#show outline.entry.where(level: 2): it => {
  text(13pt, strong(it))
}
#outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)
#pagebreak()

#include("../0_all/5hlas.typ")
#pagebreak()
#include("../0_all/6hlas.typ")

#set page(
    footer: text(8pt, "Errata"),
    footer-descent: 75%
)
#pagebreak()
#pagebreak()