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
    jObj4("",none, "Tridnévno:", "Dolhoterpilíve í čelovikoľúbče Bože mój, mnohomílostive í ščédre, káko preterpíl jésí zakalánije í úmerščvlénije na drévi, za ród čelovíčeskij; slavoslóvim tvojé bláhoutróbije."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Zaušénija preterpíl jésí, í raspjátije dolhoterpilíve, í úničižénija, choťá vsích ízbáviti lestcá, jédíne živodávče, í vsjá terpíši prebláhíj."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Vozšél jésí pástyrju, na krest, í prostérl jésí rúci, vopijá: prijidíte ko mňí, í prosvitítesja čelovícy, iže prélestiju pomračívšijisja: áz bo svít jesm. sláva tebí jédíne svitopodáteľu."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "Tridnévno:", "Zrjášči ťá prečestaja, na drévi prihvoždájema vopijáše: o Sýne mój í Bože, čtó preslávnoje tvojé, í slýšanije stránnoje, ježe preterpiváješi za mnóhuju mílosť;"),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Krest tvój Hospodi, žízň í zastuplénije ľúdem tvoím jesť: í náň naďíjuščesja, tebé raspénšahosja plótiju Boha nášeho pojém: pomíluj nás."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Krest tvój Hospodi, ráj otvérze ródu čelovíčeskomu: í ot ístľínija ízbávľšesja, tebé raspénšahosja plótiju Boha nášeho pojém: pomíluj nás."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Mučenicy tvoí Hospodi, ne otverhóšasja tebé, ni otstupíša ot zápovidej tvojích: ťích molitvami pomíluj nás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "Tridnévno:", "Predstojášči ú dréva ínohdá vo vrémja raspjátija, Ďiva s ďívstvennym učenikóm, í pláčušči vopijáše: úvý mňí, káko stráždeši, vsích Christé sýj bezstrástije;"),
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
    jObj4("Írmós",none, "", "Jako po súchu pišešéstvovav Izráiľ, po bézdňi stopámi, honíteľa faraóna víďa potopľájema, Bohu pobídnuju písň pojím, vopijáše."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Prijimí Ďivo, moľbú mojú íz ust nedostójnych, ot skvérnych ústén derznovénno prinosíti ústremívšahosja: í svít úmilénija, čestaja, ózarí rabú tvojemú."),

    sText("2:"),
    jObj4("",none, "", "Túči sléz mí podážď, tvojími molitvami Ďivo mati čestaja: jako da pláču tépľi, ó ichže soďílach na zemlí, í úbíhnu tobóju múki vsjákija."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Mojehó rydánija ne otríni, jaže ístóčnik mílosrdija róždšaja: no mílostivno bláhája, tvojím mílostivnym okom Bohoródice, duší mojejá strásti íscilí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Stenánijem pláčisja dušé mojá, í sebé otňúd rydáj, poklaňájuščisja matri Božiji, í hlahóľušči: mené povínnaho ízbávi múki strášnyja."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Nísť svjat, jakože tý Hospodi Bože mój, voznesýj róh vírnych tvojích bláže, í útverdívyj nás na kámeni íspovídanija tvojehó."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Nísť in jakože áz prehrišív presvjatája čestaja, porabóščsja zlóbami bezmírnych pomyšlénij: no na ťá naďíjavsja moľú, sích mjá íschití."),

    sText("2:"),
    jObj4("",none, "", "Sé naidóša na mjá jako rány, vsjá vrážija zlóby óťahoťívše, í ziló vozsmerďíša, í dúšu vedút na vsjáko padénije."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Mnóhoje mnóžestvo mojích prehrišénij: sehó rádi presvjatája, víroju pripádaja, vopijú ti smirénnyj: v čás strášnyj úmolíti, jéhóže voplotíla jésí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Svjatája Bohoródice, mené povínnaho vsjákomu ósuždéniju ízmí, derznovénije k Bohu jako ímúšči matrne, í čertóhu sehó účiní mja."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Christós mojá síla, Boh í Hospod, čestnája cerkov Bohoľípno pojét vzyvájušči, ot smýsla čísta, ó Hospodi prázdnujušči."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Istóčnik mí sléz dáruj Vladíčice, jako da otmýju skvérnu smirénnyja duší mojejá, í óbrjášču dobrótu, juže pohubích sovítom zmijínym."),

    sText("2:"),
    jObj4("",none, "", "Bože mój mílosrde, Bože čelovikoľúbče, volíteľu mílosti, nýňi na mjá ízlíj tvojú mílosť: mólit ťá nadéžda í zastúpnica mojá, mati tvojá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Mené blúdnaho, mené úžásnaho, bez úmá í bezstúdno mnóho sohríšša k tebí, preneporóčnaja, úščédrivši Spasí, í hejénny svobodí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Pážiť potrebí smérti, róždši žízň vsjáčeskich. ťímže í áz zovú ti: sohriších, Spasí mja čestaja, matrnimi tvojími moľbámi."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Božijim svítom tvojím bláže, utreňujuščich tí dúšy ľubóviju ózarí, moľúsja, ťá víďiti Slóve Božij, istinnaho Boha, ot mráka hrichóvnaho vzyvájušča."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Pomíluj mjá čestaja, na ťá vsjú nadéždu mojú vozložívšaho: í úščédri, víroju vzyváju tí, prezrívši duší mojejá vsjá strásti ľútyja."),

    sText("2:"),
    jObj4("",none, "", "Spasí mja ot strastéj, skórbi í vréda, lukávych soprotívnych, í ízbávi sích lájanija smirénnuju mojú dúšu, da ne rekút Ďivo: úkripíchomsja náň."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Čistá ťílom í dušéju prečestaja, javľšisja, dúšu mojú ot skvérny svobodí, dajá mi čísto žíti, í nastávi tvoríti mí Hospodňu Božéstvennuju vóľu."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Tjá jédínu imam pribížišče, í k Bohu preminénije, iže vo mnóhich prehrišénijich vsé žitijé mojé íždích. ťímže mjá Bohoródice, tý úščédri."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Žitéjskoje móre vozdvizájemoje zrjá napástej búreju, k tíchomu pristánišču tvojemú priték vopijú ti: vozvedí ot tlí živót mój, mnohomílostive."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Isprávi Vladíčice, máloje mojé stenánije, í rukáma vozďijánije, jakože bláhovónnu žértvu, í tvój spodóbi zrák čestoju sóvistiju úzríti."),

    sText("2:"),
    jObj4("",none, "", "Hlahól mojích Vladíčice bláhája, ne prézri molénije, rodíteľnice mílostivaho Boha, ot tvojejá útróby vozsijávšaho: no dážď mí préžde koncá Božéstvennoje óstavlénije."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Prekloníchsja strasťmí blúdno preokajánnyj, í údalíchsja ot Boha: jéhóže molí Spastí mja bláhája, k tebí bo pribihóch, í ódéždami mjá prédnimi úkrasí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ne ópalí ložésn tvojích ohň sýj Izráis, íz tebé plótiju prichódit: sehó čestaja, molí óhňá í vsjákija múki ízbáviti, víroju vospivájuščich ťá."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Čestaja Ďivo í slávnaja, Anhelov slávo, jéhdá predstála jésí krestú Sýna í Boha tvojehó, ne terpjášči ózloblénija vráh, vzyvála jésí rydájušči stenáňmi, jédína bláhoslovénnaja: káko terpít čelovikoľúbec, sích vsích nanosímaja;"),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Otrocy v vavylóňi péščnaho plámene ne úbojášasja: po posreďí plámene vvérženi, órošájemi pojáchu: bláhoslovén jésí Hospodi Bože ótéc nášich."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Vozníkni, o dušé mojá! ot zlých, jaže soďíjala jésí, čtó spíši próčeje, čtó snóm únýnija nizležíši; Bohoródici vozopíj: presvjatája, pomozí mi."),

    sText("2:"),
    jObj4("",none, "", "Obraz vída tvojehó čtú, í ne smíju vozzríti k tebí presvjatája: moľú prijáti dolhóv proščénije, í čísto víďiti tvojú prečestuju íkónu."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "V tvojé pribiháju Bohorodíteľnice, zastuplénije, í pripádaju prijáti proščénije: ne prézri mené, Vladíčice, no úščédrivši Spasí mja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Mnohoobráznymi zlóbami dušetľínnaho óskverních dúšu í um, moľú ťa prečestaja, ne prézri, í tohó ískušénij íschití rabá tvojehó."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Za zakóny ótéčeskija blážénniji v vavylóňi junošy predbídstvujušče, carjújuščaho ópleváša poveľínije bezúmnoje, í sovokúpleni imže ne svaríšasja óhném, deržávstvujuščemu dostójnuju vospiváchu písň: Hospoda pójte ďilá, í prevoznosíte vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Bezmírno sohrišív, í óskvernív mojé vo hrisích ťílo nerazúmnyj, pomyšľáju neobyménnaho sudá déň, í nedoumívsja, úbojáchsja, í úžasájusja í trepéšču, ko bláhoutróbiju tvojemú Vladíčice, pripádaju: ne otríni mené, no vížď mojú skórb, í ízbávi vsjákaho ósuždénija múk mnohoobráznych."),

    sText("2:"),
    jObj4("",none, "", "Zakón Božéstvennyj prezrív, v ľínosti vés sležú ókajánnyj: prizrívši prečestaja, vozstávi vskóri, í Spasénnych sotvorí mja části polučíti, da rádujasja zovú ti: rádujsja rádoste míru, jédína predstáteľnice, víroju prizyvájuščym tvój tvérdyj pokróv."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Úvý mňí, dušé mojá! káko predstánem tohdá vo strási í trépeťi sudíšču strášnomu, jéhdá Anheli predstánut vo strási í trépeťi; Bohoródicu ímúšči bláhu zastúpnicu, prekloní koľíno, í vozďiží rúci k vysoťí, vopijúšči: prízri í poščadí tvojím mílostivnym tohdá vzórom, Ďivo."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Pokaží kríposť tvojú nepostýdnu zastuplénije nýňi: jako dolžník bo matrnimi moľbámi preklonítsja tvój Sýn Ďivo. predvarí ubo nýňi v núžnyj čás, da ne otidú nehotóv, no poživú í jéščé, prepítaja Bohoródice čestaja."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Ne rydáj mené mati, zrjášči vo hróbi, jéhóže vo črévi bez símene začalá jésí Sýna: vostánu bo í proslávľusja, í voznesú so slávoju neprestánno jako Boh, víroju í ľubóviju ťá veličájuščyja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Da výšnija slávy polučú Ďivo, moľúsja tebí: óslábi mí, í ízbávi dolhóv ťmý, vsjá prezrívši prečestaja, jaže v nevíďiniji, í rázumi, vkúpi dnevnája í noščnája, jako da bláhodárstvennuju písň rádujasja prinesú ti."),

    sText("2:"),
    jObj4("",none, "", "Ot vsjákich mjá skorbéj íschití ótrokovíce, í na kámeni postávi nózi moí Božéstvennaho Spasénija: ťá bo predstáteľnicu neoborímu nýňi sťažáv, úpováju prejtí sťínu í prehrádu, juže preslušánijem dréva sozdách."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Tjá moľú róždšuju mílosrdaho sudijú í Vladýku: prijimí dérzosť skvérnych ústén, í úbóhoje pínije mojé, í ne ómerzí mené páče vsích čelovík hrišňíjšaho: ťá bo po Bózi zastúpnicu ímíju ráb tvój."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Jako výšši súšči sozdánij vsjáčeskich, vo útróbi tvojéj ímíla jésí Bohoródice, Boha voploščénna: sehó priľížno molí čestaja, razrišíti vsjákaho nastojánija rabá tvojehó, da svobódnym hlásom ťá slavoslóvľu í áz."),
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
    jObj4("",none, "", "Dnés proróčeskoje íspólnisja Slóvo: sé bo poklaňáemsja na mísťi, íďíže stojásťi nózi tvoí Hospodi, í drévo Spasénija vkusívše, íže ot hrichá strastéj svoboždénije úlučíchom, molitvami Bohoródicy, jédíne čelovikoľúbče."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Tókmo vodruzísja drévo Christé, krestá tvojehó, ósnovánija podvizášasja smérti Hospodi: jéhóže bo požré ľubóviju ád, otpustí trépetom. pokazál jésí nám Spasénije tvojé svjatýj, í slavoslóvim ťá, Sýne Božij, pomíluj nás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "Úpovánije míra:", "Jédína neporóčnaja áhnica, Bohoródice Ďivo, ot krovéj tvojích čestych voplóščšahosja zrjášči vísjašča vóleju na kresťí, vzyvála jésí ótrokovíce so slezámi hórkimi: Sýne mój nezlóbivyj, pojú tvojé strášnoje vsé smotrénije."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Krest tvój Hospodi, ósvjatísja: ťím bo byvájut íscilénija boľáščym vo hrisích. sehó rádi tebí pripádajem, pomíluj nás."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Hospodi, ósudíša ťá íudée na smérť, žízň vsích, íže čermnóje móre žezlóm prošédšiji, ko krestú ťa prihvozdíša: í ot kámene méd ssávšiji, žélč tebí prinesóša: no vóleju preterpíl jésí, da nás svobodíši ot rabóty vrážija. Hospodi, sláva tebí."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "Úpovánije míra:", "Predstojášči ú krestá Ďiva í mati, bez strásti íz nejá páče úmá voplóščšahosja, vzyváše slezotočášči matrski: ne terpľú ťa mértva vísjašča víďiti, dychánije podajúšča živúščym na zemlí, o Sýne í Bože mój!"),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Úpovánije míra:", "Kreste, démonov honíteľu, vračú nedúhujuščich, kríposte í chraníteľu vírnych, pochvaló pravoslávnych vojístinnu, útverždénije cerkve Christóvy, búdi nám zabrálo í sťiná í chraníteľ, drévo blahoslovénnoje."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Na drévi krestňim mílosrdija rádi í mílosti voznéslsja jésí í v rebró probodén býv kopijém, rasterzál jésí hrichóvnoje ľútoje rukopisánije, jáko vsesíľnyj Boh: ťímže tvojé neizrečénnoje pojím, Slóve, bláhočéstno smotrénije."),
    
    // Sidalen 3, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svít právednym výnu, svjatíji bo tobóju prosvitívšesja, sijájut prísno jáko svitíla, svíščnik nečestívych úhasívše. íchže molitvami Spase náš, tý prosviščáješi svitíľnik mój Hospodi, í Spasí mja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Vsesvjatája Bohoródice, vo vrémja životá mojehó ne óstávi mené, čelovíčeskomu predstáteľstvu ne vvíri mjá, no samá zastupí, í pomíluj mjá."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Volnóju morskóju skrývšaho drévle honíteľa mučíteľa pod zemléju skrýša Spasénnych ótrocy: no mý jáko ótrokovícy, Hospodevi pojím, slávno bo proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Strástiju tvojéju čestnóju počtíl jésí óbezčéstennoje jéstestvó čelovíčeskoje: ťímže čtúšče ťá so stráchom, veličájem deržávu tvojú, í vírno slávim: slávno bo proslávisja."),
    sText("2:"),
    jObj4("",none, "", "Króviju tvojéju Slóve, krovéj neprávednoje prolítije ústávil jésí, í óčístil jésí ot skvérny zlóbnyja jéstestvó čelovíčeskoje, vsesíľne. ťím slávim Spasájemiji deržávu tvojú."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Zvírja krovopíjcu pobidí vojístinnu, dostochváľnoje mučenik soprotivostojánije: óhnennoje pokorí jéstestvó rosóju Božéstvennyja bláhodáti, í zíľnu búrju mnohobóžija ústávi."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Túčami krovéj ódoždénija prélesti ízsušívše, túči íscilénij tóčite mírovi, í plámeň strastéj othoňáete bezbóžija. ťímže mučenicy, blážími jésté."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Dobróty, ni vída ímúšča vnehdá stradáti, krásnaho dobrótoju, neiskusobráčnaja ótrokovíce, smotrjájušči ťá vírnych údobrénije, matrski vosklicáše, í ľubóviju ťá slávľaše."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Volnóju morskóju skrývšaho drévle honíteľa mučíteľa pod zemléju skrýša Spasénnych ótrocy: no mý jáko ótrokovícy, Hospodevi pojím, slávno bo proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Prečestaja Ďivo, bláhodátnaja Maríe slávnaja, rádosti chodátaice, pivcý tvojá Božéstvennymi bláhodáťmi bláhodátstvuj: jáko da bláhodárstvennuju písň tebí vozslém."),
    sText("2:"),
    jObj4("",none, "", "Ole tvojích táinstv, Bohomati! tvorénij bo jávílasja jésí Vladíčica, jéhóže ne derzájut vziráti Anhelov vóinstva, vo óbjátijich nosjášči. ťímže ťá úblážájem."),
    sText("3:"),
    jObj4("",none, "", "Ród čelovíčeskij vés tľínijem smértnym ósudísja, pramáternim vkušénijem dréva: tobóju že vozzvásja, jáko živót róždšeju, čestaja, netľínnyj."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Tebé na vodách povísivšaho vsjú zémľu neoderžímo, tvár víďivši na lóbňim vísima, úžasom mnóhim sodrahášesja, ňísť svjat rázvi tebé Hospodi, vzyvájušči."),
    sText("1:"),
    jObj4("",none, "", "Tebé na vodách povísivšaho vsjú zémľu neoderžímo na drévo vozneséna, í v rébra probodájema, smotrjájuščeje sólnce pomračášesja, vsích prosviščénije razumíjuščeje ťá, Hospodi."),
    sText("2:"),
    jObj4("",none, "", "Újazvľájetsja tvojími hvozďmí dolhoterpilíve, íže v raí drévle újazvívyj ádáma zloďíj, í újazvívsja, neiscíľnyj vo víki prebýsť: vírniji že óbritóchom vsích jázv íscilénije."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Jéhdá lík Anheľskij, zrjáše mučenikov stadá za áhnca požéršahosja sdrobľájema, divľášesja: káko veščéstvenniji neveščéstvennyja vrahí pobiždáchu, pobídy vincý prijémľušče;"),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Síloju óďivájemi svjatíji, v kríposti jédínaho vsjá mohúščaho, so vrahóm spletáchusja, í tohó nekrípkuju popiráchu sílu, vincý ot Boha prijémľušče."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Tý íz tebé róždšahosja, jáko víďila jésí újázvlena kopijém, újazvílasja jésí sérdcem prečestaja vseneporóčnaja, í divjáščisja hlahólala jésí: čtó ti vozdadé, čádo, sobór prebezzakónnyj;"),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Tebé na vodách povísivšaho vsjú zémľu neoderžímo, tvár víďivši na lóbňim vísima, úžasom mnóhim sodrahášesja, ňísť svjat rázvi tebé Hospodi, vzyvájušči."),
    sText("1:"),
    jObj4("",none, "", "Léstiju mjá preľstívyj óbožénija želánijem vráh drévle, íz jédéma Bohomati, na zémľu presmykávyj sokruší: no Christós úščédriv mjá, ot ložésn tvojích plóť vosprijím, vozsozdá."),
    sText("2:"),
    jObj4("",none, "", "Životá jávílasja jésí vratá, proróku drévle íezekíjiľu ótrokovíce, jáže Hospod jédín voploščénnyj prójde, í zakľučénnaja ťá čestaja, sobľudé, jáko jésť výšnij."),
    sText("3:"),
    jObj4("",none, "", "Razrišísja kľátvy drévnija ósuždénije Bohomati, tvojím chodátajstvom: jávívsja bo tí, Hospod, vsé nezavístno ístočí, jáko prebláhíj, vsím bláhoslovénije prečestaja."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Na kresťí tvojé Božéstvennoje ístoščánije províďa ávvakúm, úžássja vopijáše: tý síľnych presíkl jésí deržávu bláže, prijobščájasja súščym vo áďi, jáko vsesílen."),
    sText("1:"),
    jObj4("",none, "", "Prostértije rukí Hospodi, neuderžánnoje, ko drévnemu vkušéniju otjémľaj, mértv na drévi požrén býl jésí, Spastí voschoťívyj: íz rébr ískápaješi svjázannym óstavlénije."),
    sText("2:"),
    jObj4("",none, "", "Stradáti preterpíl jésí prebláhíj, jáko da razrišíši nás ot strastéj bezslovésija: žélč vkusíl jésí Vladýko, ístočájaj mňí Božéstvennuju sládosť, úmertvílsja jésí, živót mňí podavája."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Óhň Božéstvennyja ľubvé v duší slovésňij nosjášče, plámeň prebezzakónnujuščich úhasíša: í prosvitíteľnyja sviščý Christóvy strástotérpcy jávíšasja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Božéstvenniji drúzi vsecerjá, plotskíja sebé otlučívše drúžby, ústremíšasja ko vsjákomu mučéniju krípko, í pobidívše, slávoju vinčášasja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Kromí strásti rodích ťá, í káko vížu ťá nýňi strásti pričaščájuščasja; káko terpíši sijé, vzyváše Ďiva; Sýne beznačáľne, slávľu tvojé dolhoterpínije."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Na kresťí tvojé Božéstvennoje ístoščánije províďa ávvakúm, úžássja vopijáše: tý síľnych presíkl jésí deržávu bláže, prijobščájasja súščym vo áďi, jáko vsesílen."),
    sText("1:"),
    jObj4("",none, "", "Ízbránnaja že í prečestaja ot vsích rodóv jávľšisja jédína, jáže dobroďíteľmi vozsijávšaja neskvérnaja čestnája, íže ťá pisnoslóvjaščyja svítlostiju tvojéju prosvití."),
    sText("2:"),
    jObj4("",none, "", "Boha plótiju Ďivo rodilá jésí, íz čestych tvojích, čestaja, krovéj mati, Spasa ízbavľájuščaho vsjá ot ľútych, pojúščyja ťá, ótrokovíce Bohobláhodátnaja."),
    sText("3:"),
    jObj4("",none, "", "Svjaščennoďíjstvujet Božéstvennomu roždestvú tvojemú Bohoródice čestaja, neveščéstvennych jéstestvó, í čelovíkov sobránije ľubóviju ťá pojét: tvojím sijánijem nás ózarí."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "K tebí útreňuju, mílosrdija rádi sebé ístoščívšemu neprelóžno, í do strastéj bezstrástno preklóňšemusja, Slóve Božij, mír podážď mí pádšemu čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Mértv zríšisja na lóbňim, úmertvív áda strástiju plóti tvojejá: ni vída tý Christé, ni dobróty ímíl jésí povíšen, údobríti mjá choťá jáko čelovikoľúbec."),
    sText("2:"),
    jObj4("",none, "", "Ádáma pérvaho prihvozdíti choťá strástnaja ľublénija, hvozďmí prihvoždáješisja, í kopijém probóďsja, plámennomu órúžiju vozbraňáeši Christé, ne vozbraníti rabóm tvoím vchóda."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Posľídstvujušče strastém Vladíčinim, lícy mučeničestiji na drévi prihvoždájutsja, í rukámi kúpno otjémľutsja, í nohámi k stezí čestnáho mučénija Božéstvenňi íspravľájemi."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Úmóm soveršénnym, úmá hórdaho voznosjáščasja dérzostiju nizložíste soveršénno smirívšesja v podražániji, vsjá voznésšaho smirénijem sérdca Christóvy mučenicy."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Ot kórene Ďivo íesséova prozjabáješi, í jáko cvít proiznósiši nasadíteľa míru, ótrasli bezbóžija ízsušívša Božéstvennym sádom krestá, jéhóže plótiju priját."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "K tebí útreňuju, mílosrdija rádi sebé ístoščívšemu neprelóžno, í do strastéj bezstrástno preklóňšemusja, Slóve Božij, mír podážď mí pádšemu čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Lístvica jávľšisja óbrázno íákovu, k vysoťí prevzjátaja, tvojehó Bohonevístnaja, jáví roždestvá vojístinnu ízrjádnoje: tobóju bo vojístinnu nám Boh spoživé schoždénijem Božéstvennym, í živót podadé čelovíkom."),
    sText("2:"),
    jObj4("",none, "", "Ízbávľšesja tobóju pramáternija pečáli Bohorodíteľnice, úťišénija íspólneni býchom, vesélije vsím róždšaja, í vsemírnuju rádosť: ťímže vsepítaja, tvojá pisnoslóvcy ot bíd tvojími molitvami sobľudí."),
    sText("3:"),
    jObj4("",none, "", "Tájno naučím tvojemú Bohovídňi moyséj óbrazu, predzrjáše kupinú neopalímuju óhném, Ďivo vseneporóčnaja: v ťá bo sozdáteľ vséľsja, ne ópalí ťa výššuju vsích tvorénij, Bohonevístnaja."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Ját býsť, no neuderžán v pérsech kítovych Jóna: tvój bo óbraz nosjá, stradávšaho í pohrebéniju dávšahosja, jáko ot čertóha ot zvírja ízýde: prihlašáše že kustodíji: chraňáščiji súetnaja í lóžnaja, mílosť sijú óstávili jésté."),
    sText("1:"),
    jObj4("",none, "", "Premiňája rúci drévle íákov proobrazováše krest, bláhoslovľája ótroki. ťímže výšnij na tohó voschoďáj, kľátvy drévnija rišíši čelovíčestvo: í ístočáješi nýňi bláhoslovénije, bláhoslovjáščym ťá jédíne bláhoslovénne, í soďíteľu prebláhíj."),
    sText("2:"),
    jObj4("",none, "", "Tvojú strásť proobrazújaj Slóve, velíkij moyséj voznesé drévle mídnaho zmíja na drévo, otjémľaj zrjáščyja ot jádovítaho úhryzénija zmijína: íbo Vladýko, ráspjatu bývšu tí, vreždénija zmijínaho bohomérzskaho vsí vírniji ízbávichomsja."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Jákože ínómu stráždušču Božéstvenniji drévle í čestníji stradáľcy bjáchu stradáľčestvujušče, predzrjášče vozdajánija víčnaja í rádovanije. molitvami ích Christé ščédre, vospivájuščyja ťá ízbávi ot ískušénij, í hrichóv, í óbstojánij."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Potóki ústáviša prélesti, strujámi krovéj, čestníji í Božéstvenniji strástotérpcy, í ístóčnicy vojístinnu jávíšasja, vírnym Bohovíďinija točášče vódu. molitvami ích Spase míra, ódoždí óstavlénije vsím, í živót, í óčiščénije hrichóv, í véliju mílosť."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Pástyrja pérvaho í Vladýku, vozdvížena na drévi zrjášči áhnica, pláčušči máterski vopijáše: čtó sijé, čádo, nóvoje táinstvo; káko bezsmérten po suščestvú sýj smérť prijál jésí, čelovíki choťá íz tlí ízbáviti;"),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Ját býsť, no neuderžán v pérsech kítovych Jóna: tvój bo óbraz nosjá, stradávšaho í pohrebéniju dávšahosja, jáko ot čertóha ot zvírja ízýde: prihlašáše že kustodíji: chraňáščiji súetnaja í lóžnaja, mílosť sijú óstávili jésté."),
    sText("1:"),
    jObj4("",none, "", "Zakónniji ťá óbrazi Bohoródice, í prorečénije jávi prorókov jávľáchu, ímúščuju rodíti míru ízbáviteľa, í bláhoďíteľa vsejá tvári, mnohočástno í mnohoobrázno bláhoďíjstvovavšaho, víroju í ľubóviju Vladíčice čestaja, slavoslóvjaščich ťá."),
    sText("2:"),
    jObj4("",none, "", "Ústranívšyjasja drévle ot prélesti čelovikoubíjcy vrahá, Božija pervozdánnyja píšči rájskija, jédína Bohorodíteľnice, páki vozvelá jésí k rajú róždši Spasa Hospoda, raspjátije í pohrebénije Božéstvennoju vlástiju preterpívšaho."),
    sText("3:"),
    jObj4("",none, "", "Íže vóleju Božéstvennoju, í síloju soďíteľnoju svojéju, vsjá ot ne súščich sostavléj čístaja, prójde ot tvojích ložésn í Boh í čelovík: í íže vo ťmí nevíďinija préžde súščyja, sijáňmi Božéstvennymi Vladíčice čestaja, svítlo ózarí."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Neizrečénnoje čúdo, v peščí ízbávivyj prepodóbnyja ótroki íz plámene, vo hróbi mértv bezdychánen polahájetsja, vo Spasénije nás pojúščich: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("1:"),
    jObj4("",none, "", "Jéhdá ťa na kresťí sobór jévréjskij ósudí, zrjášči zemľá úžasésja: sólnce svít svój sokrý, í súščiji vo ťmí svít víďiša, pojúšče: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("2:"),
    jObj4("",none, "", "Dosaždénije preterpíl jésí Spase, tróstiju bijém, í térnijami jáko cer, vóleju Christé Bože, vinčavájem, na Spasénije nás pojúščich: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svjazújetesja, vsjú dijávoľu prélesť vsechváľniji mučenicy rišájušče jávi: terpité múki í smérť neprávednuju: žízni želájušče hórnija, í vopijúšče: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Stáste posreďí plámene, vsechváľniji mučenicy, prélesť popaľájušče jávi, í órošénijem Božéstvennyja bláhodáti ne ópalívšesja, vopijéte pojúšče: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Raspináješisja choťáj beznačáľne Sýne, Bohoródica vzyváše zrjášči ťá: pečáliju duší nýňi pohružájusja, úmiráješi podajáj žízň pojúščym: ízbáviteľu Bože, bláhoslovén jésí."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Neizrečénnoje čúdo, v peščí ízbávivyj prepodóbnyja ótroki íz plámene, vo hróbi mértv bezdychánen polahájetsja, vo Spasénije nás pojúščich: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("1:"),
    jObj4("",none, "", "Preukrášennu ťá, ímúščuju pozlaščénnoje Bohomati, úkrašénije bláhoľípnoje, voschoťí tvój Sýn že í Hospod, vo Spasénije nás vopijúščich tí: plód tvój čístaja bláhoslovénnyj."),
    sText("2:"),
    jObj4("",none, "", "Šípok posreďí térnij óbrít prečestaja, Vladýka, íspólni nás blahoucháňmi tvojími krásnymi bláhodátej Dúchóvnych, vopijúščyja jémú vo úmiléniji: ízbáviteľu Bože, bláhoslovén jésí."),
    sText("3:"),
    jObj4("",none, "", "Známenija vsí tvoí Božéstvenniji prorócy víďivše tvojehó Božéstvennaho roždestvá, slávno vopijáchu čestaja: Boh prijídet ot Ďivy, jéže Spastí vopijúščyja: ízbáviteľu Bože, bláhoslovén jésí."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Úžasnísja bojájsja nebeo, í da podvížatsja ósnovánija zemlí: sé bo v mertvecích vmiňáetsja v výšnich živýj, í vo hrób mál strannoprijémletsja: jéhóže ótrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Pijéši čášu Christé, júže vozžeľíl jésí strástiju krestnoju, ístóčniki mí prolivájaj óstavlénija ot živonósnych rébr, rádi rebrá úméršemu. pojú ťa vospivájaj: svjaščénnicy bláhoslovíte, ľúdije prevoznosíte vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Jéhdá ťa bezzakónniji ľúdije ósudíša raspjáti Izráise, posreďí bezzakónnych žiznodávče Hospodi, potrjasésja zemľá, í vsí vospiváchu so stráchom: ótrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Čestná pred Bohom jávísja váša smérť stradáľcy: mnóhim bo pričastívšesja strastém, strásti čestnýja Christóvy óbščnicy pokazástesja, vopijúšče jédinomúdrenno: ótrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Vojístinnu ne plotskája váša órúžija múčenicy, ko ópolčéniju vrahóv: nadéžda že, víra í ístina, ímiže úlučívše Boha, Anheľskim likóm sočetástesja vopijúšče Vladícii: svjaščénnicy bláhoslovíte, ľúdije prevoznosíte vo vsjá víki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Výšnij beznačáľne Sýne, terpíši óplevánija, ponošénija í krest, tróstiju ruháteľno bijém, Bohoródica vopijáše: slávľu tvojé dolhoterpínije: jéhóže ótrocy bláhoslovját, svjaščénnicy vospivájut, ľúdije prevoznósjat vo vsjá víki."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Úžasnísja bojájsja nebeo, í da podvížatsja ósnovánija zemlí: sé bo v mertvecích vmiňáetsja v výšnich živýj, í vo hrób mál strannoprijémletsja: jéhóže ótrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Božéstvennomu danijílu nýňi predvíďina bylá jésí nesikómaja horá: íz tebé bo ótrokovíce, kámeň otsičésja Christós: jédín bo Ďivo, kromí rukí čelovíčeskija. jéhóže ótrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("2:"),
    jObj4("",none, "", "Písňmi roždestvó tvojé čístaja, prísno slávjat hórniji vóini, í tebé že ótrokovíce prisnoďivo, rádostno s námi jáko Bohomatr vospivájut, júže ótrocy bláhoslovját, svjaščénnicy vospivájut, ľúdije prevoznósjat vo vsjá víki."),
    sText("3:"),
    jObj4("",none, "", "Svíta tvojehó zarjámi, ťá múdrstvujuščyja nýňi Bohoródicu ístinnuju Maríe, svitozárny soďílaj, Bohorodíteľnice čístaja: svíta bo selénije jávílasja jésí Ďivo, víroju tí vopijúščym: rádujsja bláhoslovénnaja í preproslávlennaja vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Ne rydáj mené mati, zrjášči vo hróbi, jéhóže vo črévi bez símene začalá jésí Sýna: vostánu bo í proslávľusja, í voznesú so slávoju neprestánno jako Boh, víroju í ľubóviju ťá veličájuščyja."),
    sText("1:"),
    jObj4("",none, "", "Da sňídiju ístľívšaho sládostnoju dréva, jédíne Spase, jáko bláh ízbáviši ot tlí, raspjátisja plótiju, í úmertvítisja ízvólil jésí: pojém neprestánno Izráise, mnóhoje bláhoutróbije í sílu tvojú."),
    sText("2:"),
    jObj4("",none, "", "O káko preterpíl jésí boľízni, na kresťí prostirájem, ot boľíznej ľútych ízimája mjá Spase; káko térnijami vinčávyjsja, vsé popalíl jésí strastéj térnije; káko ócta napojívyjsja, vesélija čášu nám rastvoríl jésí;"),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Sťisňáemi vsí, í v temnícy vmetájemi, í na údy stradáľcy razsicájemi ľúťi, í po kolesích žéstoko proťazájemi, í vo sňidénije zvirém vdavájemi, Christá vsích Vladýki ne otverhóstesja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Sólnečnych sijánij mnóžajši sijáet stradálec vsesvítlaja í bláhoznamenítaja pámjať: í dúšy bláhočestívych prosviščájet vsehdá, í othoňáet ťmú strastéj, í ískušénij, í démonskij rastočájet mrák hlubočájšij."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nósiši nosjáščaho vsjá, í deržíši jáko mladénca na rukú, ízbávľšaho nás ot rukí boríteľa vrahá, prečestaja Vladíčice, í zríši vozvýšena na drévi krestňim íz jámy zlóby nás ízbávľšaho."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Ne rydáj mené mati, zrjášči vo hróbi, jéhóže vo črévi bez símene začalá jésí Sýna: vostánu bo í proslávľusja, í voznesú so slávoju neprestánno jako Boh, víroju í ľubóviju ťá veličájuščyja."),
    sText("1:"),
    jObj4("",none, "", "Rádosti nám víčnyja í žízni jávílasja jésí prejestéstvenňi Bohorodíteľnice, chodátaica, čestaja, Spasa vsích róždšaja, ot licá zemnáho vsjáku slézu jávi otjémšaho, í vsím rádosť podávšaho."),
    sText("2:"),
    jObj4("",none, "", "Pojá davíd tvój práotec, kovčéh ťá prorečé znamenáteľňi: í Božéstvennyja mánny zlatúju rúčku, moyséj, Bohoródicu: íbo jédína vmistíla jésí íže v ňídrich Ótčich súšča prísno Bohoródice. ťímže ťá písňmi slávim."),
    sText("3:"),
    jObj4("",none, "", "Jáko vojístinnu prevýšši vsejá tvári jésí: Boha bo vsích rodilá jésí plótiju. ťímže ťá predstáteľnicu ímamy Vladíčice, í nadéždu ízvístnu, í sťínu tvérdu, tobóju Spasénije úlučíti naďíjuščesja."),
  ))
  ==== #translation.at("CHVALITE")
  #generateTable((

    // CH Stich na 4
    sText("4:"),
    gText("Chvalíte jéhó v tympáňi í líci, chvalíte jéhó vo strúnach í órháňi."),
    "",
    jObj4("",none, "", "Ó kresťí úpovánije ímam, í ó ném chvaľásja vopijú: čelovikoľúbče Hospodi, hordýňu nizloží ne íspovídajuščich tebé Boha í čelovíka."),

    // CH Stich na 3
    sText("3:"),
    gText("Chvalíte jéhó v kymváľich dobrohlásnych, chvalíte jéhó v kymváľich vosklicánija: vsjákoje dychánije da chválit Hospoda."),
    "",
    jObj4("",none, "", "Íže krestóm óhraždájemi, vrahú protivľájemsja, ne bojáščesja tohó kovárstva, ni lovíteľstva: jáko bo hórdyj úprazdnísja, í poprán býsť na drévi síloju raspjátaho Christá."),

    // CH Stich na 2
    sText("2:"),
    gText("Voskresní Hospodi Bože mój, da voznesétsja ruká tvojá, ne zabúdi úbóhich tvojích do koncá."),
    "",
    jObj4("Mučeničen",none, "", "Hospodi, v pámjať svjatých tvojích vsjá tvár prázdnujet: nebesá rádujutsja so Anhely, í zemľá veselítsja s čelovíki. ťích molitvami pomíluj nás."),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("KrestoBohoródičen",none, "", "Prihvozdíchsja úbo jáko čelovík na drévi, í úmertvíchsja, í vo hróbi položén bých, jáko smértnyj: no jáko Boh vo slávi, mati čístaja Ďivo, páki vostajú tridnéven."),
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
    jObj4("",none, "", "Pomjaní mja Bože Spase mój, jéhdá prijídeši vo cárstviji tvojém, í Spasí mja, jáko jédín čelovikoľúbec."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Rasprostér dláni na drévi, óbjál jésí jázýki pojúščyja tvojé bláhoutróbije, Christé Bože náš."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Prihvozdílsja jésí na drévi vóleju, í žála hórdaho tvojéju Christé, síloju soveršénno sokrušíl jésí."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("",none, "", "Múkami naslaždájuščesja strástotérpcy, rájskaho naslaždénija spodóbistesja, ó míri neprestánno moľáščesja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Ot vsjákija ízmí nás múki, Ótče, í Sýne í soprestóľnyj duše, rabý tvojá Hospodi."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Zrjášči ťá na kresťí rasprostérta, Ďiva vozdycháše slezjášči: jéjáže molitvami Spasí nás Hospodi."),
  ))
])
