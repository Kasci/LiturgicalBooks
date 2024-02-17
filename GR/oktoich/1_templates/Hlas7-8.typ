#include("/covers/oktoich/H78_GR.typ")

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  text(18pt, strong(it))
}
#show outline.entry.where(level: 2): it => {
  text(13pt, strong(it))
}
#outline(title: "Πίνακας περιεχομένων", depth: 3, indent: 2em)
#pagebreak()

#include("../0_all/7hlas.typ")
#pagebreak()
#include("../0_all/8hlas.typ")

#set page(
    footer: text(8pt, "Errata"),
    footer-descent: 75%
)
#pagebreak()
#pagebreak()