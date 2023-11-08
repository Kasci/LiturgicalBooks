#import "/utilsMenlive.typ": *

#let h_st = (
  make3("Izvedí iz temnícy dúšu mojú, ispovídatisja ímeni tvojemú."),
  make3("Mené ždút právednicy, dóndeže vozdási mňi."),
  make3("Iz hlubiný vozvách k tebí Hóspodi, Hóspodi uslýši hlas moj."),
  make3("Da búdut úši tvojí vnémľušči hlásu molénija mojehó."),
  make3("Ašče bezzakónija nazriši Hóspodi, Hóspodi kto postojít, jáko u tebé očiščénije jesť."),
  make3("Imené rádi tvojehó poterpích ťa Hóspodi, poterpí dušá mojá vo slóvo tvojé, upová dušá mojá na Hóspoda."),
  make3("Ot stráži útrenija do nóšči, ot stráži útrénija da upovájet Isrájiľ na Hóspoda."),
  make3("Jáko u Hóspoda mílosť i mnóhoje u ného izbavlénije, i toj izbávit isrájiľa ot vsich bezzakónij jehó."),
  make3("Chvalíte Hóspoda vsi jazýcy, pochvalíte jehó vsi ľúdije."),
  make3("Jáko utverdísja mílosť jehó na nás, i ístina Hospódňa prebyvájet vo vík."),
)

#let s_st = (
  "-1": (
    make3("Pomjanú ímja tvojé vo vsjákom róďi i róďi."),
    make3("Slýši dščí i vížď, i prikloní úcho tvojé."),
    make3("Licú tvojemú pomóľatsja bohátiji ľúdstiji.")
  ),
  "0": (
    make3("Hospóď vocarísja, v ľipótu oblečésja."),
    make3("Íbo utverdí vselénnuju, jáže ne podvížitsja."),
    make3("Dómu tvojemú podobájet svjatýňa Hóspodi, v dolhotú dníj."),
  ),
  "6": (
    make3("Blažéni, jáže izbrál i prijál jesí Hóspodi."),
    make3("Dúšy ích vo blahích vodvorjátsja."),
    make3("")
  ),
  "x": (
    make3("K tebí vozvedóch óči mojí, živúščemu na nebesí. Sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hóspodu Bóhu nášemu, dóndeže uščédrit ný."),
    make3("Pomíluj nás Hóspodi, pomíluj nás, jáko po mnóhu ispólnichomsja uničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich i uničižénija hórdych."),
  )
)

#let p_st = make3("Presvjatája Bohoródice spasí nás.")
#let n_st = make3("Presvjatája Tróice Bóže náš, sláva tebí.")

#let typs = (
  "0": (
    "Κανὼν Ἀναστάσιμος",
    "Κανὼν Σταυροαναστάσιμος",
    "Κανὼν τῆς Θεοτόκου"
  ),
  "1": (
    "Κανὼν Κατανυκτικὸς ποίημα Ἰωσήφ",
    "Κανὼν τῶν Ἀσωμάτων"
  ),
  "2": (
    "Kanón pokajánen",
    "Kanón svjatómu velíkomu proróku Joánnu predtéči"
  ),
  "3": (
    "Kanón čestnómu i životvorjáščemu krestú",
    "Κανὼν τῆς Θεοτόκου"
  ),
  "4": (
    "Κανὼν τῶν ἁγίων Ἀποστόλων",
    "Κανὼν τοῦ Ἁγίου Νικολάου"
  ),
  "5": (
    "Kanón čéstnómu i životvorjáščemu krestú",
    "Κανὼν τῆς Θεοτόκου"
  ),
  "6": (
    "Kanón svjatým múčenikom, i svjatítelem, i prepodóbnym i usópšym",
    "Kanón usópšym"
  )
)

#let pripivy = (
  "0": (
    ("Sláva Hóspodi svjatómu voskreséniju tvojemú."),
    ("Sláva Hóspodi krestú tvojemú i voskreséniju."), //FIXME: chcek correct translation
    ("Presvjatája Bohoródice, spasi nás.") //FIXME: chcek correct translation
  ),
  "6": () 
)

#let sd_st = (
  make3("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."),
  make3("Ispovímsja tebí Hóspodi vsím sérdcem mojím, povím vsjá čudesá tvojá.")
)

#let ch_st = (
  make3("Sotvoríti v ních súd napísan, sláva sijá búdet vsím prepodóbnym jehó."),
  make3("Chvalíte Bóha vo svjatých jehó, chvalíte jehó v utverždéniji síly jehó."),
  make3("Chvalíte jehó na sílach jehó, * chvalíte jehó po mnóžestvu velíčestvija jehó."),
  make3("Chvalíte jehó v hlási trúbňim, * chvalíte jehó v psaltíri i húsľich."),
  make3("Chvalíte jehó v tympáňi i líci, * chvalíte jehó v strúnach i orháňi."),
  make3("Chvalíte jehó v kymváľich dobrohlásnych, chvalíte jehó v kymváľich vosklicánija, * vsjákoje dychánije da chvalít Hóspoda."),
  make3("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."),
  make3("Ispovímsja tebí Hóspodi, vsím sérdcem mojím, povím vsjá čudesá tvojá."),
)

#let su_st = (
  "x": (
    make3("Ispólnichomsja zaútra mílosti tvojejá Hóspodi, i vozrádovachomsja i vozveselíchomsja, vo vsjá dní náša vozveselíchomsja, za dní, v ňáže smiríl ný jesí, ľíta, v ňáže víďichom zlája: i prízri na rabý tvojá, i na ďilá tvojá, i nastávi sýny ích."),
    make3("I búdi svítlosť Hóspoda Bóha nášeho na nás, i ďilá rúk nášich isprávi na nás, i ďílo rúk nášich isprávi.")
  ),
  "6": (
    make3("Blažéni, jáže izbrál i prijál jesí Hóspodi."),
    make3("Dúšy ích vo blahích vodvorjátsja."),
    make3("I pámjať ích v ród i ród.")
  )
)

#let b_st = (
  make3("Blažéni níščiji Dúchom, jáko ťích jésť cárstvo nebésnoje."),
  make3("Blažéni pláčuščiji, jáko tíji uťíšatsja."),
  make3("Blažéni krótcyji, jáko tíji nasľíďat zémľu."),
  make3("Blaženi alčuščiji i žažduščiji pravdy, jako tiji nasyťatsja."),
  make3("Blaženi milostiviji, jako tiji pomilovani budut."),
  make3("Blažéni čístiji sérdcem, jáko tíji Bóha úzrjat."),
  make3("Blažéni mirotvórcy, jáko tíji Sýnove Bóžiji narekútsja."),
  make3("Blažéni izhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
  make3("Blažéni jesté, jehdá ponósjat vám, i iždenút, i rekút vsják zól hlahól na vý lžúšče mené rádi."),
  make3("Rádujtesja i veselítesja, jáko mzdá váša mnóha na nebesích.")
)

#let translation = (
  "HLAS": "Hlas",
  "Ne": "Neďiľa",
  "Po": "Poneďiľňik",
  "Ut": "Vtórnik",
  "Sr": "Sréda",
  "St": "Četvertók",
  "Pi": "Pjatók",
  "So": "Subbóta",
  "M": "Mala večérňa",
  "V": "Večérňa",
  "P": "Povečérije",
  "N": "Polúnóščnica",
  "U": "Utréňa",
  "L": "Litúrhija / Izobrazíteľnaja",
  "So_V": "v subbótu véčera",
  "So_N": "v subbótu nóšči",
  "Ne_V": "v neďíľu véčera",
  "Ne_N": "v neďíľu nóšči",
  "Po_V": "v poneďíľnik véčera",
  "Po_N": "v poneďíľnik nóšči",
  "Ut_V": "vo vtórnik véčera",
  "Ut_N": "vo vtórnik nóšči",
  "Sr_V": "v srédu véčera",
  "Sr_N": "v srédu nóšči",
  "St_V": "v četvertók véčera",
  "St_N": "v četvertók nóšči",
  "Pi_V": "v pjatók véčera",
  "Pi_N": "v pjatók nóšči",
  "HOSPODI_VOZVACH": "Hóspodi vozzvách",
  "STICHOVNI": "Stichíry na stichovňi",
  "TROPAR": "Tropár",
  "PIESEN": "Písň",
  "SIDALEN": "Sidálen",
  "SIDALENY": "Sidálny",
  "SIDALEN_PO1": "Po 1-m stichoslóviji",
  "SIDALEN_PO2": "Po 2-m stichoslóviji",
  "SIDALEN_PO3": "Po 3-m stichoslóviji",
  "YPAKOJ": "Ipakoí",
  "STEPENNY": "Stepénny",
  "ANTIFON": "Antifón",
  "PROKIMEN": "Prokímen",
  "STICH": "Stích",
  "ALLILUJA": "Allilúia",
  "KANON": "Kanón",
  "KONDAK_IKOS": "Kondák i Ikos",
  "CHVALITE": "Stichíry na chvalítech",
  "BLAZENNA": "Blažénna",
  "TROPAR_KONDAK": "Tropár i Kondák",
)