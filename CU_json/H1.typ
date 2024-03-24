#import "all.typ": *
// #include "all.typ"

#generate([
  = #translation.at("HLAS") 1
  #show: rest => columns(2, rest)

  #let jj = json("oktoich/Hlas1/0_Nedela.json")
  
  #Generate_0(jj)
  
])
