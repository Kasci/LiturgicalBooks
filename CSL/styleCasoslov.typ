#import "/style.typ": *
#import "texts.typ": *
#import "textsTmp.typ": *

#let si = [
  #lettrine("Sláva:") #lettrine("I nýňi:")
]

#let ektenia(num) = [
  ==== Ekténia <X>
  
  #lettrine("Hóspodi, pomíluj.") #primText[(#(num)x)]

  #si
]

#let verse(verse) = [
  #let c = counter("verse")
  #c.update(10)

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
  
  === Pondelok - Nedeľa večer, 8. hlas <X>
  
  #lettrine("Sé nýňi blahoslovíte Hóspoda vsí rabý Hóspodni.")
  
  #vers[Stojáščiji v chrámi Hóspodni, vo dvórich Bóhu nášeho.]
  
  === Utorok - Pondelok večer, 4. hlas <X>
  
  #lettrine("Hóspoď uslýšit mjá, vnehdá vozzváti mí k nemú:")
  
  #vers[Vnehdá prizváti mí, uslýša mjá Bóh právdy mojejá.]
  
  === Streda - Utorok večer, 1. hlas <X>
  
  #lettrine("Mílosť tvojá, Hóspodi, poženét mjá, vo svjá dní životá mojehó.")
  
  #vers[Hóspoď pasét mjá, i ničtóže mjá lišít, na mísťi zláčňi támo vselí mjá.]
  
  === Štvrtok - Streda večer, 5. hlas <X>
  
  #lettrine("Bóže, vo ímja tvojé spasí mjá, i síľi tvojéj sudí mí.")
  
  #vers[Bóže uslýši molítvu mojú, vnuší hlahóly úst mojích.]
  
  === Piatok - Štvrtok večer, 6. hlas <X>
  
  #lettrine("Pómošč mojá ot Hóspoda, sotvóršaho nébo i zémľu.")
  
  #vers[Vozvedóch óči mojí v hóry, otňúduže prijídet pómošč mojá.]
  
  === Sobota - Piatok večer, 7. hlas <X>
  
  #lettrine("Bóže zástupnik mój jesí tý, i mílosť tvojá predvarít mjá.")
  
  #vers[Izmí mjá ot vráh mojích Bóže, i ot vostájuščich na mjá, izbávi mjá.]

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
    [],primText("[Bohoródičen]")
  ))
  #table(
    columns: (15pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
]