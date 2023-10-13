#import "/style.typ": *
#import "/styleMoleben.typ": *

= Moleben k Srdcu Ježišovmu

#align(horizon + center)[#primText[
  #text(50pt)[Moleben k \
  Srdcu \
  Ježišovmu]
]]

#let values = (
  "tropar1": (4, none, "Dnes celý svet sa raduje, – lebo na oltári v ohnivom plameni skvie sa srdce Spasi­teľa, – ktoré všetkých volá do božského prístavu, – kde sa hoja bolesti tiel i duší. – Preto aj mňa k sebe pozvi, Spasiteľ, – a nehľaď na moje previnenia."),
  "tropar2": (none, none, "Dnes celý svet sa raduje..."),
  "velebenie": ("Velebíme ťa, – Kriste, Darca života, – lebo si nás uznal za hodných stať sa účastníkmi štedrôt – tvojho najsvätejšieho Srdca", (
    "Čím sa odvďačím Pánovi za všetko, čo mi preukázal?",
    "V neho dúfalo moje srdce a pomohol mi.",
    "Bože, stvor vo mne srdce čisté a v mojom vnútri obnov ducha pevného.",
    "Sláva: I teraz: Aleluja, aleluja, aleluja, sláva tebe, Bože."
  )),
  "prokimen": (4, "Plesaj Pánovi celá zem, – oslavujte jeho meno, hlásajte jeho chválu a slávu.", "Svoje sľuby splním pred tvárou tých, čo sa boja Pána."),
  "evanjelium": ("Mt", "Pán povedal svojim učeníkom: „Môj Otec mi odovzdal všetko. A nik nepozná Syna iba Otec, ani Otca nepozná nik, iba Syn a ten, komu to Syn bude chcieť zjaviť. Poďte ku mne všetci, ktorí sa namáhate a ste preťažení, a ja vám dám odpočinúť. Vezmite na seba moje jarmo a učte sa odo mňa, lebo som tichý a pokorný srdcom; a nájdete odpočinok pre svoju dušu. Moje jarmo je príjemné a moje bremeno ľahké.“"),
  "verse": ("Ježišu, Synu Boha živého, ktorý si odkryl bohatstvá svojho najsvätejšieho Srdca, zmiluj sa a spas teba zvelebujúcich.", (
    "Ó, najsvätejšie Srdce Ježišovo, zmiluj sa nad nami.",
    "Srdce Ježišovo, krása najjasnejšia, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, sila nepremožiteľná, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, láska nevýslovná, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, radosť môjho srdca, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, pomoc utrápených, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, čistota panenských duší, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, očisť môj rozum od márnivých myšlienok, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, chráň moje srdce od zlých žiadostí, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, ochranca môjho života, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, nádej v mojej smrti, zmiluj sa a spas teba zvelebujúcich.",
    "Srdce Ježišovo, moja útecha na tvojom súde, zmiluj sa a spas teba zvelebujúcich."
  )),
  "stichiry": (
    (2, "Jehda ot dreva", "Všetkých pozývaš, Ježišu: – Poďte ku mne všetci, ktorí sa namáhate a ste unavení – a ja vás posilním. – Preto, keď ospe­vu­jeme tvoju dobrotu, – vrúcne ťa prosíme: – Otvor nám bránu svojho Srdca, – v ktorom spoči­nieme a oslobodíme sa od každého nešťastia, zár­mutku a núdze – a dosiahneme nebeský pokoj."),
    ("Pánovi splním svoje sľuby pred všetkým jeho ľudom."),
    (none, none, "Raduj sa, Srdce preľúbezné, – božská a jediná brána, ktorou vstupujú spasení, – zasväcujeme sa ti a vyznávame, – že nechceme prestupovať tvoje zákony – ani slúžiť diablovi, svetu a nášmu telu. – Chceme slúžiť len tebe jedinému. – Preto ťa prosíme: – Nevylučuj nás zo svojho srdca, – ale milostivo sa zmiluj nad nami."),
    ("Tvoje meno chcem zvestovať svojim bratom a uprostred zhromaždenia chcem ťa velebiť."),
    (none, none, "Raduj sa, Srdce preľúbezné, – drahocenná perla, čo ozdobuješ prestoly chrámov Pánových. – Tebe odovzdávame celé naše bytie. – Panuj, prosíme, nad nami – a spútaj nás svojou láskou – i pretvor nás na svoj chrám."),
    (8, none, "Raduj sa, Srdce preľú­bezné, – plameň spaľujúci naše hriechy. – Daj, prosíme, aby naša biedna a úbohá duša, – žasla vidiac tvoje preslávne tajomstvá – a nech ti s vierou a nádejou spieva: – Obdivuhodný si, Ježišu, vo všetkých svojich dielach, – predivný v zjavení svojho Srdca.")
  ),
  "modlitba": "Pane, Ježišu Kriste, Bože náš, daj, nech sa naše srdcia stanú oltárom tvojej lásky, nech naše ústa zvestujú tvoju preveľkú milosť. Nech naše oči ustavične hľadia do rany tvojho najsvätejšieho Srdca. Nech náš rozum premýšľa o tvojich nepochopiteľných tajomstvách. Nech naša pamäť chráni milé spomienky na tvoje milosrdenstvo. Pane, Bože náš, nech všetko v nás vyznáva nevy­čer­pateľnú lásku tvojho najsvätejšieho Srdca. Lebo je požehnané meno Otca i Syna i Svätého Ducha teraz i vždycky i na veky vekov.",
  "ektenia": (
    "Zmiluj sa, Bože, nad nami pre svoje veľké milosrdenstvo, prosíme ťa, vypočuj nás a zmiluj sa.",
    "Prosíme ťa aj za veľkňaza všeobecnej Cirkvi, nášho Svätého Otca povie meno, rímskeho pápeža, za najosvietenejšieho otca arcibiskupa a metropolitu povie meno, i za nášho bohumilého otca biskupa povie meno, za slúžiacich a poslu­hujúcich v tomto svätom chráme, za našich duchovných otcov a za všetkých našich bratov v Kristovi.",
    "Prosíme ťa, Pane, Bože náš, vypočuj stony, slzy a vzdychy trpiacich a vo svojom milosrdenstve zmiluj sa nad nami.",
    "Zmiluj sa aj nad svojimi služobníkmi, ktorí prichádzajú do tohto svätého chrámu. Vypočuj láskavo ich modlitby a zmiluj sa.",
    "Modlime sa aj za rozšírenie počtu ctiteľov tvojho najsvätejšieho Srdca. Žehnaj im a zmiluj sa.",
    "Prosíme ťa, Pane, aj za prítomný ľud, ktorý od teba očakáva veľké a hojné milosrdenstvo, za našich dobrodincov i za všetkých pravoverných kresťanov.",
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
#pagebreak()
#verse(..values.at("verse"))
#pagebreak()
#stichiry(values.at("stichiry"))
#modlitba(values.at("modlitba"))
#ektenia(values.at("ektenia"))

#prepustenie