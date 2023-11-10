#import "/styleMinea.typ": *
#import "/CSL/texts.typ": *

= #translation.at("MINEA_OBS")

#import "./01_Bohorodicka.typ" as m01: *
#import "./02_ProrokJeden.typ" as m02: *
#import "./03_ApostolJeden.typ" as m03: *

#minea("M_BOHORODICKA", 
        m01.V, h_st, 
        m01.U, 
        id => translation.at(id))
#colbreak(weak: true)
#minea("M_PROROK_JEDEN",
        m02.V, h_st,
        none,
        id => translation.at(id))
#colbreak(weak: true)
#minea("M_APOSTOL_JEDEN",
        m03.V, h_st,
        none,
        id => translation.at(id))
#colbreak(weak: true)