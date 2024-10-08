#import "/styleMenlive.typ": *
#import "/CU/texts.typ": *

= #translation.at("HLAS") 6

#import "../Hlas6/0_Nedela.typ" as Ne: *
#import "../Hlas6/1_Pondelok.typ" as Po: *
#import "../Hlas6/2_Utorok.typ" as Ut: *
#import "../Hlas6/3_Streda.typ" as Sr: *
#import "../Hlas6/4_Stvrtok.typ" as St: *
#import "../Hlas6/5_Piatok.typ" as Pi: *
#import "../Hlas6/6_Sobota.typ" as So: *


#hlas_all(Ne.M, Ne.V, Ne.P, Ne.N, Ne.U, Ne.L, 
        Po.V, Po.P, Po.U, Po.L, 
        Ut.V, Ut.P, Ut.U, Ut.L, 
        Sr.V, Sr.P, Sr.U, Sr.L, 
        St.V, St.P, St.U, St.L, 
        Pi.V, Pi.P, Pi.U, Pi.L, 
        So.V, So.P, So.U, So.L,
        h_st, s_st, p_st, n_st,
        typs, pripivy,
        sd_st, ch_st, su_st, b_st,
        id => translation.at(id),
        (true, true, true, true, true, true))