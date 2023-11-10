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
  #let is_a = k.at(1) != none
  #let is_b = k.at(2).len() > 0
  #let is_or = is_a or is_b 
  #let is_and = is_a and is_b
  #secText[
    #if is_or [(]
    #if is_a {[$#sym.HH:$ ]; small[#k.at(1)]}
    #if is_and [,]
    #if is_b {[$#sym.PP:$ ]; small[#k.at(2)]}
    #if is_or [)\ ]
  ]
  #if k.at(0).len() > 0 [#secText[#k.at(0):]] #k.at(3)
]

#let styleTable3(tbl) = {
  let ntbl = ()
  ntbl.push(tbl.at(0))
  for i in range(tbl.len() - 1) {
    let (one, two, three) = ("", "", "")
    let (first, second) = (tbl.at(i).at(-1), tbl.at(i+1).at(-1))
    // one - 0 - popis
    if first.at(0) == second.at(0) {
      one = ""
    } else {
      one = second.at(0)
    }
    // two - 1 - podoben
    if first.at(1) == second.at(1) {
      two = ""
    } else {
      two = second.at(1)
    }
    // three - 2 - text
    let spl = second.at(2).split(" ")
    if first.at(2) == second.at(2) and spl.len() > 2 {
        three = [#spl.slice(0,3).join(" ") ...]
    } else {
      four = second.at(2)
    }
    if tbl.at(i+1).len() > 2 {
      ntbl.push((tbl.at(i+1).at(0), tbl.at(i+1).at(1), tbl.at(i+1).at(2), (one, two, three)))
    } else {
      ntbl.push((tbl.at(i+1).at(0), (one, two, three)))
    }
  } 
  table(
    columns: (10pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..(ntbl.map(k => 
      if k.len() == 2 {
        (k.at(0), styleOne3(k.at(1)))
      } else {
        (k.at(0), styleOne3(k.at(1)), k.at(2), styleOne3(k.at(3)))
      }
    )).flatten()
  )
}

#let styleTable4(tbl) = {
  let ntbl = ()
  ntbl.push(tbl.at(0))
  for i in range(tbl.len() - 1) {
    let (one, two, three, four) = ("", none, "", "")
    let (first, second) = (tbl.at(i).at(-1), tbl.at(i+1).at(-1))
    // one - 0 - popis
    if first.at(0) == second.at(0) {
      one = ""
    } else {
      one = second.at(0)
    }
    // two - 1 - hlas
    if first.at(1) == second.at(1) {
      two = none
    } else {
      two = second.at(1)
    }
    // three - 2 - podoben
    if first.at(2) == second.at(2) {
      three = ""
    } else {
      three = second.at(2)
    }
    // four - 3 - text
    let spl = second.at(3).split(" ")
    if first.at(3) == second.at(3) and spl.len() > 2 {
        four = [#spl.slice(0,3).join(" ") ...]
    } else {
      four = second.at(3)
    }
    if tbl.at(i+1).len() > 2 {
      ntbl.push((tbl.at(i+1).at(0), tbl.at(i+1).at(1), tbl.at(i+1).at(2), (one, two, three, four)))
    } else {
      ntbl.push((tbl.at(i+1).at(0), (one, two, three, four)))
    }
  } 
  table(
    columns: (10pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..(ntbl.map(k => 
      if k.len() == 2 {
        (k.at(0), styleOne4(k.at(1)))
      } else {
        (k.at(0), styleOne4(k.at(1)), k.at(2), styleOne4(k.at(3)))
      }
    )).flatten()
  )
}