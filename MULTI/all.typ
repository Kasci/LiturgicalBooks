#import "../all.typ": *

#let header1 = it => {
  align(center, text(30pt, underline(stroke: (thickness: 6pt, cap: "round"), pad(bottom: 5pt, upper(pText(it))))))
}
#let header2 = it => {
  align(center, text(20pt, underline(stroke: (thickness: 3pt, cap: "round"), pad(bottom: 3pt, pText(it)))))
}
#let header3 = it => {
  align(center, text(15pt, underline(stroke: (thickness: 2pt, cap: "round"), pText(it))))
}
#let header4 = it => align(center, text(15pt, pText(it)))
#let header5 = it => align(center, text(13pt, underline(it)))
#let header6 = it => align(center, text(11pt, underline(it)))

#let four_col_book(body) = {
  
  let bgfunc = if (false) {bg} else {none}

  set page(
    paper:"a4",
    flipped: true,
    numbering: "1", 
    number-align: top+right,  
    margin: (x: 25pt, y: 35pt), 
    background: bgfunc,
    footer: locate(loc => {
      let h1 = query(
        selector(heading.where(level:1)).before(loc),
        loc,
      )
      let h2 = query(
        selector(heading.where(level:2)).before(loc),
        loc,
      )
      let h3 = query(
        selector(heading.where(level:3)).before(loc),
        loc,
      )
      if h1.len() != 0 and h2.len() != 0 and h3.len() != 0 {
        let body1 = h1.last().body
        let body2 = h2.last().body
        let body3 = h3.last().body
        text(8pt, body1 + " - " + body2 + h(1fr) + body3)
      }
    }), 
    header-ascent: 75%,
    footer-descent: 75%
  )

  show heading.where(level:1): header1
  show heading.where(level:2): header2
  show heading.where(level:3): header3
  show heading.where(level:4): header4
  show heading.where(level:5): header5
  show heading.where(level:6): header6

  // set text(font: "Monomakh Unicode", lang: "ru", fill: black)
  // set text(font: "Imx Glycea", lang: "gr", fill: black)

  set par(justify: true, linebreaks: "optimized")

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    text(18pt, strong(it))
  }
  show outline.entry.where(level: 2): it => {
    text(13pt, strong(it))
  }

  // outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)

  show "и҆́мⷬ҇къ": sText
  
  body
}

#let t(tbl) = {
  let vals = tbl.map(it => {
    return (
      table.cell(text(font: "Monomakh Unicode", lang: "ru", fill: black)[#it.at(0)]),
      table.cell(text(font: "Imx Glycea", lang: "gr", fill: black, weight: "semibold")[#it.at(1)]),
      table.cell(text(font: "Monomakh Unicode", lang: "en", fill: black)[#it.at(2)]),
      table.cell(text(font: "Monomakh Unicode", lang: "sk", fill: black)[#it.at(3)]),
    )
  })
  table(
    columns: (auto, auto, auto, auto),
    stroke: none,
    ..vals.flatten()
  )
}