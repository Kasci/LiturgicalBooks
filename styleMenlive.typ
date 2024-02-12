#import "/style.typ": *
#import "/utilsMenlive.typ": *

#let hlasVecieren(day, dayidx, h_st, s_st, t) = {
  let c = counter("day")

  let n = 10
  if dayidx == 100 {
    n = 4
  } else if dayidx != 0 {
    n = 6
  } 
  
  if "HV" in day {
    [==== #t("HOSPODI_VOZVACH") <X>]

    let (..verse, last) = day.at("HV")
    c.update(n)
    let h = h_st.map(it => make3(it)).slice(-1*n)
    let z = verse.zip(h)
    if dayidx != 100 {
      z = z.slice(0,n - 3)
    }
    let tbl = {
      z.map(k => (
            [], makeGray(k.at(1)),
            primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
        )
      )
    }
    if dayidx != 100 {
      tbl.push(tblNote(t, "HV_MINEA"))
      tbl.push(tblNote(t, "HV_NOTE"))
    }
    tbl.push((primText[S:I:], last))
    styleTable3(tbl)
  }

  if "S" in day {
    [==== #t("STICHOVNI") <X>]

    let (first, ..verse, last) = day.at("S")
    c.update(2)
    let stichy = ()
    if (str(dayidx) in s_st) {
      stichy = s_st.at(str(dayidx)).map(it => make3(it))
    } else {
      stichy = s_st.at("x").map(it => make3(it))
    }
    // let s = stichy.slice(-1*(verse.len()))
    let z = verse.zip(stichy)
    let tbl = {
      z.map(k => (
          [], makeGray(k.at(1)),
          primText[#c.display("i:"); #c.step()], k.at(0),
        )
      )
    }
    c.update(1)
    tbl.insert(0, (primText[#c.display("i:"); #c.step()], first))
    tbl.push((primText[S:I:], last))
    styleTable3(tbl)
  }

  if "T" in day {
    [==== #t("TROPAR") <X>]
    let (tropar, last) = day.at("T")
    let tbl = (
      (primText[$#sym.TT$], tropar),
      (primText[$#sym.BB$], last)
    )
    styleTable3(tbl)
    
  }
}

#let hlasPovecerie(day, p_st, t) = {
  for k in range(1,10) {
    if str(k) in day {
      let c = counter("kanon-vers")
      c.update(1)
      [===== #t("PIESEN") #k <X>]

      let (irmos, ..verse, semilast, last) = day.at(str(k))
      let tbl = {
        verse.map(k => (
            primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      tbl.insert(0,(primText[$#sym.II$], irmos))
      tbl.insert(1,(primText[$#sym.rho$], makeGray(make3(p_st))))
      tbl.push((primText[S:], semilast))  
      tbl.push((primText[I:], last))  
      styleTable3(tbl)
      
      if k == 6 {
        [===== #t("SIDALEN") <X>]
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
      [===== #t("PIESEN") #k <X>]

      let (irmos, ..verse, semilast, last) = day.at(str(k))
      let tbl = {
        verse.map(k => (
            primText[#c.display("i:"); #c.step()], k
          )
        )
      }
      tbl.insert(0,(primText[$#sym.II$], irmos)) 
      tbl.insert(1,(primText[$#sym.rho$], makeGray(make3(n_st))))   
      tbl.push((primText[S:], semilast))  
      tbl.push((primText[I:], last))  
      styleTable3(tbl)
      
      if k == 3 {
        [===== #t("SIDALEN") <X>]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S1").at(0)))
        sdl.push((primText[S:I:], day.at("S1").at(1)))
        styleTable3(sdl)
      }
      if k == 6 {
        [===== #t("SIDALEN") <X>]
        let sdl = ()
        sdl.push((primText[$#sym.SS$], day.at("S2").at(0)))
        sdl.push((primText[S:I:], day.at("S2").at(1)))
        styleTable3(sdl)
      }
    }
  }
}

#let pripiv(pripivy, day, kanon, stich) = {
  pripivy.at(str(day)).at(int(kanon)-1)
}

#let kanonUtieren(kanon, dayIdx, typs, pripivy, t) = {
  // FIXME: think about and fix headers
  // let typ = typs.at(str(dayIdx))
  // if "?" in kanon {
  //   // TODO: check and translate all cannons
  //   typ = kanon.at("?")
  // }
  for k in range(1,10) {
    let kk = "P"+str(k)
    if kk in kanon {
      [===== #t("PIESEN") #k <X>]
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
            tbl.insert(1,(primText[$#sym.rho$], makeGray(make3(p))))   
          }
          // if typ != none {
          //   tbl.insert(0, ("", makeSec(make3(typ.at(i - 1)))))
          // }
          styleTable3(tbl)
        }
      }
      
      if k == 6 and "K" in kanon {
        [===== #t("KONDAK_IKOS") <X>]
        let (kon, ikos) = kanon.at("K")
        let tbl = ()
        tbl.push((primText[$#sym.KK$], kon))    
        tbl.push((primText[$#sym.II #sym.KK$], ikos))  
        styleTable3(tbl)
      }
    }
  }
}

#let hlasUtieren(day, dayIdx, typs, pripivy, sd_st, ch_st, su_st, t) = {
  let c = counter("day")

  if "T" in day {
    [==== #t("TROPAR") <X>]
    let (tropar, bohorodicen) = day.at("T")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], tropar))   
    tbl.push(tblNote(t, "T_NOTE")) 
    tbl.push((primText[$#sym.BB$], bohorodicen))  
    styleTable3(tbl)
  }
  
  [==== #t("SIDALENY") <X>]
  for i in range(1,4) {
    let s = "S"+str(i)
    if s in day {
      // TODO: fix
      [===== #t("SIDALEN_PO") #i <X>]
    
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
          tbl.insert(1, ([],makeGray(make3(sd_st.at(0)))))
        } else if i == 2 {
          tbl.insert(1, ([],makeGray(make3(sd_st.at(1)))))
        }
      }
      tbl.push((primText[S:I:], last))    
      styleTable3(tbl)
    }
  }

  if "Y" in day {
    [==== #t("YPAKOJ") <X>]
    let k = day.at("Y").at(0)
    styleOne(k)
  }

  // CU & GR difference
  if "A1" in day {
    [==== #t("STEPENNY") <X>]
    for i in range(1,5) {
      let a = "A"+str(i)
      if a in day {
        [===== #t("ANTIFON") #i <X>]
        c.update(1)
        // let (..verse, semilast, last) = day.at(a)
        let (..verse, last) = day.at(a)
        let tbl = {
          verse.map(k => (
              primText[#c.display("i:"); #c.step()], k
            )
          )
        }
        // tbl.push((primText[S:], semilast)) 
        // tbl.push((primText[I:], last))
        tbl.push((primText[S:I:], last))
        styleTable3(tbl)
      }
    }
  }

  if "P" in day {
    [==== #t("PROKIMEN") <X>]
    let (prokimen, versv) = day.at("P")
    [
      #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[#t("STICH"):] #versv.at(2)
    ]
  }

  if "K" in day { 
    [==== #t("KANON") <X>]

    let kanon = day.at("K")
    kanonUtieren(kanon, dayIdx, typs, pripivy, t)
  }

  if "CH" in day {
    [==== #t("CHVALITE") <X>]
    let tbl = {}
    if dayIdx == 0 {
      /* NEDELA */
      let (..verse) = day.at("CH")
      let b = ch_st.map(x=>make3(x)).slice(-1*(verse.len()))
      let z = verse.zip(b)
      c.update(verse.len())
      tbl = {
        z.map(k => (
            [], makeGray(k.at(1)),
            primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
          )
        )
      }
      styleTable3(tbl)
    } else {
      /* TYZDEN */
      let (..verse, last) = day.at("CH")
      let b = ch_st.map(x=>make3(x)).slice(-1*(verse.len()+2),-2)
      let z = verse.zip(b)
      c.update(verse.len())
      tbl = {
        z.map(k => (
            [], makeGray(k.at(1)),
            primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
          )
        )
      }
      tbl.push((primText[S:I:], last))
      styleTable3(tbl)
    }
  }

  if "ST" in day {
    [==== #t("STICHOVNI") <X>]
    let (first, ..verse, last) = day.at("ST")
    let s = ()
    if str(dayIdx) in su_st {
      s = su_st.at(str(dayIdx)).map(x=>make3(x))
    } else {
      s = su_st.at("x").map(x=>make3(x))
    }
    let stichy = s.slice(-1*(verse.len()))
    c.update(1)
    let z = verse.zip(stichy)
    let tbl = {
      z.map(k => (
          [], makeGray(k.at(1)),
          primText[#c.display("i:"); #c.step()], k.at(0),
        )
      )
    }
    tbl.insert(0, (primText[#c.display("i:"); #c.step()], first))
    tbl.push((primText[S:I:], last))
    styleTable3(tbl)
  }
}

#let hlasLiturgia(day, b_st, t) = {
  if "B" in day {
    [==== #t("BLAZENNA") <X>]
    let c = counter("day")
    let (..verse, semilast, last) = day.at("B")
    c.update(verse.len())
    let b = b_st.map(x=>make3(x)).slice(-1*(verse.len()))
    let z = verse.zip(b)
    let tbl = {
      z.map(k => 
        if k.at(1).at(2) == "" {(
          primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0)
        )} else {(
          [], makeGray(k.at(1)),
          primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0), 
        )}
      )
    }
    tbl.push((primText[S:], semilast))
    tbl.push((primText[I:], last))
    styleTable3(tbl)
  }

  if "TKB" in day {
    [==== #t("TROPAR_KONDAK") <X>]
    let (t,k,b) = day.at("TKB")
    let tbl = ()
    tbl.push((primText[$#sym.TT$], t))
    tbl.push((primText[$#sym.KK$], k))
    tbl.push((primText[$#sym.BB$], b))
    styleTable3(tbl)    
  }
  
  if "P" in day {
    let (prokimen, vers, aleluja, versA) = day.at("P")
    [==== #t("PROKIMEN") <X>]
    [
    #set par(first-line-indent: 1em)
      #prokimen.at(2)
      
      #primText[#t("STICH"):] #vers.at(2)
    ]
    [===== #t("ALLILUJA") <X>]
    [
    #set par(first-line-indent: 1em)
      #aleluja.at(2)
      
      #primText[#t("STICH"):] #versA.at(2)
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
            t, use) = [
  #show: rest => columns(2, rest)
  
  == #t("Ne")
  #if (use.at(0)) [
    === #t("M")
    #header[(#t("So_V"))]
    #hlasVecieren(ne_m, 100, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(1) [
    === #t("V")
    #header[(#t("So_V"))]
    #hlasVecieren(ne_v, 0, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("So_N"))]
    #hlasPovecerie(ne_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(3) [
    === #t("N")
    #hlasPolnocnica(ne_n, n_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(ne_u, 0, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(ne_l, b_st, t)
    #colbreak(weak: true)
  ]

  == #t("Po")
  #if use.at(1) [
    === #t("V")
    #header[(#t("Ne_V"))]
    #hlasVecieren(po_v, 1, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("Ne_N"))]
    #hlasPovecerie(po_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(po_u, 1, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(po_l, b_st, t)
    #colbreak(weak: true)
  ]
  
  == #t("Ut")
  #if use.at(1) [
    === #t("V")
    #header[(#t("Po_V"))]
    #hlasVecieren(ut_v, 2, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("Po_N"))]
    #hlasPovecerie(ut_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(ut_u, 2, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(ut_l, b_st, t)
    #colbreak(weak: true)
  ]
  
  == #t("Sr")
  #if use.at(1) [
    === #t("V")
    #header[(#t("Ut_V"))]
    #hlasVecieren(sr_v, 3, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("Ut_N"))]
    #hlasPovecerie(sr_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(sr_u, 3, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(sr_l, b_st, t)
    #colbreak(weak: true)
  ]
  
  == #t("St")
  #if use.at(1) [
    === #t("V")
    #header[(#t("Sr_V"))]
    #hlasVecieren(st_v, 4, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("Sr_N"))]
    #hlasPovecerie(st_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(st_u, 4, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(st_l, b_st, t)
    #colbreak(weak: true)
  ]
  
  == #t("Pi")
  #if use.at(1) [
    === #t("V")
    #header[(#t("St_V"))]
    #hlasVecieren(pi_v, 5, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("St_N"))]
    #hlasPovecerie(pi_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(pi_u, 5, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(pi_l, b_st, t)
    #colbreak(weak: true)
  ]
  
  == #t("So")
  #if use.at(1) [
    === #t("V")
    #header[(#t("Pi_V"))]
    #hlasVecieren(so_v, 6, h_st, s_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(2) [
    === #t("P")
    #header[(#t("Pi_N"))]
    #hlasPovecerie(so_p, p_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(4) [
    === #t("U")
    #hlasUtieren(so_u, 6, typs, pripivy, sd_st, ch_st, su_st, t)
    #colbreak(weak: true)
  ]
  #if use.at(5) [
    === #t("L")
    #header[(#t("I"))]
    #hlasLiturgia(so_l, b_st, t)
    #colbreak(weak: true)
  ]
]