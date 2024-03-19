#show <X>: it => {
    if it.location().position().y > 480pt [$ $ #colbreak() #it]
    else [#it]
}

#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/vecierne/vecierenBezKnaza.typ"
#pagebreak()
#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/vecierne/velkaVecierenBezKnaza.typ"
#pagebreak()
#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/vecierne/postnaVecierenBezKnaza.typ"
#pagebreak()
// #set text(font: "Monomakh Unicode", lang: "cs", fill: black)
// #include "/CSL/casoslov/vecierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "cs", fill: black)
// #include "/CSL/casoslov/velkaVecierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "ru", fill: black)
// #include "/CU/casoslov/vecierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "ru", fill: black)
// #include "/CU/casoslov/velkaVecierenBezKnaza.typ"