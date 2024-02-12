#let style(a,b,c,d) = {
  let L = a
  let R = b
  if R.len() != 3 {
    panic("Value on right is: " + str(R.fold("", (a,b) => a+"'"+b+"',")))
  }
  if c != none {
    L = c(L)
  }
  let Rout = R.at(-1)
  if d != none {
    Rout = d(Rout)
  }
  return (L, Rout)
}

#let tbl(ntbl) = {
  if type(ntbl) != "array" {
    panic("Expected value in tbl is array, got: " + type(ntbl))
  }
  table(
    columns: (20pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..(ntbl.map(k => {
        let (a,b,c,d) = k
        style(a,b,c,d)
      }
    )).flatten()
  )
}

#import "/CU/oktoich/Hlas1/0_Nedela.typ" as T: *


#let project(body) = {
  
  set page(
    paper:"a5", 
    numbering: "1", 
    number-align: top+right,  
    margin: (x: 35pt, y: 40pt), 
    // background: bg, 
    header-ascent: 75%,
    footer-descent: 75%
  )
  
  body
}

#let h_st = (
  "И҆зведѝ и҆з̾ темни́цы дꙋ́шꙋ мою̀, и҆сповѣ́датисѧ и҆́мени твоемꙋ̀.",
  "Менѐ ждꙋ́тъ пра́вєдницы, до́ндеже возда́си мнѣ̀.",
  "И҆з̾ глꙋбины̀ воззва́хъ къ тебѣ̀ гдⷭ҇и, гдⷭ҇и, ᲂу҆слы́ши гла́съ мо́й.",
  "Да бꙋ́дꙋтъ ᲂу҆́ши твоѝ, вне́млющѣ гла́сꙋ моле́нїѧ моегѡ̀.",
  "А҆́ще беззакѡ́нїѧ на́зриши гдⷭ҇и, гдⷭ҇и, кто̀ постои́тъ; ꙗ҆́кѡ ᲂу҆ тебѐ ѡ҆чище́нїе є҆́сть.",
  "И҆́мене ра́ди твоегѡ̀ потерпѣ́хъ тѧ̀ гдⷭ҇и, потерпѣ̀ дꙋша̀ моѧ̀ въ сло́во твоѐ, ᲂу҆пова̀ дꙋша̀ моѧ̀ на гдⷭ҇а.",
  "Ѿ стра́жи ᲂу҆́треннїѧ до но́щи, ѿ стра́жи ᲂу҆́треннїѧ, да ᲂу҆пова́етъ і҆и҃ль на гдⷭ҇а.",
  "Ꙗ҆́кѡ ᲂу҆ гдⷭ҇а млⷭ҇ть, и҆ мно́гое ᲂу҆ негѡ̀ и҆збавле́нїе, и҆ то́й и҆зба́витъ і҆и҃лѧ ѿ всѣ́хъ беззако́нїй є҆гѡ̀.",
  "Хвали́те гдⷭ҇а всѝ ꙗ҆зы́цы, похвали́те є҆го̀ всѝ лю́дїе.",
  "Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ.",
)

#set par(justify: true)
#set text(font: "Monomakh Unicode", lang: "ru", fill: black, size: 10pt)

#let double = (a,b,c) => {a(b(c))}

#let RText = (k) => [#text(rgb(90%,10%,10%,100%))[#k]]
#let BText = (k) => [#text(rgb(10%,10%,90%,100%))[#k]]
#let GText = (k) => [#text(rgb(10%,90%,10%,100%))[#k]]
#let GrText = (k) => [#text(rgb(50%,50%,50%,100%))[#k]]

#let off = (k) => pad(left: -20pt)[#k]

#show: rest => project(rest)
#show: rest => columns(2, rest)

= Vecieren 

#let V = T.V;
#let (..Vv, D) = V.at("HV")

#let tableHeader(n) = {
  return ((none, ("", "", n), none, double.with(off, RText)),)
}

#let An = tableHeader("Hospodi Vozvach")
#let A = Vv.map(k => ("X", k, RText, none))
#let Ax = ()
#let N = A.len()
#for i in range(N) {
  Ax.push(("", ("", "", h_st.at(i)), none, GrText))
  Ax.push(A.at(i))
}
#let Bn = tableHeader("Dogmat")
#let B = (("X", D, RText, none),)
#tbl(An+Ax+Bn+B)