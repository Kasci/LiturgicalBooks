#import "/style.typ": *

#let make3(txt) = {
  ("", "", txt)
}

#let make4(txt) = {
  ("", none, "", txt)
}

#let makeGray(txt) = {
  txt.at(2) = text(10pt, grayText(txt.at(2)))
  txt
}

#let makeSec(txt) = {
  txt.at(2) = text(10pt, secText(txt.at(2)))
  txt
}

#let makeGray4(txt) = {
  txt.at(3) = text(10pt, grayText(txt.at(3)))
  txt
}

#let makeSec4(txt) = {
  txt.at(3) = text(10pt, secText(txt.at(3)))
  txt
}

#let tblNote(t, txt) = {
  (primText[$#sym.ast.circle$], makeSec(make3(t(txt))))
}

#let styleOne(k) = [
  #if k.at(1).len() > 0 [#secText[($#sym.PP:$ #k.at(1))]\ ]
  #if k.at(0).len() > 0 [#secText[#k.at(0):]] #k.at(2)
]

#let styleOne4(k) = [
  #if k.at(1) != none or k.at(2).len() > 0 [(]
  #if k.at(1) != none [#secText[$#sym.HH$ #k.at(1)]]
  #if k.at(1) != none and k.at(2).len() > 0 [,]
  #if k.at(2).len() > 0 [#secText[$#sym.PP:$ #k.at(2)]]
  #if k.at(1) != none or k.at(2).len() > 0 [)\ ]
  #if k.at(0).len() > 0 [#secText[#k.at(0):]] #k.at(3)
]

#let styleTable3(tbl) = {
  for i in range(tbl.len() - 1) {
    let first = tbl.at(i).at(1).at(2)
    let second = tbl.at(i+1).at(1).at(2)
    if first == second {
      let spl = first.split(" ")
      if spl.len() > 2 {
        tbl.at(i+1).at(1).at(2) = [#spl.slice(0,3).join(" ") ...]
      }
    }
  }
  tbl = tbl.map(k => 
    if k.len() == 2 {
      (k.at(0), styleOne(k.at(1)))
    } else {
      (k.at(0), styleOne(k.at(1)), k.at(2), styleOne(k.at(3)))
    }
  ) 
  table(
    columns: (10pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
}

#let styleTable4(tbl) = {
  for i in range(tbl.len() - 1) {
    let first = tbl.at(i).at(1).at(2)
    let second = tbl.at(i+1).at(1).at(2)
    if first == second {
      let spl = first.split(" ")
      if spl.len() > 2 {
        tbl.at(i+1).at(1).at(2) = [#spl.slice(0,3).join(" ") ...]
      }
    }
  }
  tbl = tbl.map(k => 
    if k.len() == 2 {
      (k.at(0), styleOne4(k.at(1)))
    } else {
      (k.at(0), styleOne4(k.at(1)), k.at(2), styleOne4(k.at(3)))
    }
  ) 
  table(
    columns: (10pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
}