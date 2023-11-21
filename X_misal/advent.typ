#import "../utils.typ": *
#import "/style.typ": *

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

#let project(body) = {
  
  set page(paper:"a4", numbering: "1", number-align: center, background: bg, margin: (bottom: 90pt))
  set text(font: "Monomakh Unicode", lang: "cu")
  
  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(center, text(0pt, rgb("ffffff"), upper(it)))
  ]
  
  show heading.where(level: 2): it => [ 
    #align(center, text(0pt, rgb("ffffff"), it))
  ]
  show heading.where(level: 3): it => [ 
    #align(center, text(0pt, rgb("ffffff"), it))
  ]

  // Main body.
  set par(justify: true)
  
  body
}

#show: project

#let adv1Ne = (
  ("VSTUPNÝ SPEV (Cf. Ps 24, 1-3)",),
  ("Ad te levávi ánimam meam, Deus meus, in te confído, non erubéscam. Neque irrídeant me inimíci mei, étenim univérsi qui te exspéctant non confundéntur.", "K tebe, Pane, dvíham svoju dušu, tebe dôverujem, Bože môj. Nech nie som zahanbený a nech moji nepriatelia nejasajú nado mnou. Veď nik, čo dúfa v teba, nebude zahanbený."),
  ("> Hymnus Sláva Bohu na výsostiach sa vynecháva.",),
  ("KOLEKTA",),
  ("Da, quǽsumus, omnípotens Deus, hanc tuis fidélibus voluntátem, ut, Christo tuo veniénti iustis opéribus occurréntes, eius déxteræ sociáti, regnum mereántur possidére cæléste. Per Dóminum. ", "Prosíme ťa, všemohúci Bože, daj nám ochotu konať dobré skutky a pomáhaj nám kráčať v ústrety Kristovi tak, * aby nás pri svojom druhom príchode postavil po svojej pravici — a voviedol do nebeského kráľovstva. Skrze nášho Pána."),
  ("> Vyznanie viery.",),
  ("NAD OBETNÝMI DARMI",),
  ("Súscipe, quǽsumus, Dómine, múnera quæ de tuis offérimus colláta benefíciis, et, quod nostræ devotióni concédis éffici temporáli, tuæ nobis fiat prǽmium redemptiónis ætérnæ. Per Christum.","Prosíme ťa, Pane, prijmi obetné dary, ktoré ti prinášame z toho, čo nám udelila tvoja dobrota; * a čo ti teraz so synovskou oddanosťou obetujeme, — nech nám prinesie večnú spásu. Skrze Krista, nášho Pána."),
  ("> Prefácia Adventná I.", ),
  ("SPEV NA PRIJÍMANIE (Ps 84, 13)", ),
  ("Dóminus dabit benignitátem, et terra nostra dabit fructum suum", "Pán dá požehnanie a svoje plody vydá naša zem."),
  ("PO PRIJÍMANÍ", ),
  ("Prosint nobis, quǽsumus, Dómine, frequentáta mystéria, quibus nos, inter prætereúntia ambulántes, iam nunc instítuis amáre cæléstia et inhærére mansúris. Per Christum.", "Prosíme ťa, Pane, nech je nám na osoh účasť na tejto sviatostnej hostine, * pri ktorej nás už v tomto pominuteľnom svete učíš milovať veci nebeské — a hľadať hodnoty trváce. Skrze Krista, nášho Pána."),
  ("> Možno použiť formulár slávnostného požehnania", ),
)
#let adv1Po = (
  ("VSTUPNÝ SPEV (Cf. Ier 31, 10; Is 35, 4)",),
  ("Audíte verbum Dómini, gentes, et annuntiáte illud in fínibus terræ: Ecce Salvátor noster advéniet, et iam nolíte timére", "Čujte, národy, slovo Pánovo a ohlasujte ho až do končín zeme: náš Spasiteľ príde, nebojte sa!"),
  ("KOLEKTA",),
  ("Fac nos, quǽsumus, Dómine Deus noster, advéntum Christi Fílii tui sollícitos exspectáre, ut, dum vénerit pulsans, oratiónibus vigilántes, et in suis invéniat láudibus exsultántes. Qui tecum.", "Pane a Bože náš, pomôž nám bedlivo očakávať príchod tvojho Syna Ježiša Krista; * a keď príde a zaklope, nech nás nájde bdieť v modlitbách — a jasať na jeho slávu. Lebo on je."),
  ("NAD OBETNÝMI DARMI",),
  ("Súscipe, quǽsumus, Dómine, múnera quæ de tuis offérimus colláta benefíciis, et, quod nostræ devotióni concédis éffici temporáli, tuæ nobis fiat prǽmium redemptiónis ætérnæ. Per Christum.","Prosíme ťa, Pane, prijmi obetné dary, ktoré ti prinášame z toho, čo nám udelila tvoja dobrota; * a čo ti teraz so synovskou oddanosťou obetujeme, — nech nám prinesie večnú spásu. Skrze Krista, nášho Pána."),
  ("> Prefácia Adventná I.", ),
  ("SPEV NA PRIJÍMANIE (Cf. Ps 105, 4-5; Is 38, 3)", ),
  ("Veni, Dómine, visitáre nos in pace, ut lætémur coram te corde perfécto.", "Príď, Pane, a navštív nás svojím pokojom, aby sme sa radovali pred tebou celým srdcom."),
  ("PO PRIJÍMANÍ", ),
  ("Prosint nobis, quǽsumus, Dómine, frequentáta mystéria, quibus nos, inter prætereúntia ambulántes, iam nunc instítuis amáre cæléstia et inhærére mansúris. Per Christum.", "Prosíme ťa, Pane, nech je nám na osoh účasť na tejto sviatostnej hostine, * pri ktorej nás už v tomto pominuteľnom svete učíš milovať veci nebeské — a hľadať hodnoty trváce. Skrze Krista, nášho Pána."),
)

#let adv1Ut = (
  ("VSTUPNÝ SPEV (Cf. Zac 14, 5.7)",),
  ("Ecce Dóminus véniet, et omnes sancti eius cum eo; et erit in die illa lux magna.", "Hľa, Pán príde a s ním všetci jeho svätí; a v ten deň zažiari veľké svetlo."),
  ("KOLEKTA",),
  ("Propitiáre, Dómine Deus, supplicatiónibus nostris, et tribulántibus, quǽsumus, tuæ concéde pietátis auxílium, ut, de Fílii tui veniéntis præséntia consoláti, nullis iam polluámur contágiis vetustátis. Per Dóminum.", "Pane a Bože náš, dobrotivo vypočuj naše pokorné prosby a láskavo nám pomáhaj v našich slabostiach, * aby nás povzbudila prítomnosť tvojho prichádzajúceho Syna, — a tak sme sa chránili pred nebezpečenstvami hriechu. Skrze nášho Pána."),
  ("NAD OBETNÝMI DARMI",),
  ("Placáre, Dómine, quǽsumus, nostræ précibus humilitátis et hóstiis, et, ubi nulla súppetunt suffrágia meritórum, tuæ nobis indulgéntiæ succúrre præsídiis. Per Christum.","Prosíme ťa, Pane, nech ťa uzmieria naše pokorné modlitby a obetné dary, * a pretože sa nemôžeme spoliehať na vlastné zásluhy, — pomáhaj nám svojou milosrdnou láskou. Skrze Krista, nášho Pána."),
  ("> Prefácia Adventná I.", ),
  ("SPEV NA PRIJÍMANIE (Cf. 2 Tim 4, 8)", ),
  ("Corónam iustítiæ reddet iustus iudex iis qui díligunt advéntum eius.", "Spravodlivý sudca dá veniec spravodlivosti tým, čo milujú jeho príchod."),
  ("PO PRIJÍMANÍ", ),
  ("Repléti cibo spiritális alimóniæ, súpplices te, Dómine, deprecámur, ut, huius participatióne mystérii, dóceas nos terréna sapiénter perpéndere, et cæléstibus inhærére. Per Christum.", "Pane, nasýtil si nás duchovným pokrmom; * pokorne ťa prosíme, daj, aby sme sa účasťou na tejto sviatosti naučili správne hodnotiť pozemské veci — a milovať hodnoty nebeské. Skrze Krista, nášho Pána."),
)


= Tempus Adventus \ (Adventné obdobie)

== Dominica I Adventus \ (Prvá adventná nedeľa)
#make(adv1Ne)
== Feria secunda \ (Pondelok)
#make(adv1Po)
== Feria tertia \ (Utorok)
#make(adv1Ut)