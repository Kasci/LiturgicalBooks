#import "../../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("Sr")


// ---------------------------------------
// VELKA VECIEREN
// ---------------------------------------


  === #translation.at("V")
  #header3([(#translation.at("Ut_V"))])
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 6
    sText("6:"),
    gText("Ášče bezzakónija názriši Hospodi, Hospodi, któ postojít; jáko ú tebé óčiščénije jésť."),
    "",
    jObj4("",none, "Ne ktomú vozbraňáemi:", "Drévo ízhná mja drévle íz rajá, nýňi že drévo k rajú vozvedé, tebí raspénšusja Christé."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Čúdo strášno, sozdániju káko sozdáteľ predstojá, ósuždájem jesť, í raspinájem, na Spasénije čelovíkov!"),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Kreste Christóv, Anhel svjatých čúdo, dijávolu že í bisóm velíkaja jazva, Spasáj rabý tvojá."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Vladíčice vsesvjatája Ďivo, róždšaja Hospoda, za mílosrdije na kresťí prihvozdívšahosja, í žízni struí ístočívšaho míru, tohó úmolí Spastísja dušám nášym. tebé bo jédínu imamy vírniji pribížišče, sťínu í zastuplénije: ťímže í pritekájem k pokróvu tvojemú."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Ne ktomú vozbraňáemi jésmý dréva živótnaho, úpovánije ímúšče krest tvój, Hospodi sláva tebí."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Povíšen býv na drévi bezsmértne, razrušíl jésí síti dijávoli, Hospodi sláva tebí."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Neradívše ó vsích zemných svjatíji mučenicy, í na sudíšči Christá múžeski propovídavše, vozmézdija ó múkach ot nehó prijáste: no jako ímúšče derznovénije, tohó úmolíte, jako vsesíľnaho Boha, dúšy náša Spastí, pritekájuščich k vám, mólimsja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Svojehó Sýna na drévi víďašči drévle, sérdce tvojé órúžijem pečáli újazvľáše prečestaja."),
  ))
  #colbreak()


// ---------------------------------------
// POVECERIE 
// ---------------------------------------


  === #translation.at("P")
  #header3([(#translation.at("Ut_N"))])
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Mánijem tvojím na zemnýj obraz preložísja, préžde údoborazlivájemoje vodnóje jéstestvó Hospodi: ťímže nemókrenno pišešéstvovav Izráiľ, pojét tebí písň pobídnuju."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Ústávi búrju slastéj, í strastéj mojích, tišinóju Božéstvennyja tvojejá moľbý preneporóčnaja: jako da tíchim sérdcem tvojé slavoslóvľu neizhlahólannoje roždestvó."),

    sText("2:"),
    jObj4("",none, "", "Vsé želánije í sládosť Spasénija roždestvóm tvojím býsť, Bohoródice Vladíčice: vsjáku hóresť othoňáj, ježe ot strastéj prehrišénij, rabóm tvoím."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Izbávi mjá prečestaja, bisóvskija prélesti, ózloblénija že í vréda, í ískušénija: da víroju ťá slávľu, súščuju po Bózi zastúpnicu í pokróv mój."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Javílsja jésí pri kupiňí moyséju, Božij Slóve, jako ohň popaľája, í ne ópaľája že otňúd, ježe ot Ďivy roždestvó tvojé voobražája: jéjáže rádi čelovíka voobrazíl jésí."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V načáľi nebesá vsesíľnym Slóvom tvojím útverždéj Hospodi Spasé, í vseďíteľnym í Božijim Dúchom, vsjú sílu ich: na nedvížimim mjá kámeni íspovídanija tvojehó útverdí."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Voznésšahosja na krest, í nizlóžšaho áda, Bohoródice sehó priľížno molí ó vírno pojúščich ťá vsehdá hlásy í písňmi svjaščénnymi, nadéžde míra, í vírnych zastuplénije."),

    sText("2:"),
    jObj4("",none, "", "Výššaja nebes, í slávňijšaja cheruvím, začénši rodilá jésí Boha: ťímže molí jéhó, prehrišénij ízbáviti mjá, í ósuždénija strášnaho, tvojéju mílosrdoju moľbóju, í páče Slóva síloju tvojéju."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Izminívšaja čelovíki ot tlí smérti, roždestvóm tvojím Vladíčice, tľínija mjá strastéj í nedúh ízbávi, í prehrišénij ľútych: í živót nestaríjuščijsja dáruj mí, Božéstvennym chodátajstvom tvojím."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Neizmínno čelovíkom úpodóbľsja po vsemú Božij Slóve, ot Ďivy čestyja prošél jésí javi, í vsím jávíl jésí Bohonačálije trisvítloje, v nerazlíčňi suščeství, neizmínnych ńpostásech."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Otča ňídra ne óstávľ, í sošéd na zémľu Christé Bože, tájnu úslýšach smotrénija tvojehó, í proslávich ťá jédíne čelovikoľúbče."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Mílosť tvojú í mílosrdije na rabý tvojá čestaja, prostrí, prísno moľáščyja ťá, strášnyja múki ízbavľájušči molitvami tvojími."),

    sText("2:"),
    jObj4("",none, "", "Čístoju molitvoju, í téploju víroju, k tebí pribiháju preneporóčnaja: tý búdi óčistílišče mnóhich prehrišénij mojích, ízbavľájušči í Spasájušči mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Rádosti nášeja chodátaica prečestaja, tvojím roždestvóm jávísja Vladíčice: sehó molí preneporóčnaja, napástej ízbáviti, í víčnyja žízni spodóbiti mjá."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Otčeskich ňídr ne otlúčsja, í ot Ďivy voplóščsja Christé Bože, sochraní stádo tvojé, smotrénija tvojehó poklaňájuščejesja Božéstvennym óbrazóm."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Nóšč nesvitlá nevírnym Christé, vírnym že prosviščénije v sládosti slovés tvojích. sehó rádi k tebí utrenňuju, í vospiváju tvojé Božestvó."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Tjá moľú Ďivo čestaja, ot mráčnaho hrichá dúšu mojú ízbáviti, í ózaríti Božéstvennoju zaréju pokajánija mílosti tvojejá."),

    sText("2:"),
    jObj4("",none, "", "Súščyja v pučíňi ľútych napástej, í núžnych strastéj, presvjatája čestaja, tvojími molitvami í moľbámi ízbávi, í Spasí chváľaščich ťá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jaže Boha začénši vo útróbi Ďivíčesťij, í róždši Bohoródice presvjatája, ťá pojúščyja ot vsjákaho ízbávi víčnaho ósuždénija."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vídušče Božiju ťá matr čestaja, í zastúpnicu nášu, ťá chodátaicu predlahájem Spasénija nášeho ko ščédromu Hospodu."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Vozopích Hospodi, vnehdá skorbíti mí k tebí, í vozvél jésí živót mój mnohomílostive."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Tvojehó Sýna Vladíčice, voznesénnaho na krest, í ízbávľšaho čelovíki ot tlí, úmolí Spastísja nám."),

    sText("2:"),
    jObj4("",none, "", "Prečestaja Vladíčice, ne óstávi mené na ťá úpovájuščaho: no tvojú úskorí pómošč."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Ot pečáli ízbávi prizyvájuščich tvojé Božéstvennoje imja, í strášnyja svobodí múki."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Prečestaja Vladíčice, nadéždo tvérdaja, ľubóviju. pojúščyja ťá, jako istinnuju Bohoródicu, sochraní."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Raspénšahosja nás rádi Christá Boha, í nizlóžšaho smérti deržávu, neprestánno molí Bohoródice Ďivo, da Spasét dúšy náša."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "V nedovíďiniji í pečáli sýj, í v bidách, prečestaja, ťá prizyváju tépľi ot sérdca mojehó: predvarí, í ízbávi mjá, í podážď čestaja, úťišénije mňí."),

    sText("2:"),
    jObj4("",none, "", "Prehrišénij mnóhich, í strastéj trevolnénija óburevájut mjá, í ko hlubiňí pohíbeli nizvóďat: dážď mňí rúku Bohoródice, í Spasí, í pomíluj mjá síloju tvojéju."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Tvojú matr privoždú ti v molitvu Spase čelovikoľúbče: juže prijém ízbávi mjá prehrišénij í búduščaho sudá, í víčnujuščaho ízmí mučénija."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Úmerščvlénu dúšu sťažáv ľútymi prestupléňmi, ťá moľú Vladíčice, úmorívšuju ád roždestvóm tvojím, pokajánija obrazy óživí mja."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Vojístinnu súščaho Boha, í vsích suščestvá vinóvnaho, Christá prevoznósim, í slavoslóvim vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Spasí mja prečestaja, ot bíd, í tlí, í strastéj: k tebí bo pribiháju mojéj nadéžďi, í Božéstvennomu Spaséniju."),

    sText("2:"),
    jObj4("",none, "", "V čás konéčnyj, ot klevetník ľútych ízémši Vladíčice Ďivo, k Božéstvennomu žilíšču samá nastávi mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Vozníkni, o dušé! Bohoródici pripádajušči vozopíj: nadéžde í Spasénije vsích, óhňá víčnaho ízbávi mjá."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Jedínu v ženách bláhoslovénnuju Ďivu vospojím, Christá prevoznošájušče í slavoslóvjašče vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Mati Božija í Ďiva, róždšaja, í Ďivstvujuščaja páki, ne jéstestvá ďílo, no Božija snizchoždénija: ťím jako jédínu, Božijich čudés spodóbľšujusja, ťá prísno veličájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Bohoródica prinósit tí moľbú ó mňí, Vladýko Christé, juže prijím, ízbávi mjá ot vsjákija múki."),

    sText("2:"),
    jObj4("",none, "", "Vsehdá moľú ťa Vladíčice: smirénnuju ízbávi dúšu mojú, búduščaho sudá í múki."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Tvorcá mojehó í ziždíteľa molí Ďivo, strášnaho ízbáviti mjá sudá, í žízň darováti mí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vseneporóčnaja mati Ďivo čestaja, dušévnych skvérn ízbávi tvojé stádo, tebé veličájuščeje."),
  ))
  #colbreak()


// ---------------------------------------
// UTIEREN
// ---------------------------------------


  === #translation.at("U")
  ==== #translation.at("SIDALENY")
  ===== #translation.at("SIDALEN_PO") 1
  #generateTable((
    
    // Sidalen 1, 1
    sText("1:"),
    jObj4("",none, "", "Carkov vopijét tí Christé Bože, v pénki, í kédri, í kyparísi poklaňájuščisja tebí: pobídy vírnym dáruj, Bohoródicy rádi, í pomíluj nás."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Íže mené rádi preterpívyj, jéže na kresťí prihvoždénije, prijimí mojé bódrennoje chvalénije Christé Bože, í Spasí mja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Raspénšahosja nás rádi Christá Boha, í nizložívšaho smérti deržávu, neprestánno molí Bohoródice Ďivo, da Spasét dúšy náša."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Óhňá svitľíjšeje, í plámene ďíjstvenňijšeje drévo pokazál jésí Christé, krestá tvojehó, popaľájuščeje hrichí čelovíkov, í prosviščájuščeje serdcá pojúščich vóľnoje tvojé raspjátije: Christé Bože, sláva tebí."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Óbladájaj bezplótnymi sílami, í svídyj duší mojejá ľínostnoje, krestóm tvojím Spasí mja Christé Bože, jáko čelovikoľúbec."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Rádujtesja právedniji, da veseľátsja nebésnaja: na zemlí bo mučenicy podvizávšesja, vrahá popráša: da íhrájet cerkov pobidíteľnaja, prázdnujušči podvihopolóžniku jédínomu, í pobidotvórcu Christú Bohu, podajúščemu mírovi véliju mílosť."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Jéhdá zrjášči ťá Hospodi Ďiva, raspinájema, pláčušči vopijáše tí: vospiváju tvojé neizrečénnoje, o Sýne mój, dolhoterpínije, í jéže k čelovíkom krájneje í Božéstvennoje sošéstvije."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "", "Raspénšusja tí Vladýko Christé, vráh svjázan býsť, í smérť úmertvísja: dúšy, jáže vo áďi v preispódnich soderžímyja, ot úz razrišáchusja."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Íže nás rádi vóľnoje prijémyj raspjátije, sokruší vrahí nevíduščyja ťá Boha ístinnaho, í Spasí nás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Krestóm Sýna tvojehó prísno sobľudájemi Ďivo, prilóh bisóvskich ízbihájem: ťímže ťá po dólhu vospivájušče slávim, Bohoródice vsepítaja."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Mánijem tvojím na zemnýj obraz preložísja, préžde údoborazlivájemoje vodnóje jéstestvó Hospodi: ťímže nemókrenno pišešéstvovav Izráiľ, pojét tebí písň pobídnuju."),
    sText("1:"),
    jObj4("",none, "", "Raspjátije Vladýka ponošájem terpít, čelovíkov otjémľa ponošénija, jáko čelovikoľúbec: kopijém v rébra probodájetsja, sím zakalája vrahá boríteľa."),
    sText("2:"),
    jObj4("",none, "", "Jákože lúk naprjáh krest tvój mílostive, strilámi újazvíl jésí hvozdéj soprotivobórca, Spase, í ot nehó drévle újazvlényja čelovíki íscilíl jésí."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Krovmí svjatých, mérzkaja krovéj prestáša skvernénija, ídolom prinosímaja: vsjá že zemľá ósvjatísja, ťích chvalámi prísno úblážájušči."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Vospíša síly nebésnyja, zemných zrjášče v ťilesí so bezplótnymi borjúščichsja: otňúduže podvihopolóžnik sích vincý pobíždšich vinčá."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Razdrásja rukopisánije ádámovo, vopijáše prečestaja Vladíčica, kopijém Sýne probodénu tí bývšu: ťímže vospiváju tvojé stradánije, vsím ístočívšeje bezstrástije, Vladýko. Druhíj kanón presvjatíj Bohoródici: tvorénije Jósifovo."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Mánijem tvojím na zemnýj obraz preložísja, préžde údoborazlivájemoje vodnóje jéstestvó Hospodi: ťímže nemókrenno pišešéstvovav Izráiľ, pojét tebí písň pobídnuju."),
    sText("1:"),
    jObj4("",none, "", "Pojúščyja Bohoródice, velíčija tvojá ľubóviju, tvojá snabdí ľúdi, í ot vréda ízbávi: tý bo vsích jésí predstáteľnica í nastávnica, čestaja, í útverždénije."),
    sText("2:"),
    jObj4("",none, "", "Vódu bezsmértija róždši Ďivo, íscilénija vódy nám podážď, vsjá smertonósnyja strásti dúš nášich í ťilés ómyvájušči."),
    sText("3:"),
    jObj4("",none, "", "Čestnóje Vladíčice Bohorádovannaja, selénije jávílasja jésí počétšaho jéstestvó práotca: ťímže ťá čestaja, mólim, vsjákaho bezčéstija strastéj ízbávi nás."),
    sText("4:"),
    jObj4("",none, "", "Sólnce právdy róždši mírovi, ťmú otžení ot vospivájuščich ťá víroju, ótrokovíce, vo svitozárňim tvojém sém í svjatím chrámi, vseneporóčnaja."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "V načáľi nebesá, vsesíľnym Slóvom tvojím útverždéj Hospodi Spase, í vseďíteľnym í Božijim Dúchom, vsjú sílu ích: na nedvížimim mjá kámeni íspovídanija tvojehó útverdí."),
    sText("1:"),
    jObj4("",none, "", "Propnýj nebeo jáko kóžu, na drévi rasprostérl jésí rúci Izráise, rukí neuderžánije ádámova hrichá ísciľája, jáko mílostiv, í íschiščája vsích ot rukí ľstívaho borcá."),
    sText("2:"),
    jObj4("",none, "", "Tebé térnijem cerjú, ľúdije zakonoprestúpniji vinčavájut, slávoju vinčávšaho čelovíki, í preslušánija ádámova térnije ískorenívšaho, Christé, í nasadívšaho vsím Bohorazúmija prozjabénije."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Jéstestvóm súšče smértni, bezsmértiju v tóm poučítisja ízvóliste premúdriji: ťímže rány í skórbi, mučenicy, honénija že, bijénija, í údóv otsičénija, vsjá rádujuščesja, preterpíste."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Tvérdym pómyslom, potrebíti vsjá preťáščaho ľstívaho vrahá vý stradáľcy smiríste, smirívšesja ó Chrisťí, í voznesóstesja deržávoju Božéstvennoju, na tohó vooružívšesja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Vóleju zaklánaho áhnca na strásť prišédša, zrjášči mati í áhnica, sléz ístóčniki proliváješi, hlahóľušči: čtó sijé čádo svjaščénnoje, káko úmerščvľáješisja, óživíti vsjá úméršyja promyšľája;"),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "V načáľi nebesá, vsesíľnym Slóvom tvojím útverždéj Hospodi Spase, í vseďíteľnym í Božijim Dúchom, vsjú sílu ích: na nedvížimim mjá kámeni íspovídanija tvojehó útverdí."),
    sText("1:"),
    jObj4("",none, "", "Dážď rabóm tvoím, čestaja, Spasíteľnaja prošénija, v Božéstvenňim tvojém sém chrámi, v némže ístóčnik čudés pokazála jésí: ístočája prísno naítijem Božéstvennym, í víčnaho ízbávi mučénija."),
    sText("2:"),
    jObj4("",none, "", "Mílostej bézdnu Christá páče viný í Slóva, dáteľa vsích bláhích róždši, čestaja, Božéstvennyj chrám tvój séj pokazúješi vojístinnu, ósinénijem tvojím Božéstvennym, vsjáčeskich strastéj óčiščénije."),
    sText("3:"),
    jObj4("",none, "", "Bláhoslovén plód tvojehó čréva, Ďivo Bohoródice vsích rádoste: rádosť bo vsemú míru rodilá jésí, í vesélije vojístinnu, čelovikoľúbca, razhnávši pečáľ hrichóvnuju, Bohonevísto."),
    sText("4:"),
    jObj4("",none, "", "Kovčéže mýslennyj, jáže netľínnuju mánnu róždšaja míru vojístinnu, posreďí nás Ďivo prijidí v čás séj, í vsjákija nás ízminí skvérny, čísťi tebé úblážájuščich."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Otča ňídra ne óstávľ, í sošéd na zémľu Christé Bože, tájnu úslýšach smotrénija tvojehó, í proslávich ťá jédíne čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Na zemlí čelovík jávľsja, nebésnyja čelovíki soveršíl jésí, voznesén býv na drévo Vladýko, vsjá sovoznésl jésí vospivájuščyja tvojá stradánija."),
    sText("2:"),
    jObj4("",none, "", "Za smértnych úmiráješi životé, za neprávednyja Izráise mój právednyj, strásť terpíši ponósnuju: pojém dolhoterpilíve, bezmírnoje bláhoutróbije tvojé."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Zviréj ústremlénija, vrínija óhnennaja, rúk že í nóh otsičénija, ístorhánija údóv, í vsjáčeskuju ínúju múku preterpíste mučenicy, chodátajstvujuščuju Božéstvennoje naslaždénije."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ot ťilésnych konéc stradáľcy, ko Christú vsích Bohu zovúšče, úslýšani býste, í na kámeň voznesóstesja Božéstvennaho nýňi soveršénija."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Moľbú ó nás k voploščénnomu íz tebé Bohoródice, sotvorí, jáko da óbrjáščem pómošč vo vrémja napásti, íže tohó strásti slávjaščiji."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Otča ňídra ne óstávľ, í sošéd na zémľu Christé Bože, tájnu úslýšach smotrénija tvojehó, í proslávich ťá jédíne čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Tjá ávvakúm hóru drévle vozhlasív, prečestaja Bohoródice, dobroďíteľmi prijosinénnuju, vsích Vladíčice ósiňájuščuju, ot ópalénija zlóby načáľnaho borcá."),
    sText("2:"),
    jObj4("",none, "", "Molénije Hospodu prinesí, voploščénnomu íz tvojích Vladíčice, prečestych krovéj, Spastí ľúdi tvojá vsjákaho vréda, tebé po dólhu blážáščyja."),
    sText("3:"),
    jObj4("",none, "", "Tvojá preslávnaja sijá Bohobláhodátnaja cerkov býsť vo íscilénije dúš že í ťilés: ústavľájet bo vsjáku boľízň, í óčiščájet ot strastéj vírno tebé blážáščyja."),
    sText("4:"),
    jObj4("",none, "", "Posiščénijem tvojím Ďivo, Spasí téplym í čestným, vsích s ľubóviju pribihájuščich Vladíčice, k tvojemú zastupléniju, posiščáj í daváj jáže k žízni prošénija."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Hospodi Bože mój, ot nóšči útrenevav, tebí moľúsja: podážď mí óstavlénije prehrišénij mojích: í k svítu tvojích poveľínij putí mojá naprávi, moľúsja."),
    sText("1:"),
    jObj4("",none, "", "Raspjátije priját vo zlých otjátije, Božij Slóve, žélči že vkusíl jésí, sládostnaho brášna hórkij vréd potrebľája. sláva mnóhomu bláhoutróbiju tvojemú."),
    sText("2:"),
    jObj4("",none, "", "Íže na kresťí vozdvíženijem tvojím, vsjú zémľu pokolebál jésí Božéstvennoju tvojéju deržávoju, í ísciľáješi jéjá Vladýko, sokrušénija, í koléblemaja serdcá k tvojemú útverždáješi poznániju."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Rasprostér velijár vsjúdu síti zlóbnyja, no ne óbjál jésť Christóvy mučeniki: kriľí bo prijémše óhnennyja, ko óbítelem Božéstvennym dostihóša."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Mánijem neoskúdnym ot Boha óbožájemi strastotérpcy, boľíznennych mučénij otňúd ne ústrašístesja, jákože ínómu stráždušču, síce premúdriji sámi prebýste."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Kíjima óčíma vozzrjú, óko ízsušájuščeje vsjá bézdny, Sýne mój, úhašájemoje, na kresťí vísjašču tí; čestaja Ďiva vopijáše, rydáňmi sebé smuščájušči."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Nóšč nesvitlá nevírnym Christé, vírnym že prosviščénije v sládosti slovés tvojích: sehó rádi k tebí utreňuju, í vospiváju tvojé Božestvó."),
    sText("1:"),
    jObj4("",none, "", "Óťahčénnych snóm hrichóvnym. čestaja, bódry tvorjášči, óbáče že v prečestňím chrámi tvojém, tvojéju bódrennoju Božéstvennoju molitvoju nás úščédri, Bohonevísto."),
    sText("2:"),
    jObj4("",none, "", "Dážď čestaja, vsím nám rúku pómošči k tebí pribihájuščym, í otmýj vsjákija zlóby skvérnu, í boľízni óčísti molitvami tvojími."),
    sText("3:"),
    jObj4("",none, "", "Jáže Boha začénši vo útróbi Ďivíčesťij, í róždši Bohoródice prečestaja, ťá pojúščich ízbávi vsjákaho víčnaho ósuždénija."),
    sText("4:"),
    jObj4("",none, "", "V chrám tvój víroju prichoďáščich dúšy óbnovľájutsja óbetšávšyja hrichmí, í po dólhu ťá vsí preneporóčnaja, slávjat."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Plávajuščaho v molví žitéjskich popečénij, s korablém potopľájema hrichí, í dušetľínnomu zvírju primetájema, jako Jóna Christé vopijú ti: íz smertonósnyja hlubiný vozvedí mja."),
    sText("1:"),
    jObj4("",none, "", "Ízbáviteľu sýj jédíne, cínu tvojú vdál jésí Spasíteľnuju króv, í ískupíl jésí pľinényja ný prebláhíj, í tvojemú rodíteľu privél jésí, úbív krestóm Christé, mučíteľa."),
    sText("2:"),
    jObj4("",none, "", "Nevozderžánijem drévle padénije ľútoje podjách, Christós že vozdvizájem na drévo, rúci prostér, pádšaho mjá vozdvíže, í újazvívsja vóleju, vsjá mojá jázvy jávi íscilí."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Dremánijem prélesti otňúd ne vozdremávšesja, vsjáko ústremlénije úspíste mučítelej, mučenicy: í íže právednym prilíčnym snóm úspše blážénniji, bódrenniji ó vsích molitvennicy býste."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Útverždéni na kámeni Božéstvennych Christóvych poveľínij, vrážijimi kózňmi neprevrátni prebýste vseslávniji mučenicy: í tohó nohámi popráste Bohomúdrenno, k Bohu Bohoľípňi šéstvujušče."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Ю́no ótročá raždáješi Bohoródice, préžde vík bezľítno Ótcú srazumivájemaho, óbnovľájuščaho krestóm čelovíčestvo, óbetšávšeje hrichmí zlonačáľnaho sovítom, preneporóčnaja."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jóna íz čréva ádova vopijáše: vozvedí ot tlí živót mój. mý že tebí vopijém: vsesíľne Spase, pomíluj nás."),
    sText("1:"),
    jObj4("",none, "", "Jédína nám Spasénija ístočíla jésí vódu, jédína čestaja, raspalénije prélesti ízsušívši, órošáješi rázum ístinnyj rabóm tvoím."),
    sText("2:"),
    jObj4("",none, "", "Óduševlénnyj Boha nášeho hráde, stádo tvojé ot bezbóžnych várvar, trúsa že í núždi, í vsjáčeskaho ískušénija svobodí."),
    sText("3:"),
    jObj4("",none, "", "Jázvy dúš nášich, Bohoródice otžení, molitv tvojích ókroplénijem, í ťilésnyja nedúhi: da Božéstvennymi hlásy vospivájem ťá."),
    sText("4:"),
    jObj4("",none, "", "Jáže razrišívšaja ot boľíznej Ďivo jénu, roždestvóm tvojím prečestym ótrokovíce, razriší mi boľízni strástnyja duší že í ťilesé."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Neboľíznennuju óbríte žízň práotec, tebí vóleju poboľívšu na kresťí í mértvu bývšu, í zmíja úmertvívšu, Izráise Christé mnohomílostive."),
    sText("2:"),
    jObj4("",none, "", "Zakónnyja kľátvy ízbávichomsja vsí: zakonodávec bo vozdvížesja na krest, bláhoslovénije prisnotekúščeje í bláhodáť, í mílosť, í tľíniju ístočív potreblénije."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Vóľnymi ústremléňmi pristupájušče k mučénijem mučenicy, vóleju postradávšaho voobražáchu: ot nehóže vinčávšesja, so Anhely nýňi likovstvújut."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Tílo predávše razlíčnym múkam prechváľniji mučenicy, króvnymi prolijániji bezplótnyja vrahí údavíste, í ístóčniki íscilénij ístočájete."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Káko ne vospláčusja sladčájšeje čádo, na kresťí zrjášči ťá; káko ne vozrydáju neprávedno tebé stráždušča, sudijé právedňijšij; Ďiva mati viščáše."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Óhň róždšaja Božéstvennyj Ďivo, chvrástnyja popalí strásti vospivájuščich ťá vsepítaja, í svítom ózarí pokajánija vsích, mólimsja."),
    sText("2:"),
    jObj4("",none, "", "Netľínnaja ótrokovíce, ot tlí nás ízbávi: Božija paláto óduševlénnaja, chrámy nás pokaží Božéstvennaho Dúcha, v cerkvi tvojéj neprestánno víroju pojúščich ťá."),
    sText("3:"),
    jObj4("",none, "", "Struí ízliváješi íscilénij vsím, ístóčnik bo žízni rodilá jésí: í téploju Bohoródice, molitvoju tvojéju, sijé tvojé stádo óčísti ot skvérny, Bohonevísto."),
    sText("4:"),
    jObj4("",none, "", "Óbrazy vsí Božéstvennaho tvojehó roždestvá, Božéstvenniji prorócy víďivše, rádostno vospiváchu, vopijúšče: prepítyj ótcév Bože bláhoslovén jésí."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Neopáľnaja óhňú v sijnái pričáščšajasja kupiná Boha jáví medlenojazýčnomu í huhnívomu moyséovi, í ótroki révnosť Božija trí nepreborímyja vo óhní pivcý pokazá: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Króv í vodá ístékšaja íz rébr tvojích Spase, mír vés óbnovíša, í netľínije ístočíša: žértvy že mérzkija í prolítije skvérnych krovéj prestáša. ťímže ťá vsjá ďilá jáko Hospoda pojém, í prevoznósim vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Vincém ternóvym úvjázlsja jésí Spase, ócta í žélči vkusíl jésí, í ópleván býl jésí, í bijén, vozdvíhlsja jésí na kresťí, hvózdije prijém, ímiže Spasén býv áz vzyváju tí: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Ot neistoščímych sokróvišč ístiny, presvítlo óbohatívšesja stradáľcy, vsjáku niščetú ópleváste ídoľskuju, í óbohatítelije níščich jávístesja, vopijúšče: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Zakonopoložénija zločestívych nebrehúšče, jákože ótrocy, mučenicy, vo óhň horjášč vvérženi býste, v némže rósu Božiju prochláždšuju vás óbritóste, vopijúšče: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Zakónnyj drévle ťá kovčéh proobražáše čestaja, ne skrižáli vnútr nosjášč, no Christá zakonodávca, jéhóže bezzakónniji ľúdije na kresťí prihvozdíša, nás vopijúščich Spasájušča: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jedínaho beznačáľnaho cerjá slávy, jéhóže bláhoslovját nebésnyja síly, í trepéščut číni Anheľstiji, pójte svjaščénnicy, ľúdije prevoznosíte jéhó vo víki."),
    sText("1:"),
    jObj4("",none, "", "Čudés bézdnu ístočájušči míru vsepítaja, strastéj nášich strujú ízsuší, í óstavlénija rósu ístočí nám, víroju nesumňínnoju počitájuščym ťá Ďivo."),
    sText("2:"),
    jObj4("",none, "", "Íz tebé Sólnce právednoje vozsijá, vo ťmí strastéj siďáščym, tebé svít soďíla vsepítaja čestaja: ťímže ťá po dólhu pojím Bohoródice."),
    sText("3:"),
    jObj4("",none, "", "Carkov vsesvítlaja Božija bývši, sobirájuščyjasja vo svjatím chrámi tvojém rabý tvojá, Dúcha žilíšča pokaží čestaja, tebé slavoslóvjaščyja vo vsjá víki."),
    sText("4:"),
    jObj4("",none, "", "Svítom tvojehó roždestvá vselénnuju čudoľípno prosvitíla jésí Bohoródice, ístinnaho Boha na rukú tvoéju nosívši, prosviščájuščaho prísno víroju zovúščyja: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo víki."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Mati Božija í Ďiva, róždšaja í Ďivstvujuščaja páki, ne jéstestvá ďílo, no Božija snizchoždénija: ťím jako jédínu Božijich čudés spodóbľšujusja, ťá prísno veličájem."),
    sText("1:"),
    jObj4("",none, "", "Kríposť vrážija otňúd óskuďí, tebí krípko na drévi síľne vozopívšu k prebeznačáľnomu Ótcú tvojemú, í sozvávšu rastočénnyja óvcy tvojá Vladýko Christé, k tvojemú poznániju."),
    sText("2:"),
    jObj4("",none, "", "Jákože áhnec vozdvíhlsja jésí Vladýko, na krest vóleju, íschiščája ot vólka slovésnyja Spase, óvcy tvojá, í vo óhráďi tvojích poveľínij zatvorjája sijá vospivájuščyja ťá."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Tvojích strastéj podražátelije jávľájemi bláhoslávniji strástotérpcy, mnohoobráznyja vídy múk preterpíša čelovikoľúbče: otňúduže vincý úlučíša slávy, í cárstvija tvojehó Christé spodóbišasja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Sólnečnyja óblistavájut bláhodáti, prosviščájušče vírnyja, čestných strástotérpec dostochváľnoje toržestvó: otňúduže í íže sijé prísno soveršájuščiji, ťmý prehrišéniji ľútych ízbavľájemsja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svít mýslennyj na kresťí óblistá, tvój prečestaja Sýn, í načáľniki ťmý óbličí preneporóčnaja: sólnečnyj pomračí svít, í vírnych íspolnénija čestaja, prosvitíl jésť."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Netľínija ískušénijem róždšaja, í vsechitrecú Slóvu plóť vzaimodávšaja, mati neiskusomúžnaja Ďivo Bohoródice, prijátelišče nesterpímaho. seló nevmistímaho ziždíteľa tvojehó, ťá veličájem."),
    sText("1:"),
    jObj4("",none, "", "Svjaščénňijši výšnich síl jávílasja jésí, tvorcá bo vsích poróždši, mati neiskusomúžnaja svjatája Bohoródice: ťímže ťá so Anhely slávim, neprestánno vospivájušče velíčija tvojá."),
    sText("2:"),
    jObj4("",none, "", "Jáko prosviščájem zarjámi Božéstvennaho Dúcha, hóru Ďivo zrít ťá drévle prisínnuju svjaščénňijšij prorók Bohoródice. ťímže ťá so Anhely zemníji úblážájem, jákože proreklá jésí Bohoblážénnaja."),
    sText("3:"),
    jObj4("",none, "", "Rúčka jávílasja jésí mánnu Božéstvennuju nosjášči, ľístvica víďina bylá jésí čelovíki ot zemlí vozvoďášči, jédína neiskusomúžnaja Ďivo Bohoródice. ťímže ťá sošédšesja vírniji slavoslóvim po dólhu Bohorádovannaja."),
    sText("4:"),
    jObj4("",none, "", "Bývšaja Božestvá ótrokovíce selénije, bývša mjá razbójnikov dušetľínnych vertép, í ďílatelišče vsjákaho bezzakónija, báneju mjá sléz ómývši, Božéstvennaho Dúcha žilíšče jáví."),
    sText("5:"),
    jObj4("",none, "", "Svít róždšaja jédína predvíčnyj, víčnyja mjá ťmý ízbávi Vladíčice, í prosvití Ďivo dúšu mojú, strasťmí žitijá vsjú ómračénnuju, da ľubóviju prísno slávľu ťá."),
  ))
  ==== #translation.at("CHVALITE")
  #generateTable((

    // CH Stich na 4
    sText("4:"),
    gText("Chvalíte jéhó v tympáňi í líci, chvalíte jéhó vo strúnach í órháňi."),
    "",
    jObj4("",none, "", "Vladýka sýj čelovikoľúbče žiznodávče, ískupíl jésí krestóm tvojím vselénnuju, Hospodi, sláva tebí."),

    // CH Stich na 3
    sText("3:"),
    gText("Chvalíte jéhó v kymváľich dobrohlásnych, chvalíte jéhó v kymváľich vosklicánija: vsjákoje dychánije da chválit Hospoda."),
    "",
    jObj4("",none, "", "Na kresťí prihvozdísja lozá ístinnaja, í óbimáša jázýcy ráj s razbójnikom: sijá sláva cerkóvnaja, sijé bohátstvo cárstvija. postradávyj nás rádi, Hospodi, sláva tebí."),

    // CH Stich na 2
    sText("2:"),
    gText("Voskresní Hospodi Bože mój, da voznesétsja ruká tvojá, ne zabúdi úbóhich tvojích do koncá."),
    "",
    jObj4("Mučeničen",none, "", "Svitíla jávíšasja vselénňij vsechváľniji strastotérpcy Christóvy, vopijúšče: Hospodi, sláva tebí."),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("KrestoBohoródičen",none, "", "Na drévi prihvoždéna ťá vóleju, jáko vseneporóčnaja úzrí pláčušči pojáše deržávu tvojú."),
  ))
  #colbreak()


// ---------------------------------------
// LITURGIA
// ---------------------------------------


  === #translation.at("L")
  #header3([(#translation.at("I"))])
  ==== #translation.at("BLAZENNA")
  #generateTable((

    // B Stich na 4
    sText("4:"),
    gText("Blážéni mílostivïi, jáko tíji pomílovani búdut."),
    "",
    jObj4("",none, "", "Krasén bí í dóbr v sňíď, íže mené úmertvívyj plód: Christós jésť drévo živótnoje, ot nehóže jádýj ne úmiráju, no vopijú s razbójnikom: pomjaní mja Hospodi, vo cárstviji tvojém."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Rasprostérl jésí na kresťí dláni, prostértija rukí ádámovy k drévu sňídnomu, íspravľája popolznénije ščédre, rádi bláhosti mnóhija: ťímže ťá slávim bláhoďíteľu Hospodi."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Na mísťi ťá lóbňim sobór jévréjskij, Christé cerjú, raspjá, sokrušájušča lukávaho hubíteľnuju hlavú, í ístočájušča nám ot rébr svjatých tvojích ríki óstavlénija."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("Mučeničen",none, "", "Podóbjaščesja Christóvym strástém čestným í Spasíteľnym mučenicy prechváľniji, preterpíste múki mnohovídnyja, í k bezsmértiju preidóste vkúpi: ťímže blážími jésté."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Sobľudí, o Trójce svjatája! pojúščyja ťá rabý tvojá, úkripí síloju krestá, í k výšnemu hrádu chodíti naprávi nás: íďíže í bývše, óbrjáščem mílosť."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Raspinájema íz tebé róždšahosja zrjášči, slezjášče, útróboju smuščájuščisja, mati čestaja: káko sijá vóleju stráždeši Sýne, zovúšči, choťá čelovíčestvo ot strastéj ízbáviti;"),
  ))
])
