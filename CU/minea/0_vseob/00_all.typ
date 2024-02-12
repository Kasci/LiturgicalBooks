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

#import "./01_Pan.typ" as MPan: *
#import "./02_Bohorodicka.typ" as MBohorodicka: *
#import "./03_Kriz.typ" as MKriz: *
#import "./04_Anjeli.typ" as MAnjeli: *
#import "./05_Predchodca.typ" as MPredchodca: *
#import "./06_SvatiOtcovia.typ" as MSvatiOtcovia: *
#import "./07_ProrokJeden.typ" as MProrok: *
#import "./08_ApostolJeden.typ" as MApostol: *
#import "./09_ApostolViac.typ" as MApostolViac: *

// #_minea("M_PAN", MPan)
// #_minea("M_BOHORODICKA", MBohorodicka)
// #_minea("M_KRIZ", MKriz)
// #_minea("M_ANJELI", MAnjeli)
// #_minea("M_PREDCHODCA", MPredchodca)
#_minea("M_SVATI_OTCOVIA", MSvatiOtcovia)
// #_minea("M_PROROK_JEDEN", MProrok)
// #_minea("M_APOSTOL_JEDEN", MApostol)
// #_minea("M_APOSTOL_VIAC", MApostolViac)