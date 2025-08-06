#import "../../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("Pi")


// ---------------------------------------
// VELKA VECIEREN
// ---------------------------------------


  === #translation.at("V")
  #header3([(#translation.at("St_V"))])
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 6
    sText("6:"),
    gText("Ášče bezzakónija názriši Hospodi, Hospodi, któ postojít; jáko ú tebé óčiščénije jésť."),
    "",
    jObj4("",none, "Ne ktomú vozbraňáemi:", "Da čelovíka Boha soďílaješi, čelovík býl jésí prebláhíj Christé, í raspjálsja jésí: sláva síľi tvojéj."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Jehdá na krest ťá Izráise, sónm jévréjskij ósudí, zemľá trjasášesja, í sólnca svít skryvášesja."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Térnijem ťá bezsmértne, vinčá sobór bezzakónnyj, prélesti térnije íz kórene sikúšča, cerjú svjatýj."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Vladície vsesvjatája Ďivo, róždšaja Hospoda, za bláhoutróbije na kresťí prihvozdívšahosja, í žízni struí ístočívša míru, tohó úmolí Spastísja dušám nášym: tebé bo jédínu imamy vírniji pribížišče, í sťínu, í zastuplénije. ťímže í pritekájem k pokróvu tvojemú."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Ne ktomú vozbraňáemi jésmý dréva živótnaho, úpovánije ímúšče krest tvój: Hospodi, sláva tebí."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Povíšen býv bezsmértne na drévi, sokrušíl jésí vsjá síti dijávoli: Hospodi, sláva tebí."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Sláva tebí Christé Bože, Apostolov pochvaló: í mučenikov vesélije: ichže própoviď Trójca jédinosúščnaja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Na drévi prihvoždénna ťá vóleju vseneporóčnaja jako víďi, pláčušči pojášče deržávu tvojú."),
  ))
  #colbreak()


// ---------------------------------------
// POVECERIE 
// ---------------------------------------


  === #translation.at("P")
  #header3([(#translation.at("St_N"))])
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Istrjásšemu Bohu faraóna v móri čermňím, písň pobídnuju pojím, jako proslávisja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Životá mojehó prozrjá nastávšij konéc, Vladíčice, vopijú: tý mi dážď óčiščénije sohrišénij Bohonevísto."),

    sText("2:"),
    jObj4("",none, "", "V pučíňi bláhostýni tvojejá priték, vopijú: Vladíčice bláhája, ízbávi mjá vsjákaho mučénija."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Vladície, prijimí nás víroju pribihájuščich k tebí, í podážď napástej í skorbéj ízbavlénije."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Tý pádšuju Ádámovu skíniju proróčeski vozstávila jésí, Spasa í Boha prečestaja, vo črévi nosívši."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Ú tverdísja víroju Christóva cerkov, ibo neprestánno písňmi vopijét pojúšči: svjat jésí Hospodi, í ťá pojét dúch mój."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Jaže Boha í Vladýku neizrečénno začénšaja, óbderžíma mjá búreju hrichá, tý ot sích ízbávi, í Spasí mja prečestaja."),

    sText("2:"),
    jObj4("",none, "", "Sohrišénij nepodóbnych nóščiju mjá óderžíma, pokajánija lučámi ózarí ótrokovíce, ďílati mí podávši svíta ďilá vsehdá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jaže nebésnyj chľíb róždši Bohoródice, pitájušči vsích vírnych serdcá, nasýti álčuščuju dúšu mojú strástnuju."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Útverdíchsja, Božéstvennoje tvojé roždestvó razumív, í zastuplénijem Ďivo, óbohaščájusja, zovýj: svjat jésí Hospodi, Spasája dúšy náša."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Úslýšach slúch tvój, í úbojáchsja: razumích ďilá tvojá, í úžasóchsja Hospodi."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Steňúšča pred tobóju Vladíčice, í vopijúšča priľížno ot úmá mojehó, da ne prézriši mené, nižé posramíši."),

    sText("2:"),
    jObj4("",none, "", "Popalí unzšij térn ókajánnyja mojejá duší, slastéj plotskích, jaže ohň Božéstvennyj Vladíčice, róždšaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Podážď mí sohrišénij óstavlénije vsebláhoslovénnaja čestaja, í ízbávi víčnaho í úžásnaho mučénija."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Slóvo v ťá vséľšejesja prečestaja, suščestvó mojé vozobrazí, pádšeje prestupléňmi."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Útreňuet dúch mój k tebí, Bože, zané svít jésí, í tvojá poveľínija býša íscilénija rabóm tvoím, čelovikoľúbče."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Úpodóbichsja bezslovésnym skotóm preokajánnyj, strasťmí bezslovésnymi ókajánňij mojéj plóti rabótaja: tý, Bohoródice, podážď mí vosprjanovénije."),

    sText("2:"),
    jObj4("",none, "", "Pomíluj mjá páče vsích čelovík sohrišívšaho, í k tvojemú pokróvu pribihájušča téplomu Bohoródice Ďivo, í mučénij íschití."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Bohoródicu íspovídajuščiji ťá Mati Ďivo, nepreidúščaho cárstvija í píšči tobóju Bohomáti úlučíti da spodóbjatsja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Bláhoslovénnaja í preproslávlennaja Mati neiskusomúžnaja, úmerščvlénuju hrichámi dúšu mojú, í strasťmí pohorblénuju neoderžánnymi, óživotvorí."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Jóna íz čréva ádova vopijáše: vozvedí ot tlí živót mój. mý že tebí vopijém: vsesíľne Spase, pomíluj nás."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Soderžít mjá búrja hrichóvnaja, Ďivo, í ko tlí otčájanija vedét: no prostrí mi rúku pómošči tvérduju í vsemóščnuju."),

    sText("2:"),
    jObj4("",none, "", "Jeléj, ježe v tebí téplaho mílosrdija, vozléj na mjá Vladíčice, í ízbávi sohrišénij, íschití óhňá víčnujuščaho."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Jaže razrišívšaja ot boľízni Ďivo jenu, roždestvóm tvojím prečestym, razriší mi ótrokovíce, boľízni strastnýja mojejá duší í ťilesé."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Pisnoslóviši íz tebé voploščénnaho Boha, í rydáješi na kresťí vozneséna, tohó smotrjájušči Mati Ďivo čestaja í preneporóčnaja."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Plód čréva tvojehó čestaja, krest vodruzí v koncý, í tlí mír ízbávi: ťímže ťá jako preslávnuju veličájem."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V péšč ohnennuju vvérženi prepodóbniji otrocy, ohň v rósu preložíša, vospivánijem síce vopijúšče: bláhoslovén jésí Hospodi Bože ótéc nášich."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Prehrišénij mojích úmnóžisja preščénije, sudá dostójno, čestaja, pripádaju í zovú ti: préžde koncá podážď mí óčiščénije, í úmilénija slézy, í nrávom íspravlénije."),

    sText("2:"),
    jObj4("",none, "", "Nedúhovavša mjá ľúťi skvérnymi prehrišéniji, čestaja, í ko otčájanija ídúšča hróbu, jako róždši žízň vsjáčeskich prečestaja, Božéstvennymi ďijániji óživí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Bohorodíteľnice bláhája, víroju prizyvájuščich tvojú bláhodáť prisnoživúščuju, mýslennyja smérti ízbavľájušči, cárstvija spodóbi prečestymi tvojími molitvami."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Nepostížnoje roždestvó Ďivy slavoslóvim, imže smérti ízbávichomsja: jéhóže rádi róždšesja v netľínije, bláhoslovén jésí, zovém, Hospodi Bože ótéc nášich."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Jedínaho beznačáľnaho cerjá slávy, jéhóže bláhoslovját nebésnyja síly, í trepéščut číni Anheľstiji, pójte svjaščénnicy, ľúdije prevoznosíte jéhó vo víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Strastéj mjá péšč popaľájet Ďivo, í óhném slastéj pojadájet, predvarívši, mílostivnoju tvojéju rosóju úhasí ju, dajúšči duší mojéj ústužénije krípko."),

    sText("2:"),
    jObj4("",none, "", "Dúšu óskverních, í rastlích plóť slasťmí, vaľájasja v sích, í bých poruhánije čelovíkom, í smích vrahóm: Vladíčice Bohoródice, pomóščnica mňí búdi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Boha, jéhóže rodilá jésí, úmolí Ďivo, nizposláti Spasénije vírno čtúščym ťá, í bíd razrušénije, í nedúhov ľútych preminénije skóroje, í bláhodáť víčnuju."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Sozdávšaho Ádáma po obrazu, í ot smišénija jéhó prošédša, í razríšša pérvuju kľátvu, pójte svjaščénnicy Hospoda, í prevoznosíte jéhó vo víki."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Vsepítaja nebes prevýššaja, beznačáľnoje Slóvo bezsímenno začénšaja, í voploščénnaho Boha róždšaja čelovíkom: ťím ťá vsí veličájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Vsesvítlaja Ďivo Mati Bohoródice, ókajánnuju dúšu mojú, ľúťi ómračénnuju strasťmí plotskími, svítom molitv tvojích v strách Božij svítlo nastávi."),

    sText("2:"),
    jObj4("",none, "", "Otčájavsja ot mnóžestva sohrišénij mojehó Spasénija, í nedoumínen jávíchsja Vladíčice vsesvjatája: tvojé bláhoďijánije, í mílosť tvojú nizposlí mňí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Roždestvó tvojé Bohoródice, ježe páče jéstestvá, údivľájet Anhely, úžasájet že čelovíki: vsím bo neskazánno jesť í nepostižímo. sijé že pojúšče bláhočéstno ťá slávim."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Úmerščvlénija í tľínija rízy sovlecý mi Ďivo, jaže Spasénija rízu voploščénnaho Slóva róždši čelovíkom: ťímže vsí ťa prísno veličájem."),
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
    jObj4("",none, "", "Íže mené rádi preterpívyj na kresťí prihvoždénije, prijimí í mojé bódrennoje chvalénije, Christé Bože, jáko čelovikoľúbec."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Krestóm Sýna tvojehó chraními Ďivo, prilóh bisóvskich ízbihájem: ťímže ťá Bohoródice beznevístnaja, po dólhu vospivájušče slávim."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Óhňá svitľíjšeje, í plámene ďíjstvenňijšeje drévo pokazál jésí Christé, krestá tvojehó, popaľájuščeje hrichí čelovíkov, í prosviščájuščeje serdcá pojúščich vóľnoje tvojé raspjátije: Christé Bože, sláva tebí."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Hospodi, tvojehó krestá zrjášče vozvyšájema vsehdá, pristupájem vírno píňmi í písňmi, óblobyzájušče tohó stráchom í rádostiju: ósvjatí rabý tvojá, í úmirí mír tvój sehó jávlénijem, jédíne mnohomílostive."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("",none, "", "Bohoródice čestaja prisnoďivo, na kresťí zrjášči Sýna tvojehó vísjašča, jáko Mati pláčušči tohó veličáše strášnoje snizchoždénije neiskusobráčnaja Vladíčice."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Svjatíji, molítesja, óstavlénije dáti nám prehrišénij nášich, í čájemych ľútych ízbávitisja nám, í hórkija smérti, mólimsja."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "", "Krest tvój Christé, čestnýj, míra órúžije jésť, í nepobidímaja pobída: ímže í nevídimyja vrahí nizlahájušče, bláhodárno vospivájem ťá."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Íže Ádámovo ósuždénije drévom krestá íscilívyj, íscilí náša sokrušénija serdéčnaja, í Spasí nás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Plód čréva tvojehó prečestaja, krest nasadí v koncích í ot tlí mír ízbávil jésť: ťímže ťá preslávnaja, veličájem."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Istrjásšemu Bohu faraóna v móri čermňím, písň pobídnuju pojím, jako proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Christós voznosím na krest, k sebí vsjá privlečé čelovíki, í nizvérže vrahá, vsích nizvérhšaho."),
    sText("2:"),
    jObj4("",none, "", "Vódu životú mojemú Izráise, ot živonósnych rébr ístočíl jésí, í úmertvíl jésí vrahá Vladýko, býv mértv."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Molitvu Christú za nás strástotérpcy priľížnuju prinesíte, strášnaho sudá vsím nám ízbávitisja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Smirívšesja vý Christá rádi, premúdriji mučenicy, hórdaho vrahá nizložíste Božéstvennoju bláhodátiju."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Vozsijávšaho íz tebé, prevelíkim bláhoutróbijem Vladíčice, na kresťí zrjášči plákala jésí, tohó slávjašči."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Istrjásšemu Bohu faraóna v móri čermňím, písň pobídnuju pojím, jako proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Vpádšaho v tľínije preslušánija práďida Ádáma óbnovíla jésí, Boha prečestaja, plótiju róždši."),
    sText("2:"),
    jObj4("",none, "", "S vesélijem hlás havrijílov vzyvájem tí, čestaja: rádujsja vsích nadéžde prečestaja, rádujsja Bohonevísto."),
    sText("3:"),
    jObj4("",none, "", "Úmerščvlénnyj mój úm óživí živótnym ďíjstvijem íz tebé róždšimsja vojístinnu prečestaja Ďivo."),
    sText("4:"),
    jObj4("",none, "", "Bláhoslovjáščiji ťá vírno ot Boha bláhoslovľájutsja jávi: bláhoslovénija vo ístóčnik rodilá jésí, jédína vsepítaja."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Ú tverdísja víroju Christóva cerkov, ibo neprestánno písňmi vopijét pojúšči: svjat jésí Hospodi, í ťá pojét dúch mój."),
    sText("1:"),
    jObj4("",none, "", "Bezstrástnyj po suščestvú, káko strásť terpíši, živót mňí vdychájaj; káko úmiráješi na drévi; vélija tvojá mílosť í dolhoterpínije, Spase."),
    sText("2:"),
    jObj4("",none, "", "Na kresťí posreďí razbójnikov, Slóve, neprávedno vozdvíhlsja jésí, í ópravdál jésí víroju poznávšaho tebé ziždíteľa vsejá tvári, vóleju stráždušča."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Strohánija plóti terpjášče, rúk že otjátije, í nóh, í vsích údóv strástotérpcy, slávy spodóbišasja, ó nás moľáščesja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Premnóhimi múkami ó Bózi prosvitívšesja, premnóhuju slávu múdriji nýňi nasľídovaste, vsehdá moľáščesja ó dušách nášich."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Razrišénije dolhóv nášich čestaja Ďivo, podážď máternimi tvojími molitvami, na kresťí prihvoždénnaho čelovíka bývša, Boha Slóva róždšaja."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Ú tverdísja víroju Christóva cerkov, ibo neprestánno písňmi vopijét pojúšči: svjat jésí Hospodi, í ťá pojét dúch mój."),
    sText("1:"),
    jObj4("",none, "", "Tebé Ďivu, óbrázno síň vsesvjatúju. zakonopolóžniku na horí Boh predskazáše: selénije bo býsť vsích ósvjaščájuščaho."),
    sText("2:"),
    jObj4("",none, "", "Zémľu ťá svjatúju Ďivo, razumíchom vsí, nám bez símene vozrastívšuju krásnyj klás, Izráisa Christá, pitájušč víroju ťá í ľubóviju blážáščich."),
    sText("3:"),
    jObj4("",none, "", "Víďina býša šéstvija Boha výšňaho, v tebí Ďivo neizrečénno tomú voplóščšusja: Mati bo tý bylá jésí vsími cárstvujuščaho."),
    sText("4:"),
    jObj4("",none, "", "Útverdíchsja, Božéstvennoje tvojé roždestvó razumív, í zastuplénijem Ďivo, óbohaščájusja, zovýj: svjat jésí Hospodi, Spasája dúšy náša."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Úslýšach slúch tvój, í úbojáchsja: razumích ďilá tvojá, í úžasóchsja Hospodi."),
    sText("1:"),
    jObj4("",none, "", "Jákože krasňíjšij hrózd na kresťí vozdvíhlsja jésí Vladýko, vesélija vijnó ískápal jésí čelovikoľúbče."),
    sText("2:"),
    jObj4("",none, "", "Mnohoboľíznennyja čelovíkov strásti útišíl jésí vojístinnu, strásti Vladýko, vóleju na plóti tvojéj prijém."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Óstrupíša óstrupľájemi strástotérpcy borcá: í jávíšasja vráčeve dúš nášich."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ópolčíšasja k mučítelem strástonóscy, í pobidívše, vinčáni býša pobídnymi vincý."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Rodilá jésí bez símene Ďivo Slóva, na kresťí pohubívšaho tľínije bláhostiju."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Úslýšach slúch tvój, í úbojáchsja: razumích ďilá tvojá, í úžasóchsja Hospodi."),
    sText("1:"),
    jObj4("",none, "", "Úslýšal jésť ávvakúm ťá prečestaja, hóru, Dúchóvnymi ósinéňmi prosviščájemu: íz tebé bo Boh jávísja voploščájem."),
    sText("2:"),
    jObj4("",none, "", "Íspravľájetsja pravoslávnych sobór, tebé vsesvjatúju pojá jáko Bohomáter, so Archánhelom, rádujsja, zovýj tebí."),
    sText("3:"),
    jObj4("",none, "", "Bijétsja nestórija licé, ne voschoťívšaho múdrstvovati tebé Bohoródicu čestuju: Boha bo vojístinnu prečestaja, rodilá jésí."),
    sText("4:"),
    jObj4("",none, "", "Krásnuju ťá í svítluju dobrótami ženích óbrít, v ťá vselísja, í Bohoródicu vsečestaja soďíla."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Útreňuet dúch mój k tebí, Bože, zané svít jésí, í tvojá poveľínija býša íscilénija rabóm tvoím, čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Vozdvížem Vladýko, na drévo plótiju, tvár vsjú íz róva ľútych nerazúmija ízvlékl jésí, k rázumu tvojemú čelovikoľúbče."),
    sText("2:"),
    jObj4("",none, "", "Na lóbňim ťá mísťi ísprosíša ľúdije bezzakónniji raspjáti Izráise, hlavú páhubnuju zmíevu sokrušájuščaho."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Ústáviste zločéstija tečénije Christóvy mučenicy, Božéstvennymi krovmí vášimi, í faraóna mučíteľa v sích potopíste."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Nohoťmí neščádno strúžemi, rasterzáste óbličéňmi stradáľcy serdcá sujemúdrennaja, í pobidítelije býste."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Ósvjatíl jésť Boh útróbu tvojú, svjatája čestaja, í vselísja v ňú: í na krest vozdvížem, tvár sovozdvíhl jésť."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Útreňuet dúch mój k tebí, Bože, zané svít jésí, í tvojá poveľínija býša íscilénija rabóm tvoím, čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Bohoľípnuju tvojú hospožé, í krásnuju, í sladčájšuju í bláhúju dobrótu vozľubív Vladýka, v ťá Ďivo, vselísja."),
    sText("2:"),
    jObj4("",none, "", "Vsesvjatája í svitonósnaja dvére bláhodáti, vselénnuju svitľíjšim tvojím svítom ózarívši ótrokovíce, tebé pojúščyja prosvití."),
    sText("3:"),
    jObj4("",none, "", "Bohoródicu íspovídajuščiji ťá Mati Ďivo, nepreidúščaho cárstvija í píšči tobóju Bohomáti úlučíti da spodóbjatsja."),
    sText("4:"),
    jObj4("",none, "", "Chrám jávílasja jésí vsevídca í vsederžíteľa: tvojú bo útróbu čísťíjšuju nebes óbrít vodvorísja, Bohorodíteľnice vsečestaja."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Jóna íz čréva ádova vopijáše: vozvedí ot tlí živót mój. mý že tebí vopijém: vsesíľne Spase, pomíluj nás."),
    sText("1:"),
    jObj4("",none, "", "Nedúhovavšeje čelovíčeskoje jéstestvó, jávľsja za mílosrdije mílosti, vračú nedúhujuščich, íscilíl jésí krestóm í strástiju tvojéju."),
    sText("2:"),
    jObj4("",none, "", "Drévom drévle Ádám ósudísja: drévom že nýňi kréstnym ópravdásja, vchoždénije prijém v ráj, í sládosti vosprijátije."),
    sText("3:"),
    jObj4("",none, "", "Pojém ťá plótiju raspénšahosja, slávim térnijem vinčávšahosja, í slávoju vinčávšaho čelovíki, cerjú prebláhíj."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Hubíteľnyj nýňi otrínuvše vréd stradáľcy ídolobísija, múkam pričastíšasja: í úmérše so Christóm cárstvujut."),
    sText("5:"),
    jObj4("Mučeničen",none, "", "Ni honénije, ni hlád, ni nahotá, ni bidý, nižé smérť, otňúd Božéstvennyja strástotérpcy, ot ľubvé Christóvy razlučíša."),
    sText("6:"),
    jObj4("Bohoródičen",none, "", "Slavoslóviši íz tebé voplóščšahosja, í pláčeši na kresťí vozdvíženaho, tohó smotrjájušči Ďivo Mati svjatája vseneporóčnaja."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jóna íz čréva ádova vopijáše: vozvedí ot tlí živót mój. mý že tebí vopijém: vsesíľne Spase, pomíluj nás."),
    sText("1:"),
    jObj4("",none, "", "Bohomúžno v čelovícich požívšaho rodilá jésí Bohoródice Ďivo, jédínaho bláhoďíteľa, jéže býti čelovíkom dárujuščaho."),
    sText("2:"),
    jObj4("",none, "", "Jémmanúila Bohoródice, suhúba po suščestvú rodilá jésí, préžde soveršénno Slóvo, Boha voploščénna, ízbavlénije nám podavájuščaho."),
    sText("3:"),
    jObj4("",none, "", "Kovčéh prijémyj zakóna skrižáli, prednapisá tebé Bohoródice, Slóvo Božije, jáko prijémšuju vo črévi svojém nás rádi voploščájema."),
    sText("4:"),
    jObj4("",none, "", "Anheľskija jázýki íspólneny, tvojá pochvalý propovídati ne móhut čestaja: mý že nýňi rábski prijémše, jéže rádujsja, havrijílovo prinósim."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Tjahotú óblehčája bezzakónij mojích, posreďí bezzakónnych vozdvíhlsja jésí na krest, prebláhíj Hospodi, prevoznosímyj ótcév Hospod, í Boh bláhoslovén jésí."),
    sText("2:"),
    jObj4("",none, "", "Kopijém probóďsja v Božéstvennaja rébra tvojá, í rébrennoje popolznénije ísprávil jésí Spase, plámennomu že órúžiju daváti mí vchód rajá poveľiváješi vsehdá."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Zvízdy na vysoťí ósnovánnyja cerkve mučenicy bývše, tvár ózarájete stradánij svítlostiju, í íscilénij sijánijem."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Kníha prinósit prísno napísannych živých Hospodnich mučenik, napísanaja Božija ópravdánija úsérdno sochranívšich, í postradávšich krípko."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Vsesvjatája, presvjatóje Slóvo, jéže ot nejá vozsijávšeje, na svjatím kresťí vozdvíženo, í ósvjaščájuščo zemnýja, zrjášči rydáše."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Péšč otrocy óhnepáľnu drévle rosotočášču pokazáša, jédínaho Boha vospivájušče, í hlahóľušče: prevoznosímyj ótcév Boh í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Jáže v peščí óhnenňij, tvojé roždestvó Spasló jésť úbo drévle: nýňi že nás vseneporóčnaja Spasí, jéhó prišéstviju jéže páče Slóva zovúščich: bláhoslovén jésí Bože ótéc nášich."),
    sText("2:"),
    jObj4("",none, "", "Bohootéc úbo David tvojú slávu napisújet Ďivo, í tebé tvárej cerícu jávlénno proróčestvujet, predstojáščuju ódesnúju vseneporóčnaja, Boha ótéc nášich."),
    sText("3:"),
    jObj4("",none, "", "Óbnovíla jésí čestaja, zemných jéstestvó, óbnovlénijem roždestvá tvojehó. ťímže tí vopijém: bláhoslovén jésť vo víki vsjá, Hospožé, plód tvojehó čréva."),
    sText("4:"),
    jObj4("",none, "", "Ósuždénnaho bývša Ádáma, í smértiju deržíma, Ádám vtorýj, prečestaja, tobóju pomílovav prizvá, bláhoslovén jésí zovúšča, roždéjsja, í óbnovléj mjá."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Jedínaho beznačáľnaho cerjá slávy, jéhóže bláhoslovját nebésnyja síly, í trepéščut číni Anheľstiji, pójte svjaščénnicy, ľúdije prevoznosíte jéhó vo víki."),
    sText("1:"),
    jObj4("",none, "", "Mértva mjá pokazá drévo rázuma, tý že Christé mój, úmertvívsja na drévi óživíl jésí, í prosvitíl jésí píti: pójte svjaščénnicy, ľúdije prevoznosíte vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Térnijem vinčá zakonoprestúpnyj sónm ťá, cerjú, preslušánija ískorenevájušča térnije Ádáma pervozdánnaho, í vozdvíže na krest, vsjá íz hlubiný prélesti ízvlékšaho."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Rázumom prostéršaho nebesá, tebé prostirájut na drévi ľúdije nerazúmniji, ísciľájušča náša strásti strástiju tvojéju, Spase, í ústavľájušča boľízni, jáže ot hvozdéj boľízňmi."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Mučenik móšči bláhouchánija íspuščájut čudés prichoďáščym nesumňínnym sérdcem, í strastéj zlovónije prohoňájut prísno, í vsím zdrávije ó Bózi podavájut."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svjatých čínove móľatsja Ďivo, íz útróby tvojejá prošédšemu Vladícii, pokazávšemu na kresťí sím púť stradánija, čestaja, í slavoslóvjat ťá jáko vsích cerícu."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jedínaho beznačáľnaho cerjá slávy, jéhóže bláhoslovját nebésnyja síly, í trepéščut číni Anheľstiji, pójte svjaščénnicy, ľúdije prevoznosíte jéhó vo víki."),
    sText("1:"),
    jObj4("",none, "", "Nepostižímyj Vladýka vsích, jéhóže ne vmiščájut nebesá, Bohorodíteľnice, vmiščájetsja vo tvojú útróbu Ďivo. ťímže ťá vírniji ľubóviju prevoznósim vo víki."),
    sText("2:"),
    jObj4("",none, "", "Úmá prevýššaho vsejá tvári, ótrokovíce, jéhóže ne vozmohájet roždénnoje zríti jéstestvó, nosíla jésí na svoéju prečestoju rukú. ťímže vírniji ľubóviju prevoznósim vo vsjá víki."),
    sText("3:"),
    jObj4("",none, "", "Boha, jéhóže rodilá jésí, úmolí Ďivo, nizposláti Spasénije vírno čtúščym ťá, í bíd razrušénije, í nedúhov ľútych preminénije skóroje, í bláhodáť víčnuju."),
    sText("4:"),
    jObj4("",none, "", "Úkrašén ťá dobroďíteľmi razlíčnymi, í prosviščén chrám výšňaho, úvíďivše vsesvjatája Ďivo, pojém bláhočéstno ťá, í slavoslóvim vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Vsepítaja nebes prevýššaja, beznačáľnoje Slóvo bezsímenno začénšaja, í voploščénnaho Boha róždšaja čelovíkom: ťím ťá vsí veličájem."),
    sText("1:"),
    jObj4("",none, "", "Na kresťí ťa vozvýšena, cerjú vikóv, jáko víďi sólnce ómračísja, í zemľá potrjasésja, í cerkve razdrásja zavísa svítlosti, Izráise vsesíľne."),
    sText("2:"),
    jObj4("",none, "", "Ískopáša rúci í nózi tvoí bezzakónnicy, í rébra živonósnaja probodóša kopijém, í žélči so óctom napojíša ťá Christé mój, vsích sládosť, í Boha ístinna."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Sokrušíša načalozlóbnaho síti, sokrušájemi vsjákimi vídy mučénija, í vincenóscy pobídoju bývše, dóbliji stradáľcy úblážájutsja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ósvjatíša položénijem moščéj vsjú zémľu strástotérpcy, í úhasíša skváry ídoložértvennyja, óhňú primišájuščesja, í v ném tájno vsesožihájemi."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Bláhoľubívaja, cheruvím svjatíjšaja, jáže Božije Slóvo Boha plótiju róždšaja, vozdvížennaho na kresťí choťínijem, za vsích priľížno tomú molísja."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Vsepítaja nebes prevýššaja, beznačáľnoje Slóvo bezsímenno začénšaja, í voploščénnaho Boha róždšaja čelovíkom: ťím ťá vsí veličájem."),
    sText("1:"),
    jObj4("",none, "", "Vsesoveršéno čelovíčestvo prijáto býsť íz tebé, prečestaja ótrokovíce, Slóvu sovokúpľšusja plóti óduševlénňij, Slóvom duší úkrášenňij: ťímže vsí vírniji ťá veličájem."),
    sText("2:"),
    jObj4("",none, "", "Vitíjskoje úbo bujeslóvije da úmolčít, Apostoľskaja že trubá da vozhlasít, tebé ístinnymi hlásy Ďivo voschvaľájušči, Bohoródicu ístinnuju vozviščájušči."),
    sText("3:"),
    jObj4("",none, "", "Pomílovasja tebé rádi čelovíčestvo, po ńpostási vojístinnu Slóvu sojedínšejesja, í vozdajánijem Boh, Ďivo, bývšeje: ťímže ťá vsí prísno veličájem."),
    sText("4:"),
    jObj4("",none, "", "Prorazumísja proróčeskimi bystrozríniji táinstvo, ótrokovíce, tvojehó roždestvá, jáko voploščénna Boha róždši čelovíkom, ízbavľájuščaho nás ot napástej molitvami tvojími."),
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
    jObj4("",none, "", "Pámjať svjatých tvojích strástotérpec prázdnujušče, tebé pojém, Christé, vopijúšče: Hospodi,"),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("KrestoBohoródičen",none, "", "Svojehó Sýna na drévi víďašči drévle, sérdce tvojé órúžijem pečáli újazvľáše prečestaja."),
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
    jObj4("",none, "", "Ísciľája Ádámovu boľízň, júže podját vrážijim sovítom, voznéssja na drévo vsích cerjú, í boľízni preterpíl jésí, rukáma í noháma prihvoždén: ťímže slávim tvojé, Slóve, dolhoterpínije."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Posreďí ťa bezzakónnoju sónm jévréjskij raspját, jédínaho zakonodávca í ízbáviteľa, vsjákaho bezzakónija ízbavľájušča Christé, ród čelovíčeskij: ťímže vospivájem ťá."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("Mučeničen",none, "", "Jázvy mnóhich múk, jáko krásnaja údobrénija nosjášče dóblestvenňi stradáľcy, úkrašénije cerkóvnoje poznáni býša svítloje, vsehdá moľáščesja ó dušách nášich."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "O Trójce svjatája! vírnyja rabý tvojá ízbávi múk, v ťá vírovavšyja, vo jédínom Božeství, neprestánno slávimuju bláhočéstno, í víčnoje tvojé cárstvije dáruj."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ne ímúšča vída, nižé dobróty, zrjášči tebé Christé, plótiju vozvýšena na drévi krestňim vsečestaja Ďiva, vzyváše boľíznenňi: úvý mňí, káko ťá čádo, bezzakónniji újazvíša;"),
  ))
])
