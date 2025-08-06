#import "../../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("Po")


// ---------------------------------------
// VELKA VECIEREN
// ---------------------------------------


  === #translation.at("V")
  #header3([(#translation.at("Ne_V"))])
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 6
    sText("6:"),
    gText("Ášče bezzakónija názriši Hospodi, Hospodi, któ postojít; jáko ú tebé óčiščénije jésť."),
    "",
    jObj4("",none, "Prechváľniji mučenicy", "Vsjá privél jésí tvojím Slóvom í Dúchom, za bláhosť Hospodi, táže sotvoríl jésí slovésnoje mjá živótno, da tvojé svjatóje slávľu vsesíľnoje imja. áz že naipáče stúdnymi mojími ďíly vsehdá bezčéstvuju: no poščadí, moľúsja."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Poznáj tvojé, ókajánnaja dušé, Božéstvennoje bláhoródije, í ótéčestvo netľínnoje, í tščísja vsehdá bláhoďijáňmi sijé dostiháti: ničtóže ot tľínnych da pľinít ťá, hórnija části jésí, ťílo že zemľá í tľíetsja, da ne pobidít chúždšeje lúčšija."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Hrjadí vseokajánaja dušé mojá ko preblahómu, téplymi slezámi pristupí, soďíjannaja tobóju préžde sudá tvojehó vsjá íspovíduj, í mílostiva sozdáteľa, ókajánnaja, sebí soďílaj, í proščénije ísprosí, préžde dáže dvéri ne zakľučít tebí Hospod."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Maríe neporóčnaja, í úmá vsjákaho prevoschoďáščaja, čísťíjšaja kolesníce, óbderžíma mjá mnóhimi hrichmí í sťisňáema, k široťí pokajánija naprávi mjá vsesíľňijšim tvojím predstáteľstvom: ibo móžeši jako Mati vsjá mohúščaho."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Jako pučína mnóha prehrišénij mojích Spase, í ľúťi pohružájusja sohrišéňmi mojími, dážď mí rúku, jako petróvi, í Spasí mja Bože, í pomíluj mjá."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Jako v pomyšlénijich lukávych í v ďíľich ósudíchsja Spase, mýsľ mňí dáruj óbraščénija Bože, da zovú ti: Spasí mja bláhoďíteľu bláhíj, í pomíluj mjá."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("",none, "", "Molitvami Hospodi, vsích svjatých í Bohoródicy, tvój mír dážď nám, í pomíluj nás, jako jédín ščédr."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Nebésnych činóv rádovanije, na zemlí čelovíkov krípkoje predstáteľstvo, prečestaja Ďivo, Spasí ny, iže k tebí pribihájuščyja: jako na ťá úpovánije po Bózi Bohoródice, vozložíchom."),
  ))
  #colbreak()


// ---------------------------------------
// POVECERIE 
// ---------------------------------------


  === #translation.at("P")
  #header3([(#translation.at("Ne_N"))])
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Tvojá pobidíteľnaja desníca Bohoľípno v kríposti proslávisja: tá bo bezsmértne, jako vsemohúščaja, protívnyja sotré, Izráiľťanom púť hlubiný novosoďílavšaja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Neizhlahólanno začalá jésí Boha, í páče jéstestvá rodilá jésí Vladíčice prečestaja, zemnýja ot prehrišénij ízmínšaho. ťímže moľú ťa: mnóhich mjá prehrišénij ízbávi."),

    sText("2:"),
    jObj4("",none, "", "Pučínoju pohružájem, bidámi hrichóv neizčétnych, í skorbéj, no ókormlénijem tvojím síľnym, í molítvoju vseneporóčnaja, k tišiňí Božéstvenňij pokajánija naprávi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Vsejá mojejá žízni predstáteľnice, ot bíd mnóhich ízbávi mjá, da bláhodárstvennyj hlás vospiváju tí Bohoródice čístaja, í búduščija mjá íschití múki."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Óbstojáteľnaja nachoždénija, í napástej búrju útolí Mati vseneporóčnaja, ízbáviteľa í ziždíteľa í Boha nášeho, bláhodáť Spasénija í óčiščénija mí podajúšči."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Jedíne vídyj čelovíčeskaho suščestvá némošč, í mílostivno v né voobrážsja, prepojáši mjá s vysotý síloju, ježe vopíti tebí svjatýj: óduševlénnyj chráme neizrečénnyja slávy tvojejá čelovikoľúbče."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Viďínije zráka tvojehó čístaho, Anhelom ubo sládostno, čelovíkom že jesť Spasíteľno, duchovóm že lukávstvija strášno: ježe víroju počitájušče í cilújušče Bohoródice, dúšu prosviščájem."),

    sText("2:"),
    jObj4("",none, "", "Krovmí íz tebé Ďivčeskimi, plóť svojú óbloží soďíteľ í Hospod: jéhóže molí vseneporóčnaja, rastľívša mjá bezmístnymi ďijáňmi, úščédriti za neizrečénnuju mílosť."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Žízni sťažáv ťá chraníteľnicu, í sťínu neoborímu, í po končíňi pokróv ťá óbristí, í zastúpnicu nepobidímu, k Bohu vvoďášču, í živót podajúšču víčnyj, í slávu, preneporóčnaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Začátije bezsímenno čestaja, í roždestvó netľínno: Boh bo bí javi roždéjsja, čelovíčeskaho jéstestvá padénije prizyvája. ťímže Bohoródicu ťá istinnuju í súščuju vospivájem."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Hóru ťá bláhodátiju Božijeju prijosinénnuju, prozorlívyma ávvakúm úsmotrív óčíma, íz tebé ízýti Izráilevu provozhlašáše svjatómu, vo Spasénije náše í óbnovlénije."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Neuderžánnoje stremlénije k zlú vlečét mjá, ďíjstvijem vrahá, í óbýčajem lukávym: pomozí mi Vladíčice, da ne do koncá vsepáhubnyj napadét na mjá, smértiju vozbraňája mí k pokajániju."),

    sText("2:"),
    jObj4("",none, "", "Vsé vrémja životá mojehó íždích v bluďích zlých, í jazvach ľútych, í nýňi vedút smirénnuju dúšu mojú sích ďílateli: Bohorodíteľnice Ďivo pomozí mi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Úslýši hlás mój boľíznennyj vseneporóčnaja, iže íz hlubiný duší privnošáju stenáňmi, í razrišénije podážď mí dolhóv, ichže soďíjach ókajánnyj mýsliju, í nrávom nesmýslennym."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vladíčice míra Bohoródice, pomozí mi, prelukávyj vráh pohloščájet mjá zíľňi ľútymi vospominániji í pomyšléniji, jaže ot Boha mjá razlučájut. ne óstávi ubo mené, nižé prézri."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Prosvitívyj sijánijem prišéstvija tvojehó Christé, í ósvitívyj krestóm tvojím míra koncý, serdcá prosvití svítom tvojehó Bohorazúmija, pravoslávno pojúščich ťá."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Sé hotóvu ko Spaséniju pómošč sťažách, sehó rádi tebí pripádaju, í zovú so slezámi: Bohoródice, ízbávi mjá ot stríl čuždáho, í búduščaho ísťazánija."),

    sText("2:"),
    jObj4("",none, "", "Tý kríposť mojá, tý pochvalá í rádovanije, í chraníteľnica mí jésí, í zastuplénije, í pribížišče, í predstáteľnica nepobidíma, presvjatája Bohoródice Ďivo. ťímže Spasí rabá tvojehó."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Óskvérnšujusja ókajánnuju mojú dúšu strasťmí, ókroplénijem Božéstvennyja tvojejá molitvy óčísti, Bohoródice prečestaja, podajúšči Spasénija tvojehó svítluju ódéždu."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "V žízni mojéj tvérdoje mí ókormlénije jésí, trevolnénija ízbavľájušči mnóhich óbstojánij, í vo íschóďi mojém, moľú ťa, predstáni mí Spasájušči, Mati Christá Boha."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Óbýde nás posľídňaja bézdna, ňísť ízbavľájaj, vminíchomsja jako ovcy zakolénija, Spasí ľúdi tvojá Bože náš: tý bo kríposť nemoščstvújuščich í íspravlénije."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Beznevístnaja Bohorodíteľnice prečestaja, rúku tvojú prostrí mi, í íschíti íz hlubiný zól, jaže bezúmijem íschodátaich mojéj duší strástňij preokajánnyj."),

    sText("2:"),
    jObj4("",none, "", "Vostáni čestaja na pómošč rabú tvojemú, ímúščemu nadéždu svojú s Bohom, k tvojemú zastupléniju nepobidímomu: da ne vráh vozmóh, vózmet í pohubít mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Boľáščich cilíteľnicu, pádajuščich vostánije, sohrišájuščich óčiščénije, Bohoródice, tebé moľú, so slezámi pripádaju, í zovú ti: jako siľná, samá mja Spasí pohibájuščaho."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Pomíluj čestaja, smirénnuju mojú dúšu, predvarí í voschíti, ízémľušči ju ot lukávaho: tščítsja bo v própasť posláti ju zlých rádi, jaže ľínosť mnóhaja soďíla."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "Hrób tvój", "Molitvennicu ko Hospodu sťažáchom ťá vsí čestaja, í pritekájem v cerkov tvojú svjatúju, prosjášče pómošči ot tebé prisnoďivo: ízbávi ubo nás ot bisóvskija zlóby í mučénija, í ósuždénija strášnaho, ťá blažáščyja."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Tebé umnuju Bohoródice, péšč razsmotrájem vírniji: jakože bo otroki Spasé trí prevoznosímyj, mír óbnoví, vo črévi tvojém vsecíl, chváľnyj ótcév Boh, í preproslávlen."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Božéstvennaja skínija Vladícii bylá jésí, jako začénši vo črévi, í róždši sehó plótiju, jédína neporóčnaja. ťímže nás ízbávi strastéj, í boľíznej, í skorbéj, í dolhóv: ibo imaši kríposť í sílu mnóhu."),

    sText("2:"),
    jObj4("",none, "", "Ústávi čestaja, boľízň nesterpímuju, preokajánnyja mojejá duší, rádosť mí istinnuju Vladíčice podajúšči, rišášči prehrišénij mojích mnóhich mútnuju volnú: tý bo mí jésí pribížišče í ízbavlénije."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Vsé na ťá úpovánije položích Spasénija mojehó: ťá bo sťažách pómošč, í nepoborím stólp, í útverždénije, í tvérdosti ízviščénije, í tobóju cárstvo polučíti naďíjusja Vladíčice."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vostók Sólnca bylá jésí slávy Vladíčice čestaja: tobóju bo jávléjsja, vsjá svobodí ťmý í nevíďinija, í smrádnych prehrišénij. ťímže vopijú ti: vňíšnija mjá ťmý svobodí."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V peščí ótrocy Izráilevy, jákože v horníľi dobrótoju bláhočéstija čisťíe zláta bleščáchusja, hlahóľušče: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Strastéj smuščénije ľúťi óskorbľájet dúšu mojú Bohoródice: tišiný že í míra jaže vinóvnika čestaja, í podáteľa róždši, v mírňi ústrojéniji sobľudájušči, tíchostnyja mjá íspólni rádosti í vesélija."),

    sText("2:"),
    jObj4("",none, "", "Spasénija chodátaica nám jávílasja jésí Bohoródice, róždšaja Spasa í Vladýku vsjáčeskich. ťímže moľú ťá: Spasénija spodóbi smirénnuju mojú dúšu, pisnoslóviti ťá vírno vo vsjá víki."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jaže ziždíteľa vsích í Boha neizhlahólanno začénši, Spasí mja ot tlí, í vsjákaho ískušénija, í daváj vopíti prísno: bláhoslovíte vsjá ďilá Hospoda, pójte í prevoznosíte jéhó vo víki."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Vsjáčeskich ziždíteľa í Boha rodilá jésí Ďivo, jéhóže molí, darováti prehrišénij óčiščénije, í skorbéj ízbavlénije í napástej, í víčnaho óhňá, í ósuždénija, slavoslóvjaščym neprestánno tvojú slávu."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Obraz čístaho roždestvá tvojehó óhnepalímaja kupiná pokazá neopáľnaja: í nýňi na nás napástej svirípijuščuju úhasíti mólimsja péšč, da ťá Bohoródice neprestánno veličájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Mati Božija vseneporóčnaja, mílostivnuju tvojú útróbu mňí otvérzi, í ot ust mýslennaho vólka ízbávi mjá, iščuščaho pohubíti í rastlíti mjá: pomíluj, moľú ťa, ne vozvratí mené posrámlena rabá tvojehó."),

    sText("2:"),
    jObj4("",none, "", "Vsejá mojejá žízni búdi predstáteľnica, í tvérdoje zastuplénije. í ízbávi mjá vsečestaja, mnóhich napástej í pečálej, í vrahóv jázykobólija, no í óhňá víčnaho ízbávi mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jedína boľáščich posiščénije: jédína pádšich íspravlénije Vladíčice: jédína k Bohu rukovodíteľnica í vchód: jédína chodátaica víčnych bláh, pomíluj mjá jédínaho, páče vsích sohrišívšaho."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Prijimí mojú sléznuju nýňi molitvu, í podážď mí óstavlénije sohrišénij, í mnóhich zlých, jaže soďíjach, Bohoródice, vsepítaja Vladíčice: do koncá bo pohibáju ot bezmírnaho otčájanija."),
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
    jObj4("",none, "", "V bezzakónijich začát jésm áz blúdnyj, ne smíju vziráti na vysotú nebésnuju. no naďíjasja na čelovikoľúbije tvojé zovú: Bože, óčísti mjá hríšnaho, í Spasí mja."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Ašče právednik jédvá Spasájetsja, áz hďí jávľúsja hríšnyj; ťahotý í znója dnevnáho ne ponesóch: no s najémniki jédinonadesjátaho časá sopričtí mja Bože, í Spasí mja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Prečestaja Bohoródice, jaže na nebesích bláhoslovénnaja, í na zemlí slavoslóvimaja: rádujsja nevísto nenevístnaja."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "Hrób tvój", "Óbjátija Otča otvérsti mí potščísja, blúdňi íždích mojé žitijé, na bohátstvo neiždivájemoje vzirájaj ščedrót tvojích Spase, nýňi óbniščávšeje mojé sérdce ne prézri. tebí bo Hospodi vo úmiléniji zovú: sohriších tí, Spasí mja."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Sudíšče tvojé strášno, í súd práveden, ďilá mojá ľúta: no tý mílostive, predvarív mjá Spasí, í múki svobodí, í ízbávi Vladýko šúich části, í spodóbi ódesnúju tebé státi sudijé právedňijšij."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Stradánija pochvalóju, vincév dostóinstvom, slávniji strástotérpcy óďíjašasja tobóju Hospodi: terpínijem bo rán, bezzakónnych pobidíša, í síloju Božéstvennoju s nebesé pobídu prijáša. ťích molitvami í mené svobodí ot nevídimaho vrahá Spase, í Spasí mja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Úprávi čestaja, ókajánnuju mojú dúšu, í úščédri ju ot mnóžestva prehrišénij, vo hlubinú popólzšujusja pohíbeli, vseneporóčnaja, í v čás mjá strášnyj smértnyj tý íschití óhlahólujuščich démonov, í vsjákija múki."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Hrób tvój", "Bezúmno ot tebé údalívsja vseščédre, blúdno mojé íždích žitijé, rabótajaj strastém bezslovésnym vsehdá: no prijimí mja Anhelov molitvami Otče bláhoutróbne, jakože blúdnaho otroka, í Spasí mja."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Bezúmno ot tebé ..."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Neveščéstvennych vóinstv preimúščaja ótrokovíce, í číny nebésnyja prevoschoďáščaja jédína, dostójnuju pochvalú ot ních prijémleši vsečestaja: no molí Sýna tvojehó so Anhely, ježe ízbávitisja mňí ot strastéj mučíteľstva, jédínomu ósuždénnomu."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Tvojá pobidíteľnaja desníca Bohoľípno v kríposti proslávisja: tá bo bezsmértne, jako vsemohúščaja, protívnyja sotré, Izráiľťanom púť hlubiný novosoďílavšaja."),
    sText("1:"),
    jObj4("",none, "", "Hrichóv mojích mnóžestvo, po mnóžestvu Christé mílosti tvojejá, moľúsja tí, potrebí, í pomyšlénije óbraščénija mí dáruj: jako da tvojú slávľu jaže páče úmá bláhostýňu."),
    sText("2:"),
    jObj4("",none, "", "Javílsja jésí za milosérdije ščedrót, na zemlí voploščájem čelovík: ťímže páče čelovíka Slóve Božij, sohrišívša prijimí mja nýňi pokajánijem k ščedrótam tvoím pripádajuščaho."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Úmerščvlénije podražávše, Christá vóleju postradávšaho, vsechváľniji, í smérť, strásti preterpíste mnohovídnyja í smérť, prisnoslávniji. ťímže bezsmértnoje žitijé úlučíste, múčenicy."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ohň ľubvé Božéstvennyja preslávno vnútr nosjášče mučenicy, óhňá ne úbojástesja: no téplymi boľíznej prespíjaniji mnohobóžija veščestvó vsjákoje popalíste."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Čínove bezplótnych s námi vospivájut ťá Ďivo vsepítaja: neobiménnaho bo vo črévi tvojém voploščénna rodilá jésí, prebývši Ďiva jakože í préžde roždestvá, Bohonevísto."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Tvojá pobidíteľnaja desníca Bohoľípno v kríposti proslávisja: tá bo bezsmértne, jako vsemohúščaja, protívnyja sotré, Izráiľťanom púť hlubiný novosoďílavšaja."),
    sText("1:"),
    jObj4("",none, "", "Prestólu predstojášče svítlo Vladíčinemu vsesvjatíji Anheli, Ótcú sobeznačáľna, í tohó velíkaho sovíta Anhela, Slóvo mí vdochnúti vás pojúšču, molítesja."),
    sText("2:"),
    jObj4("",none, "", "Prestólu predstojášče svítlo ..."),
    sText("3:"),
    jObj4("",none, "", "Zercála svíta Bohonačáľna, í trisólnečnyja sviščí sijánije v sebí prijémľuščyja, po jélíku postížno, Anheľskija číny pérvie úmýsliv, um Božéstvennyj sostávi."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Úkrašéj jako Boh činonačálija výšnich síl, vo útróbu neiskusobráčnuju, serafímov výššu, vselísja tvojú Bohoródice, í plóť nepremínna býsť."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Jedíne vídyj čelovíčeskaho suščestvá némošč, í mílostivno v né voobrážsja, prepojáši mjá s vysotý síloju, ježe vopíti tebí svjatýj: óduševlénnyj chráme neizrečénnyja slávy tvojejá čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Vozníkni, hrjadí, o dušé! í vozopíj sozdáteľu tvojemú, tájnaja tvojá vsjá víduščemu, í pokajánija plodý pokaží: jako da pomílujet ťá ščédryj Hospod, í óhňá víčnaho ízbávit."),
    sText("2:"),
    jObj4("",none, "", "Óčísti jédíne bláže, óčísti í Spasí mja, jako mytár so stráchom zovú ti: mnóžestvom hrichóv vlekíjsja, í prekloňáem jesm ťahotóju prehrišénij, í studá bezmírnaho íspolňájajsja."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Múdrostiju í rázumom istinnym múčenicy íspolňáemi, jellinskuju múdrosť óbuíša, múdrostnuju že zlóbu pohubíša, í krípko postradávše, dostójňi vosprijáša pobídy vincý, rádujuščesja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Jedínicu ubo jéstestvóm, stradáľcy, Trójcu že lícy íspovídajušče, prélesť mnohobóžnuju Božéstvennoju víroju potrebíste, í svitíľnicy jávístesja, vsích ózarjájušče serdcá lučámi bláhodátnymi."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svjatája Bohonevísto čestaja, svjato porodilá jésí, vo svjatých počivájuščaho, Sýna í Slóva Ótcú sobeznačáľnaho, ósvjaščájuščaho ó svjatím Dusi, iže tohó bláhočéstno ósvjaščájuščyja."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jedíne vídyj čelovíčeskaho suščestvá némošč, í mílostivno v né voobrážsja, prepojáši mjá s vysotý síloju, ježe vopíti tebí svjatýj: óduševlénnyj chráme neizrečénnyja slávy tvojejá čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Svítu Bohoďíteľnomu serafími nesrédstvenno približájuščesja, í mnohohúbo im nasyščájemi, pervodátnymi javi sijáňmi pervoďíľno svíťatsja, í jako svíti vtoríji byvájut, Božestvóm óbožájemi."),
    sText("2:"),
    jObj4("",none, "", "Svítu Bohoďíteľnomu serafími ..."),
    sText("3:"),
    jObj4("",none, "", "Anheľskija svítlosti píti úsérdno želájušče, jaže ťími ot Boha pómošč podajémuju, vírniji prósim úmá čistotóju, í prečestymi ústý, í da polúčim sích sijánije."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Úmá presúščestvennaho víďiti spodobľájemi, jako ľípo, havrijíl Ďivo vseneporóčnaja, rádovanen hlás prinesé tebí, slovesé začátije javi vozviščája tí, í neizrečénnoje roždestvó propovídaja tvojé."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Hóru ťá bláhodátiju Božijeju prijosinénnuju, prozorlívyma ávvakúm úsmotrív óčíma, íz tebé ízýti Izráilevu provozhlašáše svjatómu, vo Spasénije náše í óbnovlénije."),
    sText("1:"),
    jObj4("",none, "", "Komú ťa, dušé mojá ókajánnaja, úpodóbľu, ďílajuščuju ľútaja, í ne tvorjáščuju dóbrych; óbratísja, vozopíj tebé rádi óbniščávšemu vóleju: serdcevídče, úščédri, í Spasí mja."),
    sText("2:"),
    jObj4("",none, "", "Ópreďilívyj pokajánije Spase óbraščájuščymsja, ježe mí podážď bláže, préžde koncá žitijú dajá mi úmilénije í vozdychánije, jako bludníci pérvie, óblobyzájuščej nózi tvoí Vladýko."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Vód duchóvnych íspólnšesja mučenicy, vodý žívy ríki jávíšasja manovénijem Božéstvennym, í prélesti ízsušíša mútnyja Christé potóki Dúchom, í vírnych mýsli napojíša."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Veľmí podvíhšesja Božéstvenniji mučenicy, óhňá bo í mečá, í ľútych vsích preterpíša tomlénije. ťích moléňmi Slóve Božij, prevelíkija ízbávi múki víčnyja, víroju pojúščyja ťá."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Iže drévle íz Ótcá neroždénna Sýn roždéjsja, roždestvó ímí ľítnoje, íz tebé Ďivo voplóščsja, ľítnuju bráň zemnoródnych otjáti choťá bláhoutróbnyj, iže dnéj í ľít prevýše sýj."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Hóru ťá bláhodátiju Božijeju prijosinénnuju, prozorlívyma ávvakúm úsmotrív óčíma, íz tebé ízýti Izráilevu provozhlašáše svjatómu, vo Spasénije náše í óbnovlénije."),
    sText("1:"),
    jObj4("",none, "", "Prestóli pérvoje íspolňájušče údobrénije, í cheruvími í serafími, Božéstvennymi zarjámi, nesrédstvenno svíťatsja, Bohoďíteľnaja svjaščennonačálija prijémľušče, nýňi pojút: sláva síľi tvojéj Hospodi."),
    sText("2:"),
    jObj4("",none, "", "Prestóli pérvoje íspolňájušče ..."),
    sText("3:"),
    jObj4("",none, "", "Pojút tričíslennuju jédínicu Božestvá Trójčeskimi svjaščénniji neprestánnymi hlásy, jávľájušče serafími prečístoje Bohoslóvija táinstvo, í pravoslávňij víri naučájušče."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Iže vsjákija tvári prevýšši razumivájem, páče úmá živonačáľnym zdánijem, vojístinnu na zemlí soveršája čudesá, ďívstvennymi svítlosťmi, vo tvojé čístoje črévo vselísja prečestaja."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Prosvitívyj sijánijem prišéstvija tvojehó Christé, í ósvitívyj krestóm tvojím míra koncý, serdcá prosvití svítom tvojehó Bohorazúmija, pravoslávno pojúščich ťá."),
    sText("1:"),
    jObj4("",none, "", "Vpadóch v tľínije strastéj, í bojúsja tvojehó právednaho sudíšča, právednyj Hospodi. ťímže moľúsja tí: úkripí mja tvoríti ďílanija bláhája, ópravdájuščaja mjá."),
    sText("2:"),
    jObj4("",none, "", "Bezvístnaja í tájnaja sérdca mojehó tý vísi, Bože mój, í ziždíteľu, í Hospodi, ne ósudí ubo mené v čás sudá, vnehdá prijídeši sudíti vsjáčeskim."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svjatíji pričastívšesja óhňú, razžžénije pokazáchu Božéstvennaho svojehó ľublénija. ťímže órošájemi, čájanijem búduščich Bohonósniji veseľáchusja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Úkripľájemi bláhích nadéždeju mučenicy, preterpiváchu rasterzánija údóv terpilívijše, í mnohokóznennaho, žílami svojími neosláblennaho terpínija, údavíša."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Vitíjstvujuščaja ústá ne vozmóhut, roždestvá tvojehó neizrečénnoje povídati čúdo, Bohonevísto: neskazánnaho bo raždáješi, í na óbjátijach nósiši rukóju soderžáščaho vsjáčeskaja."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Prosvitívyj sijánijem prišéstvija tvojehó Christé, í ósvitívyj krestóm tvojím míra koncý, serdcá prosvití svítom tvojehó Bohorazúmija, pravoslávno pojúščich ťá."),
    sText("1:"),
    jObj4("",none, "", "Ljubóviju Božéstvennoju raspalájemi, hospóďstvija, vlásti í síly, čínove vtoríji, nemólčnymi ústý Bohonačáľnoje pisnoslóvjat jédíno suščestvó í sílu."),
    sText("2:"),
    jObj4("",none, "", "Ljubóviju Božéstvennoju raspalájemi, ..."),
    sText("3:"),
    jObj4("",none, "", "Úpravľájutsja Archánheľstiji čínove Dúchom, í Anhelov, í načálov, so bezčíslennymi vóinstvy: jédíno trijypostásnoje prosvitíteľno suščestvó počitáti svítlo účími súť."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Úkrasílasja jésí páče vsjákaho Anheľskaho bláhoľípija, Anhelov bo tvorcá začénši í Hospoda, BohoMati prečestaja, voplotívšahosja neizrečénno ot tvojích krovéj, rodilá jésí."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Óbýde nás posľídňaja bézdna, ňísť ízbavľájaj, vminíchomsja jako ovcy zakolénija, Spasí ľúdi tvojá Bože náš: tý bo kríposť nemoščstvújuščich í íspravlénije."),
    sText("1:"),
    jObj4("",none, "", "Sýj vráč Christé, íscilí strásti sérdca mojehó, í ómýj mjá ot vsjákija skvérny, strujámi Izráise mój úmilénija, da pojú í veličáju bláhoutróbije tvojé."),
    sText("2:"),
    jObj4("",none, "", "Bluďášča mjá na putéch pohíbeli, í v róv sohrišénij vpádajušča mjá óbratí Christé, í k nezablúdnym stezjám navedí tvojích čestných ópravdánij, jako da slávľu ťá."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Kámenije vojístinnu mnohocínnoje, kámenijem posypájemi, ne otverhóšasja kámene žíznennaho, nižé ístukánnomu kámeniju požróša, slávniji í vincenóscy Hospodni mučenicy."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Óbnóvľše dúšy rálom víry mučenicy, stradánija klás Dúchom Božéstvennym storíčnyj vozrastíša, í píšči blážénnyja spodóbišasja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Ohnennych slúh ohň rodívši, jávílasja jésí vseneporóčnaja í tvári vsjákija pervoďíľňi, prečestaja Ďivo preimúščaja, v ženách bláhoslovénnaja Bohorádovannaja."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Óbýde nás posľídňaja bézdna, ňísť ízbavľájaj, vminíchomsja jako ovcy zakolénija, Spasí ľúdi tvojá Bože náš: tý bo kríposť nemoščstvújuščich í íspravlénije."),
    sText("1:"),
    jObj4("",none, "", "Číni bezplótnych Hospodi, prestólu predstojášče slávy tvojejá čelovikoľúbče, hlásy Anheľskimi neprestánnymi ťá počitájut: tý bo kríposť jésí ťích Christé, í pínije."),
    sText("2:"),
    jObj4("",none, "", "Číni bezplótnych Hospodi, ..."),
    sText("3:"),
    jObj4("",none, "", "Licé tvojé zrjášče Anheli, dobrótu nedomýslimuju, prebožéstvennoje bláhoľípije tvojejá Božéstvennyja svítlosti, prosviščájutsja: tý bo ťích í svít jésí í rádovanije."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Voplotísja préžde sýj bezplóten, Slóvo íz tebé prečestaja, vsjáčeskaja vóleju tvorjáj, bezťilésnych vóinstva privedýj ot nebytijá jako vsesílen."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Tebé umnuju Bohoródice, péšč razsmotrájem vírniji: jakože bo otroki Spasé trí prevoznosímyj, mír óbnoví, vo črévi tvojém vsecíl, chváľnyj ótcév Boh, í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Lvý drévle danijíl úkrotí, sožíteľnicu ímíjaj dobroďíteľ: tomú porevnúj, o dušé, í rykájuščaho vsehdá jako ľvá, í óbjáti choťášča ťá, ježe k Bohu vziránijem prísno, bezďíľna sotvorí."),
    sText("2:"),
    jObj4("",none, "", "Premnóžestvom bludá, Hospodi, dúšu óskverních ľúťi. prevoschoďáščuju ubo Christé ímýj bláhostýňu, prijimí jako blúdnaho, í pojúšča mjá úščédri: prepítyj ótcév Boh, í preproslávlen."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Zakónom Christóvym bláhomóščno úkripľájemi, bezzakónnych sovíty pohubíša, nepobidímiji mučenicy, zakónno že skončávšesja, vospiváchu: prepítyj ótcév Boh bláhoslovén jésí."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Bohozárniji Hospodni mučenicy, raspalájemi svítom Trójčeskim, javi mučénija ťmú, í prélesti mhlú razrušíste, pojúšče: prepítyj ótcév Boh, í preproslávlen."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Zakóni jéstestvá v tebí óbnovľájutsja: zakonodávca bo Christá kromí zakón plotskích raždáješi, vseneporóčnaja, vsím ízbavlénije zakonopolahájušča pojúščym: prepítyj ótcév Boh í preproslávlen."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Tebé umnuju Bohoródice, péšč razsmotrájem vírniji: jakože bo otroki Spasé trí prevoznosímyj, mír óbnoví, vo črévi tvojém vsecíl, chváľnyj ótcév Boh, í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Beznačáľnyj svít tý jésí Vladýko, ot Ótcá svíta vozsijávyj, Anhelov vóinstva svíty ústróil jésí, zercála prijémľušča, blistánije tvojé nezachodímoje: prepítyj ótcév Boh, í preproslávlen."),
    sText("2:"),
    jObj4("",none, "", "Ród čelovíč, iže vsích Hospod, pristavléňmi Anheľskimi javi Spasáješi: sijá bo predstávil jésí vsím vírujuščym, í pravoslávno pojúščym ťá, prepítaho ótcév Boha, í preproslávlena."),
    sText("3:"),
    jObj4("",none, "", "Jázýk í um ne móžet, Vladýko, tvojích čudés ízreščí, í ďíl bláhoľípnoje: tý bo prosvitíl jésí vsjákoje údobrénije nebésnych síl: prepítyj ótcév Boh, í preproslávlen."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Iz tebé, čestaja, Sýn voplotísja, iže préžde bez Matre íz Ótcá, í bez Ótcá ježe po nám, nás rádi býv. jémúže nýňi slúžat bezplótnych polkí, jako chvalímomu ótcév Bohu, í preproslávlenu."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "V peščí ótrocy Izráilevy, jákože v horníľi dobrótoju bláhočéstija čisťíe zláta bleščáchusja, hlahóľušče: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Izbáviteľu mój bláhoutróbne Christé, nýňi óderžáščija mjá mhlý hrichóvnyja, í vsjákich ískušénij ízbávi zovúšča: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Jehdá chóščeši prijití Christé vo slávi, sudíti míru, stojániju ízbránnych tvojích sopričtí í mené, vopijúšča í hlahóľušča: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "K zemlí Christóvi svjatíji mučenicy preidóste: na zemlí bo veľmí podvíhšesja, nebésnuju žízň vosprijáste, pojúšče: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Sovlékšesja ťíla tľínnaho, vo ódéždu bezsmértija jako mučenicy pobidonósniji óblekóstesja vo Christá, s vysotý vzyvájušče: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svjaščénniji ťá hlási ízdaléča provozvistíša prečestaja, býti tebí Matri vsjá sotvóršemu Bohu. jémúže pojém: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "V peščí ótrocy Izráilevy, jákože v horníľi dobrótoju bláhočéstija čisťíe zláta bleščáchusja, hlahóľušče: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Prosviščénnaja í blizosvítnaja Anhelov vóinstva lučámi trisólnečnyja krasotý, vírniji podražájušče vospojím: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Jako ístóčnik vsích dóbrych, Bohonačáľňijšaja privódit Božéstvennaja síla svíty vtorýja, svít pérvyj prijémľuščja í vopijúščja: bláhoslovíte vsjá ďilá Hospodňa Hospoda, pójte í prevoznosíte vo vsjá víki."),
    sText("3:"),
    jObj4("",none, "", "Um pérvyj í soďíteľ, premírnyja úmý Anheľskija, presúščestvenňi sostávi sebí, javi približájuščyjasja, í vopijúščyja: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Páče Slóva íz Ótcá roždénna préžde vík, neizrečénno voploščénna rodilá jésí nám Ďivo vseneporóčnaja. jémúže vopijém: vsjá ďilá Hospodňa Hospoda pójte, í prevoznosíte vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón úmilíteľnyj
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Obraz čístaho roždestvá tvojehó óhnepalímaja kupiná pokazá neopáľnaja: í nýňi na nás napástej svirípijuščuju úhasíti mólimsja péšč, da ťá Bohoródice neprestánno veličájem."),
    sText("1:"),
    jObj4("",none, "", "Jakože chananéa zovú ti: pomíluj mjá Slóve: dúšu bo imam démonskimi naneséniji bídstvujuščuju, í bezúmno bezzakónnaja ďílajuščuju, í nečúvstvujuščuju Božéstvennaho tvojehó strácha, dolhoterpilíve."),
    sText("2:"),
    jObj4("",none, "", "Postávi Hospodi, na kámeni poveľínij tvojích duší mojejá nózi, í bezstúdno zapjáti mjá choťášča, zapní zmíja, í ízbávi mjá sehó zloďíjstva, jako bláh í mnohomílostiv."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Úžé préžde mučenicy, ískušénij vódu nepostojánnuju, í rán ľútych búrju, ko pristánišču javi dostihóste hórňaho cárstvija, Božéstvennyja tišiný naslaždájuščesja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Svíta nevečérňaho mučenicy svitovídni býti spodóbistesja, í v cerkvi pervoroždénnych veselítesja, í so Anheľskimi líki rádujetesja, s nímiže živodávca ó nás molíte."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nósiši vsjá nosjáščaho, í dojíši vsím píšču dajúščaho, vélije í strášno ježe páče úmá tvojé táinstvo, kovčéže čestnýja svjatýni Ďivo Bohoródice. ťímže ťá víroju úblážájem."),
  ))
  ====== Kanón bezplótnym
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Obraz čístaho roždestvá tvojehó óhnepalímaja kupiná pokazá neopáľnaja: í nýňi na nás napástej svirípijuščuju úhasíti mólimsja péšč, da ťá Bohoródice neprestánno veličájem."),
    sText("1:"),
    jObj4("",none, "", "Pričástniki neizrečénnyja slávy tvojejá, bezplótnyja úmý Spase sostávil jésí: í nýňi ťími tvojá ľúdi sochraní, tebí víroju í ľubóviju pribihájuščyja, da ťá Vladýko neprestánno veličájem."),
    sText("2:"),
    jObj4("",none, "", "Da posyláješi mírnaho Anhela, sobľudájušča vsederžíteľu stádo tvojé: míra bo í ľubvé tý vinóven, í Bohomúdrennuju víru sobľudájušča, í vsjá jeresi tvojéju síloju razrušájušča."),
    sText("3:"),
    jObj4("",none, "", "Vés sládosť vospivájemyj, nebésnuju sládostnuju svítlosť nasadí v cerkvach tvojích Vladýko, í bláhočéstno dážď v sostojánije, da ťá Spasíteľa neprestánno veličájem."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Číni Anheľstiji prečestaja, nýňi nemólčno tvojé roždestvó počitájut: v činú bo stoját vzirájušče, vesélija jéhó nasyščájuščesja, í ťá Bohoródicu neprestánno veličájut."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((

    // ST Stich na 1
    sText("1:"),
    jObj4("",none, "", "In ťá mír dušé óžidájet, í sudijá chóščet tvojá óbličíti tájnaja í ľútaja. ne prebúdi ubo v zďíšnich, no predvarí vopijúšči sudijí: Bože óčísti mjá, í Spasí mja."),
    "",
    gText("Íspólnichomsja zaútra mílosti tvojejá Hospodi, í vozrádovachomsja í vozveselíchomsja, vo vsjá dní náša vozveselíchomsja, za dní, v ňáže smiríl ný jésí, ľíta, v ňáže víďichom zlája: í prízri na rabý tvojá, í na ďilá tvojá, í nastávi sýny ích."),

    // ST Stich na 2
    sText("2:"),
    jObj4("",none, "", "Ne prenebrezí mené Spase mój ľínostiju hrichóvnoju óderžíma, vozdvíhni mojé pomyšlénije k pokajániju, í tvojehó vijnohráda ďílateľa ískúsna pokaží mja: dáruj mí jédinahonádesjate časá mzdú, í véliju mílosť."),
    "",
    gText("Í búdi svítlosť Hospoda Boha nášeho na nás, í ďilá rúk nášich ísprávi na nás, í ďílo rúk nášich ísprávi."),

    // ST Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Strástotérpcy Christóvy prijidíte ľúdije vsí počtím píňmi í písňmi Dúchóvnymi, svitíľniki míra, í propovídniki víry, ístóčniki prisnotekúščyja, íz níchže ístekájut vírnym íscilénija. ťích molítvami Christé Bože náš, mír dáruj míru tvojemú, í dušám nášym véliju mílosť."),

    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "Nebésnych činóv", "Svjatíjšaja svjatých vsích síl, čestňíjšaja vsejá tvári Bohoródice Vladíčice míra, Spasí ny Spasa róždšaja, ot prehrišénij tmoríčnych í bíd, jako bláhája, molitvami tvojími."),
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
    jObj4("",none, "", "Sňídiju ízvedé íz rajá vráh Ádáma: krestóm že vvedé Christós vóň razbójnika, pomjaní mja, Hospodi, vopijúšča, jéhdá prijídeši vo cárstviji tvojém."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Úmilénij ístóčnik mí dáruj bláhoutróbijem tvojím Christé Bože, vsjákija mjá skvérny zól bezmírnych óčiščájuščij, í cárstvija tvojehó bláhoďíteľu pričástnika mjá sotvorí."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Anhel tvojích číny v molénije privódim tí Christé, Spasí, úščédri nás ťími, jáko prebláh, vsjá prezirájaj náša, jáže v víďiniji í ne v víďiniji, prehrišénija."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("Mučeničen",none, "", "Krovéj vášich svjatíji tečéňmi, mýslennaho faraóna potopíste jávi: nýňi že ístočájete čudés tóki, pučínu ízsušájuščyja nedúhov. ťímže blážími jésté."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Ótcú poklonímsja, í Sýna slavoslóvim í presvjatáho Dúcha vkúpi vospojím, zovúšče í hlahóľušče: vsesvjatája Trójce, Spasí vsích nás."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("Bohoródičen",none, "", "Róždšaja svít bezľítnyj, ómračénnuju dúšu mojú prísno démonov prilóhi, svitovodí preneporóčnaja, í óhňá búduščaho chodátajstvy tvojími svobodí."),
  ))
])
