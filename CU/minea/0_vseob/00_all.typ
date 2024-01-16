#import "/styleMinea.typ": *
#import "/CU/texts.typ": *

#let _minea(name, mX) = {
        minea(name, 
                mX.V, h_st, 
                mX.U, ch_st,
                mX.L, b_st,
                id => translation.at(id))
        colbreak(weak: true)
}

= #translation.at("MINEA_OBS")

#import "./01_Pan.typ" as m01: *
#import "./02_Bohorodicka.typ" as m02: *
#import "./03_Kriz.typ" as m03: *
#import "./05_ProrokJeden.typ" as m05: *
#import "./07_ApostolJeden.typ" as m07: *

// #_minea("M_PAN", m01)
// #_minea("M_BOHORODICKA", m02)
#_minea("M_KRIZ", m03)
// #_minea("M_PROROK_JEDEN", m05)
// #_minea("M_APOSTOL_JEDEN", m07)