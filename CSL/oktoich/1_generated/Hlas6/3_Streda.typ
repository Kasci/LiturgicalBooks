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
    jObj4("",none, "Tridnévno: voskrésl jesí", "Raspénšusja tí dolhoterpilíve Hospodi, pokolebál jésí zémľu vsjú, vírnych že útverdív serdcá. ťímže ťá vospivájem, í ľubóviju poklaňáemsja nepostižímij síľi tvojéj."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "V lanítu zaušén býl jésí Spase, í ópleván, jádovítaho zaušíl jésí vrahá zlóbu, otjémľa padénije, ježe podját Ádám, úkráden býv viďínija rádi."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Sólnce pomračísja, í zemľá vsjá trjasášesja, í kámenije raspadésja, jako víďiša ťá, Spase, na drévi povíšena neprávedno, í óstavľájušča choťínija."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Krestobohoródičen",none, "", "Ľúdi bezzakónňijšyja, bez právdy prihvoždájuščja ťá na drévi, Ďiva, í čestaja Mati tvojá zrjášči, jakože symeón prorečé, útróboju Spase, újazvľášesja."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Krest tvój Hospodi, žízň í zastuplénije ľúdem tvoím jesť, í náň naďíjuščesja, tebé raspénšahosja plótiju, Boha nášeho pojém, pomíluj nás."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Krest tvój Hospodi, ráj otvérzu ródu čelovíčeskomu, í ot ístľínija ízbávľšesja, tebé raspénšahosja plótiju Boha nášeho pojém, pomíluj nás."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Stradávšiji tebé rádi Christé, mnóhija múki preterpíša, í soveršénnyja vincý prijáša na nebesích, da móľatsja ó dušách nášich."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Krestobohoródičen",none, "", "Na drévi živót náš zrjášči vseneporóčnaja Bohoródice vísjašč, Matrski rydájušči vopijáše: Sýne mój, í Bože mój, Spasí ľubóviju pojúščyja ťá."),
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
    jObj4("Írmós",none, "", "Jako po súchu pišešéstvovav Izráiľ, po bézdňi stopámi, honíteľa faraóna víďa potopľájema, Bohu pobídnuju písň pojím, vopijáše."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Vsjáko mojehó rydáju žitijá skvérnaho, í mnóžestva bezmírnych mí zól: čtó že íspovím tí čestaja; nedoumíju í úžasájusja: no pomozí mi Vladíčice."),

    sText("2:"),
    jObj4("",none, "", "Otkúdu načnú hlahólati lukávaja í ľútaja mojá padénija, strástnyj áz; úvý mňí, čtó búdu próčeje; no Vladíčice, préžde koncá úščédri mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Smértnyj ubo čás, í sudíšče strášnoje vsehdá pomyšľáju prečestaja, óbýčajem že vsezlým preľščájusja ľúťi: no pomozí mi."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Bláhích tlíteľ smotrjája mjá nýňi náha Božéstvennych dobroďítelej, í daléče otstúpľša í otčuždéna ot Boha, pohlotíti mjá ústremľájetsja: Vladíčice, predvarí."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Nísť svjat, jakože tý Hospodi Bože mój, voznesýj róh vírnych tvojích bláže, í útverdívyj nás na kámeni íspovídanija tvojehó."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Dúšu ókaľách skvérno ot bezmírnych zól mojích strástnyj áz, Bohoródice Vladíčice: í kámo próčeje pojdú, otčájanijem vés óderžím;"),

    sText("2:"),
    jObj4("",none, "", "I ježe po obrazu sebé ókaľách blúdnaho, úvý mňí čestaja, vysokomúdrennoju vóleju: po podóbiju bo í ďílom, í Slóvom, í pómyslom soďíjach bezmístnaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Nísť in v čelovícich, iže nepodóbnaja soďíjav, ni rodísja v míri, jakože áz, bláhája, pomračén úmóm: nebo kreščénije Božéstvennoje óskverních."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Na konéc dostihóch zlých, presvjatája Ďivo, tý pomozí mi vskóri: nebo í zemľá vopijút hórci, ot bezmístnych ďijánij nepodóbnych."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Christós mojá síla, Boh í Hospoď, čestnája cerkov Bohoľípno pojét vzyvájušči, ot smýsla čísta, ó Hospodi prázdnujušči."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Anheľstiji čínove, í vóinstva nebésnych síl tvojehó Sýna úžasájutsja deržávy, čestaja: nýňi že áz otčájavsja, bezstrášijem óderžím jesm."),

    sText("2:"),
    jObj4("",none, "", "Údivísja vsjá zemľá í úžasésja, zrjášči ľútaja, í zlája tvorjášču mí, í bezmístnaja: í tvojehó Sýna mnóhomu mílosrdiju čudítsja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Cérkov óskverních zľí ťilésnuju, í cerkov Hospodňu, v ňúže čelovícy trepéščušče vchóďat: áz že blúdnyj bez studá vchoždú, úvý mňí!"),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ne jáví Vladíčice, ne jáví stránna mjá ústránšasja króva Sýna tvojehó, vsjáko nedostójnaho: no ómýj mené ot skvérny prehrišénij mojích."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Božijim svítom tvojím bláže, utreňujuščich tí dúšy ľubóviju ózarí, moľúsja, ťá víďiti Slóve Božij, istinnaho Boha, ot mráka hrichóvnaho vzyvájušča."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Božéstvennym sijánijem tvojím bláhája, íscilí dušévnyja mojá strásti, jaže mí tlíteľ vsíja, í ízbávi mjá sehó pľinénija hórkaho: smiétsja bo zrjá mené bez zastuplénija."),

    sText("2:"),
    jObj4("",none, "", "Adám prestupí ubo zápoviď jédínu Sýna tvojehó Ďivo, í vo ízhnánije vpadé: káko že rydáju prehrišénij mojích bézdnu, áz prestúpnyj, í otstúpnik jéhó;"),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Úbíjca ubo javľsja drévle, í bratoubíjca káijn, Bohom prokľát býsť: čtó že sotvorjú áz vsedérzyj, dúšu ubo úbív nýňi, í ne styždúsja;"),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Isáyu porevnovách ľútomu, črevoobjadénijem, í sýtostiju vés. dúšu óskverních pijánstvom, í laskosérdstvom žitijé mojé, í któ mené ne pláčet strástnaho; úvý mňí!"),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Žitéjskoje móre vozdvizájemoje zrjá napástej búreju, k tíchomu pristánišču tvojemú priték vopijú ti: vozvedí ot tlí živót mój, mnohomílostive."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Žitijé mojé blúdno, dušá mojá skvernáva, í živót vés ókajánen, ťílo že mojé vsé vo zlých ľúťi ókaľách. ťímže potščísja Ďivo, pomoščí mi."),

    sText("2:"),
    jObj4("",none, "", "Konéc predstá, í ne terpľú bláhája, sóvisť óbličájet mjá: predstoját vo mí ďijánija lukávaja, í žitijá blúdnoje: í sudíšča úžasájusja Sýna tvojehó, čestaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Plóti mojejá razžžénije, riká ohnennaja strášna í neuhasíma ždét vojístinnu, í čérv neusypájaj: no úhasí mi sijá molitvami tvojími, prečestaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Nýňi trépetom óderžím jesm bláhája, í úžasájusja lukávaho lovlénija. préžde bo koncá chóščet mjá tlíteľ úbíti, deržjá mja jako pľinéna vsehó, í náha dobroďítelej."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Úpovánije í sťiná, í pristánišče ľúdem tvoím Ďivo, íz nejáže rodísja bezstrástno Spas vsjáčeskich, í Spasé úpovájuščyja na ťá, jakože pláčasja tvojehó Sýna pri kresťí, tohó í nýňi molí ízbáviti ot tlí vsjá pojúščyja ťá."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Rosodáteľnu úbo péšč soďíla Anhel prepodóbnym ótrokóm, chaldéi že ópaľájuščeje veľínije Božije, mučíteľa úviščá vopíti: bláhoslovén jésí Bože ótéc nášich."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Sédm sedmíceju plámeň razžžé mi strasťmí lukávyj, í ľuboďijáňmi sérdce mojé vsehdá úmerščvľájet: ťímže tókami mojích sléz úhasí jéhó, Mati Božija, í Spasí mja."),

    sText("2:"),
    jObj4("",none, "", "Ókaľájema tínoju prehrišénij mojích, ne otríni mené, Vladíčice bláhája: ibo zrjá mja vo otčájaniji súšča, smiétsja prelukávyj vráh: no samá tvojéju deržávnoju rukóju vozstávi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Strášnoje ubo sudíšče, strástnaja dušé mojá í nečúvstvennaja, í mučénije že nekončájemoje í hróznoje: no óbáče nýňi pripadí k Matri sudijí tvojehó í Boha, ne otčájsja samá"),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ómračíchsja strástnyj mnóžestvom bezmírnych zól, í óskverních dúšu í ťílo že í um: ťímže prečestaja, svítom tvojích sijánij, k bezstrástiju sládosti skóro vvedí mja."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Iz plámene prepodóbnym rósu ístočíl jésí, í právednaho žértvu vodóju popalíl jésí: vsjá bo tvoríši Christé, tókmo ježe choťíti. ťá prevoznósim vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Jaže ot Trójcy jédínaho Boha róždšaja, í na rukú nosívšaja, Ďivo Mati, úhasí strastéj óhnepáľnuju péšč, í sléznymi tóki ómýj dúšu mojú."),

    sText("2:"),
    jObj4("",none, "", "Prichóda smértnaho úžasájusja prečestaja, í sudá onaho vés nýňi úbojáchsja, ďíja že zlája, nikákože styždúsja: úščédri mjá préžde koncá molitvami tvojími, Ďivo."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Stenánija nemólčnaja Vladíčice, dáruj mí, í sléz túčy dážď, da otmýju mojá prehrišénija mnóhaja, í neiscíľnyja jazvy: jako da úlučú žízň víčnuju."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Zól mojích mnóžestvo tebí íspovídach, Vladíčice, jako niedín v míri in prohňíva táko Boha, Sýna í Hospoda tvojehó: sehó mi na mílosť vskóri preminí Ďivo."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Boha čelovíkom ne vozmóžno víďiti, na nehóže ne smíjut číni Anheľstiji vziráti: tobóju že vsečestaja, jávísja čelovíkom Slóvo voploščénno, jéhóže veličájušče, s nebésnymi vói ťá úblážájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Sé prichoždú tí, prečestaja, so stráchom mnóhim í ľubóviju, kríposť vídyj mnóhija molitvy tvojejá ráb tvój: mnóho bo móžet vojístinnu Vladíčice, moľbá Matrňa k Sýnu: mílosrdijem bo prekloňáetsja."),

    sText("2:"),
    jObj4("",none, "", "Líki prijimí Archánhel že, í mnóžestvo výšnich vóinstv ziždíteľa mojehó: Apostol že í prorók sobóry, í múčeniki, í prepodóbnyja, í svjaščennomúčeniki: í molitvu sotvorí čístaja, za nás k Bohu."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "I nýňi í tohdá tvojú pómošč da óbrjášču čestaja, v čás, vóňže ízýdet dúch mój, vskóri ízimájušči, ízbávi mjá bisóvskaho mučíteľstva, preneporóčnaja, í ne óstávi mené bláhája, prédanu býti im."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Sudijí ščédraho čáju, í čelovikoľubívaho tvojehó Sýna, čestaja ne prézri mené: no tohó mi sotvorí bláhopremínna, postáviti mené ódesnúju tohdá vseneporóčnaja, prečestomu sudíšču jéhó, na ťá bo úpovách."),
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
    jObj4("",none, "", "Krest tvój Hospodi, ósvjatísja: ťím bo byvájut íscilénija boľáščym vo hrisích. sehó rádi tebí pripádajem, pomíluj nás."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Tókmo vodruzísja drévo, Christé, krestá tvojehó, ósnovánija pokolebášasja smérti Hospodi: jéhóže bo požré ľubóviju ád, otpustí trepéščja, pokazál jésí nám Spasénije tvojé svjatýj: í slavoslóvim ťá, Sýne Božij, pomíluj nás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Krestobohoródičen",none, "", "Nadéžde í zastuplénije í pristánišče ľudéj tvojích Ďivo, íz tebé bo rodísja vojístinnu míru Spasénije. jákože plákasja ú krestá tvojehó Sýna í Boha, í Spasáješi úpovájuščich na ťá: tohó nýňi úmolí, ízbáviti ot tlí vsích vospivájuščich ťá."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Dnés proróčeskoje íspólnisja Slóvo: sé bo poklaňáemsja na mísťi, íďíže stojásťi nózi tvoí Hospodi, í drévo Spasénija vkusívše, íže ot hrichá strastéj svoboždénije úlučíchom, molitvami Bohoródicy, jédíne čelovikoľúbče."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Hospodi, ósudíša ťá íudéi na smérť, žízň vsích: íže čermnóje móre žezlóm prošédšiji, ko krestú ťa prihvozdíša: í ot kámene méd ssávšiji, žélč tebí prinesóša. no vóleju preterpíl jésí, da nás svobodíši ot rabóty vrážija: Christé Bože náš, sláva tebí."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("",none, "", "Stradáľčeskaja soprotivlénija na sudíšči, mučíteľskija rány na mučenicich, í stojáchu lícy bezplótnych, póčesti deržášče pobídy, údivíša mučíteli í carí, premúdriji, nizložíša prestúpnika íspovídanijem Christóvym: úkripívyj ích Hospodi, sláva tebí."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Krestobohoródičen",none, "", "Predstojášči ú krestá neiskusobráčnaja Mati, íže íz tebé róždšemusja bez símene, vopijáše: órúžije sérdce mojé prójde, o Sýne, ne terpjášči vísima na drévi ťá zríti, jéhóže trepéščut vsjáčeskaja, jáko sozdáteľa í Boha: dolhoterpilíve Hospodi, sláva tebí."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Vsjú otložívše:", "Na kresťí ťa vóleju nás rádi prihvoždéna Christé, tvár víďivši, kolebášesja stráchom, sólnce vés pomračí svít, kámenije raspadésja, í cerkvi Božéstvennaja zavísa razdrásja, na óbličénije ľútych í bezzakónnych jévréj."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Drévo prinesé tľínije vo jédémi rodonačáľniku: krestnoje že drévo žízň procvité na lóbňim mísťi: íbo poprána býsť zlóba vrážija: pomílovan že býsť prihvoždénijem Christóvym, í óbríte ráj, vopijá Ádám: o drévo bláhoslovénnoje!"),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Krestobohoródičen",none, "", "Tebé róždšaja Christé, prisnoďiva ótrokovíca, na kresťí zrjášči ťá nás rádi vozneséna, újazvľáše svojé pečáli órúžijem sérdce í dúšu, í plákaše rydájušči Matrski: tojá molitvami pomíluj nás."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Jako po súchu pišešéstvovav Izráiľ, po bézdňi stopámi, honíteľa faraóna víďa potopľájema, Bohu pobídnuju písň pojím, vopijáše."),
    sText("1:"),
    jObj4("",none, "", "Tý dláni prostér na kresťí, óbjál jésí Vladýko, otrinovénnyja čelovíki, í k tvojemú privél jésí Ótcú: jáko Sýn vozľúblen í jédinosúščen."),
    sText("2:"),
    jObj4("",none, "", "Jákože áhnec vozdvížen býl jésí na krest Slóve, tvojehó óvčáte íščjá zablúždšaho: í óbrít sočetál jésí tó k nezablúždšym, Izráise: sláva deržávi tvojéj."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Žízni výšnija želájušče, bláhoslávniji strástotérpcy mučenicy, úmertvíšasja na zemlí, preterpívše mučénija mnóhaja í razlíčnyja napásti, dostoblážénniji."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Na sudíščach neprávednych za Christá vsích právednaho predstávše stradáľcy, súd vsják neprávednyj vás ópravdájušč, ó Bózi preterpíli jésté."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Da bezstrástije vsím, íže íz Ádáma, íschodátajstvuješi Vladýko, strásť terpíši na kresťí: í zrjášči ťá zemľá trjasášesja, rydájušči Matrski vopijáše, Vladíčice."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Jako po súchu pišešéstvovav Izráiľ, po bézdňi stopámi, honíteľa faraóna víďa potopľájema, Bohu pobídnuju písň pojím, vopijáše."),
    sText("1:"),
    jObj4("",none, "", "Tebé vsesvjatája Ďivo nebo prostrýj Hospoď, í zémľu ósnovávyj, íz tebé prošéd s plótiju, nebo zemnóje nám pokazál jésť."),
    sText("2:"),
    jObj4("",none, "", "Jáže Boha začénšaja, nás rádi bývšaho čelovíka, tohó molí čestaja, v déň súdnyj nás úščédriti mnóho sohrišívšyja jémú."),
    sText("3:"),
    jObj4("",none, "", "Svitľíjšimi lučámi vozsijávšeje sólnce ot svjatáho tvojehó čréva, vsjú zémľu ózarájet Vladíčice, ťímže prosvíščšesja, ťá Božiju Matr čtím."),
    sText("4:"),
    jObj4("",none, "", "Ómračénija duší mojejá bezmístnych pomyšlénij mhlú razruší, navedéňmi Bohoródice Vladíčice, svítom svjatých zápovidej voplóščšahosja íz tebé."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Nísť svjat, jakože tý Hospodi Bože mój, voznesýj róh vírnych tvojích bláže, í útverdívyj nás na kámeni íspovídanija tvojehó."),
    sText("1:"),
    jObj4("",none, "", "Krest vodružášesja na zemlí, í nizpadáše lésť, í tvár kolebášesja, í serdcá koléblemaja vrážijimi napásťmi, útverždénije víroju prijimáchu."),
    sText("2:"),
    jObj4("",none, "", "Bisívšesja neprávedniji ľúdije, tebé právednaho jédínaho ósudíša na smérť, ópravdájušča zemnýja, í ot neprávednyja rukí ľstívaho sích ízimájušča."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Podvizáše vsjú svojú zlóbu ľstívyj, so svjatými borjásja: no pobiždášesja, zrjá nepokóršichsja ťích, í Božéstvennyja svítlosti óbščnikov."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Tilésnaja krasotá zíľnymi ízmiňášesja ránami, no óblistaváše páče svítlosť dušévnaja strastotérpec Christóvych, ďíjstvom svjatáho Dúcha."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Krásna dobrótoju ťá Sýne, páče vsích čelovík, vnehdá raždáti mí razumích: í káko raspinájem nýňi, dobróty ne ímaši Christé, Ďivo hlahólaše slezjášči."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Nísť svjat, jakože tý Hospodi Bože mój, voznesýj róh vírnych tvojích bláže, í útverdívyj nás na kámeni íspovídanija tvojehó."),
    sText("1:"),
    jObj4("",none, "", "Rukóju deržášči Christá soderžáščaho vsjá, ot rukí lukávaho dijávola, í vsjákaho vreždénija ízbávi nás Bohorodíteľnice čestaja, pojúščich ťá."),
    sText("2:"),
    jObj4("",none, "", "Bisóvskaho smuščénija ízbávi nás Ďivo, í čelovík neprávednych, í vsjákich ískušénij, í nedúh tletvórnych tvojími molitvami, Vladíčice vseneporóčnaja."),
    sText("3:"),
    jObj4("",none, "", "Sé tebé vsí ródove blážát ótrokovíce, bezľítnoje Slóvo v plóti pod ľíty róždši prejestéstvenno, í dvojú páki prebývši."),
    sText("4:"),
    jObj4("",none, "", "Jáže čelovikoľúbca Boha róždšaja Ďivo, nepotrébnaho mjá tvojehó rabá, v čás strášnaho prišéstvija jéhó, ízbávi vsjákaho ósuždénija."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Christós mojá síla, Boh í Hospoď, čestnája cerkov Bohoľípno pojét vzyvájušči, ot smýsla čísta, ó Hospodi prázdnujušči."),
    sText("1:"),
    jObj4("",none, "", "Raspjáta na drévi ťá sólnce nezachodímoje Christé, zrjá sólnce pomračášesja stráchom, í témnyja prélesti otpuščéna byváše vsjá tvár, vospivájuščaja ťá."),
    sText("2:"),
    jObj4("",none, "", "Vjazáchu rúci tvoí, Spase, ľúdije zakonoprestúpniji, í svjázanniji nerišímych úz vsí otpuščájemi byváchu: í svjázan byváše vráh, í lésť razrušášesja."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Tečénijem krovéj potopíste múčenicy faraóna honíteľa, úmovrédno bezmírno chváľaščasja: í k zemlí bláhój veseľáščesja preidóste."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Krilámi Dúcha preleťívše síti vrážija stradáľcy, rádujuščesja vostekóste, íďíže pérvaja bláhosť, í žízň, í svít nevečérnij."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Órúžijem újazvílasja jésí strastéj Vladíčice. íz tebé voplotívšahosja, jéhdá tohó víďila jésí raspinájema, í kopijém v prečestaja rébra nás rádi probodájema."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Christós mojá síla, Boh í Hospoď, čestnája cerkov Bohoľípno pojét vzyvájušči, ot smýsla čísta, ó Hospodi prázdnujušči."),
    sText("1:"),
    jObj4("",none, "", "Chrám Božij vospojím svjatúju Ďivu, svítlo vsí blážášče, óbožívšesja jéjá rádi, í ľútych ízbávľšesja."),
    sText("2:"),
    jObj4("",none, "", "Jáko dvér vedúščuju k Božéstvennomu vchódu, jáko ráj Božéstvennyj, jáko mýslenno místo svjaščénija, jáko dobrótu Jákovľu, Ďivu úblážájem."),
    sText("3:"),
    jObj4("",none, "", "Pristánišče bláhoutíšnoje ťá pokazá Christós, Vladíčice vseneporóčnaja, víroju í ľubóviju ot mýsli čísty prizyvájuščym tebé Bohoródicu ístinnuju."),
    sText("4:"),
    jObj4("",none, "", "Maríe prečestaja, čisťíjšeje bylá jésí prijátelišče prostránnoje Božéstvennaho vselénija, dušévnuju mojú skvérnu í kál potrebí."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Božijim svítom tvojím bláže, utreňujuščich tí dúšy ľubóviju ózarí, moľúsja, ťá víďiti Slóve Božij, istinnaho Boha, ot mráka hrichóvnaho vzyvájušča."),
    sText("1:"),
    jObj4("",none, "", "Óblačájaj nebo óblaki Christé, na kresťí náh prihvozdílsja jésí vóleju, nahotú zlóby mojejá prijoďivájaj, í v rízy netľínija óblék prosviščája Vladýko."),
    sText("2:"),
    jObj4("",none, "", "Na kresťí ráspjat býsť ístinnyj vijnohrád Christós, jáko vojístinnu sýj sládosť dušám nášym, mstó ískápaja, prélesti vsjákoje pijánstvo boríteľa potrebľája."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Íspeščrénniji svjaščénnymi jázvami Christóvy stradáľcy, í vincý úkrašájemiji, plótiju postradávšemu Bohu predstojášče, nášich prehrišénij razrišénije prósjat."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Vzirájušče strastotérpcy k támošňij slávi, í žízni, í ístinnomu veséliju, vsjáko trevolnénije ľútych podjáste, strástiju vladýčneju úkripľájemi."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Vo črévo vmistívšaja ťá Christé, jédínaho nevmistímaho vsími, boľíznej kromí porodích: nýňi že boľíznuju, raspinájemu tí Christé, prečestaja Ďiva pláčušči hlahólaše."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Božijim svítom tvojím bláže, utreňujuščich tí dúšy ľubóviju ózarí, moľúsja, ťá víďiti Slóve Božij, istinnaho Boha, ot mráka hrichóvnaho vzyvájušča."),
    sText("1:"),
    jObj4("",none, "", "Íže Slóvom vsjá sozdávyj, í múdrym prómyslom Hospoď ókormľája jédín, jákože chóščet, bláhoutróbijem sozdavájetsja íz tebé prečestaja, í plóť neskazánno byvájet."),
    sText("2:"),
    jObj4("",none, "", "Sé Ďivo, proróčeski začát vo útróbi nad vsími Boha Vladýku í Hospoda, í neizrečénno tohó čestaja rodilá jésí, í po roždeství Ďivo netľínna prebývši."),
    sText("3:"),
    jObj4("",none, "", "Maríe, Vladíčice vsích, ízbávi mjá jáko mílostiva, strášnaho pľinénija, moľúsja: í hrichá mojehó rukopisánije razderí, kopijém voplóščšahosja íz tebé."),
    sText("4:"),
    jObj4("",none, "", "Hrichá mojehó plenícu, tvojím chodátajstvom í predstáteľstvom Ďivo, rastórhni: otčájannym bo tý jésí nadéžda, víroju pritekájuščym k Božéstvennomu pokróvu tvojemú."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Žitéjskoje móre vozdvizájemoje zrjá napástej búreju, k tíchomu pristánišču tvojemú priték vopijú ti: vozvedí ot tlí živót mój, mnohomílostive."),
    sText("1:"),
    jObj4("",none, "", "Vinčálsja jésí dolhoterpilíve, térnijem, posikája strastéj térnije: kopijém v rébra probodén býv, úmertvíl jésí zmíja mnohokóznennaho, nás mértvy soďílavšaho."),
    sText("2:"),
    jObj4("",none, "", "Na krest vozdvížen býl jésí, nizlahája vrážiju sílu Vladýko: rabóty že hórkija mené svoboždája, priját zaušénije: poklaňájusja tvojemú, ščédre, dolhoterpíniju."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Krestóm óhraždájemi stradáľcy, prélesti sťíny lukávyja razverhóša, í k výšnemu hrádu preselíšasja, pobídnymi vincý úkrášeni. ťímže úblážájemi súť."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Na vysotú preslávno mučénija sámi sebé vozvédše svjatíji, lukávaja voznošénija vrážija na zémľu nizverhóste, í vincý svýše prijáste."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Ótčeje sijánije, káko vozdvížesja na krést, prosviščája vsjáčeskaja, í nizlahája ťmý načáľnika; prečestaja Vladíčica Matrski pláčušči viščáše."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Žitéjskoje móre vozdvizájemoje zrjá napástej búreju, k tíchomu pristánišču tvojemú priték vopijú ti: vozvedí ot tlí živót mój, mnohomílostive."),
    sText("1:"),
    jObj4("",none, "", "Ne ópalívši útróbu tvojú, óhň sýj Izráis, íz tebé plótiju prošéd: tohó čestaja, molí, óhňá í vsjákija múki ízbávitisja víroju vospivájuščym ťá."),
    sText("2:"),
    jObj4("",none, "", "Svjatých Anhel ťá bláhoľípije vospiváju vseneporóčnaja, í moľú: neľípotnaja potrebí ot mené bisóvskaja mečtánija, v tišiňí sobľudájušči sérdce mojé."),
    sText("3:"),
    jObj4("",none, "", "Plótnym voobražénijem sojedinívsja, íže ot Ótcá jédinoródnyj, vo útróbi tvojéj jédín ot dvojú, bez símene prójde, í sobľudé nevreždénno čestnóje Ďivstvo tvojé vseneporóčnaja."),
    sText("4:"),
    jObj4("",none, "", "Mnóžestvo óčísti mojích hrichóv, mnóžestvom mílosti tvojejá, í Spasí mja rabá tvojehó bláhája, k tebí pribihájuščaho, í moľáščasja vírno mílosti tvojéj."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Rosodáteľnu úbo péšč soďíla Anhel prepodóbnym ótrokóm, chaldéi že ópaľájuščeje veľínije Božije, mučíteľa úviščá vopíti: bláhoslovén jésí Bože ótéc nášich."),
    sText("1:"),
    jObj4("",none, "", "Jádovítuju zaušíl jésí zmíja zlóbu, zaušén býv, povíšen na drévi jédíne síľne, vsích prosvitíl jésí vopíti: bláhoslovén jésí Bože ótéc nášich."),
    sText("2:"),
    jObj4("",none, "", "Ot dréva vkúš Ádám pérvyj čelovík, óbríte smérť: vtorýj že na ném Christós, úmertvívsja, bezsmértnuju žízň dárujet, úmertvív vrahá mnohokóznennaho."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Terpjášče strásť múčenicy, mučénijem Hospodevi vozvedóstesja, í na kámeni stáste tvérďim víry, vsjáku lukávuju nizlahájušče zlóbu vrážiju Božéstvennym manovénijem."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Prosvitívšesja stradáňmi, stradáľcy óblistájete sólnca svitľíjše, í ťmý vlásti vsjá razrušíste, pojúšče Christóvi: bláhoslovén Boh ótéc nášich."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Íže sýj neizmínen Božestvóm, ízminíl jésí povíšen na kresťí tvár vsjú, Ďiva hlahólaše Sýnu: í zrjášči sijá plákaše, divjáščisja mnóhomu tvojemú dolhoterpíniju."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Rosodáteľnu úbo péšč soďíla Anhel prepodóbnym ótrokóm, chaldéi že ópaľájuščeje veľínije Božije, mučíteľa úviščá vopíti: bláhoslovén jésí Bože ótéc nášich."),
    sText("1:"),
    jObj4("",none, "", "Siďáj v ňídrich rodíteľa neopísannyj, nýňi sidít ópísan prečestaja, v ňídrich tvojích tvojím óbložén zrákom, za jéže Spastí Ádáma nóv Ádám býv."),
    sText("2:"),
    jObj4("",none, "", "Moľášči ne prestáj čelovikoľúbca Boha nášeho, vseneporóčnaja, jáko da prijímem vsekonéčnoje proščénije zlých. í úlučím jáže na nebesích úhotóvannaja bláhája ľúbjaščym jéhó."),
    sText("3:"),
    jObj4("",none, "", "Bláhoslovím ťá, preneporóčnaja, róždšuju bláhoslovénnaho Hospoda, bláhoslovéňmi vinčájuščaho Božéstvennymi jéstestvó čelovíčeskoje, í nóvo tvorjášča tó óbetšávšeje préžde."),
    sText("4:"),
    jObj4("",none, "", "Spasénija tvojehó pristániščem óbohatívšesja čestaja, ot búri Spasájemsja: í nadéždu jáže na ťá jáko kríposť duší soderžášče, zovém: bláhoslovénnaja jáže Boha plótiju róždši."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Iz plámene prepodóbnym rósu ístočíl jésí, í právednaho žértvu vodóju popalíl jésí: vsjá bo tvoríši Christé, tókmo ježe choťíti. ťá prevoznósim vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Prehórdaho zmíja tý smiríl jésí výšnij Bože, smirénijem sérdca voznosím na drévo, í Ádáma strasťmí smirénnaho voznésl jésí, ščédre."),
    sText("2:"),
    jObj4("",none, "", "Drévňuju hóresť pretvorjájaj na drévo voznesén býl jésí, žélč vkušája, vsích sládoste í žízň jédinoypostásnaja sýj Vladýko, í svít í Spasénije."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Ne prekloníste koľín ístukánnym vsechváľniji, no požérti býste jáko áhncy neporóčniji: í lukávaho kríposť prekloníste, pisnoslóvjašče Christá vo víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Chrámy Dúcha živáho jávístesja múčenicy, chrámy ídoľskija nizložíste, í k chrámu nebésnomu vzjáti býste, pisnoslóvjašče Christá vo víki."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Jákov ťá predvíďi Ďivo, ľístvicu, k nebésňij vysoťí nás vozvoďáščuju, vo hlubinú zlých popólzšichsja: ťímže čestuju ťá bláhoslovím vo víki."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Iz plámene prepodóbnym rósu ístočíl jésí, í právednaho žértvu vodóju popalíl jésí: vsjá bo tvoríši Christé, tókmo ježe choťíti. ťá prevoznósim vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Vojístinnu Bohoródicu íspovídujem ťá: so Anhelom, jéže rádujsja, vírno vopijém tí: jédína bo súščym na zemlí rádosť rodilá jésí, óbrádovannaja čestaja, í bláhoslovénnaja."),
    sText("2:"),
    jObj4("",none, "", "Bohoviščánnaja civníca tvojehó práotca, kovčéh ťá presvját predvoobražáše, nosjášču Boha vo plóti vseneporóčnaja: jéhóže prevoznósim Hospoda vo víki."),
    sText("3:"),
    jObj4("",none, "", "Neiskusobráčnaja ótrokovíce Bohorádovannaja, í pristánišče súščym v búri chrijstijánom, í úpovánije, ízbávi ot napástej, í strastéj í ózloblénija, í ot víčnaho óhňá rabý tvojá."),
    sText("4:"),
    jObj4("",none, "", "Jéhdá prijídeši vo slávi sudíti vsjáčeskim, desným mjá óvcám pričtí Vladýko hríšnaho, Matre tvojejá moľbámi: da ťá slávľu vo vsjá víki."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Boha čelovíkom ne vozmóžno víďiti, na nehóže ne smíjut číni Anheľstiji vziráti: tobóju že vsečestaja, jávísja čelovíkom Slóvo voploščénno, jéhóže veličájušče, s nebésnymi vói ťá úblážájem."),
    sText("1:"),
    jObj4("",none, "", "Vremenóm í ľítom sýj Hospoď, posreďí zemlí v polúdne na drévo voznéslsja jésí, raspinájem jédíne dolhoterpilíve, í posreďí rajá preterpívšaho popolznovénije, plód tletvórnyj íspravľája."),
    sText("2:"),
    jObj4("",none, "", "Krest vodružášesja, í mučíteľ v duší smértnuju jázvu prijimáše, í svjázanniji ot tlí otrišájemi byváchu: rázum že vo vsjá čelovíki vsaždášesja, vráh úpražňášesja, í rádosti vsjá íspolňáchusja."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Zemľá sovokupísja, Hospodni múčenicy, s nebesý otnéľiže Christós požrésja, raspinájem: í váše mnóžestvo privlečé, mnóžestvo zíľnych múk preterpívšyja, í mnóžestvu Božéstvennych slúh sooblistávšyja."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Svítom neveščéstvennym óblistájemi, položénijem bózi býste Hospodni mučenicy, v pervoródnych selénijich vodvorájemi, í víčnyja slávy íspolňáemi: ťímže po dólhu vírniji vás počitájem."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Strášno roždestvó preterpích Vladýko, vnehdá stránno tebé rodích dolhoterpilíve, jéhóže tvár raspinájema na drévi vóleju, zrjášči ústrašísja, drévle neporóčnaja plákaše vopijúšči Matrski, júže veličájem."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Boha čelovíkom ne vozmóžno víďiti, na nehóže ne smíjut číni Anheľstiji vziráti: tobóju že vsečestaja, jávísja čelovíkom Slóvo voploščénno, jéhóže veličájušče, s nebésnymi vói ťá úblážájem."),
    sText("1:"),
    jObj4("",none, "", "Sýn Slóvo Božije beznačáľnoje voplóščsja, Sýn Ďivyja byvájet: bláhovolénijem že Ótcá í Dúcha Božéstvennaho ďíjstvom, vés óbnoví ístľívšij mój zrák jáko vsesílen."),
    sText("2:"),
    jObj4("",none, "", "Dušé vozníkni, í bódrstvuj k molitvam, í ko vsím bláhím: priľižánijem ľínosť sónnuju otvérži, bódruju ímúšči chraníteľnicu vsehdá, čestuju Matr Božiju, júže veličájem."),
    sText("3:"),
    jObj4("",none, "", "Úpovánije í pokróv, í rádovanije, tý vírnym jésí Bohoródice vseneporóčnaja. sehó rádi moľúsja tvoím ščedrótam: prosvití dúšu mojú, júže ómračí ťmá mnóhich hrichóv, í lukávych pomyšlénij."),
    sText("4:"),
    jObj4("",none, "", "Svjatája Ďivo Bohorádovannaja, dvéri svíta otvérzi mí, nóšč hrichá da mjá ne pokrýet: ísprávi žízň mojú, k pristánišču bláhoutíšnomu Božéstvennych poveľínij íz tebé vočelovíčivšahosja."),
  ))
  ==== #translation.at("CHVALITE")
  #generateTable((

    // CH Stich na 4
    sText("4:"),
    gText("Chvalíte jéhó v tympáňi í líci, chvalíte jéhó vo strúnach í órháňi."),
    "",
    jObj4("",none, "", "Ó kresťí úpovánije ímíju Christé, í ó ném chvaľásja vopijú: čelovikoľúbče Hospodi, hordýňu nizloží, ne íspovídajuščich tebé Boha í čelovíka."),

    // CH Stich na 3
    sText("3:"),
    gText("Chvalíte jéhó v kymváľich dobrohlásnych, chvalíte jéhó v kymváľich vosklicánija: vsjákoje dychánije da chválit Hospoda."),
    "",
    jObj4("",none, "", "Íže krestóm óhraždájemi, vrahú protivľájemsja, ne bojáščesja kóznej jéhó í lájanija: jáko bo hórdyj úprazdnísja, í poprán býsť síloju na drévi prihvoždénnaho Christá."),

    // CH Stich na 2
    sText("2:"),
    gText("Voskresní Hospodi Bože mój, da voznesétsja ruká tvojá, ne zabúdi úbóhich tvojích do koncá."),
    "",
    jObj4("",none, "", "Pámjať mučenik, rádosť bojáščymsja Hospoda: postradávše bo Christá rádi, vincý ot nehó prijáša: í nýňi so derznovénijem móľatsja ó dušách nášich."),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("Krestobohoródičen",none, "Vsjú otložívše:", "Áhnca svojehó, áhnica neskvérnaja drévle í neporóčnaja Vladíčica, na drévi krestňim jáko úzrí Matrski vosklicáše, í divjáščisja vopijáše: čádo sladčájšeje, čtó zrínije sijé nóvoje í preslávnoje; káko sónm bezbláhodátnyj sudíšču pijlátovu predadé ťa, í ósuždájet na smérť životá vsjáčeskich; no vospiváju tvojé neizrečénnoje Slóve, snizchoždénije."),
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
    jObj4("",none, "", "Pomjaní mja Bože Spase mój, jéhdá prijídeši vo cárstviji tvojém: í Spasí mja, jáko jédín čelovikoľúbec."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Vóleju voznéslsja jésí na drévi, vo hlubinú zól popólzšichsja prizvál jésí jédíne mnohomílostive."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Zemľá potrjasésja, í sólnce úhasé, víďašče ťá na drévi Sólnca právednaho, vóleju stráždušča."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("Mučeničen",none, "", "Strástém Spasovym strástotérpcy prijobščájuščesja, í Božéstvennyja svítlosti sopričaščájetesja, pričástijem óbožájemi."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Voznesí mja íz hlubiný hrichóvnyja Christé mój, íže ot Trójcy jédínyj vóleju preterpívyj raspjátije."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Predstojášči ú krestá Ďivo Mati, í zrjášči Sýna vóleju stráždušča, tohó veličáše."),
  ))
])
