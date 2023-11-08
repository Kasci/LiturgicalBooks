#import "/utilsMenlive.typ": *

#let h_st = (
  make("Izvedí iz temnícy dúšu mojú, ispovídatisja ímeni tvojemú."),
  make("Mené ždút právednicy, dóndeže vozdási mňi."),
  make("Iz hlubiný vozvách k tebí Hóspodi, Hóspodi uslýši hlas moj."),
  make("Da búdut úši tvojí vnémľušči hlásu molénija mojehó."),
  make("Ašče bezzakónija nazriši Hóspodi, Hóspodi kto postojít, jáko u tebé očiščénije jesť."),
  make("Imené rádi tvojehó poterpích ťa Hóspodi, poterpí dušá mojá vo slóvo tvojé, upová dušá mojá na Hóspoda."),
  make("Ot stráži útrenija do nóšči, ot stráži útrénija da upovájet Isrájiľ na Hóspoda."),
  make("Jáko u Hóspoda mílosť i mnóhoje u ného izbavlénije, i toj izbávit isrájiľa ot vsich bezzakónij jehó."),
  make("Chvalíte Hóspoda vsi jazýcy, pochvalíte jehó vsi ľúdije."),
  make("Jáko utverdísja mílosť jehó na nás, i ístina Hospódňa prebyvájet vo vík."),
)

#let s_st = (
  "-1": (
    make("Pomjanú ímja tvojé vo vsjákom róďi i róďi."),
    make("Slýši dščí i vížď, i prikloní úcho tvojé."),
    make("Licú tvojemú pomóľatsja bohátiji ľúdstiji.")
  ),
  "0": (
    make("Hospóď vocarísja, v ľipótu oblečésja."),
    make("Íbo utverdí vselénnuju, jáže ne podvížitsja."),
    make("Dómu tvojemú podobájet svjatýňa Hóspodi, v dolhotú dníj."),
  ),
  "6": (
    make("Blažéni, jáže izbrál i prijál jesí Hóspodi."),
    make("Dúšy ích vo blahích vodvorjátsja."),
    make("")
  ),
  "x": (
    make("K tebí vozvedóch óči mojí, živúščemu na nebesí. Sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hóspodu Bóhu nášemu, dóndeže uščédrit ný."),
    make("Pomíluj nás Hóspodi, pomíluj nás, jáko po mnóhu ispólnichomsja uničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich i uničižénija hórdych."),
  )
)

#let p_st = make("Presvjatája Bohoródice spasí nás.")
#let n_st = make("Presvjatája Tróice Bóže náš, sláva tebí.")

#let typs = (
  "0": (
    "Kanón voskrésnyj",
    "Kanón krestovoskresnyj",
    "Kanón presvjaťíj Bohoródici"
  ),
  "1": (
    "Kanón umilíteľnyj",
    "Kanón bezplótnym"
  ),
  "2": (
    "Kanón pokajánen",
    "Kanón svjatómu velíkomu proróku Joánnu predtéči"
  ),
  "3": (
    "Kanón čestnómu i životvorjáščemu krestú",
    "Kanón presvjaťíj Bohoródici"
  ),
  "4": (
    "Kanón svjatým apóstolom",
    "Kanón vo svjatých otcú nášemu Nikoláju čudotvórcu"
  ),
  "5": (
    "Kanón čéstnómu i životvorjáščemu krestú",
    "Kanón presvjaťíj Bohoródici"
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
  make("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."),
  make("Ispovímsja tebí Hóspodi vsím sérdcem mojím, povím vsjá čudesá tvojá.")
)

#let ch_st = (
  make("Sotvoríti v ních súd napísan, sláva sijá búdet vsím prepodóbnym jehó."),
  make("Chvalíte Bóha vo svjatých jehó, chvalíte jehó v utverždéniji síly jehó."),
  make("Chvalíte jehó na sílach jehó, * chvalíte jehó po mnóžestvu velíčestvija jehó."),
  make("Chvalíte jehó v hlási trúbňim, * chvalíte jehó v psaltíri i húsľich."),
  make("Chvalíte jehó v tympáňi i líci, * chvalíte jehó v strúnach i orháňi."),
  make("Chvalíte jehó v kymváľich dobrohlásnych, chvalíte jehó v kymváľich vosklicánija, * vsjákoje dychánije da chvalít Hóspoda."),
  make("Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá."),
  make("Ispovímsja tebí Hóspodi, vsím sérdcem mojím, povím vsjá čudesá tvojá."),
)

#let su_st = (
  "x": (
    make("Ispólnichomsja zaútra mílosti tvojejá Hóspodi, i vozrádovachomsja i vozveselíchomsja, vo vsjá dní náša vozveselíchomsja, za dní, v ňáže smiríl ný jesí, ľíta, v ňáže víďichom zlája: i prízri na rabý tvojá, i na ďilá tvojá, i nastávi sýny ích."),
    make("I búdi svítlosť Hóspoda Bóha nášeho na nás, i ďilá rúk nášich isprávi na nás, i ďílo rúk nášich isprávi.")
  ),
  "6": (
    make("Blažéni, jáže izbrál i prijál jesí Hóspodi."),
    make("Dúšy ích vo blahích vodvorjátsja."),
    make("I pámjať ích v ród i ród.")
  )
)

#let b_st = (
  make("Blažéni níščiji Dúchom, jáko ťích jésť cárstvo nebésnoje."),
  make("Blažéni pláčuščiji, jáko tíji uťíšatsja."),
  make("Blažéni krótcyji, jáko tíji nasľíďat zémľu."),
  make("Blaženi alčuščiji i žažduščiji pravdy, jako tiji nasyťatsja."),
  make("Blaženi milostiviji, jako tiji pomilovani budut."),
  make("Blažéni čístiji sérdcem, jáko tíji Bóha úzrjat."),
  make("Blažéni mirotvórcy, jáko tíji Sýnove Bóžiji narekútsja."),
  make("Blažéni izhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
  make("Blažéni jesté, jehdá ponósjat vám, i iždenút, i rekút vsják zól hlahól na vý lžúšče mené rádi."),
  make("Rádujtesja i veselítesja, jáko mzdá váša mnóha na nebesích.")
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
  "L": "Litúrhija \n(Izobrazíteľnaja)",
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
  
  "HV_MINEA": "Taže stichiry Svjataho 3 iz Minei ili iz Obščiny.",
  "HV_NOTE": "Sláva: Svjatomu ili Prazdniku, I nýňi: Bohorodičen, ašče nebudet Sláva: I nýňi: Bohorodičen",
  "T_NOTE": "Sláva: Svjatomu; I nýňi: Bohorodičen voskresen"
)