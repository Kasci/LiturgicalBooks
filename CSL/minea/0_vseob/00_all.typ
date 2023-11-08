#import "/styleMinea.typ": *
#import "/CSL/texts.typ": *

= #translation.at("MINEA_OBS")

#import "./01_Bohorodicka.typ" as m01: *

#minea("M_BOHORODICKA", 
        m01.V, h_st, 
        m01.U, 
        id => translation.at(id))