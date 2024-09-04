#import "../style.typ": *

#let trojsvatePoOtcenas = [
  #lettrine("Svjatyj Bože, Svjatyj Kripkyj, Svjatyj Bessmertnyj, pomiluj nas. (3x)")

  #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu. ")

  #lettrine("I teper' i navse, i naviky-vikiv. Amiň.")

  #lettrine("Presvjata Trojcjo, pomiluj nas, Hospodî, očisť našy hrichy, Vladyko, odpusť nam našy provîny, Svjatyj, prîjď i vyľič našy slabostî, čerez tvoje imja.")

  #lettrine("Pane, zmiluj sa. (3x)")

  #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu. ")

  #lettrine("I teraz i vždycky i na veky vekov. Amen.")

  #lettrine("Otče naš, kotryj jes' na nebesach, naj svjatîť sja tvoje imja, naj prîjde tvoje Car'stvo, naj sja ďije tvoja voľa, jak na nebi tak i na zemľi. Chľib naš denno-dennyj daj nam dnes' i odpusť nam našy dovhy, tak jak i my odpuščame svojim dovžnîkam, i ne prîveď nas do pokušiňa, no osloboď nas od lukavoho.")

  #lettrine("Bo tobi, Otcju, i Synu, i Svjatomu Duchu naležyť Car'stvo, mic' i slava teper' i navse, i naviky-vikiv.")
  
  #lettrine("Amiň.")
]

#let nacaloPoOtcenasBezKnaza = [
  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amiň.")

  #lettrine("Slava tobi, Bože naš, slava tobi.")

  #lettrine("Carju nebesnyj, Poťišateľu i Duchu pravdy, što vsjahdy jes' i všytko vypovňuješ, bohatstvo dobroty, davateľu žyvota, prîjď i perebyvaj v nas i očisť nas od každoj skverny, i spas', Predobryj, našy dušy.")

  #trojsvatePoOtcenas
]

#let nacaloPoOtcenas = [
  #note[Sv: ]#lettrine("Naš Boh je blahoslovlenyj v kažďim časi: teper' i navse, i naviky-vikiv.")
  
  #note[ak nie je kňaz, prednášaj:] 
  
  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amiň.")

  #lettrine("Slava tobi, Bože naš, slava tobi.")

  #lettrine("Carju nebesnyj, Poťišateľu i Duchu pravdy, što vsjahdy jes' i všytko vypovňuješ, bohatstvo dobroty, davateľu žyvota, prîjď i perebyvaj v nas i očisť nas od každoj skverny, i spas', Predobryj, našy dušy.")

  #trojsvatePoOtcenas
]

#let nacaloBezKnaza = [
  #nacaloPoOtcenasBezKnaza

  #lettrine("Pane, zmiluj sa.") #primText[(12x)]

  #lettrine("Sláva Otcu i Synu i Svätému Duchu.")

  #lettrine("I teraz i vždycky i na veky vekov. Amen.")

  #lettrine("Poďte, pokloňme sa Kráľovi, nášmu Bohu.")

  #lettrine("Poďte, pokloňme sa Kristovi, Kráľovi, nášmu Bohu.")

  #lettrine("Poďte, pokloňme sa a padnime pred samým Pánom, Ježišom Kristom, Kráľom a Bohom naším.")
]

#let nacalo = [
  #nacaloPoOtcenas

  #lettrine("Pane, zmiluj sa.") #primText[(12x)]

  #lettrine("Sláva Otcu i Synu i Svätému Duchu.")

  #lettrine("I teraz i vždycky i na veky vekov. Amen.")

  #lettrine("Poďte, pokloňme sa Kráľovi, nášmu Bohu.")

  #lettrine("Poďte, pokloňme sa Kristovi, Kráľovi, nášmu Bohu.")

  #lettrine("Poďte, pokloňme sa a padnime pred samým Pánom, Ježišom Kristom, Kráľom a Bohom naším.")
]

#let prepustenieSDostojneBezKnaza = [\
  == Prepustenie <X>

  #lettrine("Dôstojné je velebiť teba, Bohorodička, * vždy blažená a nepoškvrnená, Matka nášho Boha.")

  #lettrine("Čestňijšuju cheruvim i slavňijšuju bez sravnenija serafim, bez istľinija Boha Slova roždšuju, suščuju Bohorodicu ťa veličajem. ")

  #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu, i teper' i navse, i naviky-vikiv. Amiň. Hospodî, pomîluj (3x). Poblahoslov.")

  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amiň.")
]

#let prepustenieBezKnaza = [\
  == Prepustenie <X>

  #lettrine("Čestňišu jak cheruvimy i bez miry slavňišu jak serafimy, neporušeno porodîvšu Boha Slovo, tebe, pravdîvu Bohorodîcju, proslavľame. ")

  #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu, i teper' i navse, i naviky-vikiv. Amiň. Hospodî, pomîluj (3x). Poblahoslov.")

  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amiň.")
]

#let prepustenieMaleBezKnaza = [\
  == Prepustenie <X>

  #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu, i teper' i navse, i naviky-vikiv. Amiň. Hospodî, pomîluj (3x). Poblahoslov.")

  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amiň.")
]

#let prepustenie = [\
  == Prepustenie <X>

  #note[Sv: ] #lettrine("Premudrosť!")

  #note[L: ] #lettrine("Čestňišu jak cheruvimy i bez miry slavňišu jak serafimy, neporušeno porodîvšu Boha Slovo, tebe, pravdîvu Bohorodîcju, proslavľame.")

  #note[Sv: ] #lettrine("Slava tobi, Christe Bože, naďijo naša, slava tobi.")

  #note[L: ] #lettrine("Slava Otcju, i Synu, i Svjatomu Duchu, i teper' i navse, i naviky-vikiv. Amiň. Hospodî, pomîluj (3x). Poblahoslov.")

  #note[Sv: ] #lettrine("Christos, naš pravdîvyj Boh, naj nas na pros'by svojoj Prečistoj Materî, svjatych, slavnych i vsjahdy proslavľanych apostoľiv, blaženoho Prjašivskoho jepiskopa svjaščenomučenîka Pavla i všytkych svjatych pomîluje i spasîť, jak dobryj i čolovikoľubec'.")

  #note[L: ] #lettrine("Amiň.")
]

#let tropar(hlas, podoben, txt) = [
  #primText[Tropár (#hlas. hlas#if podoben != none [, #podoben])]: #txt
]

#let sit(hlas, podoben, txt) = [
  #primText[Sláva: I teraz: #if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):] ]#txt
]

#let stich(hlas, podoben, txt) = [
  #primText[#if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):]] #txt
]

#let vers(txt) = [
    #pad(left: 20pt)[#primText[Verš:] #txt]
]

#let K(txt) = [
  #note[Sv:] #txt
]

#let L(txt) = [
  #note[L:] #txt
]

#let prokimen(hlas, txt, v) = [
  #primText[Prokimen (#hlas. hlas)]: #txt

  #vers[#v]
]

#let zalm(num) = [
  #import "/style.typ": *

  #set par(first-line-indent: 1em)
  
  #subheader[Žalm #num]

  #include "zalmy/Z"+padNum(num)+".typ"
]

#let slavoslovieMale = [
  #set par(first-line-indent: 1em)

  Sláva Bohu na nebi a mier na zemi. V ľuďoch dobrá vôľa. 

  Chválime ťa, velebíme ťa. Klaniame sa ti, oslavujeme ťa. 
  
  Dobrorečíme ti pre nesmiernu tvoju slávu, 
  
  Pane a Kráľu nebeský, Bože, Otče, všemohúci Vládca, 
  
  Pane náš a jednorodený Synu, Ježišu Kriste i Svätý Duchu, Pane Bože. 
  
  Baránok Boží, Syn Otca, ty, čo snímaš hriechy sveta, zmiluj sa nad nami. 
  
  Ty, čo snímaš hriechy sveta, prijmi naše modlitby. 
  
  Ty, čo sedíš po pravici Otcovej, zmiluj sa nad nami. 
  
  Len ty sám si svätý, ty jediný si Pán, Ježiš Kristus v sláve Boha Otca. Amen. 
  
  Každý deň ťa budeme velebiť a tvoje meno chváliť navždy a naveky. 
  
  Pane, bol si naše útočisko z pokolenia na pokolenie. 
  
  Riekol som: Pane, zmiluj sa nado mnou a uzdrav moju dušu, lebo som sa prehrešil proti tebe. 
  
  Pane, k tebe sa utiekam. Nauč ma plniť tvoju vôľu, lebo ty si môj Boh. 
  
  Veď u teba je zdroj života a v tvojom svetle uzrieme svetlo. 
  
  Svoju milosť daj tým, čo ťa poznajú.
  
  Ráč nás, Pane, v tento deň zachrániť od hriechu. 
  
  Velebíme ťa, Pane, Bože otcov našich. Chválime a oslavujeme tvoje meno na veky. Amen. 
  
  Preukáž nám, Pane, svoje milosrdenstvo, lebo dúfame v teba. 
  
  Blahoslavený si, Pane, nauč nás svoje pravdy. 
  
  Blahoslavený si, Vládca, daj nám porozumieť svojim pravdám. 
  
  Blahoslavený si, Svätý, osvieť nás svojimi pravdami. 
  
  Pane, tvoje milosrdenstvo je večné, nepohŕdaj dielom svojich rúk. 
  
  Tebe patrí chvála, tebe patrí pieseň. 
  
  Tebe, Otcu i Synu, i Svätému Duchu, patrí sláva teraz i vždycky, i na veky vekov. Amen.
]


#let slavoslovieVelke = [
  #set par(first-line-indent: 1em)

  Sláva Bohu na nebi a mier na zemi. V ľuďoch dobrá vôľa. 

  Chválime ťa, velebíme ťa. Klaniame sa ti, oslavujeme ťa. 
  
  Dobrorečíme ti pre nesmiernu tvoju slávu, 
  
  Pane a Kráľu nebeský, Bože, Otče, všemohúci Vládca, 
  
  Pane náš a jednorodený Synu, Ježišu Kriste i Svätý Duchu, Pane Bože. 
  
  Baránok Boží, Syn Otca, ty, čo snímaš hriechy sveta, zmiluj sa nad nami. 
  
  Ty, čo snímaš hriechy sveta, prijmi naše modlitby. 
  
  Ty, čo sedíš po pravici Otcovej, zmiluj sa nad nami. 
  
  Len ty sám si svätý, ty jediný si Pán, Ježiš Kristus v sláve Boha Otca. Amen. 
  
  Každý deň ťa budeme velebiť a tvoje meno chváliť navždy a naveky. 
  
  Pane, bol si naše útočisko z pokolenia na pokolenie. 
  
  Riekol som: Pane, zmiluj sa nado mnou a uzdrav moju dušu, lebo som sa prehrešil proti tebe. 
  
  Pane, k tebe sa utiekam. Nauč ma plniť tvoju vôľu, lebo ty si môj Boh. 
  
  Veď u teba je zdroj života a v tvojom svetle uzrieme svetlo. 
  
  Svoju milosť daj tým, čo ťa poznajú.
  
  Ráč nás, Pane, v tento deň zachrániť od hriechu. 
  
  Velebíme ťa, Pane, Bože otcov našich. Chválime a oslavujeme tvoje meno na veky. Amen. 
  
  Preukáž nám, Pane, svoje milosrdenstvo, lebo dúfame v teba. 
  
  Blahoslavený si, Pane, nauč nás svoje pravdy. 
  
  Blahoslavený si, Vládca, daj nám porozumieť svojim pravdám. 
  
  Blahoslavený si, Svätý, osvieť nás svojimi pravdami. 
  
  Pane, bol si naše útočisko z pokolenia na pokolenie. 
  
  Riekol som: Pane, zmiluj sa nado mnou a uzdrav moju dušu, lebo som sa prehrešil proti tebe. 
  
  Pane, k tebe sa utiekam. Nauč ma plniť tvoju vôľu, lebo ty si môj Boh.
  
  Veď u teba je zdroj života a v tvojom svetle uzrieme svetlo. 
  
  Svoju milosť daj tým, čo ťa poznajú.
]

#let vKazdomCase = [
  V každom čase a v každej chvíli v nebi aj na zemi sa ti klaňajú a teba oslavujú, Bože dobrý, trpezlivý a nesmierne milosrdný. Ty miluješ spravodlivých, zmilúvaš sa nad hriešnymi a všetko voláš k spáse pre prísľub budúceho dobra. Ty sám, Pane, prijmi v tejto hodine aj naše modlitby a nasmeruj náš život k tvojim prikázaniam. Naše duše posväť a telá očisť, myšlienky usmerni, rozum urob rozvážnym a triezvym, osloboď nás od každého zármutku, zla a utrpenia. Okolo nás postav svojich svätých anjelov ako hradbu, aby sme pod ochranou a vedením ich oddielov dosiahli jednotu vo viere a poznanie tvojej nedotknuteľnej slávy, veď ty si požehnaný na veky vekov. Amen.
]