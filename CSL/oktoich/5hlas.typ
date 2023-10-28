#import "/style.typ": *
#import "/styleMenlive.typ": *

= Hlas 5

// #import "Hlas5/0_Nedela.typ": *
// #import "Hlas5/1_Pondelok.typ": *
// #import "Hlas5/2_Utorok.typ": *
// #import "Hlas5/3_Streda.typ": *
// #import "Hlas5/4_Stvrtok.typ": *
// #import "Hlas5/5_Piatok.typ": *
// #import "Hlas5/6_Sobota.typ": *

#let (M_Ne, V_Ne, P_Ne, N_Ne, U_Ne, L_Ne) = ((),(),(),(),(),())
#let (V_Po, P_Po, U_Po, L_Po) = ((),(),(),())
#let (V_Ut, P_Ut, U_Ut, L_Ut) = ((),(),(),())
#let (V_Sr, P_Sr, U_Sr, L_Sr) = ((),(),(),())
#let (V_St, P_St, U_St, L_St) = ((),(),(),())
#let (V_Pi, P_Pi, U_Pi, L_Pi) = ((),(),(),())
#let (V_So, P_So, U_So, L_So) = ((),(),(),())

#hlas_all(M_Ne, V_Ne, P_Ne, N_Ne, U_Ne, L_Ne, 
        V_Po, P_Po, U_Po, L_Po, 
        V_Ut, P_Ut, U_Ut, L_Ut, 
        V_Sr, P_Sr, U_Sr, L_Sr, 
        V_St, P_St, U_St, L_St, 
        V_Pi, P_Pi, U_Pi, L_Pi, 
        V_So, P_So, U_So, L_So)