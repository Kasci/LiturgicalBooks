#show <X>: it => {
    if it.location().position().y > 480pt [$ $ #colbreak() #it]
    else [#it]
}

#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/utierne/utierenBezKnaza.typ"
#pagebreak()
#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/utierne/postnaUtierenBezKnaza.typ"
#pagebreak()
#set text(font: "Monomakh Unicode", lang: "sk", fill: black)
#include "/SK/casoslov/utierne/velkaUtierenBezKnaza.typ"
#pagebreak()
// #set text(font: "Monomakh Unicode", lang: "cs", fill: black)
// #include "/CSL/casoslov/utierne/utierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "cs", fill: black)
// #include "/CSL/casoslov/utierne/velkaUtierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "ru", fill: black)
// #include "/CU/casoslov/utierne/utierenBezKnaza.typ"
// #pagebreak()
// #set text(font: "Monomakh Unicode", lang: "ru", fill: black)
// #include "/CU/casoslov/utierne/velkaUtierenBezKnaza.typ"