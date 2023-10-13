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

#let hlasVecieren(day) = {
  /**
  * HOSPODI VOZVACH
  */
  subheader[Hóspodi, vozzvách]

  let c = counter("day")
  let (..verse, last) = day.at("HV")
  c.update(verse.len())
  let tbl = {
    verse.map(k => (
          primText[#c.display("1:"); #c.update(c => c - 1)], k
      )
    )
  }
  tbl.push((primText[S:I:], last))
  styleTable(tbl)

  /**
  * STICHIRY
  */
  subheader[Stichíry na stichovňi]
  
  let (..verse, last) = day.at("S")
  c.update(1)
  let tbl = {
    verse.map(k => (
        primText[#c.display("i:"); #c.step()], k
      )
    )
  }
  tbl.push((primText[S:I:], last))
  styleTable(tbl)

  /**
  * TROPAR
  * - not mandartory
  */
  if "T" in day {
    subheader[Tropar]
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
      subsubheader[Písň #k]

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
        subsubheader[Sidálen]
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
      subsubheader[Písň #k]

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
        subsubheader[Sidálen]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S1").at(0)))
        sdl.push((primText[S:I:], day.at("S1").at(1)))
        styleTable(sdl)
      }
      if k == 6 {
        subsubheader[Sidálen]
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
    ("*Sláva Hóspodi krestú tvojemú i voskreséniju."),
    ("*Presvjatája Hospože Bohoródice, spasi nás.")
  ),
  "6": () 
)

#let pripiv(day, kanon, stich) = {
  pripivy.at(str(day)).at(int(kanon)-1)
}

#let kanonUtieren(kanon, dayIdx) = {
  let typ = none
  if "?" in kanon {
    typ = kanon.at("?")
  }
  for k in range(1,10) {
    let kk = "P"+str(k)
    if kk in kanon {
      subsubheader[Písň #k]
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
          // if dayIdx == 0 {
          //   let p = pripiv(dayIdx, i, 0)
          //   tbl.insert(1,(primText[$#sym.PP$], makeGray(make(p))))   
          // }
          if typ != none {
            tbl.insert(0, ("", make(secText(typ.at(i - 1))))            )
          }
          styleTable(tbl)
        }
      }
      /**
      * KONDAK & IKOS
      * - not mandatory
      */
      if k == 6 and "K" in kanon {
        subsubheader[Kondák i Ikos]
        let (kon, ikos) = kanon.at("K")
        let tbl = ()
        tbl.push((primText[$#sym.KK$], kon))    
        tbl.push((primText[$#sym.II #sym.KK$], ikos))  
        styleTable(tbl)
      }
    }
  }
}

#let hlasUtieren(day, dayIdx) = [
  #let c = counter("day")

  #if "T" in day {
    subheader[Tropar]
    let (tropar, bohorodicen) = day.at("T")
    let tbl = ()
        tbl.push((primText[$#sym.TT$], tropar))    
        tbl.push((primText[$#sym.BB$], bohorodicen))  
        styleTable(tbl)
  }
  
  #subheader[Sidaleny]
  #for i in range(1,4) {
    let s = "S"+str(i)
    if s in day {
      subsubheader[Po #(i)-om stichoslovii]
    
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

  #if "Y" in day {
    subheader[Ypakoj]
    let k = day.at("Y").at(0)
    styleOne(k)
  }

  #if "A1" in day [#subheader[Stepénny]]
  #for i in range(1,4) {
    let a = "A"+str(i)
    if a in day {
      subsubheader[Antifón #i]
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

  #if "P" in day {
    subheader[Prokimen]
    let (prokmien, versv) = day.at("P")
    [
    #set par(first-line-indent: 1em)
      #prokmien.at(2)
      
      #primText[Stich:] #versv.at(2)
    ]
  }
  
  #subheader[Kanon]

  #let kanon = day.at("K")
  #kanonUtieren(kanon, dayIdx)

  #if "CH" in day {
    subheader[Chvalite]
    let tbl = {}
    if dayIdx == 0 {
      /* NEDELA */
      let (..verse) = day.at("CH")
      c.update(verse.len())
      tbl = {
        verse.map(k => (
              primText[#c.display("i:"); #c.update(c => c - 1)], k
          )
        )
      }
      styleTable(tbl)
    } else {
      /* TYZDEN */
      let (..verse, last) = day.at("CH")
      c.update(verse.len())
      tbl = {
        verse.map(k => (
              primText[#c.display("i:"); #c.update(c => c - 1)], k
          )
        )
      }
      tbl.push((primText[S:I:], last))
      styleTable(tbl)
    }
  }

  #if "PO" in day {
    subheader[Stichíry pokójny]
    let (..verse, last) = day.at("PO")
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

  #if "T2" in day {
    subheader[Tropar]
    let tropar = day.at("T2").at(0)
    let tbl = ()
        tbl.push((primText[$#sym.TT$], tropar))    
        // tbl.push((primText[$#sym.BB$], bohorodicen))  
        styleTable(tbl)
  }
]

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
    subheader[Blažénna]
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
    subheader[Tropár i Kondák]
    let (t,k,b) = day.at("TKB")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], t))
    tbl.push((primText[$#sym.KK$], k))
    tbl.push((primText[$#sym.BB$], b))
    styleTable(tbl)    
  }
  
  if "P" in day {
    subheader[Prokimen]
    let (prokimen, vers, aleluja, versA) = day.at("P")
    let tbl = ()
    tbl.push((primText[$#sym.PP$], prokimen))
    tbl.push((primText[$#sym.SS #sym.TT$], vers))
    styleTable(tbl)
    subsubheader[Allilúia]
    let tbl = ()
    tbl.push((primText[$#sym.AA$], aleluja))
    tbl.push((primText[$#sym.SS #sym.TT$], versA))
    styleTable(tbl)
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
  
  #superheader[Nedeľa]
  // #header[Malá večiereň\ (v sobotu večer)]
  // #hlasVecieren(ne_m)
  // #colbreak(weak: true)
  #header[Večiereň\ (v sobotu večer)]
  #hlasVecieren(ne_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v sobotu v noci)]
  // #hlasPovecerie(ne_p)
  // #colbreak(weak: true)
  // #header[Polnočnica]
  // #hlasPolnocnica(ne_n)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(ne_u, 0)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(ne_l)
  // #colbreak(weak: true)
  
  // #superheader[Pondelok]
  // #header[Večiereň\ (v nedeľu večer)]
  // #hlasVecieren(po_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v nedeľu v noci)]
  // #hlasPovecerie(po_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(po_u, 1)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(po_l)
  // #colbreak(weak: true)
  
  // #superheader[Utorok]
  // #header[Večiereň\ (v pondelok večer)]
  // #hlasVecieren(ut_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v pondelok v noci)]
  // #hlasPovecerie(ut_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(ut_u, 2)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(ut_l)
  // #colbreak(weak: true)
  
  // #superheader[Streda]
  // #header[Večiereň\ (v utorok večer)]
  // #hlasVecieren(sr_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v utorok v noci)]
  // #hlasPovecerie(sr_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(sr_u, 3)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(sr_l)
  // #colbreak(weak: true)
  
  // #superheader[Štvrtok]
  // #header[Večiereň\ (v stredu večer)]
  // #hlasVecieren(st_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v stredu v noci)]
  // #hlasPovecerie(st_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(st_u, 4)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(st_l)
  // #colbreak(weak: true)
  
  // #superheader[Piatok]
  // #header[Večiereň\ (vo štvrtok večer)]
  // #hlasVecieren(pi_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v štvrtok v noci)]
  // #hlasPovecerie(pi_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(pi_u, 5)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(pi_l)
  // #colbreak(weak: true)
  
  // #superheader[Sobota]
  // #header[Večiereň\ (v piatok večer)]
  // #hlasVecieren(so_v)
  // #colbreak(weak: true)
  // #header[Povečerie\ (v piatok v noci)]
  // #hlasPovecerie(so_p)
  // #colbreak(weak: true)
  // #header[Utiereň]
  // #hlasUtieren(so_u, 6)
  // #colbreak(weak: true)
  // #header[Liturgia]
  // #hlasLiturgia(so_l)
  // #colbreak(weak: true)
]