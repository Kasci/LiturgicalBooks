#import "/style.typ": *
#import "./textsTmp.typ": *

#let kondak(index, txt, zvolanie, velkost: none) = [
  #align(center)[#primText[#index. KONDÁK]]
  
  #par(first-line-indent: 1em, text(if (velkost == none) {11pt} else {velkost}, txt))

  #if zvolanie == none {
    pad(left: 30pt)[Aleluja, aleluja, aleluja.]
  } else {
    pad(left: 30pt)[#zvolanie]
  }
]

#let ikos(index, txt, zvolania) = [
  #align(center)[#primText[#index. IKOS]]
  
  #par(first-line-indent: 1em)[#txt]

  #let (..all, last) = zvolania
  #let c = counter("c");
  #c.update(1)
  
  #pad(left: 30pt)[
    #table(
      columns: (30pt, auto),
      stroke: none,
      align: (x, y) => (right, left).at(x),
      ..all.map(k => ([#primText[#c.display("i:")]; #c.step()],[#k])).flatten()
    )
  ]
  #pad(left: 30pt)[#last]
]

#let akatistPage(index, content) = {
  pagebreak()

  kondak(index, content.kondak, content.zvolanie, velkost: if "kondak_velkost" in content {content.kondak_velkost} else {none})

  ikos(index, content.ikos, content.prosby)
}

#let akatistGenerate(content) = {
  pagebreak()
  nacaloPoOtcenas

  let counter = counter("kondak")
  counter.update(1)
  
  let (..all, last) = content
  for page in all {
    akatistPage(counter.display(), page)
    counter.step()
  }
  let one = content.at(0)
  pagebreak()
  kondak(13, last.kondak, last.zvolanie, velkost: 10pt)
  note[Tento kondák sa spieva tri razy, ľud vždy odpovedá Aleluja.]
  ikos(13, one.ikos, one.prosby)
  pagebreak()
  kondak(1, one.kondak, one.zvolanie, velkost: 10pt)
  if last.modlitba != none [
    #text(if "velkost" in last {last.velkost} else {9pt})[
      #note[Sv: ]#lettrine(last.modlitba)
  
      #note[L: ]#lettrine("Amiň.")
    ]
  ]
  prepustenie
}