#import "/style.typ": *

#let make(txt) = {
  ("", "", txt)
}

#let makeGray(txt) = {
  txt.at(2) = text(10pt, grayText(txt.at(2)))
  txt
}

#let styleOne(k) = [
  #if k.at(1).len() > 0 [#secText[($#sym.PP:$ #k.at(1))]\ ]
  #if k.at(0).len() > 0 [#secText[#k.at(0):]] #k.at(2)
]

#let styleTable(tbl) = {
  for i in range(tbl.len() - 1) {
    let first = tbl.at(i).at(1).at(2)
    let second = tbl.at(i+1).at(1).at(2)
    if first == second {
      tbl.at(i+1).at(1).at(2) = [#first.split(" ").slice(0,3).join(" ") ...]
    }
  }
  tbl = tbl.map(k => 
    if k.len() == 2 {
      (k.at(0), styleOne(k.at(1)))
    } else {
      (k.at(2), styleOne(k.at(3)), k.at(0), styleOne(k.at(1)))
    }
  ) 
  table(
    columns: (10pt, auto),
    stroke: none,
    align: (x, y) => (right, left).at(x),
    ..tbl.flatten()
  )
}

#let hospodi = (
  make("Izvedí iz temnícy dúšu mojú, ispovídatisja ímeni tvojemú."),
  make("Mené ždút právednicy, dóndeže vozdási mňi."),
  make("Iz hlubiný vozvách k tebí Hóspodi, Hóspodi uslýši hlas moj."),
  make("Da búdut úši tvojí vnémľušči hlásu molénija mojehó."),
  make("Ašče bezzakónija nazriši Hóspodi, Hóspodi kto postojít, jáko u tebé očiščénije jesť."),
  make("Imené rádi tvojehó poterpích ťa Hóspodi, poterpí dušá mojá vo slóvo tvojé, upová dušá mojá na Hóspoda."),
  make("Ot stráži útrenija do nóšči, ot stráži útrénija da upovájet Isrájiľ na Hóspoda."),
  make("Jáko u Hóspoda mílosť i mnóhoje u ného izbavlénije, i toj izbávit isrájiľa ot vsich bezzakónij jehó."),
  make("Chvalíte Hóspoda vsi jazýcy, pochvalíte jehó vsi ľúdije."),
  make("Jáko utverdísja mílosť jehó na nás, i ístina Hospódňa prebyvájet vo vík."),
)

#let stichiry = (
  "-1": (
    make("Pomjanú ímja tvojé vo vsjákom róďi i róďi."),
    make("Slýši dščí i vížď, i prikloní úcho tvojé."),
    make("Licú tvojemú pomóľatsja bohátiji ľúdstiji.")
  ),
  "0": (
    make("Hospóď vocarísja, v ľipótu oblečésja."),
    make("Íbo utverdí vselénnuju, jáže ne podvížitsja."),
    make("Dómu tvojemú podobájet svjatýňa Hóspodi, v dolhotú dníj."),
  ),
  "x": (
    make("K tebí vozvedóch óči mojí, živúščemu na nebesí. Sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hóspodu Bóhu nášemu, dóndeže uščédrit ný."),
    make("Pomíluj nás Hóspodi, pomíluj nás, jáko po mnóhu ispólnichomsja uničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich i uničižénija hórdych."),
  )
)

#let hlasVecieren(day, dayidx) = {
  [==== Hóspodi, vozzvách]

  let c = counter("day")
  let (..verse, last) = day.at("HV")
  c.update(verse.len())
  let h = hospodi.slice(-1*(verse.len()))
  let z = verse.zip(h)
  let tbl = {
    z.map(k => (
          primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
          [], makeGray(k.at(1))
      )
    )
  }
  tbl.push((primText[S:I:], last))
  styleTable(tbl)

  [==== Stichíry na stichovňi]
  
  let (first, ..verse, last) = day.at("S")
  c.update(2)
  let stichy = ()
  if (str(dayidx) in stichiry) {
    stichy = stichiry.at(str(dayidx))
  } else {
    stichy = stichiry.at("x")
  }
  let s = stichy.slice(-1*(verse.len()))
  let z = verse.zip(s)
  let tbl = {
    z.map(k => (
        primText[#c.display("i:"); #c.step()], k.at(0),
          [], makeGray(k.at(1))
      )
    )
  }
  c.update(1)
  tbl.insert(0, (primText[#c.display("i:"); #c.step()], first))
  tbl.push((primText[S:I:], last))
  styleTable(tbl)

  if "T" in day {
    [==== Tropar]
    let (tropar, last) = day.at("T")
    let tbl = (
      (primText[$#sym.TT$], tropar),
      (primText[$#sym.BB$], last)
    )
    styleTable(tbl)
    
  }
}

#let hlasPovecerie(day) = {
  for k in range(1,10) {
    if str(k) in day {
      let c = counter("kanon-vers")
      c.update(1)
      [===== Písň #k]

      let (irmos, ..verse, semilast, last) = day.at(str(k))
      let tbl = {
        verse.map(k => (
          primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      tbl.insert(0,(primText[$#sym.II$], irmos))
      tbl.insert(1,(primText[$#sym.PP$], makeGray(make("Presvjatája Bohoródice spasí nás."))))
      tbl.push((primText[S:], semilast))  
      tbl.push((primText[I:], last))  
      styleTable(tbl)
      
      if k == 6 {
        [===== Sidálen]
        [
          #set par(first-line-indent: 1em)
          #styleOne(day.at("S").at(0))
        ]
      }
    }
  }
}

#let hlasPolnocnica(day) = {
  for k in range(1,10) {
    if str(k) in day {
      let c = counter("kanon-vers")
      c.update(1)
      [===== Písň #k]

      let (irmos, ..verse, semilast, last) = day.at(str(k))
      let tbl = {
        verse.map(k => (
          primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      tbl.insert(0,(primText[$#sym.II$], irmos)) 
      tbl.insert(1,(primText[$#sym.PP$], makeGray(make("Presvjatája Tróice Bóže náš, sláva tebí."))))   
      tbl.push((primText[S:], semilast))  
      tbl.push((primText[I:], last))  
      styleTable(tbl)
      
      if k == 3 {
        [===== Sidálen]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S1").at(0)))
        sdl.push((primText[S:I:], day.at("S1").at(1)))
        styleTable(sdl)
      }
      if k == 6 {
        [===== Sidálen]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S2").at(0)))
        sdl.push((primText[S:I:], day.at("S2").at(1)))
        styleTable(sdl)
      }
    }
  }
}

#let pripivy = (
  "0": (
    ("Sláva Hóspodi svjatómu voskreséniju tvojemú."),
    ("Sláva Hóspodi krestú tvojemú i voskreséniju."), //FIXME: chcek correct translation
    ("Presvjatája Bohoródice, spasi nás.") //FIXME: chcek correct translation
  ),
  "6": () 
)

#let pripiv(day, kanon, stich) = {
  pripivy.at(str(day)).at(int(kanon)-1)
}

// TODO: move to corresponding language package
#let typs = (
  "0": (
    "Kanón voskrésnyj",
    "Kanón krestovoskresnyj",
    "Kanón presvjaťíj Bohoródici"
  ),
  "1": (
    "Kanón umilíteľnyj",
    "Kanón bezplótnym"
  ),
  "2": (
    "Kanón pokajánen",
    "Kanón svjatómu velíkomu proróku Joánnu predtéči"
  ),
  "3": (
    "Kanón čestnómu i životvorjáščemu krestú",
    "Kanón presvjaťíj Bohoródici"
  ),
  "4": (
    "Kanón svjatým apóstolom",
    "Kanón Nikoláju čudotvórcu"
  ),
  "5": (
    "Kanón čéstnómu i životvorjáščemu krestú",
    "Kanón presvjaťíj Bohoródici"
  ),
  "6": (
    "Kanón svjatým múčenikom, i svjatítelem, i prepodóbnym i usópšym",
    "Kanón usópšym"
  )
)

#let kanonUtieren(kanon, dayIdx) = {
  let typ = typs.at(str(dayIdx))
  if "?" in kanon {
    typ = kanon.at("?")
  }
  for k in range(1,10) {
    let kk = "P"+str(k)
    if kk in kanon {
      [===== Písň #k]
      let piesen = kanon.at(kk)
      for i in range(1, 4) {
        if str(i) in piesen {
          let c = counter("kanon-vers")
          c.update(1)
          let y = piesen.at(str(i))
          let tbl = ()
          if dayIdx == 6 {
            let (irmos, ..verse, semilast, last) = y
            tbl = {
              verse.map(k => (
                primText[#c.display("i:"); #c.step()], k
                )
              )
            }
            tbl.insert(0,(primText[$#sym.II _#i$], irmos)) 
            tbl.push((primText[S:], semilast)) 
            tbl.push((primText[I:], last)) 
          } else if dayIdx in (0,3,5) {
            let (irmos, ..verse) = y
            tbl = {
              verse.map(k => (
                primText[#c.display("i:"); #c.step()], k
                )
              )
            }
            tbl.insert(0,(primText[$#sym.II _#i$], irmos)) 
          } else {
            let (irmos, ..verse, last) = y
            tbl = {
              verse.map(k => (
                primText[#c.display("i:"); #c.step()], k
                )
              )
            }
            tbl.insert(0,(primText[$#sym.II _#i$], irmos)) 
            tbl.push((primText[S:I:], last)) 
          }
          // TODO: pridat pripivy
          if dayIdx == 0 {
            let p = pripiv(dayIdx, i, 0)
            tbl.insert(1,(primText[$#sym.PP$], makeGray(make(p))))   
          }
          if typ != none {
            tbl.insert(0, ("", make(secText(typ.at(i - 1))))            )
          }
          styleTable(tbl)
        }
      }
      
      if k == 6 and "K" in kanon {
        [===== Kondák i Ikos]
        let (kon, ikos) = kanon.at("K")
        let tbl = ()
        tbl.push((primText[$#sym.KK$], kon))    
        tbl.push((primText[$#sym.II #sym.KK$], ikos))  
        styleTable(tbl)
      }
    }
  }
}

#let chvalite = (
  make("Sotvoríti v ních súd napísan, sláva sijá búdet vsím prepodóbnym jehó."),
  make("Chvalíte Bóha vo svjatých jehó, chvalíte jehó v utverždéniji síly jehó."),
  make("Chvalíte jehó na sílach jehó, * chvalíte jehó po mnóžestvu velíčestvija jehó."),
  make("Chvalíte jehó v hlási trúbňim, * chvalíte jehó v psaltíri i húsľich."),
  make("Chvalíte jehó v tympáňi i líci, * chvalíte jehó v strúnach i orháňi."),
  make("Chvalíte jehó v kymváľich dobrohlásnych, chvalíte jehó v kymváľich vosklicánija, * vsjákoje dychánije da chvalít Hóspoda."),
  make("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."),
  make("Ispovímsja tebí Hóspodi, vsím sérdcem mojím, povím vsjá čudesá tvojá."),
)

#let hlasUtieren(day, dayIdx) = {
  let c = counter("day")

  if "T" in day {
    [==== Tropar]
    let (tropar, bohorodicen) = day.at("T")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], tropar))    
    tbl.push((primText[$#sym.BB$], bohorodicen))  
    styleTable(tbl)
  }
  
  [==== Sidaleny]
  for i in range(1,4) {
    let s = "S"+str(i)
    if s in day {
      [===== Po #(i)-om stichoslovii]
    
      c.update(1)
      let (..verse, last) = day.at(s)
      let tbl = {
        verse.map(k => (
              primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      if dayIdx == 0 {
        if i == 1 {
          tbl.insert(1, (primText[$#sym.SS #sym.TT$],makeGray(make("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."))))
        } else if i == 2 {
          tbl.insert(1, (primText[$#sym.SS #sym.TT$],makeGray(make("Ispovímsja tebí Hóspodi vsím sérdcem mojím, povím vsjá čudesá tvojá."))))
        }
      }
      tbl.push((primText[S:I:], last))    
      styleTable(tbl)
    }
  }

  if "Y" in day {
    [==== Ypakoj]
    let k = day.at("Y").at(0)
    styleOne(k)
  }

  if "A1" in day [==== Stepénny]
  for i in range(1,4) {
    let a = "A"+str(i)
    if a in day {
      [===== Antifón #i]
      c.update(1)
      let (..verse, semilast, last) = day.at(a)
      let tbl = {
        verse.map(k => (
              primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      tbl.push((primText[S:], semilast)) 
      tbl.push((primText[I:], last))
      styleTable(tbl)
    }
  }

  if "P" in day {
    [==== Prokimen]
    let (prokimen, versv) = day.at("P")
    [
    #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[Stich:] #versv.at(2)
    ]
  }
  
  [==== Kanon]

  let kanon = day.at("K")
  kanonUtieren(kanon, dayIdx)

  if "CH" in day {
    [==== Chvalite]
    let tbl = {}
    if dayIdx == 0 {
      /* NEDELA */
      let (..verse) = day.at("CH")
      let b = chvalite.slice(-1*(verse.len()))
      let z = verse.zip(b)
      c.update(verse.len())
      tbl = {
        z.map(k => (
              primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0),
              [], makeGray(k.at(1))
          )
        )
      }
      styleTable(tbl)
    } else {
      /* TYZDEN */
      let (..verse, last) = day.at("CH")
      let b = chvalite.slice(-1*(verse.len()+2),-2)
      let z = verse.zip(b)
      c.update(verse.len())
      tbl = {
        z.map(k => (
              primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0),
              [], makeGray(k.at(1))
          )
        )
      }
      tbl.push((primText[S:I:], last))
      styleTable(tbl)
    }
  }

  if "ST" in day {
    [==== Stichíry stichóvňi]
    let (..verse, last) = day.at("ST")
    c.update(verse.len())
    let tbl = {
      verse.map(k => (
            primText[#c.display("i:"); #c.update(c => c - 1)], k
        )
      )
    }
    tbl.push((primText[S:I:], last))
    styleTable(tbl)
  }

  if "T2" in day {
    [==== Tropar]
    let tropar = day.at("T2").at(0)
    let tbl = ()
    tbl.push((primText[$#sym.TT$], tropar))    
    // tbl.push((primText[$#sym.BB$], bohorodicen))  
    styleTable(tbl)
  }
}

#let blazenstva = (
  make("Blažéni níščiji Dúchom, jáko ťích jésť cárstvo nebésnoje."),
  make("Blažéni pláčuščiji, jáko tíji uťíšatsja."),
  make("Blažéni krótcyji, jáko tíji nasľíďat zémľu."),
  make("Blaženi alčuščiji i žažduščiji pravdy, jako tiji nasyťatsja."),
  make("Blaženi milostiviji, jako tiji pomilovani budut."),
  make("Blažéni čístiji sérdcem, jáko tíji Bóha úzrjat."),
  make("Blažéni mirotvórcy, jáko tíji Sýnove Bóžiji narekútsja."),
  make("Blažéni izhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
  make("Blažéni jesté, jehdá ponósjat vám, i iždenút, i rekút vsják zól hlahól na vý lžúšče mené rádi."),
  make("Rádujtesja i veselítesja, jáko mzdá váša mnóha na nebesích.")
)

#let hlasLiturgia(day) = {
  if "B" in day {
    [==== Blažénna]
    let c = counter("day")
    let (..verse, semilast, last) = day.at("B")
    c.update(verse.len())
    let b = blazenstva.slice(-1*(verse.len()))
    let z = verse.zip(b)
    let tbl = {
      z.map(k => 
        if k.at(1).at(2) == "" {(
          primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0)
        )} else {(
          primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0), 
          primText[$#sym.SS #sym.TT$], makeGray(k.at(1))
        )}
      )
    }
    tbl.push((primText[S:], semilast))
    tbl.push((primText[I:], last))
    styleTable(tbl)
  }

  if "TKB" in day {
    [==== Tropár i Kondák]
    let (t,k,b) = day.at("TKB")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], t))
    tbl.push((primText[$#sym.KK$], k))
    tbl.push((primText[$#sym.BB$], b))
    styleTable(tbl)    
  }
  
  if "P" in day {
    let (prokimen, vers, aleluja, versA) = day.at("P")
    [==== Prokimen]
    [
    #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[Stich:] #vers.at(2)
    ]
    [===== Allilúia]
    [
    #set par(first-line-indent: 1em)
      #aleluja.at(2)
      
      #primText[Stich:] #versA.at(2)
    ]
  }
}

#let hlas_all(ne_m, ne_v, ne_p, ne_n, ne_u, ne_l, 
            po_v, po_p, po_u, po_l,
            ut_v, ut_p, ut_u, ut_l, 
            sr_v, sr_p, sr_u, sr_l, 
            st_v, st_p, st_u, st_l, 
            pi_v, pi_p, pi_u, pi_l, 
            so_v, so_p, so_u, so_l) = [
  #show: rest => columns(2, rest)
  
  == Nedeľa
  === Malá večiereň\ (v sobotu večer)
  #hlasVecieren(ne_m, -1)
  #colbreak(weak: true)
  === Večiereň\ (v sobotu večer)
  #hlasVecieren(ne_v, 0)
  #colbreak(weak: true)
  === Povečerie\ (v sobotu v noci)
  #hlasPovecerie(ne_p)
  #colbreak(weak: true)
  === Polnočnica
  #hlasPolnocnica(ne_n)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(ne_u, 0)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(ne_l)
  #colbreak(weak: true)
  
  == Pondelok
  === Večiereň\ (v nedeľu večer)
  #hlasVecieren(po_v, 1)
  #colbreak(weak: true)
  === Povečerie\ (v nedeľu v noci)
  #hlasPovecerie(po_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(po_u, 1)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(po_l)
  #colbreak(weak: true)
  
  == Utorok
  === Večiereň\ (v pondelok večer)
  #hlasVecieren(ut_v, 2)
  #colbreak(weak: true)
  === Povečerie\ (v pondelok v noci)
  #hlasPovecerie(ut_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(ut_u, 2)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(ut_l)
  #colbreak(weak: true)
  
  == Streda
  === Večiereň\ (v utorok večer)
  #hlasVecieren(sr_v, 3)
  #colbreak(weak: true)
  === Povečerie\ (v utorok v noci)
  #hlasPovecerie(sr_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(sr_u, 3)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(sr_l)
  #colbreak(weak: true)
  
  == Štvrtok
  === Večiereň\ (v stredu večer)
  #hlasVecieren(st_v, 4)
  #colbreak(weak: true)
  === Povečerie\ (v stredu v noci)
  #hlasPovecerie(st_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(st_u, 4)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(st_l)
  #colbreak(weak: true)
  
  == Piatok
  === Večiereň\ (vo štvrtok večer)
  #hlasVecieren(pi_v, 5)
  #colbreak(weak: true)
  === Povečerie\ (v štvrtok v noci)
  #hlasPovecerie(pi_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(pi_u, 5)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(pi_l)
  #colbreak(weak: true)
  
  == Sobota
  === Večiereň\ (v piatok večer)
  #hlasVecieren(so_v, 6)
  #colbreak(weak: true)
  === Povečerie\ (v piatok v noci)
  #hlasPovecerie(so_p)
  #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(so_u, 6)
  #colbreak(weak: true)
  === Liturgia
  #hlasLiturgia(so_l)
  #colbreak(weak: true)
]