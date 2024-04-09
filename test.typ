#import "CU_json/all.typ": *

#let c_clef = str.from-unicode(0x1D11E)
#let f_clef = str.from-unicode(0x1D122)

#let full_note = str.from-unicode(0x1D15D)
#let half_note = str.from-unicode(0x1D15E)
#let quarter_note = str.from-unicode(0x1D15F)
#let eigth_note = str.from-unicode(0x1D160)
#let sixteenth_note = str.from-unicode(0x1D161)
#let thirtysecond_note = str.from-unicode(0x1D162)
#let sixtyfourth_note = str.from-unicode(0x1D163)
#let hundredtwentyeigth_note = str.from-unicode(0x1D165)

#let dys = (
  "C-": 0pt,
  "D-": 3pt,
  "E-": 6pt,
  "F-": 9pt,
  "G-": 12pt,
  "A-": 15pt,
  "H-": 18pt,
  "B-": 18pt,
  "C": 21pt,
  "D": 24pt,
  "E": 27pt,
  "F": 30pt,
  "G": 33pt,
  "A": 36pt,
  "H": 39pt,
  "B": 39pt,
  "C+": 42pt,
  "D+": 45pt,
  "E+": 48pt,
  "F+": 51pt,
  "G+": 54pt,
  "A+": 57pt,
  "H+": 60pt,
  "B+": 60pt,
)

#let lengths = (
  "1": full_note,
  "2": half_note,
  "4": quarter_note,
  "8": eigth_note,
  "16": sixteenth_note,
  "32": thirtysecond_note,
  "64": sixtyfourth_note,
  "128": hundredtwentyeigth_note,
)

#let getNotes(notes, lyrics) = {
  let dx = 30pt
  for (idx,note) in notes.enumerate() {
    let tone = note.trim(regex("\d"), at: end)
    let length = note.trim(regex("\D"))
    let angle = 0deg
    let dy = /*-35.3pt*/ 0.7pt - dys.at(tone)
    let dyoff = 0pt
    let dxoff = 0pt
    if tone in ("B","H","C+","D+","E+","F+","G+","A+","H+","B+") {
      angle = 180deg
      dyoff = 11pt
      // dxoff = 2pt
    }
    place(dx: dx + dxoff, dy: dy + dyoff, text(size: 25pt, rotate(angle, lengths.at(length))))
    if tone in ("C","A+","H+","B+") {
      place(line(start: (dx - 4pt,dy + 14.5pt), length: 20pt))
    }
    if lyrics != none {
      place(dx: dx, dy: 5pt, text(size: 12.5pt, lyrics.at(idx)))
    }
    dx += 20pt
  }
}

#let chordsSplit(notes) = return notes.split(" ")

#let chord(notes, lyrics) = {
  let ns = (notes,)
  let ls = (lyrics,)
  if notes.len() > 15 {
    ns = notes.chunks(15)
    if lyrics != none {
      ls = lyrics.chunks(15)
    }
  }
  set line(length: 100%)
  for n in ns {
    box(
      stack(
        spacing: 6pt,
        line(),
        line(),
        line(),
        line(),
        line(),
        place(dx: 0pt, dy:-23.5pt, text(size: 25pt, c_clef)),
        // line(),
        // line(),
        // line(),
        // line(),
        // line(),
        // place(dx: 0pt, dy:-23.5pt, text(size: 25pt, f_clef)),
        getNotes(
          n,
          ls.at(0)
        )
      ),
    )
  }
}

// #show: book

#chord(
  chordsSplit("F2 F2 F2 F2 F4 F4 F4 G4 A4 F4 G4 A4"),
  chordsSplit("Vo sel je si ar chi je - rej ju - -")
)

// 
// ("C4","D4","E4","F4","G4","A4","H4","C+4","D+4","E+4","F+4","G+4","A+4","H+4"),
// "C1","D2","E4","F8","G16","A32","H64","C+1","D+2","E+4","F+8","G+16","A+32"
//"C-1","D-2","E-4","F-8","G-16","A-32","B-64",
// ,"D+2","E+4","F+8","G+16","A+32","B+64"