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
  "100": (
    "Μνησθήσομαι τοῦ ὀνόματός σου ἐν πάσῃ γενεᾷ καὶ γενεᾷ.",
    "Ἄκουσον, θύγατερ, καὶ ἴδε, καὶ κλῖνον τὸ οὖς σου, καὶ ἐπιλάθου τοῦ λαοῦ σου καὶ τοῦ οἴκου τοῦ Πατρός σου.",
    "Τὸ πρόσωπόν σου λιτανεύσουσιν οἱ πλούσιοι τοῦ λαοῦ."
  ),
  "0": (
    "Ὁ Κύριος ἐβασίλευσεν, εὐπρέπειαν ἐνεδύσατο.",
    "Ἐνεδύσατο ὁ Κύριος δύναμιν καὶ περιεζώσατο.",
    "Καὶ γὰρ ἐστερέωσεν τὴν οἰκουμένην, ἥτις οὐ σαλευθήσεται.",
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
  "HLAS": "Ἦχος",
  "Ne": "Κυριακή",
  "Po": "Δευτέρα",
  "Ut": "Τρίτη",
  "Sr": "Τετάρτη",
  "St": "Πέμπτη",
  "Pi": "Παρασκευή",
  "So": "Σάββατον",
  "M": "Μικρός Εσπερινός",
  "V": "Εσπερινός",
  "P": "Απόδειπνο",
  "N": "Μεσονύκτιον",
  "U": "Όρθρος",
  "L": "Λειτουργία / Τυπικά",
  "So_V": "τῳ σαββατῳ εσπερασ",
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
  "HOSPODI_VOZVACH": "Στιχηρὰ Ἀναστάσιμα",
  "STICHOVNI": "Ἀπόστιχα",
  "TROPAR": "Ἀπολυτίκιον",
  "PIESEN": "ᾨδὴ",
  "SIDALEN": "Κάθισμα",
  "SIDALENY": "Καθίσματα Ἀναστάσιμα",
  "SIDALEN_PO": "Po stichoslóviji",
  "YPAKOJ": "Ἡ Ὑπακοὴ",
  "STEPENNY": "Οἱ Ἀναβαθμοὶ",
  "ANTIFON": "Ἀντίφωνον",
  "PROKIMEN": "Προκείμενον",
  "STICH": "Στίχ",
  "ALLILUJA": "Allilúia",
  "KANON": "Κανὼν",
  "KONDAK_IKOS": "Κοντάκιον Ὁ Οἶκος",
  "CHVALITE": "Stichíry na chvalítech",
  "BLAZENNA": "Blažénna",
  "TROPAR_KONDAK": "Tropár i Kondák",
  "50_STICHIRA": "Стїхи́ра по н҃-мъ ѱалмѣ̀",
  "SVITILEN": "Свѣти́ленъ",
  
  "HV_MINEA": "Та́же стїхи̑ры 3 и҆з̾ мине́и и҆лѝ и҆з̾ мине́и ѻ҆́бщей.",
  "HV_NOTE": "Сла́ва: и҆з̾ мине́и, И҆ ны́нѣ: бг҃оро́диченъ, а҆́ще не бꙋ́детъ Сла́ва: И҆ ны́нѣ: бг҃оро́диченъ",
  "HV_N_NOTE": "Бг҃оро́диченъ во ᲂу҆ста́вѣ",
  "T_NOTE": "Сла́ва: мине́и; И҆ ны́нѣ: бг҃оро́диченъ воскрⷭ҇ный"
)