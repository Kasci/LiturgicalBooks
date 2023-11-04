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
      let spl = first.split(" ")
      if spl.len() > 2 {
        tbl.at(i+1).at(1).at(2) = [#spl.slice(0,3).join(" ") ...]
      }
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

#let hlasVecieren(day, dayidx, h_st, s_st, t) = {
  let c = counter("day")
  
  if "HV" in day {
    [==== #t("HOSPODI_VOZVACH")]

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
    [==== #t("STICHOVNI")]

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
    [==== #t("TROPAR")]
    let (tropar, last) = day.at("T")
    let tbl = (
      (primText[$#sym.TT$], tropar),
      (primText[$#sym.BB$], last)
    )
    styleTable(tbl)
    
  }
}

#let hlasPovecerie(day, p_st, t) = {
  for k in range(1,10) {
    if str(k) in day {
      let c = counter("kanon-vers")
      c.update(1)
      [===== #t("PIESEN") #k]

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
        [===== #t("SIDALEN")]
        [
          #set par(first-line-indent: 1em)
          #styleOne(day.at("S").at(0))
        ]
      }
    }
  }
}

#let hlasPolnocnica(day, n_st, t) = {
  for k in range(1,10) {
    if str(k) in day {
      let c = counter("kanon-vers")
      c.update(1)
      [===== #t("PIESEN") #k]

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
        [===== #t("SIDALEN")]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S1").at(0)))
        sdl.push((primText[S:I:], day.at("S1").at(1)))
        styleTable(sdl)
      }
      if k == 6 {
        [===== #t("SIDALEN")]
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

#let kanonUtieren(kanon, dayIdx, typs, pripivy, t) = {
  let typ = typs.at(str(dayIdx))
  if "?" in kanon {
    typ = kanon.at("?")
  }
  for k in range(1,10) {
    let kk = "P"+str(k)
    if kk in kanon {
      [===== #t("PIESEN") #k]
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
        [===== #t("KONDAK_IKOS")]
        let (kon, ikos) = kanon.at("K")
        let tbl = ()
        tbl.push((primText[$#sym.KK$], kon))    
        tbl.push((primText[$#sym.II #sym.KK$], ikos))  
        styleTable(tbl)
      }
    }
  }
}

#let hlasUtieren(day, dayIdx, typs, pripivy, sd_st, ch_st, su_st, t) = {
  let c = counter("day")

  if "T" in day {
    [==== #t("TROPAR")]
    let (tropar, bohorodicen) = day.at("T")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], tropar))    
    tbl.push((primText[$#sym.BB$], bohorodicen))  
    styleTable(tbl)
  }
  
  [==== #t("SIDALENY")]
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
    [==== #t("YPAKOJ")]
    let k = day.at("Y").at(0)
    styleOne(k)
  }

  if "A1" in day [==== #t("STEPENNY")]
  for i in range(1,5) {
    let a = "A"+str(i)
    if a in day {
      [===== #t("ANTIFON") #i]
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
    [==== #t("PROKIMEN")]
    let (prokimen, versv) = day.at("P")
    [
    #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[Stich:] #versv.at(2)
    ]
  }

  if "K" in day { 
    [==== #t("KANON")]

    let kanon = day.at("K")
    kanonUtieren(kanon, dayIdx, typs, pripivy, t)
  }

  if "CH" in day {
    [==== #t("CHVALITE")]
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
      let b = ch_st.slice(-1*(verse.len()+2),-2)
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
    [==== #t("STICHOVNI")]
    let (first, ..verse, last) = day.at("ST")
    let s = ()
    if str(dayIdx) in su_st {
      s = su_st.at(str(dayIdx))
    } else {
      s = su_st.at("x")
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

  // FIXME: remove
  if "T2" in day {
    [==== #t("TROPAR")]
    let tropar = day.at("T2").at(0)
    let tbl = ()
    tbl.push((primText[$#sym.TT$], tropar))    
    // tbl.push((primText[$#sym.BB$], bohorodicen))  
    styleTable(tbl)
  }
}

#let hlasLiturgia(day, b_st, t) = {
  if "B" in day {
    [==== #t("BLAZENNA")]
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
    [==== #t("TROPAR_KONDAK")]
    let (t,k,b) = day.at("TKB")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], t))
    tbl.push((primText[$#sym.KK$], k))
    tbl.push((primText[$#sym.BB$], b))
    styleTable(tbl)    
  }
  
  if "P" in day {
    let (prokimen, vers, aleluja, versA) = day.at("P")
    [==== #t("PROKIMEN")]
    [
    #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[Stich:] #vers.at(2)
    ]
    [===== #t("ALLILUJA")]
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
            sd_st, ch_st, su_st, b_st,
            t) = [
  #show: rest => columns(2, rest)
  
  == #t("Ne")
  === #t("M")\ (#t("So_V"))
  #hlasVecieren(ne_m, -1, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("V")\ (#t("So_V"))
  #hlasVecieren(ne_v, 0, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("So_N"))
  #hlasPovecerie(ne_p, p_st, t)
  #colbreak(weak: true)
  === #t("N")
  #hlasPolnocnica(ne_n, n_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(ne_u, 0, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(ne_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("Po")
  === #t("V")\ (#t("Ne_V"))
  #hlasVecieren(po_v, 1, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("Ne_N"))
  #hlasPovecerie(po_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(po_u, 1, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(po_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("Ut")
  === #t("V")\ (#t("Po_V"))
  #hlasVecieren(ut_v, 2, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("Po_N"))
  #hlasPovecerie(ut_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(ut_u, 2, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(ut_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("Sr")
  === #t("V")\ (#t("Ut_V"))
  #hlasVecieren(sr_v, 3, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("Ut_N"))
  #hlasPovecerie(sr_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(sr_u, 3, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(sr_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("St")
  === #t("V")\ (#t("Sr_V"))
  #hlasVecieren(st_v, 4, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("Sr_N"))
  #hlasPovecerie(st_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(st_u, 4, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(st_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("Pi")
  === #t("V")\ (#t("St_V"))
  #hlasVecieren(pi_v, 5, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("St_N"))
  #hlasPovecerie(pi_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(pi_u, 5, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(pi_l, b_st, t)
  #colbreak(weak: true)
  
  == #t("So")
  === #t("V")\ (#t("Pi_V"))
  #hlasVecieren(so_v, 6, h_st, s_st, t)
  #colbreak(weak: true)
  === #t("P")\ (#t("Pi_N"))
  #hlasPovecerie(so_p, p_st, t)
  #colbreak(weak: true)
  === #t("U")
  #hlasUtieren(so_u, 6, typs, pripivy, sd_st, ch_st, su_st, t)
  #colbreak(weak: true)
  === #t("L")
  #hlasLiturgia(so_l, b_st, t)
  #colbreak(weak: true)
]