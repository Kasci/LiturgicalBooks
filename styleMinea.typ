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
        if "HV_SN" in day {
            tbl.push((primText[S:I:], day.at("HV_SN")))
        }
        styleTable4(tbl)
    }
}

#let minea(name, 
            v, h_st,
            u, 
            t) = [
  #show: rest => columns(2, rest)

  == #t(name).split(" ").join("\n")
  === #t("V")
  #mineaVecieren(v, h_st, t)
  === #t("U")
]