#import "../style.typ": *

#let trojsvatePoOtcenas = [
  #lettrine("Svjatýj Bóže, svjatýj krípkij, svjatýj bezsmértnyj, pomíluj nás. (3x)")

  #lettrine("Sláva Otcú, i Sýnu, i Svjatómu Dúchu.")

  #lettrine("I nýňi i prísno, i vo víki vikóv, amíň.")

  #lettrine("Presvjatája Tróice pomíluj nás: Hóspodi, očísti hrichí náša: Vladýko, prostí bezzakónija náša: svjatýj, posití, i iscilí némošči náša, ímene Tvojehó rádi.")

  #lettrine("Hóspodi, pomíluj. (3x)")

  #lettrine("Sláva Otcú, i Sýnu, i Svjatómu Dúchu.")

  #lettrine("I nýňi i prísno, i vo víki vikóv, amíň.")

  #lettrine("Ótče naš, íže jesí na nebesích, da svjatítsja ímja Tvojé, da priídet cárstvije Tvojé: da búdet vóľa Tvojá, jáko na nebesí i na zemlí. Chľíb náš nasúščnyj dážď nám dnés, i ostávi nám dólhi náša, jákože i mý ostavľájem dolžnikóm nášym: i ne vvedí nás vo iskušénije, no izbávi nás ot lukávaho.")

  #lettrine("Jáko tvojé jesť cárstvo, i síla, i sláva, Otcá i Sýna, i Svjatáho Dúcha, nýňi, i prísno, i vo víki vikóv.")
  
  #lettrine("Amíň.")
]

#let nacaloPoOtcenasBezKnaza = [
  #lettrine("Molítvami svjatých otéc nášich, Hóspodi Iisúse Christé Bóže náš, pomíluj nás.")
  
  #lettrine("Amíň.")

  #lettrine("Sláva Tebí Bože náš, sláva Tebí.")

  #lettrine("Carjú nebésnyj, uťišiteľu, dúše ístiny, íže vezďí sýj i vsjá ispolňájaj, sokróvišče blahích i žízni podáteľu, priidí i vselísja v ný, i očísti ný ot vsjákija skvérny, i spasí, bláže, dúšy náša.")

  #trojsvatePoOtcenas
]

#let nacaloPoOtcenas = [
  #note[Jeréj: ]#lettrine("Blahoslovén Bóh náš, vsehdá nýňi i prísno i vo víki vikóv.")
  
  #note[ak nie je kňaz, prednášaj:] 
  
  #nacaloPoOtcenasBezKnaza
]

#let nacaloBezKnaza = [
  #nacaloPoOtcenasBezKnaza

  #lettrine("Hóspodi, pomíluj. ") #primText[(12x)]

  #lettrine("Sláva Otcú, i Sýnu, i Svjatómu Dúchu.")

  #lettrine("I nýňi i prísno, i vo víki vikóv, amíň.")

  #lettrine("Priidíte, poklonímsja carévi nášemu Bóhu.")

  #lettrine("Priidíte, poklonímsja, Christú, carévi, nášemu Bóhu.")

  #lettrine("Priidíte, poklonímsja, i pripadém samomú Hóspodu Iisúsu Christú, carévi i Bóhu nášemu.")
]

#let nacalo = [
  #nacaloPoOtcenas

  #lettrine("Hóspodi, pomíluj. ") #primText[(12x)]

  #lettrine("Sláva Otcú, i Sýnu, i Svjatómu Dúchu.")

  #lettrine("I nýňi i prísno, i vo víki vikóv, amíň.")

  #lettrine("Priidíte, poklonímsja carévi nášemu Bóhu.")

  #lettrine("Priidíte, poklonímsja, Christú, carévi, nášemu Bóhu.")

  #lettrine("Priidíte, poklonímsja, i pripadém samomú Hóspodu Iisúsu Christú, carévi i Bóhu nášemu.")
]

#let prepustenieBezKnaza = [\
  #header[Otpust]

  #lettrine("Čestňíjšuju Cheruvím i slávňijšuju béz sravnénija Serafím, béz istľínija Bóha Slóva róždšuju, súščuju Bóhoródicu ťa veličájem.")

  #lettrine("Sláva Otcú, i Sýnu, i svjatómu Dúchu, i nýňi i prísno, i vo víki vikóv. Amíň. Hóspodi, pomíluj. (3x) Blahosloví.")

  #lettrine("Molítvami svjatých otéc nášich, Hóspodi Iisúse Christé Bóže náš, pomíluj nás.")
  
  #lettrine("Amíň.")
]

#let prepustenie = [\
  #header[Otpust]

  #note[Jeréj: ] #lettrine("Premúdrosť!")

  #note[Lík: ] #lettrine("Čestňíjšuju Cheruvím i slávňijšuju béz sravnénija Serafím, béz istľínija Bóha Slóva róždšuju, súščuju Bóhoródicu ťa veličájem.")

  #note[Jeréj: ] #lettrine("Sláva tebi, Christé Bóže, upovánije náše, sláva tebí.")

  #note[Lík: ] #lettrine("Sláva Otcú, i Sýnu, i svjatómu Dúchu, i nýňi i prísno, i vo víki vikóv. Amíň. Hóspodi, pomíluj. (3x) Blahosloví.")

  #note[Jeréj: ] #lettrine("Christós ístinnyj Bóh náš, molítvami prečístyja svojejá Mátere, síloju čestnáho i životvorjáščaho Krestá, jehóže dnés vsemírnoje vozdvíženije svítlo prázdnujem i vsích svjatých, pomílujet i spasét nás, jáko bláh i čelovikoľúbec.")

  #note[Lík: ] #lettrine("Amíň.")
]

#let tropar(hlas, podoben, txt) = [
  #primText[Tropár (#hlas. hlas#if podoben != none [, #podoben])]: #txt
]

#let sit(hlas, podoben, txt) = [
  #primText[Sláva: I nýňi: #if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):] ]#txt
]

#let stich(hlas, podoben, txt) = [
  #primText[#if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):]] #txt
]

#let vers(txt) = [
    #pad(left: 20pt)[#primText[Verš:] #txt]
]

#let K(txt) = [
  #note[Jeréj:] #txt
]

#let L(txt) = [
  #note[Lík:] #txt
]

#let prokimen(hlas, txt, v) = [
  #primText[Prokimen (#hlas. hlas)]: #txt

  #vers[#v]
]
