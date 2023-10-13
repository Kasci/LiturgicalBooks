#import "/style.typ": *
#import "/styleMoleben.typ": *

= Moleben k Prečistej Bohorodičke

#align(horizon + center)[#primText[
  #text(50pt)[Moleben k \
  Prečistej \
  Bohorodičke]
]]

#let values = (
  "tropar1": (4, none, "My hriešni pokorne a vrúcne sa teraz utiekame k Bohorodičke. – Pokloňme sa jej a z hlbín duše volajme: – „Pomôž nám, Vládkyňa, a zľutuj sa nad nami. – Zachráň nás, lebo hynieme pre množstvo našich hriechov. – Neprepúšťaj naprázdno svojich služobníkov, – lebo ty jediná si naša Orodovnica.“"),
  "tropar2": (none, none, "Nikdy neprestaneme my nehod­ní – ospevovať tvoju moc, Bohorodička. – Lebo, keby si ty neprosila a nezastávala sa nás, – ktože by nás zbavil toľkých bied? – Kto by nám doteraz zaistil slobodu? – Neopustíme ťa, Vládkyňa, – lebo ty, jediná požehnaná, – chrániš svojich služob­níkov pred každým nešťastím."),
  "velebenie": none,
  "prokimen": (4, "Spomínať budem tvoje meno – z pokolenia na pokolenie.", "Lebo zhliadol na poníženosť svojej služobnice. Hľa, od tejto chvíle blahoslaviť ma budú všetky pokolenia."),
  "evanjelium": ("Lk", "V tých dňoch sa Mária vydala na cestu a ponáhľala sa do istého judejského mesta v hornatom kraji. Vošla do Zachariá­šovho domu a pozdravila Alžbetu. Len čo Alžbeta začula Máriin pozdrav, dieťa v jej lone sa zachvelo a Alžbetu naplnil Svätý Duch. Vtedy zvolala veľkým hlasom: „Požehnaná si medzi ženami a požehnaný je plod tvojho života. Čím som si zaslúžila, že matka môjho Pána prichádza ku mne? Lebo len čo zaznel tvoj pozdrav v mojich ušiach, radosťou sa zachvelo dieťa v mojom lone. A blažená je tá, ktorá uverila, že sa splní, čo jej povedal Pán.“ Mária hovorila: „Velebí moja duša Pána a môj duch jasá v Bohu, mojom Spasiteľovi, lebo zhliadol na poníženosť svojej služobnice. Hľa, od tejto chvíle blahoslaviť ma budú všetky pokolenia, lebo veľké veci mi urobil ten, ktorý je mocný, a sväté je jeho meno.“ Mária zostala pri nej asi tri mesiace a potom sa vrátila domov."),
  "verse": ("Presvätá Panna Mária, Bohorodička najmi­lostivejšia, raduj sa a spas v teba dúfajúcich.", (
    "Ó, Mária, Matka Božia, pros vždy Boha za nás.",
    "Matka nekonečnej lásky, raduj sa a spas v teba dúfajúcich.",
    "Matka Božej milosti, raduj sa a spas v teba dúfajúcich.",
    "Panna bez poškvrny hriechu počatá, raduj sa a spas v teba dúfajúcich.",
    "Panna nad cherubínov uctievanejšia, raduj sa a spas v teba dúfajúcich.",
    "Panna nad serafínov slávnejšia, raduj sa a spas v teba dúfajúcich.",
    "Panna, holubica nepoškvrnená, raduj sa a spas v teba dúfajúcich.",
    "Mária, nevädnúci kvet ľúbeznej vône, raduj sa a spas v teba dúfajúcich.",
    "Mária, ochrankyňa panien, raduj sa a spas v teba dúfajúcich.",
    "Mária, plášť sveta širší nad oblaky, raduj sa ..",
    "Mária, uprosenie spravodlivého Sudcu, raduj sa a spas v teba dúfajúcich.",
    "Mária, útecha plačúcich, raduj sa a spas v teba dúfajúcich.",
    "Mária, orodovnica, pri svojom nanebovzatí nás neopúšťajúca, raduj sa a spas v teba dúfajúcich.",
    "Mária, jediná čistá a milostiplná, raduj sa a spas v teba dúfajúcich."
  )),
  "stichiry": (
    (2, "Jehda ot dreva", "Za všetkých modlíš sa, Dobrotivá, – ktorí sa s vierou utiekajú pod tvoj ochranný plášť. – Lebo my hriešni obťažení mno­hými vinami, – nemáme pred Bohom iného oslobo­diteľa z bied a úzkostí, – len teba, Matka najvyššieho Boha. – Preto pred tebou padáme a prosíme: – Vysloboď svojich služobníkov z kaž­dého nebezpečenstva."),
    ("Spomínať budem tvoje meno z pokolenia na pokolenie."),
    (none, none, "Radosť všetkých utrápených, – zástankyňa prenasledovaných, – živiteľka hladujúcich, – tešiteľka pohŕdaných, – prístav po mori plaviacich sa, – navštívenie nemocných, – ochrankyňa a oro­dovnica slabých, – opora staroby. – Matka najvyš­šieho Boha, – ty si najčistejšia, – ponáhľaj sa, prosíme, zachrániť svojich služobníkov."),
    ("Čuj, dcéra, a pozoruj a nakloň svoje ucho."),
    (none, none, "Raduj sa, prečistá Panna. – Raduj sa, draho­cenné žezlo Krista Kráľa. – Raduj sa, Rodička tajomného Viniča. – Raduj sa, brána nebeská a ker nespáliteľný. – Raduj sa, svetlo celého sveta. – Raduj sa, radosť všetkých. – Raduj sa, spása veriacich. – Raduj sa, Vládkyňa, orodov­nica – a útočište všetkých kresťanov."),
    (8, none, "Raduj sa, pochvala celého sveta. – Raduj sa, chrám Pána. – Raduj sa, hora zatienená. – Raduj sa, útočište všetkých. – Raduj sa, svietnik zlatý. – Raduj sa, velebená sláva pravoverných. – Raduj sa, Matka Krista Boha. – Raduj sa, rajská záhrada. – Raduj sa, božský stôl. – Raduj sa, stánok. – Raduj sa, rúčka zo zlata. – Raduj sa, nádej všetkých.")
  ),
  "modlitba": "Moja najmilostivejšia Vládkyňa a nádej, Bohorodička, útočište sirôt, maják putujúcich, radosť utrápených, ochrana ukrivdených, vidíš moju biedu, vidíš moju úzkosť. Pomôž mi teda slabému. Nasýť ma putujúceho. Ty poznáš moje krivdy. Odstráň ich, keď chceš, lebo nemám inú pomoc okrem teba ani inú orodovnicu a dobrú tešiteľku, len teba, Božia Matka. Prijmi ma pod svoju ochranu a spas ma.",
  "ektenia": (
    "Zmiluj sa, Bože, nad nami pre svoje veľké milosrdenstvo, prosíme ťa, vypočuj nás a zmiluj sa.",
    "Prosme, aby naše mesto (alebo obec) i ostatné mestá, obce a celá krajina boli uchránené od hladu, pohrôm, zemetrasenia, povodní, krupobitia, ohňa, meča, vpádu nepriateľa. Nech dobrý a láskyplný Boh vypočuje naše prosby a odvráti od nás svoj spravodlivý hnev a zmiluje sa nad nami.",
    "Ešte sa modlime k Pánovi, Bohu nášmu, aby sa zmiloval nad nami, svojimi služobníkmi i nad všetkými kresťanmi, ktorí prichádzajú do tohoto svätého chrámu, aby nám odpustil hriechy a udelil nám hojné milosti a vždy vypočul naše prosby.",
    "Vypočuj nás, Bože, Spasiteľu náš, nádej všetkých končín zeme, i tých, ktorí sú ďaleko na mori. Odpusť milostivo naše hriechy a zmiluj sa nad nami, lebo si dobrý a miluješ nás. Tebe, Otcu i Synu i Svätému Duchu, vzdávame slávu teraz i vždycky i na veky vekov."
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
#pagebreak()
#evanjelium(..values.at("evanjelium"))
#pagebreak()
#verse(..values.at("verse"))
#pagebreak()
#stichiry(values.at("stichiry"))
#modlitba(values.at("modlitba"))
#ektenia(values.at("ektenia"))

#pagebreak()
#prepustenie