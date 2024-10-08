#import "/styleMenlive.typ": *
#import "/GR/texts.typ": *

= #translation.at("HLAS") α' (1)

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