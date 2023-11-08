#import "/style.typ": *

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

#let project(body) = {
  
  set page(
    paper:"a5", 
    numbering: "1", 
    number-align: top+right,  
    margin: (x: 35pt, y: 40pt), 
    background: bg,
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
      let body1 = h1.last().body
      let body2 = h2.last().body
      let body3 = h3.last().body
      text(8pt, body1 + " - " + body2 + h(1fr) + body3)
    }), 
    header-ascent: 75%,
    footer-descent: 75%
  )

  
  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(horizon + center)[#primText[
      #text(40pt)[#it]
    ]]
  ]
  
  show heading.where(level: 2): it => [ 
    #superheader(it)
  ]
  show heading.where(level: 3): it => [ 
    #header(it)
  ]
  show heading.where(level: 4): it => [ 
    #subheader(it)
  ]
  show heading.where(level: 5): it => [ 
    #subsubheader(it)
  ]

  show "(N.):": secText

  // Main body.
  set par(justify: true)
  
  body
}

#show: project

// #set text(font: "Monomakh Unicode", lang: "ru", fill: black)
// #include("/CU/minea/0_vseob/00_all.typ")
#set text(font: "Monomakh Unicode", lang: "cs", fill: black)
#include("/CSL/minea/0_vseob/00_all.typ")