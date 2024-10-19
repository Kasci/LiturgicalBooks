#import "../../../all.typ": *

#show: book

#include "/covers/oktoich/H12.typ"
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  text(18pt, strong(it))
}
#show outline.entry.where(level: 2): it => {
  text(13pt, strong(it))
}
#outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)
#pagebreak()

#include("../0_all/Hlas1.typ")
#pagebreak()
#include("../0_all/Hlas2.typ")

#set page(
    footer: text(8pt, "Errata"),
    footer-descent: 75%
)
#pagebreak()
#pagebreak()