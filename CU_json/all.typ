// *************
// GENERAL INFO
// *************

#let black = rgb("1f1f1f")
#let gray = rgb("666666")

#let red = rgb("8c1919")
#let lred = rgb("a21d1d")

#let blue = rgb("19538c")
#let lblue = rgb("216db7")

#let green = rgb("198c53")
#let lgreen = rgb("21b76d")

#let gold = rgb("a0740a")
#let lgold = rgb("d0980c")

#let purple = rgb("663399")
#let lpurple = rgb("8c53c6")

#let R = (red, lred)
#let B = (blue, lblue)
#let G = (green, lgreen)
#let D = (gold, lgold)
#let P = (purple, lpurple)

#let (primary, secondary) = R

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

// *************
// METHODS INFO
// *************

#let pText(txt) = text(primary, txt)
#let sText(txt) = text(secondary, txt)
#let gText(txt) = text(gray, txt)

#let print(func, txt) = func(txt)

// *************
// PROJECT INFO
// *************

#let header1 = it => {
  align(center, text(40pt, underline(stroke: (thickness: 6pt, cap: "round"), pText(it))))
}
#let header2 = it => {
  align(center, text(20pt, underline(stroke: (thickness: 3pt, cap: "round"), pText(it))))
}
#let header3 = it => {
  align(center, text(15pt, underline(stroke: (thickness: 2pt, cap: "round", dash: "loosely-dotted"), sText(it))))
}
#let header4 = it => align(center, text(15pt, sText(it)))
#let header5 = it => align(center, text(15pt, underline(it)))
#let header6 = it => align(center, text(15pt, it))

#let project(body) = {
  
  set page(
    paper:"a5", 
    numbering: "1", 
    number-align: top+right,  
    margin: (x: 25pt, y: 35pt), 
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

  set text(font: "Monomakh Unicode", lang: "ru", fill: black)

  // Main body.
  set par(justify: true)
  
  body
}

#let generate(content) = {

  show: project

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    text(18pt, strong(it))
  }
  show outline.entry.where(level: 2): it => {
    text(13pt, strong(it))
  }

  outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)
  pagebreak()

  content
}

// *************
// TEXTS INFO
// *************

#import "texts.typ": *

// *************
// OKTOICH INFO
// *************

#let generateTable(tbl) = [
  #table(
    columns: (20pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl
  )
]

#let jObj(obj) = [
  #if obj.TITLE.len() > 0 [#sText(obj.TITLE): ]
  #if obj.PRIPIV.len() > 0 {sText([(#sym.PP: #obj.PRIPIV) ])} #obj.TEXT
]

#let Generate_HV(obj) = [
  ==== #translation.at("HOSPODI_VOZVACH")

  #let L = obj.HV.len()
  #let verses = stichiry_HospodyVozvach.slice(-1 * L)

  #let c = counter("V")
  #c.update(L)
  #let versesToPrint = verses.map(it => (
    [#sText(c.display("1:")); #c.update(i => i - 1)],[
    #gText(it)
  ]))

  #let stichirasToPrint = obj.HV.map(it => (
    table.cell(colspan: 2, align: left)[#jObj(it)]
  ))

  // Stichiry Hospodi vozvach
  #let tbl = versesToPrint.zip(stichirasToPrint).flatten()

  #tbl.push([#sText(translation.at("SI"))])
  #tbl.push([#jObj(obj.HV_B)])

  #generateTable(tbl)
]

#let Generate_SS(obj, id) = [
  ==== #translation.at("STICHOVNI")

  #let sid = str(id)
  #let verses = stichiry_Stichovni.at(sid)

  #let versesToPrint = verses.map(it => (table.cell(colspan: 2, align: left)[
    #gText(it)
  ]))
  #versesToPrint.push(("","")) // Push to show last stich

  #let c = counter("V")
  #c.update(1)
  #let stichirasToPrint = obj.S.map(it => (
    [#sText(c.display("1:")); #c.step()],
    [#jObj(it)]
  ))

  // Stichiry Hospodi vozvach
  #let tbl = stichirasToPrint.zip(versesToPrint).flatten()
  #tbl.remove(-1) 
  #tbl.remove(-1) // Remove last to artificialy inserted

  #tbl.push([#sText(translation.at("SI"))])
  #tbl.push([#jObj(obj.S_B)])

  #generateTable(tbl)
]

#let Generate_M(obj) = [
  #Generate_HV(obj)
  #Generate_SS(obj, "M")
]

#let Generate_V(obj) = [
  #Generate_HV(obj)
  #Generate_SS(obj, 0)
]

#let Generate_0(day) = [
  == #translation.at("Ne")

  === #translation.at("M")
  #header3([(#translation.at("So_V"))])
  #let M = day.M
  #Generate_M(M)
  === #translation.at("V")
  #header3([(#translation.at("So_V"))])
  #let V = day.V
  #Generate_V(V)
  
]
