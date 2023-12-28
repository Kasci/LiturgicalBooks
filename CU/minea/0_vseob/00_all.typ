#import "/styleMinea.typ": *
#import "/CU/texts.typ": *

= #translation.at("MINEA_OBS")

#import "./01_Bohorodicka.typ" as m01: *
#import "./04_ProrokJeden.typ" as m04: *
#import "./06_ApostolJeden.typ" as m06: *

// #minea("M_BOHORODICKA", 
//         m01.V, h_st, 
//         m01.U, ch_st,
//         id => translation.at(id))
// #colbreak(weak: true)
#minea("M_PROROK_JEDEN",
        m04.V, h_st,
        m04.U, ch_st,
        id => translation.at(id))
// #colbreak(weak: true)
// #minea("M_APOSTOL_JEDEN",
//         m06.V, h_st,
//         none, ch_st,
//         id => translation.at(id))
// #colbreak(weak: true)