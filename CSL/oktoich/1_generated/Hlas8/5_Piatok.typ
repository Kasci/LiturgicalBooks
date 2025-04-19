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
    jObj4("",none, "O preslávnaho čudesé!", "Ó preslávnaho čudesé! živonósnyj sád, krest presvjatýj, na vysotú voznosím jávľájetsja dnés: slavoslóvjat vsí koncý zemníji, ústrašájutsja démonskija polkí. o kakovýj dár zemným darovásja! imže Christé Spasí dúšy náša, jako jédín bláhoutróben."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Ó preslávnaho čudesé! jako hrózd íspólnen životá, ponesýj výšňaho, ot zemlí vozdvizájem krest víditsja dnés: imže vsí k Bohu privlekóchomsja, í požérta býsť do koncá smérť. o drévo prečestnóje! imže vosprijáchom vo jédémi bezsmértnuju píšču, Christá slávjašče."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Ó mnóhija tvojejá bláhosti, jaže k nám Izráise bláže! káko sebé smiríl jésí, í býl jésí čelovík, í postradáti ízvólil jésí, krest í smérť ponósnuju, za nepotrébnyja rabý preterpív; kotóryj tí dostójnyj dár prinesém Bohopodóbnyj; tóčiju slávim ťá bláhodarjášče vírniji."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Tjá víďašči prihvoždájema na kresťí Izráise, í strásti prijémľušča vóleju, Ďiva í mati tvojá, Vladýko, úvý mňí, vopijáše, čádo sládkoje, rány neprávedno káko terpíši, vračú íscilívyj čelovíčeskoje nemožénije, í ot tlí vsích ízbávivyj mílosrdijem tvojím;"),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Voznéslsja jésí na krest Christé Bože, í Spasl jésí čelovíčeskij ród: slávim stradánija tvojá."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Prihvozdílsja jésí na kresťí Christé Bože, í otvérzl jésí rájskija dvéri: ťímže slávim Božestvó tvojé."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Mučenicy Hospodni, Vsjáko místo ósvjaščájete, í vsják nedúh úvračújete. í nýňi molítesja, ízbávitisja ot sítej vrážijich dušám nášym, mólim vás."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Юnica neskvérnaja júncá víďašči na drévi prihvoždájema vóleju, rydájušči žálostňi, úvý mňí, vopijáše, ľubímijšeje čádo! čtó tebí sónm vozdadé bezbláhodátnyj jévréjskij, choťá mja óbezčádstvovati ot tebé vseľubézne;"),
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
    jObj4("Írmós",none, "", "Pojím Hospodevi, provédšemu ľúdi svojá skvozí čermnóje móre, jako jédín slávno proslávisja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Mílostiva mňí Christá soďílaj, Ďivo preneporóčnaja, v déň prí strášnaho ósuždénija ízimájušči."),

    sText("2:"),
    jObj4("",none, "", "Ódoždí mi Vladíčice, moľúsja, kápli úmilénija, súščuju mí skvérnu otmyvájušči, jako da slávľu ťá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Prosvití mja Ďivo, jaže svít nezachodímyj róždšaja, mojejá ľínosti hlubókuju ťmú othoňájušči."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Spasí mja Bohoródice, vo mnóhich hrisích pohíbšaho, í múki vsjákija, í ľútaho ósuždénija ízbávi."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Nebésnaho krúha verchotvórče Hospodi, í cerkve ziždíteľu, tý mené útverdí v ľubví tvojéj, želánij kráju, vírnych útverždénije, jédíne čelovikoľúbče."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Svjaščénnaho žitijá otpád prečestaja, priložíchsja skotóm, í ósuždén vés bých: no tý jaže sudijú róždšaja, ot vsjákaho ósuždénija ízbávi mjá í Spasí."),

    sText("2:"),
    jObj4("",none, "", "K tebí pribiháju Vladíčice, vsehdá mnóžestvom napástej óbstojíma úščédrivši Spasí mja, jaže Spasa róždšaja vsjáčeskich í Hospoda, jédína prepítaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Neprochodímaja dvére, jaže k Bohu privoďášči ótrokovíce, dvéri pokajánija mí otvérzi moľúsja, óčístivši hrichóv mojích skvérnu, túčami mílosti tvojejá, Bohobláhodátnaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Izbávi mjá strastéj navedénija Vladíčice, í borjúščyjasja vrahí mojá nýňi pobidí: útverdí mja na kámeni Božijich choťínij, í dúšu mojú prosvití, dvére Božéstvennaho svíta."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Úslýšach Hospodi, smotrénija tvojehó táinstvo, razumích ďilá tvojá, í proslávich tvojé Božestvó."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Duší mojejá jazvy íscilí, Bohobláhodátnaja Ďivo: um mój prosvití čestaja, ómračénnyj strástnymi nachódy."),

    sText("2:"),
    jObj4("",none, "", "Únýnijem spjáščaho, í hrichóm pokrovénnaho, k pokajániju mjá prečestaja, prizoví, jako mati Slóva."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Neiskusobráčnaja Vladíčice, jaže voploščénnoje Slóvo róždšaja, dúšu mojú prosvití, í ot hejénny ízbávi í mučénija."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Na ťá nadéždu mojú vozložích vsjú, mati Ďivo: dúšu mojú sobľudí, jaže Boha róždši Spasa mojehó."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Vskúju mjá otrínul jésí ot licá tvojehó svíte nezachodímyj, í pokrýla mjá jesť čuždája ťmá ókajánnaho; no óbratí mja, í k svítu zápovidej tvojích putí mojá naprávi moľúsja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Duší mojejá strásti vseneiscíľnyja ótrokovíce íscilí, í úhásšij ľínostiju svitíľnik mój vozžzí, í k pokajánija putém nastávi Ďivo, da víroju í ľubóviju ťá slávľu."),

    sText("2:"),
    jObj4("",none, "", "Sebé ósuždáju préžde íspytánija Bohorádovannaja, stúdnaja ďilá nošú jédín ósuždénnyj: no predstáni mí jako predstáteľnica súšči vsím, í ľútaho ósuždénija ízbávi mjá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Izbavľájušči mjá ot pľinénija, í óderžáščija dušetľínnyja molvý, í strastéj ľútych úmerščvľájuščich mjá, ne prestáj presvjatája ótrokovíce, hríšnikom zastúpnice, čelovíkom hotóvaja pomóščnice."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Úmerščvléna mjá vsehó žálom smértnym ot prestuplénija óživí prečestaja, jaže žízň začénšaja mírovi ízbáviteľa í cerjá, í k svítu nastávi mjá."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Óčísti mjá Spase, mnóha bo bezzakónija mojá, í íz hlubiný zól vozvedí, moľúsja: k tebí bo vozopích, í úslýši mjá, Bože Spasénija mojehó."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Úmerščvléna mjá mnóhimi prestupléňmi, prečestaja Ďivo, óživí, jaže žízň čelovíkom neizrečénno róždšaja Bohoródice, í tvoríti mí vóľu Hospodňu nastávi."),

    sText("2:"),
    jObj4("",none, "", "Tjá predstáteľnicu í sťínu vírniji vsí sťažáchom, iže vo hlubiňí zól, í mólv, í pečálej potopľájemiji prísno Bohoródice, jédína vírnym pribížišče."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Úvjadívšaja sadý bezbóžija preneporóčnaja, tvojím svjatým prozjabénijem, rastúščuju vo mňí prísno vrážiju zlóbu potrebí, prečestaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ósvjatí mój um, í prosvití sérdce mojé svjatája mati Božija, í óderžáščich mjá zól ízminí: da ťá slávľu tvérduju zastúpnicu mojú."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "", "Ó čudesé nóvaho! o strášnaho táinstva! vzyváše áhnica, Sýna zrjášči na drévi krestňim prostérta: čtó sé Slóve Božij bezsmértnyj; káko mértv zríšisja, í zémľu kolébleši jako vsesílen; no vospiváju tvojé strášnoje í Božéstvennoje schoždénije."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Otrocy jévréjstiji v peščí popráša plámeň derznovénno, í na rósu ohň preložíša, vopijúšče: bláhoslovén jésí Hospodi Bože vo víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Mílostiva búdi mí Ďivo, í úránena mjá órúžijem hrichá, plástyrem íscilí tvojejá molitvy: í óhňá nehasímaho íschití mja vo víki."),

    sText("2:"),
    jObj4("",none, "", "Izbávi mjá mati Spasova, óderžáščaho ľútaho pľinénija, pomyšlénij lukávych, í óderžánij prehrišénija, jako da prísno Spasájem, po dólhu ťá slávľu."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Nýňi k tebí pribiháju Bohomáti, prehrišénij plenícami sťáhnut: za mílosrdije mílosti razriší mja Ďivo, í ot bisóv ízbávi mučénija í zlóby."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Úščédri í Spasí mja Ďivo, jaže ščédraho róždši Božija Slóva: í svítom, iže v tebí, ózarí dúšu mojú, í ot bisóv ízbávi mjá ľútaho kovárstva."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Sedmeríceju péšč chaldéjskij mučíteľ Bohočestívym neístovno razžžé, síloju že lúčšeju Spasény sijá víďiv, tvorcú í ízbáviteľu vopijáše: otrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Iže po vsemú soveršén, í jéstestvóm nepristúpen, jávísja prikosnovén mňí, plótiju óbložén íz tebé neiskusobráčnaja: jéhóže priľížno molí, bezzakónij mojích brémja óblehčíti, í sudá búduščaho ízbáviti mjá."),

    sText("2:"),
    jObj4("",none, "", "Jaže sudijú í Hospoda róždši páče Slóva, sehó jako Sýna tvojehó presvjatája, úmolí: v čás sudá ósuždénija, í óhňá, í ťmý nesvitímyja, í skréžeta zubnáho ízbáviti mjá, víroju bláhočéstno pojúščaho ťá vsehdá."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Bohorodíteľnice prečestaja, duší mojejá jazvy, í hrichóvnyja soblázny óčísti, ístóčnikom otmyvájušči, iže íz rébr roždestvá tvojehó, í iže ot ních potékšimi strujámi: k tebí bo vzyváju, í k tebí pribiháju, í tebé moľú Bohobláhodátnuju."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Úmerščvlénnuju dúšu mojú úhryzénijem zmijínym, jédína javi živót róždšaja, preneporóčnaja óživí: í nás rádi Ďivo roždénnaho, ďíjstvovati pospiší choťínija, vopijúšču: otrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte jéhó vo víki."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Úžasésja ó sém nebeo, í zemlí údivíšasja koncý, jako Boh jávísja čelovíkom plótski, í črévo tvojé býsť prostránňijšeje nebes. ťím ťá Bohoródicu Anhelov í čelovík činonačálija veličájut."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Prosvití, dvére svíta, ósľiplénnuju dúšu mojú strasťmí, í lukávymi pómysly óčerňívšuju, í bídstvujuščuju: í ízbávi mjá napástej, í ot bisóv ózloblénija í ísťazánija ľútaho, í búduščaho plámene í múki."),

    sText("2:"),
    jObj4("",none, "", "Poščadí mja Spase, roždéjsja ot Ďivy, í sochranívyj róždšuju ťá netľínnu í po roždeství: jéhdá sjádeši sudíti ďilóm mojím, bezzakónija í hrichí mojá prézri, jako bezhríšen, í jako Boh mílostiv í čelovikoľúbec."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Nosjášči nebésnyj ohň rukáma jako kleščámi, Bohobláhodátnaja, dúši mojejá strásti popalí čestaja, í strášnaho ósuždénija í óhňá, í tomlénija ľútaho bisóvskaho svobodí mja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Ósijánijem tvojím mýslennym prosvití náša pomyšlénija, í serdcá í rázumy, ótrokovíce Bohobláhodátnaja, jako da stezjámi živótnymi právi choďášče, mílosť polučím, vozviščájušče prísno chvalý tvojá."),
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
    jObj4("",none, "", "Víďa razbójnik načáľnika žízni na kresťí vísjašča, hlahólaše: ášče ne bý Boh býl voplóščsja, íže s námi raspnýjsja, ne by sólnce lučý svojá potaílo, nižé by zemľá trepéščušči trjaslásja. no vsjá terpjáj, pomjaní mja Hospodi, vo cárstviji tvojém."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Posreďí dvojú razbójniku mírilo právednoje óbrítesja krest tvój, óvomu úbo nizvodímu vo ád ťahotóju chulénija, druhómu že lehčáščusja ot prehrišénij k poznániju Bohoslóvija: Christé Bože, sláva tebí."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Sýna tvojehó Ďivo, í Boha krestóm sochraňáemi prísno, bisóvskija prilóhi othoňáem í kózni: súščuju ťá Bohoródicu vojístinnu vospivájušče, í ľubóviju vsí ródi blážím prečestaja, jákože proreklá jésí: ťímže nám sohrišénij óstavlénije molitvami tvojími dáruj."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Posreďí jédéma drévo procvité smérť, posreďí že vsejá zemlí drévo prozjabé živót: vkusívše bo pérvoje netľínniji súšče, tľínni býchom: polučívše že vtoróje, netľínija napitáchomsja: krestóm bo Spasáješi jáko Boh ród čelovíčeskij."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "V raí mjá úbo préžde drévo óbnaží, vkušénijem vráh vnosjá úmerščvlénije: krestnoje že drévo životá víčnaho óďijánije čelovíkom nosjá, vodruzísja na zemlí, í mír vés íspólnisja vsjákija rádosti: jéhóže zrjášče voznosíma, Bohu víroju ľúdije sohlásno vozopijím: íspólň slávy dóm tvój."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svítom nebésnym prosviščájetsja dnés séj chrám: v ném bo vóinstva Anheľskaja rádujutsja, s nímiže í čelovíčestiji lícy veseľátsja, v pámjať strastotérpec. ťích moľbámi nizposlí Christé, míru tvojemú mír, í véliju mílosť."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Íže ot krovéj tvojích čestych voplóščšahosja, í páče úmá ot tebé čestaja rodívšahosja, na drévi vísjašča posreďí zloďíev zrjášči, útróboju boľáše, í matrski pláčušči vopijáše: úvý mňí čádo mojé! čtó Božéstvennoje í neizrečénnoje smotrénije tvojé, ímže óživíl jésí sozdánije tvojé; vospiváju tvojé bláhoutróbije."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Povelénnoje tájno:", "Tvojím krestóm Christé Spase í smértiju, mučíteľstvo vrážije nizložísja, í smérť úmertvísja, í mértvyja jáže ímíjaše ád ot víka v sebí svjázannyja, vnezápu otpustí pľínniki vsjá, vospivájuščyja deržávu tvojú, í strášnoje tvojé bláže, í Božéstvennoje schoždénije, ímže vsích Spasl jésí."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Óbožénija lóžnaho úpovánija rodonačáľnik tľínija, jáže ot nehó vsím vinóven jávísja. tý že krestóm tvojím žízň ístočáješi jáko prebláhíj: vóleju bo prihvoždén býl jésí, da ot pérvaho razrišíši ósuždénija. ťímže vospivájem tvojú Christé vóľnuju strásť."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("KrestoBohoródičen",none, "", "Neskvérnaja áhnica, áhnca í pástyrja vísjašča na kresťí zrjášči, vopijáše: čádo mojé, čtó stránnoje úbo í nenadéžnoje sijé zrínije; káko žízň vsích smértiju ósuždájetsja zemným podóbňi; no voskreséní tridnévno íz mértvych Slóve, jákože rékl jésí: da rádujuščisja slávľu ťá."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Krest načertáv moyséj vprjámo žezlóm čermnóje presičé, Izráiľu pišechoďášču, tóže óbrátno faraónovym kolesnícam údáriv sovokupí, voprekí napisáv nepobidímoje órúžije. ťím Christú pojím Bohu nášemu, jáko proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Dláni Božéstvennyja na kresťí Izráise rasprostér, k sebí sobrál jésí rukú tvoéju sozdánije: í ot rúki lukávaho vsích svobodíl jésí, í pokoríl jésí í rukóju deržávnoju cerjú vsích. ťímže vírniji pojím velíčestvu tvojemú, jáko proslávisja."),
    sText("2:"),
    jObj4("",none, "", "Vrédno býsť vo jédémi dréva hórkoje vkušénije, smérť vvédšeje: Christós že úmertvívsja na drévi, vsím živót ístočí, í úbív zmíja Božéstvennoju síloju. ťímže tomú pojím Bohu nášemu, jáko proslávisja."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Chrábrstvovavše Izráise mučenik mnóžestvo, krestóm že í strástiju tvojéju na strásti protívu vostáša, í pred vrahí ťá cárstvujuščaho tváriju íspovídaša: terpíša že mučénija í bidý bezmírnyja. ťímže tvojú úlučíša slávu vsí, slávy Hospoda."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Kroplénijem Bohoďíteľnyja čestnýja tvojejá króve, mučenicy tvoí Hospodi, ízbavlénije óbrítše, króvi svojá vojístinnu ízlijáša, neprávedno múčimi býša žértvy prinosíti skvérnym bisóm dušetľínnym. ťímže čestnája zakolénija tebí prinesóša, cerjú vsích."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Jáko víďi ťá na kresťí prihvoždájema, vsjá víďaščaho, neporóčnaja rydájušči hlahólaše: čtó sijé čádo mojé; čtó tí vozdáša nasláždšijisja mnóhich tvojích darovánij; káko preterpľú boľízni; sláva tvojemú bláhoutróbiju, í smotréniju strášnomu dolhoterpilíve."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Vódu prošéd jako súšu, í jéhńpetskaho zlá ízbižáv, Izráiľťanin vopijáše: ízbáviteľu í Bohu nášemu pojím."),
    sText("1:"),
    jObj4("",none, "", "Ómračénnuju slasťmí žitijá dúšu mojú Bohomáti, í mijrskími pečáľmi bezvrémenno smuščájemu, prosviščénijem tvojím prosvití."),
    sText("2:"),
    jObj4("",none, "", "Otverzóšasja dvéri nebésnyja Božéstvennym tvojím roždestvóm Bohomáti: v níchže vchód dážď duší mojéj jáko mílostiva, í k ťím nastávi mjá."),
    sText("3:"),
    jObj4("",none, "", "Ústrilénuju strilóju lukávaho, í kózňmi ónaho, í kovárstvy újazvlénuju dúšu mojú, Ďivo, mílostiju tvojéju íscilí."),
    sText("4:"),
    jObj4("",none, "", "Jáže nenaďíjuščichsja nadéžda, pádšich íspravlénije, svít Božéstvennyj róždšaja, dúšu mojú súščuju vo ťmí prosvití."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Žézl vo óbraz tájny prijémletsja, prozjabénijem bo predrazsuždájet svjaščénnika, neploďáščej že préžde cerkvi, nýňi procvité drévo krestá v deržávu í útverždénije."),
    sText("1:"),
    jObj4("",none, "", "V čérnuju útvar ízminísja sólnce, zrjá na drévi tebé neprávedno vozdvížena: í raspadésja kámenije, í zemľá vsjá stráchom trjasášesja, jédíne Spase, vsích ízbavlénije."),
    sText("2:"),
    jObj4("",none, "", "Rasprostér rúci moyséj, voobražáše krest čestnýj: jéhóže mý nýňi voobražájušče bláhomúdrenňi, polkí ínopleménnyja vsjá bisóvskija pobiždájem, vréda vsjákaho ťích kromí prebyvájušče."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Strásti terpjášče strástotérpcy, strásť óbrazováchu, mnohoobráznym strastém pričastíšasja, vóleju stradávšaho, í strásti úmertvívšaho, í živót míru vozsijávšaho."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Nevozvrátno mučénija púť šéstvovavše, pretknovénija prélesti ot serdéc nizložíša bláhoslávniji strástonóscy, í ústremíšasja ko úpokojéniju Božéstvennomu veseľáščesja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Zakónnych kromí óbýčajev čelovíčeskich, tebé čádo rodích, Bohoródica pláčušči viščáše: í káko bezzakónniji vozdvihóša ťá na drévo, posreďí bezzakónnych, jédínaho zakón žízni položívšaho;"),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Nebésnaho krúha verchotvórče Hospodi, í cerkve ziždíteľu, tý mené útverdí v ľubví tvojéj, želánij kráju, vírnych útverždénije, jédíne čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Vozdychánija nemólčnaja, í priľížnyja slézy, í sokrušénno sérdce dážď mí Ďivo, da pláčusja soďíjannych mnóju, í sovozrastájuščyja mojá strásti potrebí, jédína vsepítaja."),
    sText("2:"),
    jObj4("",none, "", "Dremáňmi óťahčénnuju hrichóvnymi, í ko ádovi útróbi nizpopólzšujusja dúšu mojú íschití Vladíčice, í pomyšlénije pokajánija ístinnaho podážď mí Bohoblážénnaja."),
    sText("3:"),
    jObj4("",none, "", "Úmilénija ľubóv, í dobroďítelej dáruj vseneporóčnaja, pohružénňij duší mojéj prehrišéňmi, í nebésnoje žitijé vozľubíti, í Božije želánije ímíti."),
    sText("4:"),
    jObj4("",none, "", "Na ťá úpovánije vozlaháju mati Božija, í otčájanija vskóri ízbávľusja: vím bo, vím tvojehó bláhoutróbija bohátstvo, í kríposť svídyj derznovénija tvojehó."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Úslýšach Hospodi, smotrénija tvojehó táinstvo, razumích ďilá tvojá, í proslávich tvojé Božestvó."),
    sText("1:"),
    jObj4("",none, "", "Jáko kédr bláhočéstije, víru jáko kyparís, ľubóv že jáko pénk nosjášče, krestú Božéstvennomu poklonímsja."),
    sText("2:"),
    jObj4("",none, "", "Krestóm tvojím Spase, ráj otvérzesja, í ósuždénnyj čelovík páki vníde vóň, tvojú veličája bláhostýňu."),
    sText("3:"),
    jObj4("",none, "", "Úmerščvlényja óživíl jésí Spase čelovíki, mértv býv, í zmíja úmertvíl jésí hrích vvédšaho."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Strástém bývše soobrázni Christóvym Božéstvenniji mučenicy, pričástnicy že í svítlosti nebésnyja jávíšasja."),
    sText("5:"),
    jObj4("Mučeničen",none, "", "Úkrasístesja mučenicy, Slóvu krásnomu sojedinívšesja: í svítlo prosvitístesja, Sólnce právednoje vozľubívše."),
    sText("6:"),
    jObj4("Bohoródičen",none, "", "Nóvo ótročá rodilá jésí, préžde vík súšča soveršénnaho, ótrokovíce vseneporóčnaja, í krestóm soveršájušča vsjáčeskaja, í bláhostiju."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Tý mojá kríposť Hospodi, tý mojá í síla, tý mój Boh, tý mojé rádovanije, ne óstávľ ňídra Otča, í nášu niščetú positív. ťím s prorókom ávvakúmom zovú ti: síľi tvojéj sláva čelovikoľúbče."),
    sText("1:"),
    jObj4("",none, "", "Jáže Boha Slóva neizrečénno róždšaja, duší mojejá strúpy óbjaží, ďíjstvennym býlijem, króv Sýna tvojehó čestnúju vozlijávši, razrušívšaho ádovo dušetľínnoje črévo, í ístočívšaho míru voskresénije."),
    sText("2:"),
    jObj4("",none, "", "Nevísto Božija, prehrišénij óčiščénije duší mojéj struí nizposlí, í lukávaja otmýj pomyšlénija, čísťi býti tój spodóbi: k tvojemú bo chodátajstvu, í tvojéj pómošči, Bohoródice Ďivo pribihóch."),
    sText("3:"),
    jObj4("",none, "", "K tvojemú nýňi pribiháju zastupléniju prečestaja, predvarí mja ízbáviti ľútyja búri vrážija, í smuščájuščich potókov bezzakónija: k tvojemú že pristánišču, í k tvojéj tišiňí neuklónno Bohomáti nastávi mjá."),
    sText("4:"),
    jObj4("",none, "", "Vráh hrichóvnymi strilámi dúšu mojú vsjú újazví, í óskverní slasťmí mojé sérdce, í otvratí ot putí právaho. sehó rádi vopijú ti: óbratívši íscilí mja, í Spasí."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "O treblážénnoje drévo! na némže raspjásja Christós, cer í Hospod: ímže padé drévom preľstívyj, tobóju preľstívsja, Bohu prihvozdívšusja plótiju, podajúščemu mír dušám nášym."),
    sText("1:"),
    jObj4("",none, "", "Ódéždeju netľínija, óbnažényja ný óbleščí vozžeľív, sovléklsja jésí, í na kresťí raspjátsja, óbnažíl jésí vrážija Christé kovárstva: sehó rádi tvojá stradánija slávim."),
    sText("2:"),
    jObj4("",none, "", "Króv íz rébr ístékšaja Spasíteľnaja jávi, mír óčístila jésť, kápiščnyja že króvi razruší, í ístľívšyja plodóm razúmnym óbnoví, í ístočí netľínije dušám nášym."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Prosviščéni dobrótoju mnohovídnych rán, mučenicy slávniji, Božéstvennoju že króviju známenavšesja, vozbraňájuščeje préžde órúžije proidóša jávi, í vselíšasja rádujuščesja v ráj."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Jáko díven tý jésí vo svjatých Christé, víroju tebé vozľubívšich: ot tebé bo óbohatívšesja Božéstvennyja íscilénij ríki mírovi ístočájut, í ízsušájut ízlijánije strastéj nášich."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nedúhovavšyja hrichóm ný íscilíla jésí Ďivo, róždši Spasa í vračá vsích, na drévi krestňim prihvoždénnaho prečestaja, í ístočívša Spasénije dušám nášym."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Vskúju mjá otrínul jésí ot licá tvojehó svíte nezachodímyj, í pokrýla mjá jésť čuždája ťmá ókajánnaho; no óbratí mja, í k svítu zápovidej tvojích putí mojá naprávi, moľúsja."),
    sText("1:"),
    jObj4("",none, "", "So vsím úsérdijem tščúsja k tvojemú vseneporóčnaja zastupléniju í dušévnoje óko vozvoždú: ne otvratí mené, no zastupí mja jáko bláhája, í ízbávi mjá, í prehrišénij mojích skvérnu otmýj."),
    sText("2:"),
    jObj4("",none, "", "Jád smertonósen hrichóvnymi zubý vložísja: no tohó pohubí hvozďmí í kopijém Božéstvennym roždestvá tvojehó, za mílosrdije nás rádi plótiju postradávšaho, jédína vsepítaja."),
    sText("3:"),
    jObj4("",none, "", "Úmerščvlénna mjá nrávom, í ístľívšaho prehrišéňmi, óživí róždšaja živót víčnyj, í óbnovlénijem Dúchóvnym, k netľíniju pretvorí mja, Bohoblážénnaja."),
    sText("4:"),
    jObj4("",none, "", "Lukávstva bisóvskaho, í zlóby čelovíčeskija ízbávi mjá, Vladíčice, í dušévnuju boľízň, í ťilésnuju vskóri íscilí, róždšaja jédína vsjákija plóti í sohrišénij vračá, Spasa í Hospoda."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Vódnaho zvírja vo útróbi dláni Jóna krestovídno rasprostér, Spasíteľnuju strásť proobražáše jávi: ťím tridnéven ízšéd, premírnoje voskresénije propisáše, plótiju prihvoždénaho Christá Boha, í tridnévnym voskresénijem mír prosvíščšaho."),
    sText("1:"),
    jObj4("",none, "", "Krest vodruzísja na mísťi lóbňim posreďí zemlí, í posreďí rajá prozjábšuju drévom jázvu íscilí: messía bo Izráis posreďí bezzakónnych razbójnik, jédín právednyj jávísja, s sobóju sovozdvíže vsjá, í s vysotý pádšaho v propásť vvérže."),
    sText("2:"),
    jObj4("",none, "", "Lúk Christé naprjáh Božéstvennyj, vsečestnýj tvój krest, íspustíl jésí stríly na úbíjcu: hvózdi že rukú tvoéju Vladýko, vonzíl jésí v tohó hňivlívoje í vseskvernávoje sérdce: í do koncá tohó úmertvíl jésí, í ot nehó úmerščvlényja ščédre óživíl jésí."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Króvnym ístékšym strujám, íz ťilés svjatých stradálec, úhasíša Dúchom vés ídolobísija plámeň, í cerkve čestnýja brazdý napojíša, í klás ízrastíti sotvoríša Spasénija nadéždy í víry: ímže pitájetsja vsjáka dušá, Božéstvennoju bláhodátiju."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Vospaľáchusja óhňá mnóžaje nrávom, strážduščiji slávniji strástotérpcy, jéhdá veščéstvennym óhném ópaľátisja. lukávnymi sudijámi sudóm otdavájemi, í neujázvleni sochraňáemi byváchu ďíjstvom í bláhodátiju svjatáho Dúcha, vinčávšaho ťích zakónno postradávšich."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Órúžije sérdce tvojé prójde, prečestaja ótrokovíce, zrjášči Sýna tvojehó na kresťí prostérta, í strásti terpjášča, í kopijém v Božéstvennaja rébra probodájema vóleju, í zakalájušča ťmý boríteľnaho zmíja: ťímže pláčušči matrski, tohó veličála jésí."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Óčísti mjá Spase, mnóha bo bezzakónija mojá, í íz hlubiný zól vozvedí, moľúsja: k tebí bo vozopích, í úslýši mjá, Bože Spasénija mojehó."),
    sText("1:"),
    jObj4("",none, "", "Otstupích ot Boha blúdno žív, í ráb slastéj ókajánnyj bých, í vsjákija óbnažíchsja dobroďíteli Božéstvennyja: no posití mjá prečestaja."),
    sText("2:"),
    jObj4("",none, "", "Bižáteľ bých ot zápovidej dánnych mí, í údalívsja ot životá k smérti priblížichsja: no nastávi mjá k vozvraščéniju, Bohomati prečestaja."),
    sText("3:"),
    jObj4("",none, "", "Žitijé mojé lukávno, íspólneno neraďínija: no mílosť tvojá mnóhaja í neizrečénnaja, prečestaja, da ódoľíet í mílosrdije bláhosti tvojejá nemoščňíj mýsli mojéj."),
    sText("4:"),
    jObj4("",none, "", "Spasa í ízbáviteľa róždši, í vseščédraho, úščédri mjá čestaja, í Spasí, í ízbávi ot óbyšédšich mjá, í napádajuščich nemílostivno na némošč mojú."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Bezúmnoje veľínije mučíteľa zločestívaho ľúdi pokolebá, dýšuščeje preščénije í zlochulénije Bohomérzkoje: óbáče trí ótroki ne ústraší járosť zvírskaja, ni óhň sňidájaj, no protívo dýšušču rosonósnomu dúchu, so óhném súšče pojáchu: prepítyj ótcév í nás Bože bláhoslovén jésí."),
    sText("1:"),
    jObj4("",none, "", "Jéhdá rasprostérsja na drévi krestňim, jákože vijnohrád Slóvo Ótčeje, mstó ískápal jésí tájny, ízmiňájuščeje pijánstvo prestuplénija, í vsích veseľáščeje, víduščich ťá Boha í ziždíteľa, vóleju stráždušča, í Spasájuščeje pojúščyja: prepítyj ótcév í nás Bože bláhoslovén jésí."),
    sText("2:"),
    jObj4("",none, "", "Raspjátije preterpíl jésí Christé mój Izráise, ponósnoje, ústavľájuščeje čelovíkom vsé ponošénije í vozdychánije, žélči že vkusíl jésí, hóresť vsjáku zlóbnuju otjémľa, újazvíl jésí rúci tvoí, jázvy ščédre dušévnyja náša ísciľája, í píti poveľivája: prepítyj ótéc nášich Bože bláhoslovén jésí."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Boľízňmi neboľíznennyj živót dóbliji stradáľcy priťažáli jésté: ťímže náša boľízni óblehčájete otňúd, bláhodáť prijémše svýše svjatíji, íscileváti strásti, í dúchi othoňáti: í vírnym predstoité, í Spasájete vopijúščyja: prepítyj ótéc nášich Bože bláhoslovén jésí."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Stáste mučenicy pred sudíšči Christá íspovídajušče, plóť nás rádi vosprijémšaho po nám kromí tľínija: í podóbnicy strástém jéhó jávľájemi vojístinnu, óhňá ózloblénija, í vsjákija ínýja múki preterpíste, v veséliji zovúšče: prepítyj ótéc nášich Bože bláhoslovén jésí."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Pečáli íspólnichsja zrjášči tebé Sýne bez právdy stráždušča, újazvľájusja dušéju, kopijém újázvlenu tí v rébra, Bohoródica vopijáše pláčušči í rydájušči, jédína Vladíčica, júže dostójno vsí úblážájem, í bláhočéstno zovém: prepítyj ótéc nášich Bože bláhoslovén jésí."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Otrocy jévréjstiji v peščí popráša plámeň derznovénno, í na rósu ohň preložíša, vopijúšče: bláhoslovén jésí Hospodi Bože vo víki."),
    sText("1:"),
    jObj4("",none, "", "Vsjá jésí svitonósna, svít nezachodímyj Ďivo, prijémši, í prosviščájušči čestaja, víroju tebí vopijúščyja: bláhoslovén prečestaja, plód tvojehó čréva."),
    sText("2:"),
    jObj4("",none, "", "Da tvojé čelovikoľúbije í mílosť Ďivo jávíši, íz hlubiný mja zól vozvedí vopijúšča: bláhoslovén prečestaja, plód tvojehó čréva."),
    sText("3:"),
    jObj4("",none, "", "K tebí mati Ďivo, pritekáju, újazvľájem strilámi dušetľínnymi: vsehó mja molitvoju tvojéju óhradí vopijúšča: bláhoslovén prečestaja, plód tvojehó čréva."),
    sText("4:"),
    jObj4("",none, "", "Ízbávi mjá mati Spasova, óderžáščaho ľútaho pľinénija, pomyšlénij lukávych, í vín hrichóvnych: jáko da prísno Spasájem po dólhu ťá slávľu."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Bláhoslovíte ótrocy, Trójcy ravnočíslenniji, soďíteľa Ótcá Boha, pójte snizšédšeje Slóvo, í óhň v rósu pretvóršeje, í prevoznosíte vsím žízň podavájuščaho, Dúcha vsesvjatáho vo víki."),
    sText("1:"),
    jObj4("",none, "", "Bláhoslovítsja drévo, ímže vsjá potrebísja jáže vo jédémi léstnaja kľátva, vozrástšaja sňídiju lukávoju dréva, í Christós voznósitsja preproslávlennyj, íže voznestísja na ném vóleju svojéju voschoťívyj za mílosrdije."),
    sText("2:"),
    jObj4("",none, "", "Svjaščénno vo preminéniji rukáma prisnoslávnyj, bláhoslovľája vnúki ínohdá, óbraz jávľája svjaščénnaho dréva, ímže bláhoslovénije vsím darovásja, prokľátym zlóju dréva sňídiju, í popólzšymsja vo hlubinú zól."),
    sText("3:"),
    jObj4("",none, "", "Íspravľájetsja vsé čelovíčestvo Vladýko, tebí rasprostértu bývšu na kresťí, í pólk padé lukávych bisóv, í razstojáščajasja sovokuplénije prijémľut: í prevoznósitsja deržáva vlásti tvojejá, í síla tvojá vo víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Blážénnuju slávu, í píšču netľínnuju, í svitozárna selénija nasľídovaste nýňi Božéstvenniji stradáľcy Hospodni, í nebésnym primisístesja činóm, í prisnoslávnych nadéžd vášich konéc nýňi vosprijáste s vesélijem."),
    sText("5:"),
    jObj4("Mučeničen",none, "", "Váše múžestvo páče sólnca vozsijá, svitovídniji Christóvy stradáľcy, í vsjú dijávoľu prélesť Božéstvennoju síloju pomračí í vírnych vsích serdcá bláhočestnomúdrenňi prosvití vo víki."),
    sText("6:"),
    jObj4("Bohoródičen",none, "", "Mýslennyj óblak, í síň svjaščénija, prestól Božij, í dvér svíta, svitíľnik, í vostók Slóva, vírniji vsí ímenújem ťá, prečestaja Ďivo, vsjá sotvóršaho mati súšči bláhoslovénnaja."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Sedmeríceju péšč chaldéjskij mučíteľ Bohočestívym neístovno razžžé, síloju že lúčšeju Spasény sijá víďiv, tvorcú í ízbáviteľu vopijáše: otrocy bláhoslovíte, svjaščénnicy vospójte, ľúdije prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Vsederžíteľ Hospod vselívyjsja vo útróbu tvojú, í stólp útverždénija vírnym ťá pokazá: k nemúže pribihájušče napástej ízbavľájemsja í bíd, í svoboždájemsja ískušénija, sohlásno pojúšče: svjaščénnicy vospójte, ľúdije prevoznosíte jéhó vo víki."),
    sText("2:"),
    jObj4("",none, "", "Svjaščénnaho Vladíčice otpadóch žitijá, ko hrichú nevozderžímo vlekóm, í sím poraboščájem, svoboždénija jéže ó Chrisťí í právdy ístinnyja óbnažíchsja: no ne prézri mjá, sokróvišče Spasénija, k tebí pribihájuščaho, náha í óbniščávšaho."),
    sText("3:"),
    jObj4("",none, "", "Da ísprávitsja moľbá molitvy mojejá ko Hospodu, íz útróby tvojejá proizšédšemu, Vladíčice: í ot prestuplénija zápovidej da ízbávit mjá, í ósuždénija í kľátvy zakónnyja, í skvérnu da otmýet ľútych mojích prehrišénij, jáko jédín mílostiv."),
    sText("4:"),
    jObj4("",none, "", "Bohorodíteľnice prečestaja, duší mojejá jázvy, í hrichóvnyja soblázny óčísti, ístóčnikom otmyvájušči, íže íz rébr Sýna tvojehó, ot ních potékšimi strujámi: k tebí bo vzyváju, í k tebí pribiháju, í tebé prizyváju Bohobláhodátnuju."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón čestnómu í životvorjáščemu krestú
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Sňídiju dréva ródu pribývšaja smérť, krestóm úprazdnísja dnés: íbo pramáterňaja vseródnaja kľátva razrušísja, prozjabénijem čestyja Bohomátere: júže vsjá síly nebésnyja veličájut."),
    sText("1:"),
    jObj4("",none, "", "Svjaščénňijše ťá voznosjášče ščédre, poklaňáemsja tvojemú krestú, kopijú že í húbi, í trósti, í v rukú vonzénnym í v nohú svjatým hvozdém Vladýko: ímiže óbritóchom soveršénnoje óstavlénije, í rájskaho žitijá spodóbichomsja."),
    sText("2:"),
    jObj4("",none, "", "O káko neprávedno ósuždén býl jésí prihvozdítisja na drévi raspinájem, právedňijšij jédíne vsích cerjú, ópravdáti vsích íščjáj, víroju slávjaščich stradánija tvojá vóľnaja, í smotrénije, í tebé Christé mój vírno veličájuščich."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Tílo predávše múkam vsedúšno mučenicy slávniji, preterpíša rány í núžnuju smérť, otsičénije údóv, í rasterzánija, í óhnennoje ópalénije, ľubóviju že razharájemi ko Hospodu. ťímže vincenóscy na nebesích živút."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Íže Apostolov í mučenikov sládoste, molitvami ích vsích nás mílosti íspólni, jáko bláhoutróben, sohrišénij razrišénije podajá, í ľútych vsích ízbavlénije, í tvojehó cárstvija vselénije Christé Bože, íže nás rádi jávléjsja čelovík."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svitovídnyj čertóh jávílasja jésí Ďivo, vséľšemusja v tvojú netľínnuju útróbu, í strásť blážénnuju preterpívšemu choťínijem, í vsím bezstrástije podávšemu za neizrečénnuju mílosť: jémúže víroju poklaňájuščesja, tebé bláhočéstno veličájem."),
  ))
  ====== Kanón presvjatíj Bohoródici,
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Úžasésja ó sém nebeo, í zemlí údivíšasja koncý, jako Boh jávísja čelovíkom plótski, í črévo tvojé býsť prostránňijšeje nebes. ťím ťá Bohoródicu Anhelov í čelovík činonačálija veličájut."),
    sText("1:"),
    jObj4("",none, "", "Vojístinnu Bohomati súščaho Boha, moľášči ne prestáj jéhóže rodilá jésí, hrichóv óstavlénije rabóm tvoím podáti, í vsesoveršénnoje proščénije ťím nýňi soďíjannych zól: í sích spodóbiti so vsími svjatými víčnaho naslaždénija."),
    sText("2:"),
    jObj4("",none, "", "Krípostiju í síloju Dúchóvnoju, í órúžijem, í deržávoju, prepojáši smirénnuju dúšu mojú presvjatája Bohoródice, í krestnym órúžijem óblecý, í hrichá mojehó rány óčísti, rosóju tvojehó čelovikoľúbija, í velíkoju mílostiju tvojéju."),
    sText("3:"),
    jObj4("",none, "", "Spasénija búdi mí stólp, čestaja, bisóv bezďíľny sotvorí polkí, í napástej molvú, í bidý othoňájušči, í strastéj nachódy daléče prohoňájušči, í čístoje dajúšči svoboždénije."),
    sText("4:"),
    jObj4("",none, "", "Čestaja preproslávlennaja mati Božija, pojúščyja ťá ľubóviju Spasí, í ískušénij molvú razorjájušči mílostivno: jáko Boha bo róždši Ďivo, vsjá jélíko chóščeši tvoríti móžeši, í podajéši mílosť nevozbránno. ťímže ťá vsí veličájem."),
  ))
  ==== #translation.at("CHVALITE")
  #generateTable((

    // CH Stich na 4
    sText("4:"),
    gText("Chvalíte jéhó v tympáňi í líci, chvalíte jéhó vo strúnach í órháňi."),
    "",
    jObj4("",none, "", "Moyséev žézl proobražáše čestnýj krest tvój, Spase náš: ťím bo Spasáješi, jáko íz hlubiný morskíja, ľúdi tvojá čelovikoľúbče."),

    // CH Stich na 3
    sText("3:"),
    gText("Chvalíte jéhó v kymváľich dobrohlásnych, chvalíte jéhó v kymváľich vosklicánija: vsjákoje dychánije da chválit Hospoda."),
    "",
    jObj4("",none, "", "Jéže drévle vo jédémi v raí, drévo sňídnoje prozjabló jésť posreďí sadóv: cerkov že tvojá Christé, krest tvój procvité, ístočájušč vsemú míru žízň. no óno úbo úmertví sňídiju jádšaho ádáma: sijé že žíva sotvorí, víroju Spasšasja razbójnika. jéhóže Spasénija pričástniki í nás jáví Christé Bože, íže strástiju tvojéju razrušívyj, jáže na ný kózni vrážija, í spodóbi nás cárstvija tvojehó Hospodi."),

    // CH Stich na 2
    sText("2:"),
    gText("Voskresní Hospodi Bože mój, da voznesétsja ruká tvojá, ne zabúdi úbóhich tvojích do koncá."),
    "",
    jObj4("Mučeničen",none, "", "Čtó vás narečém svjatíji; cheruvímy li; jáko na vás počíl jésť Christós. serafímy li; jáko neprestánno prosláviste jéhó. Anhely li; ťíla bo otvratístesja. síly li; ďíjstvujete bo čudesý. mnóhaja váša ímená, í bóľšaja darovánija. molíte Spastísja dušám nášym."),

    // CH Stich na 1
    sText("1:"),
    gText("Íspovímsja tebí Hospodi vsím sérdcem mojím, povím vsjá čudesá tvojá."),
    "",
    jObj4("KrestoBohoródičen",none, "", "Ne terpľú čádo, víďašči ťá na drévi úsnúvša, bódrosť vsím podajúščaho, jáko da íže drévle prestuplénija plodóm, snóm pohíbeľnym úsnúvšym, Božéstvennuju í Spasíteľnuju bódrosť podási: Ďiva hlahólaše pláčuščisja, júže veličájem."),
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
    jObj4("",none, "", "Pomjaní nás Christé Spase míra, jákože razbójnika pomjanúl jésí na drévi: í spodóbi vsích, jédíne ščédre, nebésnomu cárstviju tvojemú."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Rasprostérl jésí Christé dláni na drévi, í lukávaja načála í vlásti óbličív, Spasl jésí ot ťích vréda bláhočéstno slavoslóvjaščyja ťá."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Kopijém probodésja vísja na drévi, ístočíl jésí nám potóki bezsmértija, úmerščvlénym bez úmá prestuplénijem: ťímže so stráchom slávim ťá."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("",none, "", "Stránni zemných jávľájemych sládkich vvedénija, stránnym sebé ízdáša múkam stradáľcy, újazvľájušče otstúpnika svojími svjatými jázvami."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Íže ot beznačáľnyja Trójcy jédín sýj, strásť na kresťí preterpíl jésí vóleju: strastéj mojích ízsuší vsjá potóki, í Spasénija spodóbi mjá."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Jémmanúila áhnca Božija í Slóva, víďašči plótiju vísjašča na drévi, áhnica jédína neskvérnaja í Ďiva, pečáliju óderžíma bjáše slezjášči."),
  ))
])
