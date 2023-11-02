#import "/style.typ": *
#import "/utilsMenlive.typ": *

#let makeGray(txt) = {
  txt.at(2) = text(10pt, grayText(txt.at(2)))
  txt
}

#let makeSec(txt) = {
  txt.at(2) = text(10pt, secText(txt.at(2)))
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

#let hlasVecieren(day, dayidx, h_st, s_st) = {
  let c = counter("day")
  
  if "HV" in day {
    [==== Hóspodi, vozzvách]

    let (..verse, last) = day.at("HV")
    c.update(verse.len())
    let h = h_st.slice(-1*(verse.len()))
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
  }

  if "S" in day {
    [==== Stichíry na stichovňi]

    let (first, ..verse, last) = day.at("S")
    c.update(2)
    let stichy = ()
    if (str(dayidx) in s_st) {
      stichy = s_st.at(str(dayidx))
    } else {
      stichy = s_st.at("x")
    }
    // let s = stichy.slice(-1*(verse.len()))
    let z = verse.zip(stichy)
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
  }

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

#let hlasPovecerie(day, p_st) = {
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
      tbl.insert(1,(primText[$#sym.rho$], makeGray(p_st)))
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

#let hlasPolnocnica(day, n_st) = {
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
      tbl.insert(1,(primText[$#sym.rho$], makeGray(n_st)))   
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

#let pripiv(pripivy, day, kanon, stich) = {
  pripivy.at(str(day)).at(int(kanon)-1)
}

#let kanonUtieren(kanon, dayIdx, typs, pripivy) = {
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
            let p = pripiv(pripivy, dayIdx, i, 0)
            tbl.insert(1,(primText[$#sym.rho$], makeGray(make(p))))   
          }
          if typ != none {
            tbl.insert(0, ("", makeSec(make(typ.at(i - 1)))))
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

#let hlasUtieren(day, dayIdx, typs, pripivy, sd_st, ch_st) = {
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
      // TODO: move
      if dayIdx == 0 {
        if i == 1 {
          tbl.insert(1, ([],makeGray(sd_st.at(0))))
        } else if i == 2 {
          tbl.insert(1, ([],makeGray(sd_st.at(1))))
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
  for i in range(1,5) {
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

  if "K" in day { 
    [==== Kanon]

    let kanon = day.at("K")
    kanonUtieren(kanon, dayIdx, typs, pripivy)
  }

  if "CH" in day {
    [==== Chvalite]
    let tbl = {}
    if dayIdx == 0 {
      /* NEDELA */
      let (..verse) = day.at("CH")
      let b = ch_st.slice(-1*(verse.len()))
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
    let (first, ..verse, last) = day.at("ST")
    let s = ()
    if str(dayIdx) in stichiry {
      s = stichiry.at(str(dayIdx))
    } else {
      s = stichiry.at("x")
    }
    let stichy = s.slice(-1*(verse.len()))
    c.update(1)
    let z = verse.zip(stichy)
    let tbl = {
      z.map(k => (
            primText[#c.display("i:"); #c.step()], k.at(0),
            [], makeGray(k.at(1))
        )
      )
    }
    tbl.insert(0, (primText[#c.display("i:"); #c.step()], first))
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

#let hlasLiturgia(day, b_st) = {
  if "B" in day {
    [==== Blažénna]
    let c = counter("day")
    let (..verse, semilast, last) = day.at("B")
    c.update(verse.len())
    let b = b_st.slice(-1*(verse.len()))
    let z = verse.zip(b)
    let tbl = {
      z.map(k => 
        if k.at(1).at(2) == "" {(
          primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0)
        )} else {(
          primText[#c.display("i:"); #c.update(c => c - 1)], k.at(0), 
          [], makeGray(k.at(1))
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
            so_v, so_p, so_u, so_l,
            h_st, s_st, p_st, n_st,
            typs, pripivy,
            sd_st, ch_st, b_st) = [
  #show: rest => columns(2, rest)
  
  == Nedeľa
  // === Malá večiereň\ (v sobotu večer)
  // #hlasVecieren(ne_m, -1, h_st, s_st)
  // #colbreak(weak: true)
  // === Večiereň\ (v sobotu večer)
  // #hlasVecieren(ne_v, 0, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v sobotu v noci)
  // #hlasPovecerie(ne_p, p_st)
  // #colbreak(weak: true)
  // === Polnočnica
  // #hlasPolnocnica(ne_n, n_st)
  // #colbreak(weak: true)
  === Utiereň
  #hlasUtieren(ne_u, 0, typs, pripivy, sd_st, ch_st)
  #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(ne_l, b_st)
  // #colbreak(weak: true)
  
  // == Pondelok
  // === Večiereň\ (v nedeľu večer)
  // #hlasVecieren(po_v, 1, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v nedeľu v noci)
  // #hlasPovecerie(po_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(po_u, 1)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(po_l, b_st)
  // #colbreak(weak: true)
  
  // == Utorok
  // === Večiereň\ (v pondelok večer)
  // #hlasVecieren(ut_v, 2, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v pondelok v noci)
  // #hlasPovecerie(ut_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(ut_u, 2)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(ut_l, b_st)
  // #colbreak(weak: true)
  
  // == Streda
  // === Večiereň\ (v utorok večer)
  // #hlasVecieren(sr_v, 3, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v utorok v noci)
  // #hlasPovecerie(sr_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(sr_u, 3)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(sr_l, b_st)
  // #colbreak(weak: true)
  
  // == Štvrtok
  // === Večiereň\ (v stredu večer)
  // #hlasVecieren(st_v, 4, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v stredu v noci)
  // #hlasPovecerie(st_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(st_u, 4)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(st_l, b_st)
  // #colbreak(weak: true)
  
  // == Piatok
  // === Večiereň\ (vo štvrtok večer)
  // #hlasVecieren(pi_v, 5, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v štvrtok v noci)
  // #hlasPovecerie(pi_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(pi_u, 5)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(pi_l, b_st)
  // #colbreak(weak: true)
  
  // == Sobota
  // === Večiereň\ (v piatok večer)
  // #hlasVecieren(so_v, 6, h_st, s_st)
  // #colbreak(weak: true)
  // === Povečerie\ (v piatok v noci)
  // #hlasPovecerie(so_p, p_st)
  // #colbreak(weak: true)
  // === Utiereň
  // #hlasUtieren(so_u, 6)
  // #colbreak(weak: true)
  // === Liturgia
  // #hlasLiturgia(so_l, b_st)
  // #colbreak(weak: true)
]