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
      if h1.len() != 0 {
        let body1 = h1.last().body
        text(8pt, body1)
      }
    }), 
    header-ascent: 75%,
    footer-descent: 75%
  )
  
  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(horizon + center)[#primText[
      #text(hyphenate:false, 45pt)[#it]
    ]]
  ]
  
  show heading.where(level: 2): it => [ 
    #header(it)
  ]
  show heading.where(level: 3): it => [ 
    #subheader(it)
  ]
  show heading.where(level: 4): it => [ 
    #subsubheader(it)
  ]
  show heading.where(level: 5): it => [ 
    #subsubheader(it)
  ]

  // Main body.
  set par(justify: true)
  
  body
}


#show: project

#include("casoslov/vecierne.typ")
#include("casoslov/utierne.typ")
#include("casoslov/casy.typ")