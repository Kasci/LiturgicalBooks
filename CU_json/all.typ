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

#let (primary, secondary, contrast, contrast_secondary) = R+B

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

#let kanonIdx = ("1","2","3","4","5","6","7","8","9")

// *************
// METHODS INFO
// *************

#let pText(txt) = text(primary, txt)
#let sText(txt) = text(secondary, txt)
#let cText(txt) = text(contrast, txt)
#let gText(txt) = text(gray, txt)
#let bText(txt) = text(black, txt)

#let print(func, txt) = func(txt)

#let fixObj(obj) = {
  let ret = ()
  let l = obj.len()
  let i = 1
  let a = obj.at(0)
  ret.push(a)
  while i < l {
    a = obj.at(i - 1)
    let b = obj.at(i)
    if a.TEXT == b.TEXT {
      let bSplit = b.TEXT.split(" ")
      b.TEXT = bSplit.slice(0,3).join(" ") + "..."
    }
    ret.push(b)
    i = i + 1
  }
  // panic(ret)
  return ret
}

// *************
// PROJECT INFO
// *************

#let header1 = it => {
  align(center, text(40pt, underline(stroke: (thickness: 6pt, cap: "round"), upper(pText(it)))))
}
#let header2 = it => {
  align(center, text(20pt, underline(stroke: (thickness: 3pt, cap: "round"), pText(it))))
}
#let header3 = it => {
  align(center, text(15pt, underline(stroke: (thickness: 2pt, cap: "round"), pText(it))))
}
#let header4 = it => align(center, text(15pt, pText(it)))
#let header5 = it => align(center, text(13pt, underline(it)))
#let header6 = it => align(center, text(11pt, underline(it)))

#let book(body) = {
  
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

  set par(justify: true)

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
    column-gutter: 0pt, 
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl
  )
]

#let jObj4(title, hlas, pripiv, txt) = [
  #if title.len() > 0 [#sText(title + ":") ]
  #if hlas != none [#sText(super(translation.at("HLAS"))+str(hlas)) ]
  #if pripiv.len() > 0 {sText([(#super(translation.at("PD"))#pripiv) ])} #txt
]


#let jObj(obj) = [
  #if "TITLE" in obj and obj.TITLE.len() > 0 [#sText(obj.TITLE + ":") ]
  #if "HLAS" in obj and obj.HLAS != none [#sText(super($sym.HH$)+str(obj.HLAS)) ]
  #if "PODOBEN" in obj and obj.PODOBEN.len() > 0 {sText([(#sym.PP: #obj.PODOBEN) ])} #obj.TEXT
]

#let col2(txt) = table.cell(colspan: 2, align: left, txt)