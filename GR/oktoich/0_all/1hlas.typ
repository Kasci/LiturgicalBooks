#import "/styleMenlive.typ": *
#import "/GR/texts.typ": *

= #translation.at("HLAS") 1

#import "../Hlas1/0_Nedela.typ": *
#import "../Hlas1/1_Pondelok.typ": *
#import "../Hlas1/2_Utorok.typ": *
#import "../Hlas1/3_Streda.typ": *
#import "../Hlas1/4_Stvrtok.typ": *
#import "../Hlas1/5_Piatok.typ": *
#import "../Hlas1/6_Sobota.typ": *

// TODO: N - Ypakoj?
#hlas_all(M_Ne, V_Ne, none, N_Ne, U_Ne, L_Ne, 
        V_Po, none, U_Po, L_Po, 
        V_Ut, P_Ut, U_Ut, L_Ut, 
        V_Sr, P_Sr, U_Sr, L_Sr, 
        V_St, P_St, U_St, L_St, 
        V_Pi, P_Pi, U_Pi, L_Pi, 
        V_So, P_So, U_So, L_So,
        h_st, s_st, p_st, n_st,
        typs, pripivy, 
        sd_st, ch_st, su_st, b_st,
        id => translation.at(id),
        (true, true, false, true, true, true))