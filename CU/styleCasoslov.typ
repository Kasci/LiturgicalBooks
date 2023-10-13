#import "/style.typ": *
#import "texts.typ": *

#let si = [
  #lettrine("Сла́ва:") #lettrine("И҆ ны́нѣ:")
]

#let ektenia(num) = [
  #lettrine("Гдⷭ҇и поми́лꙋй.") #primText[(#(num)x)]

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
  
  #subheader[Pondelok - Nedeľa večer, 8. hlas]
  
  #lettrine("Сѐ ны́нѣ бл҃гослови́те гдⷭ҇а всѝ рабѝ гдⷭ҇ни.")
  
  #vers[Стоѧ́щїи во хра́мѣ гдⷭ҇ни, во дво́рѣхъ до́мꙋ бг҃а на́шегѡ.]
  
  #subheader[Utorok - Pondelok večer, 4. hlas]
  
  #lettrine("Гдⷭ҇ь ᲂу҆слы́шитъ мѧ̀, внегда̀ воззва́ти мѝ къ немꙋ̀.")
  
  #vers[Внегда̀ призва́ти мѝ, ᲂу҆слы́ша мѧ̀ бг҃ъ пра́вды моеѧ̀.]
  
  #subheader[Streda - Utorok večer, 1. hlas]
  
  #lettrine("Млⷭ҇ть твоѧ̀ гдⷭ҇и, пожене́тъ мѧ̀ всѧ̑ дни̑ живота̀ моегѡ̀.")
  
  #vers[Гдⷭ҇ь пасе́тъ мѧ̀, и҆ ничто́же мѧ̀ лиши́тъ, на мѣ́стѣ ѕла́чнѣ, та́мѡ всели́ мѧ.]
  
  #subheader[Štvrtok - Streda večer, 5. hlas]
  
  #lettrine("Бж҃е, во и҆́мѧ твоѐ сп҃си́ мѧ, и҆ въ си́лѣ твое́й сꙋди́ ми.")
  
  #vers[Бж҃е, ᲂу҆слы́ши мл҃твꙋ мою̀, внꙋшѝ глаго́лы ᲂу҆́стъ мои́хъ.]
  
  #subheader[Piatok - Štvrtok večer, 6. hlas]
  
  #lettrine("По́мощь моѧ̀ ѿ гдⷭ҇а, сотво́ршагѡ нб҃о и҆ зе́млю.")
  
  #vers[Возведо́хъ ѻ҆́чи моѝ въ го́ры, ѿню́дꙋже прїи́детъ по́мощь моѧ̀.]
  
  #subheader[Sobota - Piatok večer, 7. hlas]
  
  #lettrine("Бж҃е, застꙋ́пникъ мо́й є҆сѝ ты̀, и҆ млⷭ҇ть твоѧ̀ предвари́тъ мѧ̀.")
  
  #vers[И҆зми́ мѧ ѿ вра̑гъ мои́хъ бж҃е, и҆ ѿ востаю́щихъ на мѧ̀ и҆зба́ви мѧ̀.]

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