#import "all.typ": *

#show: book

#let jj = json("oktoich/Hlas1/0_Nedela.json")
#let obj = jj.M

= #translation.at("HLAS") 1
#columns(2, gutter: 2pt, Generate_0(jj))
#pagebreak()