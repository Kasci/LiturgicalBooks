#import "/style.typ": *
#import "/utilsMenlive.typ": *

#let mineaVecieren(day, h_st, t) = {
    let c = counter("day")
    if "HV" in day {
        [==== #t("HOSPODI_VOZVACH")]
        let verse = day.at("HV")
        c.update(verse.len())
        let h = h_st.map(it => make4(it)).slice(-1*(verse.len()))
        let z = verse.zip(h)
        let tbl = {
            z.map(k => (
                    "", makeGray4(k.at(1)),
                    primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
                )
            )
        }
        if "HV_S" in day {
            tbl.push((primText[S:], day.at("HV_S").at(0)))
            if "HV_N" in day {
                tbl.push((primText[I:], day.at("HV_N").at(0)))
            } else {
                tbl.push((primText[>I:], make4("!!! "+t("HV_N_NOTE"))))
                // TODO: encapsulate to makeSec4, but fix error
            }
        }
        if "HV_SN" in day {
            let sn = day.at("HV_SN")
            tbl.push((primText[S:I:], sn.at(0)))
            if (sn.len() > 1) {
                tbl.push((primText[S:I:], sn.at(1)))
            }
        }
        if "HV_SN2" in day {
            tbl.push(([!!], make4("А҆́ще и҆́мать самогла́сенъ"))) // FIXME: move to t
            // TODO: ^^ rework to be more visible
            let sn = day.at("HV_SN2")
            tbl.push((primText[S:], sn.at(0)))
            tbl.push((primText[I:], sn.at(1)))
            if (sn.len() > 1) {
                tbl.push((primText[I:], sn.at(2)))
            }
        }
        styleTable4(tbl)
    }
    if "S" in day {
        [==== #t("STICHOVNI")]

        let (first, ..verse) = day.at("S")
        c.update(2)
        let stichy = day.at("S_ST").map(k => make4(k))
        let z = verse.zip(stichy)
        let tbl = {
            z.map(k => (
                [], makeGray4(k.at(1)),
                primText[#c.display("i:"); #c.step()], k.at(0),
            ))
        }
        c.update(1)
        tbl.insert(0, (primText[#c.display("i:"); #c.step()], first))
        if "S_SN" in day {
            tbl.push((primText[S:I:], day.at("S_SN").at(0)))
        } else {
            tbl.push((primText[S:], day.at("S_S").at(0)))
            tbl.push((primText[I:], day.at("S_N").at(0)))
        }
        styleTable4(tbl)
    }
    if "T" in day {
        [==== #t("TROPAR")]
        let (tropar, ..last) = day.at("T")
        let tbl = (
            (primText[$#sym.TT$], tropar),
        )
        if last.len() > 0 {
            tbl.push((primText[$#sym.BB$], last.at(0)))
        }
        styleTable4(tbl)
    }
}

#let kanon(kanon, t) = {
    if "H" in kanon {
        align(center)[#primText[#t("HLAS") #kanon.at("H")]]
    }
    for k in range(1,10) {
        let kk = "P"+str(k)
        if kk in kanon {
            [===== #t("PIESEN") #k]
            let c = counter("kanon-vers")
            c.update(1)
            let (irmos, ..verse) = kanon.at(kk)
            let tbl = {
                verse.map(xk => (
                    primText[#c.display("i:"); #c.step()], xk
                ))
            }
            // tbl.insert(0,(primText[$#sym.II _#k$], irmos)) 
            tbl.insert(0,(primText[$#sym.II$], irmos)) 
            if kk+"_K" in kanon {
                tbl.push((primText[$#sym.KK _#sym.TT$], kanon.at(kk+"_K").at(0)))
            }
            styleTable4(tbl)
        }
        if k == 3 and "S" in kanon {
            [===== #t("SIDALEN")]
            let (sidalen, ..semilast, last) = kanon.at("S")
            let tbl = ()
            tbl.push((primText[$#sym.SS$], sidalen))
            if (semilast.len() > 0) {
                for s in semilast {
                    tbl.push((primText[S:I:], s))
                }
            }
            tbl.push((primText[S:I:], last))  
            styleTable4(tbl)
        }        
        if k == 6 and "K" in kanon {
            [===== #t("KONDAK_IKOS")]
            let kons = kanon.at("K")
            let idx = range(kons.len())
            let z = kons.zip(idx)
            let i = 0
            let tbl = {
                z.map(xki => {
                    let (xk, i) = xki
                    if i == 0 {
                        (primText[$#sym.KK$], xk)
                    } else {
                        (primText[$#sym.KK _#(i+1)$], xk)
                    }
                })
            }
            let ikos = kanon.at("I")
            let idx = range(ikos.len())
            let z = ikos.zip(idx)
            let i = 0
            let tbl2 = {
                z.map(xki => {
                    let (xk, i) = xki
                    if i == 0 {
                        (primText[$#sym.II #sym.KK$], xk)
                    } else {
                        (primText[$#sym.II #sym.KK _#(i+1)$], xk)
                    }
                })
            }
            for t in tbl2 {
                tbl.push(t)
            }
            styleTable4(tbl)
        }
    }
}

#let mineaUtieren(day, ch_st, t) = {
    let c = counter("day")
    if "T" in day {
        [==== #t("TROPAR")]
        let (tropar, ..last) = day.at("T")
        let tbl = (
            (primText[$#sym.TT$], tropar),
        )
        tbl.push((primText[$#sym.TT _2$], tropar))
        if last.len() > 0 {
            tbl.push((primText[S:I:], last.at(0)))
        }
        styleTable4(tbl)
    }
    if "S1" in day {
        [==== #t("SIDALENY")]
        for i in range(1,4) {
            let s = "S"+str(i)
            if s in day {
                // TODO: fix
                [===== Po #(i)-om stichoslovii]

                c.update(1)
                let (..verse, last) = day.at(s)
                let tbl = {
                    verse.map(k => (
                        primText[#c.display("i:"); #c.step()], k
                    )
                    )
                }
                tbl.push((primText[S:I:], last))    
                styleTable4(tbl)
            }
        }
    }
    if "P" in day {
        [==== #t("PROKIMEN")]
        let (prokimen, versv) = day.at("P")
        [
            #set par(first-line-indent: 1em)
            #styleOne4(prokimen)
            
            #primText[#t("STICH"):] #versv.at(3)
        ]
    }
    if "50" in day {
        [==== #t("50_STICHIRA")]
        styleOne4(day.at("50").at(0))
    }
    if "K" in day { 
        [==== #t("KANON")]
        kanon(day.at("K"), t)
    }
    if "SV" in day {
        [==== #t("SVITILEN")]
        let verse = day.at("SV")
        c.update(1)
        let tbl = {
            verse.map(k => (
                primText[#c.display("i:"); #c.step()], k,
            ))
        }    
        styleTable4(tbl)
    }
    if "CH" in day {
        [==== #t("CHVALITE")]
        let verse = day.at("CH")
        let b = ch_st.map(x=>make4(x)).slice(-1*(verse.len()+2),-2)
        let z = verse.zip(b)
        c.update(verse.len())
        let tbl = {
            z.map(k => (
                [], makeGray4(k.at(1)),
                primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0),
            ))
        }
        if "CH_SN" in day {
            let last = day.at("CH_SN").at(0)
            tbl.push((primText[S:I:], last))
        } else {
            let semilast = day.at("CH_S").at(0)
            let last = day.at("CH_N").at(0)
            tbl.push((primText[S:], semilast))
            tbl.push((primText[I:], last))
        }
        styleTable4(tbl)
    }
    // TODO: Stichiry stichovni
}

#let mineaLiturgia(day, b_st, t) = {
  if "B" in day {
    [==== #t("BLAZENNA") <X>]
    let c = counter("day")
    let (..verse/*, semilast, last*/) = day.at("B")
    c.update(verse.len())
    let b = b_st.map(x=>make4(x)).slice(-1*(verse.len()))
    let z = verse.zip(b)
    let tbl = {
        z.map(k => (
            [], makeGray4(k.at(1)),
            primText[#c.display("1:"); #c.update(c => c - 1)], k.at(0), 
        ))
    }
    // tbl.push((primText[S:], semilast))
    // tbl.push((primText[I:], last))
    styleTable4(tbl)
  }

//   if "TKB" in day {
//     [==== #t("TROPAR_KONDAK") <X>]
//     let (t,k,b) = day.at("TKB")
//     let tbl = ()
//     tbl.push((primText[$#sym.TT$], t))
//     tbl.push((primText[$#sym.KK$], k))
//     tbl.push((primText[$#sym.BB$], b))
//     styleTable3(tbl)    
//   }
  
//   if "P" in day {
//     let (prokimen, vers, aleluja, versA) = day.at("P")
//     [==== #t("PROKIMEN") <X>]
//     [
//     #set par(first-line-indent: 1em)
//       #prokimen.at(2)
      
//       #primText[#t("STICH"):] #vers.at(2)
//     ]
//     [===== #t("ALLILUJA") <X>]
//     [
//     #set par(first-line-indent: 1em)
//       #aleluja.at(2)
      
//       #primText[#t("STICH"):] #versA.at(2)
//     ]
//   }
}

#let minea(name, 
            v, h_st,
            u, ch_st,
            l, b_st,
            t) = [
    == #t(name)

    #show: rest => columns(2, rest)
    === #t("V")
    #mineaVecieren(v, h_st, t)
  
    #if u != none [
        === #t("U")
        #mineaUtieren(u, ch_st, t)
    ]

    #if l != none [
        === #t("L")
        #mineaLiturgia(l, b_st, t)
    ]
]