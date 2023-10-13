#import "style.typ": *
#import "SK/texts.typ": *

#let kondak(index, txt, zvolanie) = [
  #align(center)[#primText[#index. KONDÁK]]
  
  #par(first-line-indent: 1em)[#txt]

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

  kondak(index, content.kondak, content.zvolanie)

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
  kondak(13, last.kondak, last.zvolanie)
  note[Tento kondák sa spieva tri razy, ľud vždy odpovedá Aleluja.]
  ikos(13, one.ikos, one.prosby)
  pagebreak()
  kondak(1, one.kondak, one.zvolanie)
  if last.modlitba != none [
    #text(if "velkost" in last {last.velkost} else {8pt})[
      #note[Kňaz: ]#lettrine(last.modlitba)
  
      #note[Ľud: ]#lettrine("Amen")
    ]
  ]
  prepustenie
}