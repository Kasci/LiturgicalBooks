#import "/utilsMenlive.typ": *

#let h_st = (
  "Izvedí iz temnícy dúšu mojú, ispovídatisja ímeni tvojemú.",
  "Mené ždút právednicy, dóndeže vozdási mňi.",
  "Iz hlubiný vozvách k tebí Hóspodi, Hóspodi uslýši hlas moj.",
  "Da búdut úši tvojí vnémľušči hlásu molénija mojehó.",
  "Ašče bezzakónija nazriši Hóspodi, Hóspodi kto postojít, jáko u tebé očiščénije jesť.",
  "Imené rádi tvojehó poterpích ťa Hóspodi, poterpí dušá mojá vo slóvo tvojé, upová dušá mojá na Hóspoda.",
  "Ot stráži útrenija do nóšči, ot stráži útrénija da upovájet Isrájiľ na Hóspoda.",
  "Jáko u Hóspoda mílosť i mnóhoje u ného izbavlénije, i toj izbávit isrájiľa ot vsich bezzakónij jehó.",
  "Chvalíte Hóspoda vsi jazýcy, pochvalíte jehó vsi ľúdije.",
  "Jáko utverdísja mílosť jehó na nás, i ístina Hospódňa prebyvájet vo vík.",
)

#let s_st = (
  "-1": (
    "Pomjanú ímja tvojé vo vsjákom róďi i róďi.",
    "Slýši dščí i vížď, i prikloní úcho tvojé.",
    "Licú tvojemú pomóľatsja bohátiji ľúdstiji.",
  ),
  "0": (
    "Hospóď vocarísja, v ľipótu oblečésja.",
    "Íbo utverdí vselénnuju, jáže ne podvížitsja.",
    "Dómu tvojemú podobájet svjatýňa Hóspodi, v dolhotú dníj.",
  ),
  "6": (
    "Blažéni, jáže izbrál i prijál jesí Hóspodi.",
    "Dúšy ích vo blahích vodvorjátsja.",
    "",
  ),
  "x": (
    "K tebí vozvedóch óči mojí, živúščemu na nebesí. Sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hóspodu Bóhu nášemu, dóndeže uščédrit ný.",
    "Pomíluj nás Hóspodi, pomíluj nás, jáko po mnóhu ispólnichomsja uničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich i uničižénija hórdych.",
  )
)

#let p_st = "Presvjatája Bohoródice spasí nás."
#let n_st = "Presvjatája Tróice Bóže náš, sláva tebí."

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
  "Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá.",
  "Ispovímsja tebí Hóspodi vsím sérdcem mojím, povím vsjá čudesá tvojá.",
)

#let ch_st = (
  "Sotvoríti v ních súd napísan, sláva sijá búdet vsím prepodóbnym jehó.",
  "Chvalíte Bóha vo svjatých jehó, chvalíte jehó v utverždéniji síly jehó.",
  "Chvalíte jehó na sílach jehó, * chvalíte jehó po mnóžestvu velíčestvija jehó.",
  "Chvalíte jehó v hlási trúbňim, * chvalíte jehó v psaltíri i húsľich.",
  "Chvalíte jehó v tympáňi i líci, * chvalíte jehó v strúnach i orháňi.",
  "Chvalíte jehó v kymváľich dobrohlásnych, chvalíte jehó v kymváľich vosklicánija, * vsjákoje dychánije da chvalít Hóspoda.",
  "Voskresní Hóspodi Bóže mój, da voznesétsja ruká tvojá, ne zabúdi ubóhich tvojích do koncá.",
  "Ispovímsja tebí Hóspodi, vsím sérdcem mojím, povím vsjá čudesá tvojá.",
)

#let su_st = (
  "x": (
    "Ispólnichomsja zaútra mílosti tvojejá Hóspodi, i vozrádovachomsja i vozveselíchomsja, vo vsjá dní náša vozveselíchomsja, za dní, v ňáže smiríl ný jesí, ľíta, v ňáže víďichom zlája: i prízri na rabý tvojá, i na ďilá tvojá, i nastávi sýny ích.",
    "I búdi svítlosť Hóspoda Bóha nášeho na nás, i ďilá rúk nášich isprávi na nás, i ďílo rúk nášich isprávi.",
  ),
  "6": (
    "Blažéni, jáže izbrál i prijál jesí Hóspodi.",
    "Dúšy ích vo blahích vodvorjátsja.",
    "I pámjať ích v ród i ród.",
  )
)

#let b_st = (
  "Blažéni níščiji Dúchom, jáko ťích jésť cárstvo nebésnoje.",
  "Blažéni pláčuščiji, jáko tíji uťíšatsja.",
  "Blažéni krótcyji, jáko tíji nasľíďat zémľu.",
  "Blaženi alčuščiji i žažduščiji pravdy, jako tiji nasyťatsja.",
  "Blaženi milostiviji, jako tiji pomilovani budut.",
  "Blažéni čístiji sérdcem, jáko tíji Bóha úzrjat.",
  "Blažéni mirotvórcy, jáko tíji Sýnove Bóžiji narekútsja.",
  "Blažéni izhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje.",
  "Blažéni jesté, jehdá ponósjat vám, i iždenút, i rekút vsják zól hlahól na vý lžúšče mené rádi.",
  "Rádujtesja i veselítesja, jáko mzdá váša mnóha na nebesích.",
)

#let translation = (
  "MINEA_OBS": "Minea obščaja",
  "M_BOHORODICKA": "Presvjatij Bohorodicy",
  "M_PROROK_JEDEN": "Proroku jedinomu",
  "M_APOSTOL_JEDEN": "Apostolu jedínomu",

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
  "L": "Litúrhija",
  "I": "Izobrazíteľnaja",
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
  "SIDALEN_PO": "Po stichoslóviji",
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
  "HV_N_NOTE": "Bohorodičen po Ústavu",
  "T_NOTE": "Sláva: Svjatomu; I nýňi: Bohorodičen voskresen"
)