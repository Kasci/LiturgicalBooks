#import "../../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("St")


// ---------------------------------------
// VELKA VECIEREN
// ---------------------------------------


  === #translation.at("V")
  #header3([(#translation.at("Sr_V"))])
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 6
    sText("6:"),
    gText("Ášče bezzakónija názriši Hospodi, Hospodi, któ postojít; jáko ú tebé óčiščénije jésť."),
    "",
    jObj4("",none, "Ne ktomú vozbraňáemi:", "Bohorazúmija slávniji Apostoli rálom vozďílavše zémľu vsjú, vírnych mnóžestvo vozrastíste."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Strastéj mojích razrušíte zímu, í tišinú mi vozsijájte, čístaho prolítija, blážénniji Apostoli."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Jako učenicý Slóva, ot nesmýsľstva privedóste k rázumu Božiju jázýkov sobóry."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Moľbú prinesí tvojích ráb k tvojemú Sýnu vsečestaja, da Spasét vsjá, jaže sozdá."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Apostoli slávniji, stolpí cerkóvniji, istiny propovídnicy, svitíla súšče svítlaja, vý óhném Dúchóvnym vsjáku prélesť popalíste, čelovíčeskij ród víroju prosvitíste. ťímže mólim vý: molíte Spasa í Boha nášeho, úmiríti mír, í Spastí dúšy náša."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Apostoli Christóvy, ďílateli Spasovy, krest ubo jakože rálo na rámich nosjášče, óľaďívšuju zémľu idoľskoju prélestiju óčístivše, í víry Slóvo vsíjaste: dostójno počitájemi jésté svjatíji Christóvy Apostoli."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Vsechváľniji mučenicy, óvčáta Dúchóvnaja, vsesožžénija slovésnaja, žértva prijátna bláhouhódna Bohu, vás ni zemľá potaíla jesť, no nebo priját vý, Anhelom sopričástnicy býste. s nímiže molíte, mólim vý, Spasa í Boha nášeho, úmiríti mír, í Spastí dúšy náša."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Jedínu po roždeství prečestuju Ďivu vospojím, jako Matr Boha Slóva, hlahóľušče: sláva tebí."),
  ))
  #colbreak()


// ---------------------------------------
// POVECERIE 
// ---------------------------------------


  === #translation.at("P")
  #header3([(#translation.at("Sr_N"))])
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Mánijem tvojím na zemnýj óbraz preložísja, préžde údoborazlivájemoje vodnóje jéstestvó Hospodi: ťímže nemókrenno pišešéstvovav Izráiľ, pojét tebí písň pobídnuju."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Vodámi životóčnymi Ďivo, napój ístájavšuju dúšu mojú znójem hrichóvnym, jako da klás plodonósen vozraščú čestaja, Božéstvennaho úmilénija."),

    sText("2:"),
    jObj4("",none, "", "Ódoždí mi čestaja, kápli úmilénija ščedrótnymi kápľami, imiže otmýju ótrokovíce, vsjú dušévnuju skvérnu, ot nevňátija jej pribývšuju."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Tý soďíteľa tvojehó vo útróbi prijémši, bez tlí rodilá jésí, mladénca Boha súšča bývšaho, stránno čúdo, rabó í Mati jésí, Vladíčice beznevístnaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Izbáviteľa čelovíčeskomu ródu. í svobodíteľa í Spasa, Christá nám rodilá jésí, Ďivo Mati prečestaja: ťímže javi ťá znájušče, chodátaicu žízni víčnyja slávim."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V načáľi nebesá vsesíľnym Slóvom tvojím útverždéj Hospodi Spase, í vseďíteľnym í Božijim Dúchom, vsjú sílu ích: na nedvížimim mjá kámeni íspovídanija tvojehó útverdí."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Tilésnuju bahrjanícu ot tvojích prečestych krovéj óbahrív cer vsích, í sijú nosív kromí tľínija jéstestvóm, Boh že í čelovík, ot tebé prójde Ďivo, ímíja cárstvo neizmínno."),

    sText("2:"),
    jObj4("",none, "", "Jako sokróvišče bláhích, í neizrečénnych Ďivo, dánnoje vsím ot Boha, podajéši nám nezavístnoje bláhodáti, čudésnyja dáry, v napástech í bidách í v némoščech, moľáščymsja tí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Ťá danijíl čúdnyj províďa hóru čestaja, ot nejáže kámeň otsičésja Christós, sokruší bisóvskija ístukány. ťímže jako vsích dóbrych pisnoslóvim vinú, ízbávleni roždestvóm tvojím."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Bohohlásnyj ťá ňíkohda províďi svítok, v némže Slóvo napisásja čestaja, pérstom Otčim. ťímže molísja v knízi napisáti mjá žízni, lukávoje pisánije hrichóv mojích rasterzávši."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Otča ňídra ne óstávľ, í sošéd na zémľu Christé Bože, tájnu úslýšach smotrénija tvojehó, í proslávich ťá jédíne čelovikoľúbče."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Molitvu k róždšemusja íz tebé Bohoródice, sotvorí, jako da óbrjáščem pómošč vo vrémja óbstojánija, iže strásti tohó slávjaščiji."),

    sText("2:"),
    jObj4("",none, "", "Mýro íz tebé presvjatája čestaja, ízlijávšejesja, soďíteľ jéstestvá, bláhovónija íspólni vsjáčeskaja Božéstvennymi razumíňmi, í smrádnuju lésť prohná."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jako mýslennuju ľístvicu čestaja, postavléj ťá súščym na zemlí Christós Boh, tobóju k nebésnym Božéstvennym ďijánijem vírnyja vozvódit, jako mílosrd."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Óťahčén vrémenem mnóhim hrichóvnym, bláhája, zovú ti: óčiščénije mí jávísja, Boha róždšaja, míra vzémľuščaho prehrišénija."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Hospodi Bože mój, ot nóšči utrenevav tebí moľúsja: podážď mí óstavlénije prehrišénij mojích, í k svítu tvojích poveľínij putí mojá naprávi, moľúsja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Mati čelovikoľúbca í Boha, prepítaja Bohoródice, víroju ťá í ľubóviju písňmi voschvaľájuščemu prísno, óčiščénije tvojími moľbámi prehrišénij mojích nizposlí mňí."),

    sText("2:"),
    jObj4("",none, "", "Prečestaja Bohoródice, prijátelišče súšči neizmínnaho svíta, í chrám Božéstvennyja zarí, mojú dúšu ómračénnuju, svítom tvojím prosvití, moľúsja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Hospodi Bože mój, iže býti čelovík ízvólivyj, moľúsja tí: bláhovolí Spastí mjá blúdnaho, rádi čísto róždšija ťá Ďivy, í čestyja ótrokovícy."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vladíčice Bohomáti, mojích prehrišénij podážď proščénije, jaže žízň ýpostásnuju mírovi róždšaja preneporóčnaja."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Plávajuščaho v molví žitéjskich popečénij, s korablém potopľájema hrichí, í dušetľínnomu zvírju primetájema, jako Jóna Christé, vopijú ti: íz smertonósnyja hlubiný vozvedí mja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Ot tlí smérti, í ježe ot Ádáma hrichá, tvojím ízbávichomsja Bohoródice, bezsímennym roždestvóm: Boh bo vkúpi í čelovík jédínyj, tójže í Sýn sýj, ízbavlénije sohrišénij vírnym dáruja."),

    sText("2:"),
    jObj4("",none, "", "Mojích prehrišénij Vladíčice, razderí rukopisánije, v knízi mjá Spasénnych napisávši, Božéstvennymi molitvami tvojími: jako da vo chvaléniji ťá pojú, svjatíjšuju cheruvím súščuju."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Otrinovénnyja drévle, právednym tvojím sudóm Christé, ot tvojehó licá, prizvál jésí plotskím prišéstvijem, jako mílosrd. í nýňi bláže, sohríššyja ný prijimí, í ot zól preminí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Óčiščénije róždšuju, í hríšnikov bláhodáteľa Ďivo prečestaja, moľú ťá: viný bezmírnych prehrišénij mojích razriší Matrneju tvojéju molitvoju: imaši bo jako Mati k Sýnu, ježe moščí."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Pod króv tvój vsí zemnoródniji pribihájem, ízbávi víčnujuščaho óhňá dúšy náša, bláhája."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Óťahčénnyj um mój snóm, vseneporóčnaja, ko bláhím ďílanijem vozdvíhni: jako da úblážáju ťá čestňíjšuju vsjákija tvári."),

    sText("2:"),
    jObj4("",none, "", "Юniji trijé otrocy posreďí péšči tvojé proobražáchu roždestvó: ne ópalísja ubo, ohň róždši čestaja. ťímže véščnyja mí strásti sérdca popalí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "V ženách ťá krásnu í dobrú prekrásnyj Hospoď úrazumív, íz tebé voplotísja. tohó ubo molí presvjatája ótrokovíce, Spastí mja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Božéstvennaja rosá íz tebé prošédši, ístájavšyja znójem hrichóvnym, órošájet preneporóčnaja. Tímže ťá moľú, ístájavšuju dúšu mojú órosí."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Neopáľnaja óhňú v sijnái pričáščšajasja kupiná Boha jáví medlenojazýčnomu í huhnívomu moyséovi, í ótroki révnosť Božija trí nepreborímyja vo óhní pivcý pokazá: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Neopáľna óhném v sijnái besídovavši kupiná, tvojé pokazúja stránno roždestvó Bohovídcu moyséju. ťímže údívľsja stránnomu roždestvú tvojemú čestaja, rádujasja vopijáše: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo víki."),

    sText("2:"),
    jObj4("",none, "", "Úmerščvlényj mój um hrichóm, jaže živót róždšaja čestaja Ďivo, óživotvorí, í Spasí k Bohu preminéniji tvojími Matrnimi, prísno mjá pojúšča: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo víki."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Imíju ťá čestaja, v noščí í vo dní chraníteľnicu neotstúpnu, ot mýslennych í vídimych vráh, nikákože navíta zlá í lukáva úžasájusja, pojá Christú: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ot svojehó čelovikoľúbija, Sýn tvój Bohoródice, jako bláh prekloňáem, ťá podadé pómošč na vrahí, í ciľbú strastéj víroju zovúščym: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte jéhó vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Netľínija ískušénijem róždšaja, í vsechitrecú Slóvu plóť vzaimodávšaja, Mati neiskusomúžnaja Ďivo Bohoródice: prijátelišče nesterpímaho, seló nevmistímaho ziždíteľa tvojehó, ťá veličájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Neokrádomoje bohátstvo Ďivstva tvojehó, Mati plótiju jávílasja jésí vsederžíteľa, nevísto neiskusomúžnaja Ďivo Bohoródice, vospitávši, jako mladénca, pitájuščaho jako ziždíteľa vés mír, í ósvjaščájušča."),

    sText("2:"),
    jObj4("",none, "", "čelovikoľúbňijšeje Slóvo róždši Ďivo, hrichí míra vzémľuščeje, sehó molí, nám nizposláti hrichóv razrišénije, víroju nesumňínnoju po dólhu ťá blážáščym."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Hrichoľubív sýj, trepéšču í bojúsja, da ne vnezápu konéc žitijá dostíhnet mjá čestaja Vladíčice, vsích óbídimych predstáteľnice, í obrazy mjá pokajánija úkripíti nýňi úmoléna búdi."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Da ne vo ohň pósleši mjá, úhotóvannyj mňí, mólit ťá Ďiva, róždšaja ťá, í Božéstvennyj bezplótnyj lík, Apostoli, prorócy, mučenicy í svjaščennonačáľnicy, í dúsi právednych, vseščédryj í mnohomílostive."),
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
    jObj4("",none, "", "Dílateli selú tvojemú jávíl jésí Apostoly tvojá Slóve, posikájuščyja ídoly: ťímže ťá Vladýku vo jázýcich propovídavše, bláhočéstno vozvelíčiša."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Zemnýja na zemlí slávy ne vozľubíste slávniji, Boha nebésnaho čelovíkom propovídavše, tomú vsích privedóste."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Ášče í Matr ťá tvár pozná, no Ďivu ťá ziždíteľ pokazál jésť: rodilá bo jésí plótiju Christá Boha, Spasájuščaho dúšy náša."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Jáko nášeho Spasénija ókormíteli premúdryja Apostoli Christá Boha, píňmi í písňmi po dólhu počtím: tíji bo prélesti nečéstije othnávše, mír Spasóša, jáko samovídcy Slóva, í sluhí, í drúzi, í brátija bývše."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Prorócy propovídaša, Apostoli naučíša, mučenicy íspovídaša, í mý vírovachom: jáko tý jésí Christós Sýn Božij, ízbáviteľ míra."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Mučenicy tvoí Hospodi, vrahá pobidíša, í prélesť ídoľskuju posramíša, vooružívšesja krestá tvojehó síloju: ťímže í so Anhely vospivájušče ťá, vopijút pobídnuju písň, slavoslóvjašče ťá Christé. ťích molitvami podážď dušám nášym óčiščénije í véliju mílosť."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Rádujsja, íz nejáže neprelóžno Slóvo plóť býsť, í vselísja v ný: rádujsja čestaja, Apostolov í mučenikov rádovanije, í nás vírnych Spasénije: rádujsja Mati Christá Boha."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Plód čréva:", "Učenicý Hospodni vsechváľniji, íže podsólnečnuju vsjú jáko svitíla ózarívše, vo ťmí strastéj mjá í prehrišénij súšča, prosvitítisja mí, molíte."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Svitíla vý súšče míru, Hospodni Apostoli, óblistavájete prísno Slóvo vírnym, othoňájušče zíľňi prélesti mhlú. ťímže í prosviščájete jázýki kreščénijem, jáko propovídnicy Trójcy súšče, prísno počitájemiji."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Jáže míru rádoste Ďivo tvojehó Sýna neprestánno so Apostoly molí, proščénije darováti nášich prehrišénij, í žitijá íspravlénije."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Mánijem tvojím na zemnýj óbraz preložísja, préžde údoborazlivájemoje vodnóje jéstestvó Hospodi: ťímže nemókrenno pišešéstvovav Izráiľ, pojét tebí písň pobídnuju."),
    sText("1:"),
    jObj4("",none, "", "Mánijem k Božéstvennomu Bohovídni bývše, bóhi sokrušíste bezbóžnych, í k Božéstvenňij vsích vozdvihóste ľubví, vírovavšich Bohu vsečestníji."),
    sText("2:"),
    jObj4("",none, "", "Mánijem k Božéstvennomu ..."),
    sText("3:"),
    jObj4("",none, "", "Sóľ jákože bývše vsejá zemlí, Bohohlahóliviji Hospodni Apostoli, sohnítije vsé ústávite sérdca mojehó, í óbujávšeje ľúťi íscilíte."),
    sText("4:"),
    jObj4("",none, "", "Vsích sudijá právedňijšij, jéhdá chóščet vo vtoróje prišéstvije s vámi sísti Božéstvenniji Apostoli, tohdá vsjákaho ósuždénija nás ízbávite."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Prečestaja Bohoródice, so bezplótnymi Anhely, í proróki, í mučeniki í Apostoly molí: jáko da óstavlénije prehrišénij prijímem Ďivo, í bohátuju mílosť."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Pospíšestvovavšemu Bohu vo jéhýpťi moyséovi, ízvestí Izráiľa, tomú jédínomu pojím, jáko proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Proslávleno na zemlí prešéd žitijé, tebé slávjaščyja nijkólaje, pričástniki támo súščija slávy sotvorí."),
    sText("2:"),
    jObj4("",none, "", "V pučíňi ľútych plávajušče, žitéjskich ískušénij volnámi vseblážénne, ókružájemi jésmý: ot níchže nás Spasí."),
    sText("3:"),
    jObj4("",none, "", "Rúku mí nýňi podáteľnuju pómošči podážď, ótče nijkólaje, ot vráh vídimych í nevídimych ízbávi mjá."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Íže neveščéstvennyja sluhí sotvorív, íz tebé Bohoródice, rodísja za mílosť neizrečénnuju, čelovíki vídim býsť."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "V načáľi nebesá vsesíľnym Slóvom tvojím útverždéj Hospodi Spase, í vseďíteľnym í Božijim Dúchom, vsjú sílu ích: na nedvížimim mjá kámeni íspovídanija tvojehó útverdí."),
    sText("1:"),
    jObj4("",none, "", "Jáko nebesá slávu Božiju, jákože rečé prorók, povídujete Božéstvenniji učenicý, újasňájušče jéhó Božéstvennoje voploščénije, í stradánija jávi múdriji: ímiže strastéj í smérti vsích, í tlí ízbávite."),
    sText("2:"),
    jObj4("",none, "", "Stríly Christá síľnaho ízoščrény jávístesja, ot stríl mjá lukávaho, múdriji učenicý Hospodni ízbávite: í újazvlénoje ľúťi hrichóvnym órúžijem mojé sérdce íscilíte."),
    sText("3:"),
    jObj4("",none, "", "Preľščénnaho mjá ľúťi í ódéždy óbnažéna Božéstvennyja, Božéstvennymi ódéždami Christóvy učenicý, prosvitíti potščítesja: íže vrážija kovárstva óbnažívše vsjá, í tohó v stúd óblekóste."),
    sText("4:"),
    jObj4("",none, "", "Síly nebésnyja sostavléj Slóvom, íže prorókom bláhodáť podávyj, í učenikóm, í vsím múčenikom: ťích molitvami Bože, í prečestyja Matre tvojejá, Spasí vsích, í úščédri jáko mílosrd."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nebsá útverdívyj Slóvom, í zemnóje ósnovánije úkripívyj na vodách mnóhich, útverdí mój úm v vóľu tvojú čelovikoľúbče."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Ó vselénňij prinosjá molénija, ot vsjákija núždy í skorbéj bezčíslennych Spasí nás, svjáte nijkólaje."),
    sText("1:"),
    jObj4("",none, "", "Svjázannych neizbížno íz temnícy jákože ízbávil jésí: soúzy rasterzáv zól mojích, molitvami tvojími, primirí Bohu, svjáte nijkólaje."),
    sText("2:"),
    jObj4("",none, "", "V noščí í vo dní zastúpnika ťá naricájem, náša molitvy prinesí Hospodevi, sochraňája nás prísno, svjáte nijkólaje."),
    sText("3:"),
    jObj4("",none, "", "Kleščé jáže Božéstvennyj úhľ prijémši v Božéstvenňij útróbi. tvojéj, nikákože ópalívšisja, popalí prečestaja, náša prehrišénija."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Otča ňídra ne óstávľ, í sošéd na zémľu Christé Bože, tájnu úslýšach smotrénija tvojehó, í proslávich ťá jédíne čelovikoľúbče."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Íže Ótcú soprestóľnyj Sýn, na zemlí voplóščsja jáko čelovík, ízbrá vás učenikí, jéhó Božestvó propovídati vsím jázýkom."),
    sText("1:"),
    jObj4("",none, "", "Íže Ótcú soprestóľnyj ..."),
    sText("2:"),
    jObj4("",none, "", "K sozidátelem vsích strastéj vpádsja úmovrédno ókajánnyj áz, sérdcem újazvíchsja. ťímže moľúsja, íscilíte mjá vráčeve boľáščich Apostoli."),
    sText("3:"),
    jObj4("",none, "", "Ot strastéj ízbávite nás, í ot bíd ľútych, í skorbéj Apostoli slávniji, í ot vsjákija napásti, í vseboľíznennyja múki."),
    sText("4:"),
    jObj4("",none, "", "Jáže Bohu Mati ízbránnyja, so Apostoly svjaščénnymi, í mučeniki, í proróki molísja, bíd í skorbéj í prehrišénij ízbávitisja nám."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Pokrýla jésť nebesá Christé Bože, smotrénijem tvojím, dobroďíteľ neizrečénnyja múdrosti tvojejá čelovikoľúbče."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Premúdrostiju tvojéju óčernív árijev úm jéresiju pomračénnyj, í ot tohó preľščáemyja, nijkólaje prosvitíl jésí."),
    sText("1:"),
    jObj4("",none, "", "Úvračúj mojá mnóhija strúpy Bohoprijátnymi tvojími molitvami, Bohoblážénne ótče nijkólaje, í sérdce mojé prosvití."),
    sText("2:"),
    jObj4("",none, "", "Úmertvív strástnyja vzyhránija, ot níchže mjá úmerščvlénaho, molitvami tvojími vseblážénne óživív, nóva sotvorí."),
    sText("3:"),
    jObj4("",none, "", "Rodilá jésí plótiju bezľítnaho: jéhóže molí mnohoľítnych zól nás ízbáviti, pojúščich ťá vseneporóčnaja."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Hospodi Bože mój, ot nóšči utrenevav tebí moľúsja: podážď mí óstavlénije prehrišénij mojích, í k svítu tvojích poveľínij putí mojá naprávi, moľúsja."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Hospodi Bože mój, Apostolom tvoím mír drévle darovávyj, ťích molitvami mír dáruj vsím, í prehrišénij proščénije."),
    sText("1:"),
    jObj4("",none, "", "Hospodi Bože mój, ..."),
    sText("2:"),
    jObj4("",none, "", "Hospodi Bože mój, svídyj sohrišénija duší mojejá, í neisprávlennyj nráv sérdca mojehó, túne mjá úščédriv Spasí, Apostol moľbámi."),
    sText("3:"),
    jObj4("",none, "", "Hospodi Bože mój, razbójnika, í bludnícu sohrišívšuju, mnóhija rádi Spasl jésí bláhosti: í molitvami tvojích Apostol, í mené blúdnaho úščédri."),
    sText("4:"),
    jObj4("",none, "", "Hospodi Bože mój, roždéjsja ot Ďivy neiskusobráčnyja, tojá molitvami í Apostol tvojích óčiščénije sohrišénij mí dáruj, í búduščija ízbávi múki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Útreňuet dúch mój k tebí, Bože, zané svít jésí, í tvojá poveľínija býša íscilénija rabóm tvoím, čelovikoľúbče."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Sovíty ótče, podvizáemyja prísno na ný, nenakázannych čelovík tvojími molitvami nijkólaje, bezďíľny sotvorí."),
    sText("1:"),
    jObj4("",none, "", "Soúzy zól nášich rastórhni tvojími molitvami, svjazávyj zlóbu dušetľínnaho zmíja, vsesvjatýj nijkólaje."),
    sText("2:"),
    jObj4("",none, "", "Rázumom prísno sohrišájušče, í mnóžestvom ľútych soderžími ótče, predstáteľa ťá nijkólaje, tépla prizyvájem."),
    sText("3:"),
    jObj4("",none, "", "Maríe Hospožé vsejá tvári, ot vrahá bezstúdno óbladáti íščušča smirénnoje sérdce mojé, Bohorodíteľnice do koncá svobodí."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Plávajuščaho v molví žitéjskich popečénij, s korablém potopľájema hrichí, í dušetľínnomu zvírju primetájema, jako Jóna Christé, vopijú ti: íz smertonósnyja hlubiný vozvedí mja."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Sámyja múdrosti Božéstvenniji učenicý bývše, jéllinskuju óbuíša premúdrosť, í mudrecá zlóby pohubíša: í v nevíďiniji bluďáščyja, svítom bláhočéstija premúdriji prosvitíša."),
    sText("1:"),
    jObj4("",none, "", "Sámyja múdrosti Božéstvenniji ..."),
    sText("2:"),
    jObj4("",none, "", "Íže petróvo drévle slezámi prehrišénije óčístiv, tohó molitvami duší mojejá neisčétnaja sohrišénija óčísti, bezmírnaho rádi tvojehó bláhoutróbija í premnóhija, Christé, bláhostýni."),
    sText("3:"),
    jObj4("",none, "", "Íže nijneyíťany drévle pokájavšyjasja úščédriv, í mené óbýčnym tvojím mílosrdijem pomíluj, Apostol tvojích rádi: í da ne za mnóžestvo prehrišénij ízbáviteľu, mnóžestvo priložíši mučénija."),
    sText("4:"),
    jObj4("",none, "", "Jáže svít róždšaja, prosvití dúšu mojú ómračénnuju strasťmí: í molí so Apostoly, s proróki že í mučeniki, ot vsjákaho hrichá, vsjákaho vréda, vsjákija zlóby vrážija ízbáviti mjá."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Jóna íz čréva ádova vopijáše: vozvedí ot tlí živót mój. mý že tebí vopijém: vsesíľne Spase, pomíluj nás."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Razoríl jésí smérti neprávednyj súd, í Spasl jésí mílostiju tvojéju ótče nijkólaje, choťáščyja úmréti, jáko téplyj pomóščnik prizyvájuščym ťá."),
    sText("1:"),
    jObj4("",none, "", "Nedúhi dúš nášich útiší: í ústá otverzájuščajasja vsúje na ľúbjaščich ťá, svjaščénňijšij pástyrju, zahradí."),
    sText("2:"),
    jObj4("",none, "", "Pážiť hórkuju zločéstija árijeva potrebíl jésí nijkólaje, rastvorénijem slovés tvojích svjaščennotaínniče, pravoslávnym útverždénije tý býl jésí."),
    sText("3:"),
    jObj4("",none, "", "Úvračúj vseneporóčnaja, neiscíľno boľáščuju, ókajánnuju dúšu mojú žitéjskimi prélesťmi, í mnóhich hrichóv óbstojániji."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Péšč drévle hórkaho bezbóžija, rosóju Božéstvennaho propovídanija úhasíste slávniji Apostoli, zovúšče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Péšč drévle hórkaho ..."),
    sText("2:"),
    jObj4("",none, "", "Ľútaho mjá Christé, hrichá, í vo áďi mučénija, í v hejénňi boľíznej íschití: í Spasí mja, moľúsja, moľbámi Slóve, Apostol tvojích."),
    sText("3:"),
    jObj4("",none, "", "Slóva mréžeju íz hlubiný nevíďinija čelovíki úlovívše, í potopľájema mjá bezmírnymi prehrišéniji, í óburevájema, učenicý Christóvy Spasíte."),
    sText("4:"),
    jObj4("",none, "", "So Anhely, s mučeniki í Apostoly, vseneporóčnaja, tvojehó Sýna molí í Hospoda, Spastísja rabóm tvoím ot napástej vsjáčeskich í skorbéj."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Péšč horjáščuju órosíl jésí Spase, otroki Spasl jésí pojúščyja í hlahóľuščyja: bláhoslovén jésí vo víki Hospodi Bože ótéc nášich."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Krasotá cerkóvnaja býv, múdre nijkólaje, vsjákija mjá nekrasotý strastéj bezčéstnych ízbávi, bláhodáteľa vsehó míra moľá, svjatíteľu, prísno."),
    sText("1:"),
    jObj4("",none, "", "Túčami molitv tvojích, nijkólaje múdre, vsích nás napój serdcá: jáko da prinesém plodý dostójny pokajánija, svjatíteľu nijkólaje."),
    sText("2:"),
    jObj4("",none, "", "Prosvití tvojími molitvami náša pomyšlénija, víroju útreňujuščich, í Boha slávjaščich, razorívyj moľbámi tvojími ártemídy kápišča."),
    sText("3:"),
    jObj4("",none, "", "Vsják jázýk víroju slávit ťá, čestaja, slávu súščuju í pochvalú róda nášeho, í nastávnicu zablúždšich, Bohoródice preblážénnaja."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Neopáľnaja óhňú v sijnái pričáščšajasja kupiná Boha jáví medlenojazýčnomu í huhnívomu moyséovi, í ótroki révnosť Božija trí nepreborímyja vo óhní pivcý pokazá: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Úhlije óhném razúmnym razžéhšesja, jákože tróstije vsjú ídoľskuju lésť popalíša, Christóvy učenicý, í prosvitíša vírnych dúšy, vzyvájuščyja: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Úhlije óhném razúmnym ..."),
    sText("2:"),
    jObj4("",none, "", "Ómračénnuju dúšu mojú hrichóm, í ómračénnoje strasťmí bezčéstija nýňi prosvitíte sérdce mojé, svítu prisnosúščnomu pričástnicy Christóvy Apostoli, jáko da neprestánno zovú: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("3:"),
    jObj4("",none, "", "Újázvlennuju dúšu mojú jádovítymi hórdaho úhryzéňmi, íže jázvy plótiju prijémyj, íscilí molitvami svjaščénnych tvojích učenikóv, í Spasí pojúščyja: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("4:"),
    jObj4("",none, "", "Neopáľno róždši óhň, sochranílasja jésí Ďiva prečestaja: ťímže molí, jéhóže rodilá jésí, so bezplótnymi líki í Apostoly, Spastísja víroju pojúščym: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "V peščí otroki podražájušče, Dúchóvnuju rósu prijémšiji, víroju zovém: bláhoslovíte ďilá Hospodňa Hospoda."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "V mýrich myrouchánnoje ťílo tvojé, vsesvjate nijkólaje, ležáščeje, mýro pritekájuščym ístočájet, í ústavľájet nedúhi čelovíkom."),
    sText("1:"),
    jObj4("",none, "", "Míru ťá zastúpnika pokazá, míra tvoréc í Hospod: ťímže prizyvájuščym ťá v núždach nýňi nijkólaje, óbritáješisja ízbáviteľ hotóvijšij."),
    sText("2:"),
    jObj4("",none, "", "Nísť, íže prizvávyj ťá v skórbech, í skóro ne óbrjáščet úťišénija. ťímže tebí mólimsja: vsjá boľízni náša, nijkólaje, óblehčí."),
    sText("3:"),
    jObj4("",none, "", "Pojét vsják jázýk í slávit ťá, Ďivo Bohonevísto, Boha bo prepítaho rodilá jésí: jéhóže molí neprestánno, Spastísja dušám nášym."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Netľínija ískušénijem róždšaja, í vsechitrecú Slóvu plóť vzaimodávšaja, Mati neiskusomúžnaja Ďivo Bohoródice: prijátelišče nesterpímaho, seló nevmistímaho ziždíteľa tvojehó, ťá veličájem."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón svjatým Apostolom
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Sýny svíta í dné vás jávíl jésť, Boha Ótcá Slóvo: sehó vozľubívše Božéstvenniji Apostoli svitíla vselénnyja, bisóv potrebítelije, nastávnicy zablúždšich, cerkve tvérdaja ósnovánija jávístesja."),
    sText("1:"),
    jObj4("",none, "", "Sýny svíta í ..."),
    sText("2:"),
    jObj4("",none, "", "Rála slovesé, íže na výjach lehčájšeje sehó ího nosívšiji, óbnovíte nýňi óľadeňívšuju strasťmí dúšu mojú, í pokajánija símenem plodonósnu sijú soďílajte."),
    sText("3:"),
    jObj4("",none, "", "Ó zakonopoložénijich mjá Božéstvennych neradívša, í bývšaho mjá bisóv žilíšče, í ďílatelišče vsjákaho hrichá úščédri mjá Slóve, molitvami slávnych Apostol tvojích, jáko čelovikoľúbec."),
    sText("4:"),
    jObj4("",none, "", "Zemľá Božéstvennymi ósvjaščájetsja moščmí bláhoslávnych Apostol, Božéstvennym Dúchom: pervoroždénnych že výšňaja cerkov duchámi sích svitľíetsja bezprestánno: íchže rádi Spase, vsích úščédri."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Da mjá vo óhň ne pósleši úhotóvannyj mňí, mólit ťá Ďiva tebé róždšaja, í Božéstvenniji bezplótniji lícy, Apostoli, prorócy í mučenicy, svjatítelije, í dúsi právednych, vseščédre mnohomílostive."),
  ))
  ====== Kanón Nijkoláju čudotvórcu
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Páče jéstestvá Matr, í po jéstestvú Ďivu, jédínu v ženách bláhoslovénnuju, písňmi vírniji Bohoródicu veličájem."),
    sText("1:"),
    jObj4("",none, "", "Posľídovav nrávom svjaščénnych Apostol, í sidálišča ťích nasľídoval jésí, jáko svjatíteľ česten, dostoslávnyj nijkólaje."),
    sText("2:"),
    jObj4("",none, "", "Jáko revníteľa ťá Božéstvennaho, í pomóščnika po vsemú tebé prizyvájuščym tépľi, vo vsém míri blážénne, tvoréc prevelíka pokazá."),
    sText("3:"),
    jObj4("",none, "", "Sokrušénnym sérdcem vopijém tí ótče: úťišénije nám búdi v skórbech, pečáli razhoňája vsehdá ot dúš nášich, nijkólaje."),
    sText("4:"),
    jObj4("",none, "", "Smértnoje posičénije, jákože sikíra drévu predležít tí, o dušé! ne ľinísja úbo, pokajánija plodý Bohu pokazáti úsérdstvuj."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nósiši nosjáščaho vsjáčeskaja svjatými rukámi tvojími: jéhóže molí čestaja, čuždáho zloďíjstva neoderžímych nás Spastí."),
  ))
  ==== #translation.at("CHVALITE")
  #generateTable((

    // CH Stich na 4
    sText("4:"),
    gText("Chvalíte jéhó v tympáňi í líci, chvalíte jéhó vo strúnach í órháňi."),
    "",
    jObj4("",none, "", "Apostoli slávniji, stolpí cerkóvniji, istiny propovídnicy, svitíla súšče svítlaja, vý óhném Dúchóvnym vsjáku prélesť popalíste, čelovíčeskij ród víroju prosvitíste. ťímže mólim vý: molíte Spasa í Boha nášeho, úmiríti mír, í Spastí dúšy náša."),

    // CH Stich na 3
    sText("3:"),
    gText("Chvalíte jéhó v kymváľich dobrohlásnych, chvalíte jéhó v kymváľich vosklicánija: vsjákoje dychánije da chválit Hospoda."),
    "",
    jObj4("",none, "", "Apostoli Christóvy, ďílateli Spasovy, krest bo jáko rálo na rámich nosjášče, óľaďívšuju zémľu ot ídoľskija lésti óčístivše, í víry Slóvo vsíjaste: vojístinnu dostójno naricájetesja svjatíji Christóvy Apostoli."),

    // CH Stich na 2
    sText("2:"),
    gText("Voskresní Hospodi Bože mój, da voznesétsja ruká tvojá, ne zabúdi úbóhich tvojích do koncá."),
    "",
    jObj4("Mučeničen",none, "", "Jédíno dýšušče, í ko jédínomu vzirájušče strástotérpcy mučenicy, jédín púť životá óbrítše, jéže za Christá smérť, revnújušče drúh drúha končíňi. ole čudesé, jáko sokróvišča múki predvoschiščáchu! drúh ko drúhu hlahólachu, jáko ášče ne nýňi úmrem, úmrem že vsjáko, í bytijú dólžnaja poslúžim, sotvorím núždu ľubočéstijem, óbščeje svojé ízvólivše, smértiju živót kúpim: molitvami ích, Bože, pomíluj nás."),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("Bohoródičen",none, "", "Rodílsja jésí ot Ďivy neskazánno Christé, í prosvitíl jésí súščyja vo ťmí, vopijúščyja: Hospodi sláva tebí."),
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
    gText("Blážéni mílostiviji, jáko tíji pomílovani búdut."),
    "",
    jObj4("",none, "", "Krasén bí í dóbr v sňíď, íže mené úmertvívyj plód: Christós jésť drévo živótnoje, ot nehóže jádýj ne úmiráju, no vopijú s razbójnikom: pomjaní mja Hospodi, vo cárstviji tvojém."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Íz hlubiný zlovírija jázýk stadá privlekóste premúdriji k víri Bohokrásňij, í k mýslenňij trapézi óbrók mnohocínnyj sích privedóste, slávniji Apostoli."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Ómračénije ľútyja prélesti svítom propovídanija othnávše Apostoli Hospodni, serdcá bláhočestívych prosvitíli jésté jávi: ťímže vás písňmi Božéstvennymi úblážájem."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("Mučeničen",none, "", "Ssicájemi na údesá mečém stradáľcy Božéstvenniji, ne otsíčeni prebýste ľubvé ízbáviteľa: k nemúže vostekóste: nýňi živeté v rádosti, vsí nebésnoju slávoju óblistavájemi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Zlóbňijšij í tlíteľ róda čelovíčeskaho óbderžít mjá, molitvami propovídnik tvojích, vsesíľnaja Trójce, íschití mja ot hortáni jéhó: da veličáju tvojú bezmírnuju mílosť."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Soprestóľna Ótcú Sýna, čestaja Ďivo, ot čestych tvojích krovéj proizvelá jésí nosjáščaho plóť mértvennuju, jáko da óbezsmértit suščestvó čelovíčeskoje: ťímže po dólhu ťá vsí úblážájem."),
  ))
])
