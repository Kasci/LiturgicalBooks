#import "../style.typ": *

#let trojsvatePoOtcenas = [
  #lettrine("Svätý Bože, Svätý Silný, Svätý Nesmrteľný, zmiluj sa nad nami. (3x)")

  #lettrine("Sláva Otcu i Synu i Svätému Duchu.")

  #lettrine("I teraz i vždycky i na veky vekov. Amen.")

  #lettrine("Presvätá Trojica, zmiluj sa nad nami. Pane, očisť nás od našich hriechov. Vládca, odpusť nám naše neprávosti, Svätý, príď a uzdrav naše slabosti pre svoje meno.")

  #lettrine("Pane, zmiluj sa. (3x)")

  #lettrine("Sláva Otcu i Synu i Svätému Duchu.")

  #lettrine("I teraz i vždycky i na veky vekov. Amen.")

  #lettrine("Otče náš, ktorý si na nebesiach, posväť sa meno tvoje, príď kráľovstvo tvoje, buď vôľa tvoja ako v nebi, tak i na zemi. Chlieb náš každodenný daj nám dnes a odpusť nám naše viny, ako i my odpúšťame svojim vinníkom, a neuveď nás do pokušenia, ale zbav nás Zlého.")

  #lettrine("Lebo tvoje je kráľovstvo a moc i sláva, Otca i Syna i Svätého Ducha, teraz i vždycky i na veky vekov.")
  
  #lettrine("Amen.")
]

#let nacaloPoOtcenasBezKnaza = [
  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amen.")

  #lettrine("Sláva tebe, Bože náš, sláva tebe.")

  #lettrine("Kráľu nebeský, Utešiteľu, Duchu pravdy, ktorý si všade a všetko naplňuješ, poklad dobra a darca života, príď a prebývaj v nás, očisť nás od každej poškvrny a spas, Dobrotivý, naše duše.")

  #trojsvatePoOtcenas
]

#let nacaloPoOtcenas = [
  #note[Kňaz: ]#lettrine("Požehnaný Boh náš v každom čase, teraz i vždycky i na veky vekov.")
  
  #note[ak nie je kňaz, prednášaj:] 
  
  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amen.")

  #lettrine("Sláva tebe, Bože náš, sláva tebe.")

  #lettrine("Kráľu nebeský, Utešiteľu, Duchu pravdy, ktorý si všade a všetko naplňuješ, poklad dobra a darca života, príď a prebývaj v nás, očisť nás od každej poškvrny a spas, Dobrotivý, naše duše.")

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

#let prepustenieBezKnaza = [\
  #header[Prepustenie]

  #lettrine("Čestnejšia si ako cherubíni a neporov­na­teľne slávnejšia ako serafíni, bez porušenia si poro­dila Boha Slovo, opravdivá Bohorodička, velebíme ťa.")

  #lettrine("Sláva: I teraz: Pane, zmiluj sa (3x). Požehnaj.")

  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amen.")
]

#let prepustenieMaleBezKnaza = [\
  #header[Prepustenie]

  #lettrine("Sláva: I teraz: Pane, zmiluj sa (3x). Požehnaj.")

  #lettrine("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov zmiluj sa nad nami.")
  
  #lettrine("Amen.")
]

#let prepustenie = [\
  #header[Prepustenie]

  #note[Kňaz: ] #lettrine("Premúdrosť!")

  #note[Ľud: ] #lettrine("Čestnejšia si ako cherubíni a neporov­na­teľne slávnejšia ako serafíni, bez porušenia si poro­dila Boha Slovo, opravdivá Bohorodička, velebíme ťa.")

  #note[Kňaz: ] #lettrine("Sláva tebe, Kriste Bože, naša nádej, sláva tebe.")

  #note[Ľud: ] #lettrine("Sláva: I teraz: Pane, zmiluj sa (3x). Požehnaj.")

  #note[Kňaz: ] #lettrine("Kristus, náš pravý Boh, na prosby svojej prečistej Matky, našich prepodobných a bohonos­ných otcov a všetkých svätých, nech sa nad nami zmiluje a spasí nás, lebo je dobrý a miluje nás.")

  #note[Ľud: ] #lettrine("Amen.")
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
  #note[Kňaz:] #txt
]

#let L(txt) = [
  #note[Ľud:] #txt
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

#let vKazdomCase = [
  V každom čase a v každej chvíli v nebi aj na zemi sa ti klaňajú a teba oslavujú, Bože dobrý, trpezlivý a nesmierne milosrdný. Ty miluješ spravodlivých, zmilúvaš sa nad hriešnymi a všetko voláš k spáse pre prísľub budúceho dobra. Ty sám, Pane, prijmi v tejto hodine aj naše modlitby a nasmeruj náš život k tvojim prikázaniam. Naše duše posväť a telá očisť, myšlienky usmerni, rozum urob rozvážnym a triezvym, osloboď nás od každého zármutku, zla a utrpenia. Okolo nás postav svojich svätých anjelov ako hradbu, aby sme pod ochranou a vedením ich oddielov dosiahli jednotu vo viere a poznanie tvojej nedotknuteľnej slávy, veď ty si požehnaný na veky vekov. Amen.
]