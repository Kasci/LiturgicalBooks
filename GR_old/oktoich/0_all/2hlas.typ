#import "/styleMenlive.typ": *
#import "/GR/texts.typ": *

= #translation.at("HLAS") β' (2)

#import "../Hlas2/0_Nedela.typ": *
#import "../Hlas2/1_Pondelok.typ": *
#import "../Hlas2/2_Utorok.typ": *
#import "../Hlas2/3_Streda.typ": *
#import "../Hlas2/4_Stvrtok.typ": *
#import "../Hlas2/5_Piatok.typ": *
#import "../Hlas2/6_Sobota.typ": *

#hlas_all(M_Ne, V_Ne, none, N_Ne, U_Ne, L_Ne, 
        V_Po, none, U_Po, L_Po, 
        V_Ut, none, U_Ut, L_Ut, 
        V_Sr, none, U_Sr, L_Sr, 
        V_St, none, U_St, L_St, 
        V_Pi, none, U_Pi, L_Pi, 
        V_So, none, U_So, L_So,
        h_st, s_st, p_st, n_st,
        typs, pripivy, 
        sd_st, ch_st, su_st, b_st,
        id => translation.at(id),
        (true, true, false, true, true, true))