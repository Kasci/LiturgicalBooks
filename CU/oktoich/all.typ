// #include("/covers/oktoich/H78.typ")

// #show outline.entry.where(level: 1): it => {
//   v(12pt, weak: true)
//   text(18pt, strong(it))
// }
// #show outline.entry.where(level: 2): it => {
//   text(13pt, strong(it))
// }
// #outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)
// #pagebreak()

// #show heading: it => {
//   if it.location().position().y > 500pt {
//     colbreak()
//     it
//   } else {
//     it
//   }
// }

// #include("1hlas.typ")
// #pagebreak()
// #include("2hlas.typ")
// #pagebreak()
// #include("3hlas.typ")
// #pagebreak()
// #include("4hlas.typ")
// #pagebreak()
// #include("5hlas.typ")
// #pagebreak()
// #include("6hlas.typ")
// #pagebreak()
#include("7hlas.typ")
// #pagebreak()
// #include("8hlas.typ")

// #set page(
//     footer: text(8pt, "Errata"),
//     footer-descent: 75%
// )
// #pagebreak()
// #pagebreak()
// #pagebreak()

// #locate(loc => {
//   let hs = query(
//     heading,
//     loc
//   );
//   hs = hs.filter(x => x.location().position().y > 500pt).map(x => [x #x])
// })