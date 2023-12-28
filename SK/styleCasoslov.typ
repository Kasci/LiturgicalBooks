#import "/style.typ": *
#import "texts.typ": *
#import "textsTmp.typ": *

#let si = [
  #lettrine("Sláva:") #lettrine("I teraz:")
]

#let ektenia(num) = [
  ==== Ekténia <X>

  #lettrine("Pane, zmiluj sa.") #primText[(#(num)x)]

  #si
]

#let zoznam(verse, slava: false) = [
  #let c = counter("verse")
  #c.update(1)

  #let tbl = {
    verse.map(k => (
          primText[#c.display("i:"); #c.step()]
        ,[#k]
      )
    )
  }
  #if slava [#tbl.push((primText[S:I:], si))]
  #table(
    columns: (15pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
]

#let verse(verse, start: 10) = [
  #let c = counter("verse")
  #c.update(start)

  #let tbl = {
    verse.map(k => (
          primText[#c.display("1:"); #c.update(c => c - 1)]
        ,[#k]
      )
    )
  }
  #tbl.push((primText[S:I:], si))
  #table(
    columns: (15pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
]

#let prokimenyVecierne = [
  
  === Pondelok - Nedeľa večer,\ 8. hlas <X>
  
  #lettrine("Hľa, teraz oslavujte Pána, všetci služobníci Pánovi.")
  
  #vers[Ktorí ste v dome Pánovom a na nádvoriach domu nášho Boha.]
  
  === Utorok - Pondelok večer,\ 4. hlas <X>
  
  #lettrine("Pán ma vyslyší, * keď budem volať k nemu.")
  
  #vers[Bože, spravodlivosť moja, vypočuj ma, keď volám o pomoc.]
  
  === Streda - Utorok večer,\ 1. hlas <X>
  
  #lettrine("Tvoja milosť, Pane, bude ma sprevádzať * po všetky dni môjho života.")
  
  #vers[Pán je môj pastier, nič mi nechýba. Pasie ma na zelených pasienkach.]
  
  === Štvrtok - Streda večer,\ 5. hlas <X>
  
  #lettrine("Bože, spas ma svojím menom * a vo svojej moci súď ma.")
  
  #vers[Bože, vypočuj moju modlitbu a vypočuj slová mojich úst.]
  
  === Piatok - Štvrtok večer,\ 6. hlas <X>
  
  #lettrine("Pomoc mi príde od Pána, * ktorý stvoril nebo i zem.")
  
  #vers[Svoj zrak upieram na vrchy. Príde mi odtiaľ pomoc?]
  
  === Sobota - Piatok večer,\ 7. hlas <X>
  
  #lettrine("Bože, ty si môj ochranca, * a tvoja milosť ma sprevádza.")
  
  #vers[Vytrhni ma, Bože, z moci mojich nepriateľov, chráň ma pred tými, čo povstávajú proti mne.]

]

#let slohy(slohy) = [
  #let c = counter("verse")
  #c.update(1)

  #let tbl = {
    slohy.map(k => (
      [],primText[\[#c.display("1.") sloha\]],
          primText[#c.display("i:"); #c.step()]
        ,[#k]
      )
    )
  }
  #tbl.push((
    [],primText[\[#c.display("1.") sloha\]],
    primText[S:I:], si,
    [],primText("[Bohorodičník]")
  ))
  #table(
    columns: (15pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
]

#let verseSoZvolanim(zvolanie, verse, prve: true) = [  
  #if prve [
    #zvolanie
  
    #note[Opakuje sa po každom verši]
  ]
  
  #let c = counter("bjp")
  #c.update(1)

  #let tbl = {
    verse.map(k => (
          primText[#c.display("i:"); #c.step()]
        ,[#k]
      )
    )
  }
  #if not prve {
    tbl.insert(1, [])
    tbl.insert(2, pad(left:-20pt)[#zvolanie])
    tbl.insert(3, [])
    tbl.insert(4, pad(left:-20pt)[#note[Opakuje sa po každom verši]])
  }
  #table(
    columns: (15pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
]

#let svitileny = [
  === Pondelok <X>
  
  #lettrine("Archanjeli a anjeli, kniežatstvá a panstvá, * sily a tróny, aj mnohookí cherubíni a serafíni, * prihovárajte sa za nás, * aby sme boli zachránení pred večným zatratením.")

  #note[alebo]

  #lettrine("Ako Boh si ozdobil nebo hviezdami PAne, * celý svet si ožiaril svojimi anjelmi. * Stvoriteľ vesmíru, zachráň tých, ktorí ťa oslavujú.")

  #si
  
  #lettrine("Najčistejšia, ty si moja zástankyňa, * istá ochrana, aj záchrana celého sveta.* K tebe prichádzam a volám: * \"Zachráň ma pred nerozumnými skutkami, * aby som nebol odsúdený na večné zatratenie. * Pann, pomôž mi, lebo do teba vkladám svoju nádej.\"")

  === Utorok <X>

  #lettrine("Slávny prorok a predchodca milosti, Ján Krstiteľ, * všetkým si hlásal spasiteľné pokánie. * Poukázal si na Baránka, ktorý sníma hriechy sveta. * Aj teraz sa u neho prihováraj za nás, - aby sa nad nami zmiloval.")

  #note[alebo]

  #lettrine("Všetci oslavujeme Jána Krstiteľa, predchodcu Pánovho, * proroka medz prorokmi, * učiteľa v púšti, * Alžebetinho vytúženého syna.")

  #si

  #lettrine("Panna Mária, hovorili o tebe všetci proroci. * Dávid ťa nazval svätou horou, * kadidlom aj svietnikom, - mostom i rukou, ktorá nosila večnú Mannu. * Bohorodička, my ťa chceme výdy dôstojne oslavovať.")

  === Streda <X>

  #lettrine("Ospevujeme svätý kríž, * nepremožiteľnú zbraň aj záruku viery. * Klaniame sa mu s dôverou, * lebo on je naša istota, chvála všetkých kresťanov, * ochrana pravoverných, sláva mučeníkov. * Vždy ho chceme dôstojne uctievať.")

  #note[alebo]

  #lettrine("Svätý kríž je mocnou ochranou celého sveta. * Kríž je ozdobou svätej Cirkvi. * Kríž je silou všetkých nadriadených. * Kríž je oporou veriacich. Svätý kríž je slávou anjelov * a premožiteľom zlého ducha.")

  #si

  #lettrine("Najčistejšia Bohorodička, ty si stála pod krížom * a videla si na ňom svojho Syna pribitého a bez dychu. * Ako jeho Matka si veĺmi trpela * a so slzami v očiach si volala: \"Aký je to veľký zázrak1 * Stvoriteľ sveta zomiera pribitý na drevo kríža.\"")

  === Štvrtok <X>

  #lettrine("Veriaci, dôstojne oslavujme Pánových učeníkov * Petra a Pavla, * Andreja, Jakuba, Bartolomeja, Mateja, * Jakuba, Filipa, Tomáša, Šimona, * Lukáša, Jána a Marka.")

  #note[alebo]

  #lettrine("Pánovi apoštoli, išli ste do celého sveta. * Všetkým ste hlásali Kristovo sväté narodenie z Panny. * Národy ste ochránili pred klamnými náukami * a všetkých ste naučili uctievať si Najsvätejšiu Trojicu.")

  #note[alebo]

  #lettrine("Svätí dvanásti apoštoli, * neprestajne sa prihovárajte za nás u Pána. * Proste spolu s dôstojným otcom Mikulášom, svätiteľom z Myry.")
  
  #si

  #lettrine("Nepoškvrnená Panna, spolu s múdrymi apoštolmi * i s množstvom mučeníkov a so svätým Mikulášom, * prihovárajte sa u Krista, * aby nás ochránil pred každým nedostatkom. * Svoju nádej sme vložili do teba, Bohorodička.")

  === Piatok <X>

  #lettrine("Raduj sa, svätý kríž! * Nepremožiteľná opora sveta, * útočisko trpiacich a ochrana všetkých, ktorí sú v úzskostiach. * Záštita pravoverných, víťaz nad klamným učením. * Ozdoba apoštolov a záchrana veriacich.")

  #note[alebo]

  #lettrine("Svätý kríž je mocnou ochranou celého sveta. * Kráž je ozdobou svätej Cirkvi. * Kríž je silou všetkých nadriadených. * Kráž je oporou veriacich. * Svätý kríž je slávou anjelov * a premožiteľom zlého ducha.")

  #si

  #lettrine("Keď ťa, Pane, Najčistejšia Bohorodička * uzrela pribitého na dreve kríža, * so slzami v očiach zvolala: * \"Akože by nebolo zašlo Slnko, pôvodca svetla? * Nechal si sa pribiť na kríž a svoj bok prebodnúť kopijou?! * Syn môj a Boh môj! * Toto všetko si urobil z lásky k ľuďom, len aby si ich zachránil.\"")

  === Sobota <X>

  #lettrine("Slávni proroci, blažení apoštoli, spravodliví patriarchovia * i zástupy vyznávačov a spravodlivých žien, * aj vy svätí mučeníci! * Všetci spolu s Bohorodičkou proste Pána, * aby sa zmiloval nad nami.")

  #note[alebo]

  #lettrine("Ako Boh si ozdobil nebo hviezdami, Pane, * a celý svet si ožiaril svojimi svätými. * Stvoriteľ vesmíru, zachráň tých, ktorí ťa oslavujú.")

  #si

  #lettrine("Bohorodička, šťastie apoštolov, potešenie zarmútených, * zástankyňa kresťanov, Panna a Matka Pána, * zastaň sa nás a zachráň nás pred večným utrpením.")
]
