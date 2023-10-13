#import "/style.typ": *
#import "/styleMoleben.typ": *

= Moleben k sv. Jozefovi

#align(horizon + center)[#primText[
  #text(50pt)[Moleben k\
  svätému\
  Jozefovi]
]]

#let values = (
  "tropar1": (6, none, "Všetci anjeli a svätí na nebesiach – s obdivom vychvaľujú tvoju vznešenosť, – Jozef, Bohom vyvolený ženích. – My na zemi máme v tebe mocného ochrancu. – Preto s dôverou sa k tebe utiekame – a pokorne voláme: – „Zachráň nás od úkladov diablových, – najmocnejší ochranca Kristovej Cirkvi!“"),
  "tropar2": (4, none, "Útekom cez púšť do Egypta – s najčistejšou svojou snúbenicou – zachránil si Ježiša pred mečom Herodesovým, – chráň aj nás na púšti tohto života, – kde nás satan prenasleduje, – zbav nás jeho úkladov i večnej záhuby."),
  "velebenie": ("Velebíme ťa, – všetkými oslavovaný – Ženích nepoškvrnenej Panny, – najvyšší ochranca Kristovej Cirkvi", (
    "Spravodlivý sťa palma zakvitne – a vyrastie sťa céder z Libanonu.",
    "Jeho blesky ožarujú zemekruh – a jeho slávu vidia všetky národy.",
    "U ustanovil ho za Pána svojho domu – a za správcu všetkého svojho majetku,",
    "Slávou a cťou – si ho ovenčil.",
    "Sláva: I teraz: Aleluja, aleluja, aleluja, sláva tebe, Bože."
  )),
  "prokimen": (4, "Spravodlivý sa teší v Pánovi – a spolieha sa na neho.", "Počuj, Bože, môj hlasitý nárek, keď volám k tebe."),
  "evanjelium": ("Mt", "Keď mudrci odišli, Jozefovi sa vo sne zjavil Pánov anjel a povedal: „Vstaň, vezmi so sebou dieťa i jeho matku, ujdi do Egypta a zostaň tam, kým ti nedám vedieť, lebo Herodes bude hľadať dieťa, aby ho zmárnil.“ On vstal, vzal za noci dieťa i jeho matku a odišiel do Egypta. Tam zostal až do Herodesovej smrti, aby sa splnilo, čo povedal Pán skrze proroka: „Z Egypta som povolal svojho syna.“ Keď Herodes zbadal, že ho oklamali, veľmi sa rozhneval a dal povraždiť v Betleheme a na jeho okolí všetkých chlapcov od dvoch rokov nadol podľa času, ktorý zvedel od mudrcov. Vtedy sa splnilo, čo povedal prorok Jeremiáš: „V Ráme bolo počuť hlas, plač, nárek a veľké kvílenie: Ráchel oplakáva svoje deti a odmieta útechu, lebo ich niet.“ Po Herodesovej smrti sa Pánov anjel zjavil vo sne Jozefovi v Egypte a povedal mu: „Vstaň, vezmi dieťa i jeho matku a chod’ do izraelskej krajiny. Tí, čo striehli na život dieťaťa už pomreli.“ On vstal, vzal dieťa i jeho matku a prišiel do izraelskej krajiny. Ale keď sa dopočul, že v Júdei kraľuje Archelaos namiesto svojho otca Herodesa, bál sa ta ísť. Varovaný vo sne, odobral sa do Galilejského kraja. Keď ta prišiel, usadil sa v meste, ktoré sa volá Nazaret, aby sa splnilo, čo predpovedali proroci: „Budú ho volať Nazaretský.“"),
  "verse": (none, none),
  "stichiry": (
    (8, "O preslavno čudese", "Ó, preslávny ženích, Jozef, – aký blažený bol tvoj život s pre­čistou Bohorodičkou! – S ňou si sa delil o všetky radosti. – S ňou si prežíval všetky strasti. – Všetky myšlienky i tajomstvá ste mali spoločné. – Vo vašej rodine najväčšia láska prekvitala. – U vás prebýval pokoj a šťastie. – tridsať rokov ste spolu žili. – Tridsať rokov ste sa spolu starali o Syna Božieho, – odmeňovaní jeho milosťami."),
    ("Blažený je muž dobrej ženy. Dvojnásobný je počet jeho dní."),
    (none, none, "Aké to prúdy nebeských milostí – vlievali sa do tvojej požehnanej duše, – keď si počúval slová nepoškvrnenej Panny? – S najväčšou úctou si prijímal jej rady, jej útechy a povzbudenia. – Ty si bol svedkom a účastníkom jej vrúcnych modli­tieb. – Spolu s ňou si prenikal do večných tajomstiev."),
    ("Dobrá žena je radosťou svojho muža a jeho roky naplňuje pokojom."),
    (none, none, "Jozef, ochranca svätej Cirkvi, – dostal si ne­smier­ne milosti a dary Svätého Ducha. – Boh ťa obdaril veľkou múdrosťou. – Tvoja duša sa skvela nádherou panickej čistoty. – Dojemná bola hĺbka tvojej pokory. – Plamene tvojej vrúcnej lásky pre­nik­li nebesá. – Aj nám svojimi vrúcnymi mod­lit­bami – vypros tieto veľké dary."),
    (4, none, "Jozef, ženích nad všetkých vyznamenaný – tvoju požehnanú dušu stále naplňovali radosti i strasti. – Ale v radostiach si sa nevyvyšoval – a v trápeniach si neklesal. – Vo všetkom si bol vyrovnaný, – do vôle Božej odda­ný. – Aj nám vypros milosti, – aby sme ťa nasledovali.")
  ),
  "modlitba": "K tebe, svätý Jozef, vo svojom súžení sa utiekame. Vyprosili sme si pomoc tvojej Nevesty a aj teba dôverne o ochranu žiadame. Pre lásku, ktorá ťa spájala s prečistou Pannou a Bohorodič­kou, a pre otcovskú lásku, s ktorou si objímal božské Dieťa, vrúcne ťa prosíme, pozri na dedič­stvo, ktoré Ježiš Kristus získal svojou predra­hou Krvou. Príď nám na pomoc svojím mocným prí­hovorom a pomáhaj nám vo všetkých našich potrebách.
  
  Starostlivý Ochranca Svätej rodiny, bedli nad vyvoleným dedičstvom Ježiša Krista. Najláska­vejší Otče, odvráť od nás všetku nákazu bludu a nemravnosti. Pomáhaj nám z neba, náš najmoc­nejší Dobrodinec, aby sme premohli sily temnosti. A ako si kedysi vyslobodil Ježiša z najväčšieho nebezpečenstva života, tak teraz obhajuj svätú Cirkev pred všetkými protivenstvami a nás všetkých prijmi pod svoju ochranu, aby sme podľa tvojho príkladu a s tvojou pomocou viedli svätý život, nábožne zomreli a dosiahli večnú blaženosť v nebi.",
  "ektenia": (
    "Zmiluj sa, Bože, nad nami pre svoje veľké milosrdenstvo, prosíme ťa, vypočuj nás a zmiluj sa.",
    "Prosme, aby naše mesto (alebo obec) i ostatné mestá, obce a celá krajina boli uchránené od hladu, pohrôm, zemetrasenia, povodní, krupobitia, ohňa, meča, vpádu nepriateľa. Nech dobrý a láskyplný Boh vypočuje naše prosby a odvráti od nás svoj spravodlivý hnev a zmiluje sa nad nami.",
    "Prosme, aby naše mesto (alebo obec) i ostatné mestá, obce a celá krajina boli uchránené od hla­du, pohrôm, zemetrasenia, povodní, krupobitia, ohňa, meča, vpádu nepriateľa. Nech dobrý a láskyplný Boh vypočuje naše prosby a odvráti od nás svoj spravodlivý hnev a zmiluje sa nad nami.",
    "Milosťou, štedrosťou a láskou tvojho jednorode­ného Syna, s ktorým si velebený spolu s tvojím presvätým, dobrým a životodarným Duchom teraz i vždycky i na veky vekov."
  )
)

#pagebreak()
#nacaloPoOtcenas

#tropar(..values.at("tropar1"))

#sit(..values.at("tropar2"))
#if values.at("velebenie") != none [#velebenie(..values.at("velebenie"))]

#note[Ľud sa postaví.]
#K[Vnímajme! Pokoj všetkým! Premúdrosť, vnímajme!]

#prokimen(..values.at("prokimen"))
#chvaly()
#evanjelium(..values.at("evanjelium"))
#verse(..values.at("verse"))
#stichiry(values.at("stichiry"))
#modlitba(values.at("modlitba"))
#ektenia(values.at("ektenia"))

#prepustenie