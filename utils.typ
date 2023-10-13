#let project(title: "", authors: (), body) = {
  set page(paper:"a4", numbering: "1 / 1", number-align: center, )
  set text(font: "Monomakh Unicode", lang: "cu")

  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(center, text(0pt, rgb("dd1111"), upper(it)))
  ]
  
  show heading.where(level: 2): it => [ 
    #align(center, text(20pt, rgb("dd5555"), it))
  ]
  show heading.where(level: 3): it => [ 
    #align(center, text(rgb("dd1111"), it))
  ]
  
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]

  // Author information.
  pad(
    top: 0.25em,
    bottom: 0.25em,
    x: 1em,
    grid(
      columns: (1fr, 1fr),
      gutter: 1em,
    ),
  )

  // Main body.
  set par(justify: true)
  
  body
}

#let centerNote(it) = {
  align(center, text(10pt, rgb("dd5555"), "("+it+")"))
}


// -----------------
// TWO/THREE COLS
// -----------------
#let twoCols = false

#let section2(txt) = {
  pad(left: -1em, right: 0.5em, (text(13pt, rgb("dd5555"))[#txt]))
}

#let section3(txt) = {
  pad(left: -1em, right: -13em, (text(13pt, rgb("dd5555"))[#txt]))
}

#let formatr3(r) = {
  if r.len() == 1 {("", section3(r.at(0)), "")}
  else {("", r.at(0), r.at(1))}
}

#let formatr2(r) = {
  if r.len() == 1 {("", section2(r.at(0)))}
  else {("", r.at(0))}
}

#let formatr(r) = {
  if twoCols { formatr2(r) }
  else { formatr3(r) }
}

#let make(values) = {
  table(
    columns: if twoCols {(1em, 1fr)} else {(1em, 1fr, 1fr)},
    stroke: none,
    row-gutter: 0.3em,
    column-gutter: 0.5em,
    ..values.map(formatr).flatten()
  )
}

#let lettrine(txt) = {
  let first = true
  for it in txt {
    if first {
      upper(text(rgb("dd5555"), it))
      first = false
    } else {it}
  }
}
