#let fSize = 25pt

#import "/all.typ": *

#let primText(txt) = {
  return text(primary, txt)
}
#let secText(txt) = {
  return text(secondary, txt)
}
#let grayText(txt) = {
  text(gray, txt)
}

#let redText(txt) = {
  text(red, txt)
}
#let blueText(txt) = {
  text(blue, txt)
}
#let greenText(txt) = {
  text(green, txt)
}

#let relax(txt) = {
  text(black, txt)
}

#let small(txt) = {
  text(10pt, txt)
}

#let padNum(num) = {
  if num < 10 {"00"+str(num)}
  else if num < 100 {"0"+str(num)}
  else {str(num)}
}

#let lettrineContent(txt) = {
  
}

#let lettrine(txt, color: black) = {
  let first = true
  for it in txt {
    if first {
      upper(primText(it))
      first = false
    } else {text(color)[#it]}
  }
}

#let superheader(txt) = {
  underline(stroke: (thickness: 3pt, paint: primary))[
    #align(center)[#text(20pt)[
      #primText[#upper[#text(hyphenate:false)[#txt]]]
    ]]
  ]
}
#let header(txt) = {
  align(center)[#text(15pt)[
    #primText[#text(hyphenate:false)[#txt]]
  ]]
}
#let subheader(txt) = {
  underline[#align(center)[#text(13pt)[
    #primText[#txt]
  ]]]
}
#let subsubheader(txt) = {
  underline[#align(center)[#text(10pt)[
    #txt
  ]]]
}

#let lighter(txt) = {
  text(gray, fSize)[#txt]
}

#let D(txt) = {
  header[Дїа́конъ:\ ]
  par(first-line-indent: 1em, justify: true)[#text(fSize)[#txt\ ]]
}
#let K(txt) = {
  header[І̑ерей:\ ]
  text(fSize)[#txt\ ]
}
#let L(txt) = {
  text(fSize)[#primText[Ли́къ:  ]] 
  text(fSize)[#lighter(txt)\ ]
}
#let note(txt) = {
  primText[#txt]
}
#let centerNote(txt) = {
  align(center, primText[#txt])
}
#let vozhlas(txt) = {
  header[Возглаше́нїе:  ]
    par(first-line-indent: 1em, justify: true)[#text(fSize)[#txt\ ]]
}

#let secfmt(r) = {
  let t = r.at(0)
  let txt = r.at(1)
  if t == "knaz" {
    par(first-line-indent: 1em, justify: true)[#text(fSize)[#txt\ ]]
  } else if t == "diakon" {
    par(first-line-indent: 1em, justify: true)[#text(fSize)[#txt\ ]]
  } else if t == "lud" {
    L[#txt]
  } else if t == "vozhlas" {
    vozhlas[#txt]
  } else if t == "note" {
    note(txt)
  } else if t == "header" {
    header(txt)
  } else if t == "hr" {
    line(stroke: red, length: 100%)
    [\ ]
  }
}

#let section(values) = {
  values.map(secfmt).flatten().join()
}


#let smallEktenia(heading, molitva, vozhlas) = (
  ("lud", "Гдⷭ҇и поми́лꙋй."),
  ("diakon", "Застꙋпѝ, спасѝ, поми́лꙋй и҆ сохранѝ на́съ Бж҃е, Твое́ю бл҃года́тїю."),
  ("diakon", "Прест҃ꙋ́ю, пречⷭ҇тꙋю, пребл҃гослове́ннꙋю, сла́внꙋю Влады́чицꙋ на́шꙋ Бцⷣꙋ и҆ приснодв҃ꙋ Марі́ю, со всѣ́ми ст҃ы́ми помѧнꙋ́вше, са́ми себѐ, и҆ дрꙋгъ дрꙋ́га, и҆ ве́сь живо́тъ на́шъ Хрⷭ҇тꙋ̀ Бг҃ꙋ предади́мъ."),
  ("lud", "Тебѣ̀, Гд҇꙼и."),
  ("header", heading),
  ("knaz", lettrine(molitva)),
  ("vozhlas", vozhlas)
)

#let smallEkteniaSection(heading, molitva, vozhlas) = {
  D[Па́ки и҆ па́ки ми́ромъ Гдⷭ҇ꙋ помо́лимсѧ.]
  section(smallEktenia(heading, molitva, vozhlas))
  L[А҆ми́нь.]
}
