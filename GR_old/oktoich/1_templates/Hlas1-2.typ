#include("/covers/oktoich/H12_GR.typ")

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  text(18pt, strong(it))
}
#show outline.entry.where(level: 2): it => {
  text(13pt, strong(it))
}
#outline(title: "Πίνακας περιεχομένων", depth: 3, indent: 2em)
#pagebreak()

#include("../0_all/1hlas.typ")
#pagebreak()
#include("../0_all/2hlas.typ")

#set page(
    footer: text(8pt, "Errata"),
    footer-descent: 75%
)
#pagebreak()
#pagebreak()