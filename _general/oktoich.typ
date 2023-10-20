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

  // Main body.
  set par(justify: true)
  
  body
}

#show: project

// #include("/CU/oktoich/all.typ")
#include("/CSL/oktoich/all.typ")