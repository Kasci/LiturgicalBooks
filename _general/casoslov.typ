#import "/style.typ": *

#show "povie meno": primText

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

#let project(body) = {
  
  set page(paper:"a5", numbering: "1", number-align: center,  margin: (x: 35pt, y: 40pt), background: bg)
  set text(font: "Monomakh Unicode", lang: "cu")
  
  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(center, text(0pt, rgb("ffffff"), upper(it)))
  ]
  
  show heading.where(level: 2): it => [ 
    #align(center, text(0pt, rgb("ffffff"), it))
  ]
  show heading.where(level: 3): it => [ 
    #align(center, text(0pt, rgb("ffffff"), it))
  ]

  // Main body.
  set par(justify: true)
  
  body
}

#show: project

#include("casoslov/vecierne.typ")
// #include("/SK/casoslov/utierenBezKnaza.typ")
// #include("casoslov/casy.typ")