#import "/all.typ": *

#show: book

// #set text(font: "Monomakh Unicode", lang: "cs", fill: black)

// #include("/CU/oktoich/all.typ")
// #include("/covers/oktoich/H12.typ")
// #include("/covers/oktoich/H34.typ")
// #include("/covers/oktoich/H56.typ")
// #include("/covers/oktoich/H78.typ")

// #outline(title: "Ꙍ҆главле́нїе", depth: 3, indent: 2em)
// #pagebreak()

// #include("/CU/oktoich/1_generated/0_all/Hlas1.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas2.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas3.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas4.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas5.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas6.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas7.typ")
// #include("/CU/oktoich/1_generated/0_all/Hlas8.typ")

#set text(font: "Monomakh Unicode", lang: "cs", fill: black)

#include("/covers/oktoich/H1_CSL.typ")
// #include("/covers/oktoich/H12_CSL.typ")
// #include("/covers/oktoich/H34_CSL.typ")
// #include("/covers/oktoich/H56_CSL.typ")
// #include("/covers/oktoich/H78_CSL.typ")

#set page(header: "")
#outline(title: "Ohlavlénije", depth: 3, indent: 2em)

#counter(page).update(0)
#set page(
  header: context {
    counter(page).display("1")
  }, 
  numbering: "1", 
  number-align: top+right
)
#pagebreak()
#include("/CSL/oktoich/1_generated/0_all/Hlas1.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas2.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas3.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas4.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas5.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas6.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas7.typ")
// #include("/CSL/oktoich/1_generated/0_all/Hlas8.typ")
#pagebreak()
// #pagebreak()
// #pagebreak()

// #include("/covers/oktoich/H12_GR.typ")
// #include("/covers/oktoich/H14_GR.typ")
// #include("/covers/oktoich/H34_GR.typ")
// #include("/covers/oktoich/H56_GR.typ")
// #include("/covers/oktoich/H78_GR.typ")
// #include("/covers/oktoich/H58_GR.typ")
// #outline(title: "Πίνακας Περιεχομένων", depth: 3, indent: 2em)
// #pagebreak()
// #include("/GR/oktoich/1_generated/0_all/Hlas1.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas2.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas3.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas4.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas5.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas6.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas7.typ")
// #include("/GR/oktoich/1_generated/0_all/Hlas8.typ")