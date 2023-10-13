#import "SK/texts.typ": *

#let velebenie(vozhlas, verse) = [
  #header[Velebenie:] 
  
  #vozhlas
  
  #note[(Opakuje sa po každom verši)]
  
  #primText[Verše:]

  #pad(left:30pt)[
    #let c = counter("verse")
    #c.update(1)    
    #table(
      columns: (auto, auto),
      stroke: none,
      align: (x, y) => (right, left).at(x),
      ..verse.map(v => (primText[#c.display("i"); #c.step()],[#v])).flatten()
    )
  ]
]

#let chvaly() = [
  #K[Modlime sa k Pánovi.]
  
  #L[Pane, zmiluj sa.]
  
  #K[Svätý si, Bože náš, a medzi svätými prebý­vaš a my ti vzdávame slávu, Otcu i Synu i Svätému Duchu, teraz i vždycky i na veky vekov.]
  
  #L[Amen.]
  
  #K[Všetko, čo dýcha, nech chváli Pána.]
  
  #L[Všetko, čo dýcha, nech chváli Pána.]
  #note[(Opakujeme po každom verši)]
  
  #vers[Chváľte Pána v jeho svätyni.]
  
  #vers[Chváľte ho na jeho vznešenej oblohe.]

]

#let nadpis = (
  "Mt": "Čítanie zo svätého evanjelia podľa Matúša",
  "Lk": "Čítanie zo svätého evanjelia podľa Lukáša",
  "Mk": "Čítanie zo svätého evanjelia podľa Marka",
  "Jn": "Čítanie zo svätého evanjelia podľa Jána"
)

#let evanjelium(evajnelista, txt) = [  
  #header[Evanjelium]
  
  #K[Aby nás uznal za hodných vypočuť sväté evanjelium, Pána Boha prosme.]
  
  #L[Pane, zmiluj sa (3x).]
  
  #K[Premúdrosť, pozorne počúvajme sväté evanjelium. Pokoj všetkým!]
  
  #L[I tvojmu duchu.]
  
  #K[#nadpis.at(evajnelista)]

  #L[Sláva tebe, Pane, sláva tebe.]
  
  #K[Vnímajme!]
  
  #txt
  
  #L[Sláva tebe, Pane, sláva tebe.]
  
  #note[Ľud si sadne.]
]

#let verse(vozhlas, verse) = [
  #if (vozhlas != none and verse != none) [
    #header[Verše]
    
    #primText[Vozhlas: ] #vozhlas
  
    #note[(Ľud opakuje po každom verši)]
  
    #let c = counter("verse")
    #c.update(1)    
    #table(
      columns: (auto, auto),
      stroke: none,
      align: (x, y) => (right, left).at(x),
      ..verse.map(v => (primText[#c.display("i"); #c.step()],[#v])).flatten()
    )
  ]
]

#let stichiry(values) = [
  #header[Stichiry]
  
  #let (..all, last) = values

  #let i = 0
  #while i < all.len() {
    stich(..all.at(i))

    if i+1 < all.len() {
      vers(all.at(i+1))
    }
    i = i+2
  }
  
  #sit(..last)
  
]

#let modlitba(txt) = [
  #note[Ľud si kľakne.]

  #K[V pokore kľaknime a v pokoji Pána Boha prosme.]
  
  #L[Pane, zmiluj sa #note[(3x)].]
  
  #K[#txt]
  
  #L[Amen.]
  
  #note[Ľud si sadne.]
]

#let ektenia(prosby) = [
  #header[Ekténia]
  
  #let (first, ..all) = prosby
  
  #K[#first]

  #L[Pane, zmiluj sa #note[(3x po každej prosbe)].]

  #for it in all [
    #it\
    
  ]
  
  #L[Amen.]
]