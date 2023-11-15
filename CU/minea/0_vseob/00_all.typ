#import "/styleMinea.typ": *
#import "/CU/texts.typ": *

= #translation.at("MINEA_OBS")

#import "./01_Bohorodicka.typ" as m01: *
#import "./02_ProrokJeden.typ" as m02: *
#import "./03_ApostolJeden.typ" as m03: *

// #minea("M_BOHORODICKA", 
//         m01.V, h_st, 
//         m01.U, ch_st,
//         id => translation.at(id))
// #colbreak(weak: true)
#minea("M_PROROK_JEDEN",
        m02.V, h_st,
        m02.U, ch_st,
        id => translation.at(id))
// #colbreak(weak: true)
// #minea("M_APOSTOL_JEDEN",
//         m03.V, h_st,
//         none, ch_st,
//         id => translation.at(id))
// #colbreak(weak: true)