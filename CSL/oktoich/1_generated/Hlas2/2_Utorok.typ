#import "../../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("Ut")


// ---------------------------------------
// VELKA VECIEREN
// ---------------------------------------


  === #translation.at("V")
  #header3([(#translation.at("Po_V"))])
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 6
    sText("6:"),
    gText("Ášče bezzakónija názriši Hospodi, Hospodi, któ postojít; jáko ú tebé óčiščénije jésť."),
    "",
    jObj4("",none, "Jéhdá ot dréva ťá:", "Jedíne bezhríšne Christé, jédíne nezlóbivyj, jédíne ístóčniče bláhosti, vížď mojé sťisnénije, vížď skórb mojú: í jazvy strúp mojích óčísti vsjá í mílostiju tvojéju Spasí rabá tvojehó: jako da ľínosti oblaki daléče othnáv, slávľu ťá prebláháho Spasa mojehó."),
    
    // HV Stich na 5
    sText("5:"),
    gText("Ímene rádi tvojehó poterpích ťá Hospodi, poterpí dušá mojá v Slóvo tvojé, úpová dušá mojá na Hospoda."),
    "",
    jObj4("",none, "", "Prízri, o dušé mojá smirénnaja! vížď tvojá ďilá, kája súť vseskvérnaja: vížď tvojú nahotú, ole í jédínstvo! ibo imaši razlučítisja ot Boha í Anhelov, í k bezkonéčnomu vmetátisja mučéniju. vosprjaní, vostáni, potščísja, vozopíj: sohriších Spase, dážď mí proščénije, í Spasí mja."),
    
    // HV Stich na 4
    sText("4:"),
    gText("Ot stráži útrennija do nóšči, ot stráži útrennija, da úpovájet Izráiľ na Hospoda."),
    "",
    jObj4("",none, "", "Tílo óskverních ľúťi, rastlích dúšu í sérdce pomyšléňmi skvérnymi: vsjá čúvstva mojá újazvích, oči óskverních, ókaľách úšesá slovesý, jázýk óskverních, í vsjá ímíju stúdna. ťímže tí pripádajaj zovú, Vladýko Christé: sohriších tí, sohriších, prostí, í Spasí mja."),
    
    // Notes:
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_MINEA")),
    cText[$#sym.ast.circle$],
    cText(translation.at("HV_NOTE")),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Skórbi, ľútych navedénija, strásti že razlíčnyja óburevájut smirénnuju mojú dúšu ótrokovíce neiskusobráčnaja, mati Christá Boha, pravíteľnica mí jávísja v móri žitéjsťim, í naležáščuju úkrotí búrju k pristániščem tíchim pokajánija í prochlaždénija nastavľájušči, k Božéstvennomu pokróvu tvojemú pritekájušča."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",none, "", "Sohriších tí Christé Spase, jako blúdnyj sýn: prijimí mja Otče kájuščasja, í pomíluj mjá Bože."),
    "",
    gText(jObj4("",none, "", "K tebí vozvedóch óči moí, živúščemu na nebesí. sé jáko óči ráb v rukú hospódij svojích, jáko óči rabýni v rukú hospoží svojejá: táko óči náši ko Hospodu Bohu nášemu, dóndeže úščédrit ný.")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", "Vopijú ti Christé Spase mytarévym hlásom: óčísti mjá jakože onaho, í pomíluj mjá Bože."),
    "",
    gText(jObj4("",none, "", "Pomíluj nás, Hospodi, pomíluj nás, jáko po mnóhu íspólnichomsja úničižénija: naipáče napólnisja dušá náša ponošénija hobzújuščich, í úničižénija hórdych.")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svjatým mučenikom moľáščymsja ó nás, í Christá pojúščym, vsjáka prélesť prestá, í čelovíčeskij ród víroju Spasájetsja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Vsé úpovánije mojé na ťá vozlaháju, mati Božija, sochraní mja pod króvom tvojím."),
  ))
  #colbreak()


// ---------------------------------------
// POVECERIE 
// ---------------------------------------


  === #translation.at("P")
  #header3([(#translation.at("Po_N"))])
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Vo hlubiňí postlá ínohdá faraonítskoje vsevóinstvo preoružénnaja síla, voplóščšejesja že Slóvo vsezlóbnyj hrích potrebílo jesť, preproslávlennyj Hospod, slávno bo proslávisja."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Pochvalénija tí prisnocvitúščij vinéc, jéhóže prozjabé Dúchom cerkov čestaja, prinósit písnenno tebí so Archánhelom havrijílom Bohonevístňij, rádujasja pojúšči, í ťá čéstno vinčájušči."),

    sText("2:"),
    jObj4("",none, "", "Vozďílavši živonósnyj vijnohrád, mati Božija prepítaja Christá Boha, zemlé svjatája Otča jávísja, páče smýsla Bohobláhodátnaja, í vés mír napoí píva živonósnaho čestaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Volnújuščahosja ľúťi prehrišéniji vsehó míra, í potopľájemaho, rodilá jésí prečestaja Boha í Hospoda vsích nás, í ókormíteľa Christá, ko Spasíteľnomu pristánišču nás napravľájušča vírno."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Pribížišče í Spasénija hráde, vsí vírno mólim ťá, Maríe mati Božija, í míli ďíemsja tépľi: prijimí moľbý náša tvojích vírnych ráb, í razriší vsjá ný ot prehrišénij ósuždénija."),
  ))
  ===== #translation.at("PIESEN") 3
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Útverdí nás v tebí Hospodi, drévom úmerščvéj hrích, í strách tvój vsadí v serdcá nás pojúščich ťá."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Načálo otvraščénija Boha býsť k čelovíkom, jenino preľščénije: svjatája že Bohoródica privedé páki Boha k nám."),

    sText("2:"),
    jObj4("",none, "", "Žízni ťá sokróvišče prepítaja raždájet mírovi, í rádujetsja bláhočádiju slávnyj íoakím ó tebí, jako neplódnymi ótcý prišédši nadéžda."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Ot ánny rádosť ródu procvité, raždáješi dvojú cerjá: í srádujutsja roždestvú tvojemú žený, razríššasja tobóju kľátvy."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Kupiná v sijnái proobražáše tvojé Ďivo, preslávnoje roždestvá: ibo óhném Božestvá ne ópalísja, v ložesnách prijémši čestaja."),
  ))
  ===== #translation.at("PIESEN") 4
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Úslýšach Hospodi, slávnoje tvojé smotrénije, í proslávich čelovikoľúbče, nepostižímuju tvojú sílu."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Íákov ťá jako ľístvicu Bohoľípno províďaše Ďivo, na jéjáže versí Boh útverždášesja."),

    sText("2:"),
    jObj4("",none, "", "Anheľskoje snítije, ježe k nám Slóva prišéstvije tobóju prečestaja projavísja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Útróba tvojá prepítaja, í soscá blážénna Ďivo: ťích bo rádi žízň vsí óbritóchom."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Tájno vospivájem ťá mati Božija, hlásy pravoslávnymi, imže cerkov bľudóma jesť molitvami tvojími."),
  ))
  ===== #translation.at("PIESEN") 5
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Prosviščénije vo ťmí ležáščich, Spasénije otčájannych Christé Spase mój, k tebí utreňuju cerjú míra, prosvití mja sijánijem tvojím: ínóho bo rázvi tebé Boha ne znáju."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Zakóna í kovčéha čestňíjšu ťá vospivájem, Bohoródice Maríe: ibo vsích ziždíteľa í Boha, jako skrižáli nosíla jésí prepítaja."),

    sText("2:"),
    jObj4("",none, "", "Prestól Božija Božija Slóva, proslavľájem Bohoródice, na némže jako čelovík Boh siďá jávísja, í býsť cheruvímov prevýšši."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Razrišíla jésí Ďivo, ot hórkija rabóty vés ród čelovíč, í svobódoju Christóvoju jéstestvó žénskoje počtíla jésí, v Božéstvenňim tvojém roždeství."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Rodilá jésí Sýna Ďiva, í pobiždájut žený vrahá javi: ťímže í pritekájut ótrokovíce, Ďivstvo deržášče."),
  ))
  ===== #translation.at("PIESEN") 6
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V bézdňi hrichóvňij vaľájasja, neizsľídnuju milosérdija tvojehó prizyváju bézdnu: ot tlí Bože mjá vozvedí."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Jaže míru rádosť Bohoródice čestaja, rádujsja, tebí Ďivo zovém so Anhelom vírno, tvojejá rádosti spodóbi, í pečáľ nášu razorí."),

    sText("2:"),
    jObj4("",none, "", "Rádosti neotjémlemyja žilíšče ťá voschvaľájušče vírno mati prisnoďivo, tvojejá rádosti spodóbi, í pečáľ nášu razorí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Nebo nebes výššeje jávílasja jésí Bohonevístnaja, Božéstvennoju tvojéju slávoju: v ťá Boh náš vselívsja, jávísja mí."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Nýňi jéstestvó žénskoje vozrádovasja, nýňi pečáľ prestá, rádosť procvité: jako María rodí rádosť, Spasa Christá Boha."),
  ))
  ===== #translation.at("SIDALEN")
  #generateTable((

    sText($#sym.dot$),
    jObj4("",none, "Mílosrdija súšči:", "Duší mojejá ľínosť ľútuju, í sérdca mojehó prenemohánije, mati Božija vozzrívši, íscilí molitvami tvojími, í Spasénnych mjá části spodóbi, ízbavľájušči mjá ťmý í mučénija, jako jédína úpovánije mojé í úťišénije."),
  ))
  ===== #translation.at("PIESEN") 7
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Obrazu zlatómu na póľi deíri služímu, trijé tvoí otrocy nebrehóša bezbóžnaho veľínija, posreďí že óhňá vvérženi, órošájemi pojáchu: bláhoslovén jésí Bože ótéc nášich."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Runó ínohdá Hedéonovo, ježe na ťá čestaja Božija Slóva proobrazí snítije: jakože bo rósu začátije priját, netľínnaja Ďivo. ťímže vsí tebí zovém: bláhoslovén plód tvojehó čréva čestaja."),

    sText("2:"),
    jObj4("",none, "", "Nóva í strášna, í vírna í čúdna tvojá táinstva, Maríe mati Christá Boha nášeho: jako tobóju primiríchomsja vsí Bohovi í Vladícii, í so Anhely nýňi pojém: bláhoslovén plód tvojehó čréva čestaja."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Iže préžde Hedéon predvistvújet tebí čestaja, Božéstvennoje roždestvó javi: ókrín prinošájet íspólnen vodý ot ócyždénija runóvnaho: vés bo v ťá Božéstvenno vselísja, prečestaja: bláhoslovén plód tvojehó čréva čestaja."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Róždši Boha í Spasa vsjáčeskich Maríe, bylá jésí otčájannych íspravlénije, hríšnikov óbnovlénije, í nenadéžnych nadéžda, í pojúščich pómošč: bláhoslovén plód tvojehó čréva, čestaja."),
  ))
  ===== #translation.at("PIESEN") 8
  #generateTable((

    "",
    jObj4("Írmós",none, "", "V péšč ohnennuju ko ótrokóm jévréjskim snizšédšaho, í plámeň na rósu prelóžšaho Boha, pójte ďilá jako Hospoda, í prevoznosíte vo vsjá víki."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Nóv ráj nám jávílasja jésí presvjatája Bohoródice, ne smértnoje drévo, no živótnoje, jako sád bez símene prorastívši Hospoda, imže bezsmértnoju žízniju pitájemsja vsí."),

    sText("2:"),
    jObj4("",none, "", "Vospivájet vsjá Christóva cerkov Bohoródice, tvojé roždestvó, jako Spasájutsja hríšniji vsí í níščiji, iže ľubóviju k tebí pribihájušče: prijíde bo Christós na zémľu, čelovíki Spastí."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Svoboždájetsja ósuždénija prábaba tobóju Bohoródice Ďivo: í sé nýňi žený stráždut po Chrisťí, í rádujetsja jéstestvó žénskoje, jakože pervomučenica vopijét thékla."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Niktóže pohíbe čestaja, iže víry nadéždu sťažá k tebí pravoslávno, Ďivo mati Božija, rázvi tóčiju závistiju otmetájajsja, tvojemú ne poklaňátisja obrazu načertánnomu."),
  ))
  ===== #translation.at("PIESEN") 9
  #generateTable((

    "",
    jObj4("Írmós",none, "", "Jaže préžde Sólnca svitíľnika Boha vozsijávšaho, plótski k nám prišédšaho íz bokú Ďivíču, neizrečénno voplotívšaja, bláhoslovénnaja vsečestaja, ťá Bohoródice veličájem."),
    sText(translation.at("PR")),
    gText("Presvjatája Bohoródice Spasí nás."),

    sText("1:"),
    jObj4("",none, "", "Prikloní mi ucho tvojé Ďivo presvjatája, vospivájuščemu vírno pochváľnymi slovesý tvojé roždestvó: í jako dáry vdovíči, písň ústén mojích prijémši, prosí hrichóv mojích proščénija."),

    sText("2:"),
    jObj4("",none, "", "Sijáet dobróta tvojá, blistájet čistotý svítlosť, čestaja, í presijáet páče sích tvojé roždestvó: Boh bo tvoréc sólnca í tvári vsejá, íz tebé rodísja: ťímže ťá vsí veličájem."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Svít ťá čistotý, í žézl Ďivstva, í matr Božiju, Bohoľípno v písnech pojúšče Bohoródice, so hlásom chvalénija mólimsja tí: v Ďivstvi útverdí nás, í v čistoťí sochraní."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Tílo í dúšu neskvérnu Bohovi sobľúdši čestaja, cer voschoťí tvojejá dobróty Christós, í matr svojehó voploščénija pokazá, Maríe preslávnaja, Spasénije mojé soveršája."),
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
    jObj4("",none, "", "Pomyšľájušči dušé mojá, strášnaho dné íspytánija, trepéšči vozdajánija víčnyja múki, í pokajánijem vozopíj slezjášči: Bože sohriších, pomíluj mjá."),
    
    // Sidalen 1, 2
    sText("2:"),
    jObj4("",none, "", "Íspytújaj mojú sóvisť ósuždénnuju, bojúsja tvojehó strášnaho sudíšča Hospodi, jáko ňísť mí ot ďíl Spasénija: no jáko ímíjaj bohátstvo bláhoutróbija, úščédri mjá Christé Bože í Spasí mja."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Tjá veličájem Bohoródice vopijúšče: rádujsja žézle, ot nehóže bezsímenno Boh prozjabýj, pohubí na drévi smérť."),
  ))
  ===== #translation.at("SIDALEN_PO") 2
  #generateTable((
    
    // Sidalen 2, 1
    sText("1:"),
    jObj4("",none, "", "Pomíluj mjá, rečé David, í áz tebí zovú: sohriších Spase, mojá hrichí pokajánijem óčístiv, pomíluj mjá."),
    
    // Sidalen 2, 2
    sText("2:"),
    jObj4("",none, "", "Pomíluj mjá Bože, pomíluj mjá, ó dvojú hrichú plákaše David, ó ťmách áz sohrišénijich vopijú ti: ón postéľu slezámi ómočaváše, áz že ni kápli jédínyja ímam, otčájachsja í moľú: pomíluj mjá Bože, po velícij mílosti tvojéj."),
    
    // Sidalen 2, 3
    sText("3:"),
    jObj4("Mučeničen",none, "", "Prosvitívyj svjatýja tvojá páče zláta, í proslávivyj prepodóbnyja tvojá, jáko bláh, ťími úmoľájem byvája Christé Bože, živót náš úprávi, jáko čelovikoľúbec, í molitvu naprávi jáko kadílo, jédíne vo svjatých počivájaj."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Bohoródice ne prézri mené trébujušča zastuplénija, jéže ot tebé: na ťá bo úpová dušá mojá, pomíluj mjá."),
  ))
  ===== #translation.at("SIDALEN_PO") 3
  #generateTable((
    
    // Sidalen 3, 1
    sText("1:"),
    jObj4("",none, "Bláhoutróbija:", "Bláhoutróbija nezavístnyj ístóčnik, vo íordáňi pohruzíl jésí struí íoánne otňúduže priľížno moľú ťa: strasťmí mnóhimi potopľájema, pučínoju mjá žitéjskoju, na vsjákij déň ľúto, bláhoprijátnymi tvojími molitvami, k životá pristánišču rukovodí."),
    
    // Sidalen 3, 2
    sText("2:"),
    jObj4("",none, "", "Bláhoutróbija rádi mílosti bláže, Spastí tvojé sozdánije Christé prišél jésí, preklóň nebesá schoždénijem tvojím. ťímže strášnoje smotrénije tvojé pojúšče, vopijém tí: moľbámi predtéči tvojehó óčiščénije hrichóv podážď nám, jáko jédín bláhoutróben."),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Któ víďi, któ slýša matr raždájuščuju svojehó soďíteľa neiskusomúžno, dojáščuju dajúščaho píšču vsjákoj plóti; ole čudesé! prestól cheruvímskij jávísja črévo tvojé Bohoródice bláhodátnaja, molí ó dušách nášich."),
  ))
  ==== #translation.at("KANON")
  ===== #translation.at("PIESEN") 1
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Moyséjskuju písň vosprijímši, vozopíj dušé: pomóščnik í pokrovíteľ býsť mňí vo Spasénije, séj mój Boh, í proslávľu jéhó."),
    sText("1:"),
    jObj4("",none, "", "Sebé brátije préžde íschóda vospláčim hórko, jáko da slezámi dóbrymi úbižím tohdá sléz mučénija, ničtóže ímúščich polézno."),
    sText("2:"),
    jObj4("",none, "", "Tmámi Christé, zaviščách pokájatisja, í nečúvstvennu dúšu ímíjaj, v prehrišénija vpádaju: úščédri Spase némošč mojú."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Íže mučénija óhň preterpívše, Božéstvennym órošénijem strástotérpcy Christóvy, óhňá hejénny ízbávite mjá, v strastéch ľútych sležáščaho."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Krípcy na vrahí jávľšesja síloju Božéstvennoju, nekrípostnuju ích nizložíste sílu, mučenicy Christóvy dostochváľniji."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Plamenonósnaja kleščé, júže ísáija víďi ínohdá, veščéstvennyja sérdca mojehó strásti Bohorodíteľnice popalí, í do koncá potrebí."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Vo hlubiňí postlá ínohdá faraonítskoje vsevóinstvo preoružénnaja síla, voplóščšejesja že Slóvo vsezlóbnyj hrích potrebílo jésť, preproslávlennyj Hospod, slávno bo proslávisja."),
    sText("1:"),
    jObj4("",none, "", "Krestíteľu í predtéče Christóv, pohružájemyj vsehdá slasťmí ťilésnymi, úm mój úprávi, í vólny strastéj úkrotí: jáko da v tišiňí Božéstvenňij býv, pisnoslóvľu ťá."),
    sText("2:"),
    jObj4("",none, "", "Nedoumínnym prosvitívsja prosviščénijem, jáko mnohosvítlaja zvizdá, mýslennomu vostóku predtékl jésí: ímže ózarítisja sérdcu mojemú krestíteľu, molí, ómračénnomu vsími bisóvskimi priložéniji."),
    sText("3:"),
    jObj4("",none, "", "V ricí bézdnu ínohdá vsemúdre pohruzíl jésí, potóp soďivájuščuju bláhodátiju, vsehó prestuplénija. no moľúsja, potóki blážénne mojích prehrišénij ízsuší, Božéstvennym chodátajstvom tvojím."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Čestyja Ďivy, Boha voplotívšija, sródnik býl jésí blážénne predtéče, s néjuže ťá čtím í mólim, íže v Božéstvenňim chrámi tvojém nýňi živúšče: chrámy í nás sotvorí Dúcha svjatáho."),
  ))
  ===== #translation.at("PIESEN") 3
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Neplódstvovavšij mój úm, plodonósen Bože pokaží mi, ďílateľu dóbrych, nasadíteľu bláhích, bláhoutróbijem tvojím."),
    sText("1:"),
    jObj4("",none, "", "Línostnym dremánijem óťahotích dúšu: vozdvíhni Christé ko bďíniju pokajánija, tvoríti tvojá poveľínija."),
    sText("2:"),
    jObj4("",none, "", "Ne jáví mené Izráise, v déň strášnyj otčájanna: no préžde koncá óbratív, ľútyja ízbávi múki."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Íže strásti Christóvy podražávše dóbri, Božéstvennymi óbrazy strástotérpcy Christóvy, duší mojejá ľútyja strásti íscilíte."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Da íže na nebesích prisnosúščnym bláhím spodóbitesja vsjákoje ískušénije ľútych, strástotérpcy, na zemlí tvérdo preterpíste."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Dojíši materoľípno pitáteľa vsích, í nósiši sehó na óbjátijach čestaja, vsjáčeskaja rukóju nosjáščaho vsehdá."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Na kámeni mjá víry útverdív, razširíl jésí ústá mojá na vrahí mojá. vozveselí bo sja dúch mój, vnehdá píti: ňísť svjat, jákože Boh náš, í ňísť práveden páče tebé Hospodi."),
    sText("1:"),
    jObj4("",none, "", "Íscilí strúpy duší mojejá, úm mój, ómračénnyj nebrežénijem, ózarí Božéstvennym tvojím chodátajstvom Hospodeň predtéče, í vsjákaho ízbávi mjá soprotívnaho óbstojánija, moľúsja."),
    sText("2:"),
    jObj4("",none, "", "Neplódstvije razrišíl jésí róždšija, rodívsja Božijim promyšlénijem premúdre proróče: neplódnoje úbo sérdce mojé, plodonósno nýňi soďílaj Hospodeň predtéče, chodátajstvom tvojím, dobroďítelej prinosíti prozjabénija."),
    sText("3:"),
    jObj4("",none, "", "Ljubóviju tvojéju sozidájuščaho Božéstvennyj dóm, výšňaho žitijá úlučíti molí, íže víroju chrámu tvojemú služáščyja, chrámy Dúcha Božéstvennaho sotvorí, krestíteľu í predtéče, chodátajstvy tvojími."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Veseľášesja predtéča v ložesnách nosím máternich, í poklaňášesja Hospodu, nosímu v ložesnách blahodátnyja, jéhóže molí, ot vsjákija skórbi ízbáviti mjá."),
  ))
  ===== #translation.at("PIESEN") 4
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Jéže ot Ďivy tvojé roždestvó prorók predzrjá, vospropovídaše vopijá: slúch tvój úslýšach, í úbojáchsja, jáko ot júha, í íz horý svjatýja prijosinénnyja prišél jésí Christé."),
    sText("1:"),
    jObj4("",none, "", "Ókrádena mjá otvsjúdu, í óbniščávša Slóve, zrjá vráh, ó pohíbeli mojéj rádujetsja, ľstívyj mudréc: Hospodi slávy, óbohatíteľu úbóhich, tohó mja zloďíjstvija ízmí."),
    sText("2:"),
    jObj4("",none, "", "Rúci í óči óskverních Hospodi, soďíjav jáže neľípo jésť tvoríti, í v hňív podvihóch ščedróty tvojá, íždív tvojé dolhoterpínije: prizrív úščédri mjá bláže."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Kóľ díven Boh náš vo svjatých jésť, poslúšavšich jéhó, í nizlahájuščich ístukánnyja pohíbeli, í nasľídovavšich rajá prostránstvo, ot nehóže drévle ízhnán býsť ádám."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Strujámi krovéj blážénniji ústáviste króv, prinosímuju ínohdá démonom, vsím pohíbeľnuju, na páhubu prinosjáščym čelovíkom. sehó rádi úblažájemi jésté prísno."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Naučívsja Dúchom proróčeskij preslávnyj lík, jéže páče úmá tvojéj tájňi Bohoródice, različnoobrázno sijú prednačertájet svjaščénnymi óbrazý, íchže konéc zrím svítlo."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Prišél jésí ot Ďivy, ne chodátaj, ni Anhel, no sám Hospodi voplóščsja, í Spasl jésí vsehó mja čelovíka. ťím zovú ti: sláva síľi tvojéj Hospodi."),
    sText("1:"),
    jObj4("",none, "", "Preklónšemu nebesá í čelovíkom besídovavšu, hlavú prikloníl jésí, desníceju tvojéju preboháte: jéjuže mjá sobľudí, vo smiréniji sobľudája sérdce mojé."),
    sText("2:"),
    jObj4("",none, "", "Pustýňa tebé hraždanína neprochódnaja ímjáše, blážénne predtéče. ťímže vopijú ti: pústu vsjákaho Božéstvennaho ďijánija bývšu dúšu mojú snabdí."),
    sText("3:"),
    jObj4("",none, "", "Zakón Božéstvennyj úpravľája, bezzakónno zaklán býl jésí. ťímže moľúsja tebí: bezzakónnujušča mjá vsehdá, í preľščájema bisóvskimi preľščéňmi, ísprávi."),
    sText("4:"),
    jObj4("",none, "", "Sozdáv sám sebé chrám Vladícii cerjú, k Božéstvennym selénijem nýňi prešél jésí predtéče: íchže polučíti molí, tebí presvjatýj dóm vozdvíhšaho."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Prízri na mjá nedúhujuščaho vseneporóčnaja, í razriší strásti mojá ľútyja í neudoboiscíľnyja: jáko da veličáju ťá vozvelíčivšuju vsé čelovíčestvo."),
  ))
  ===== #translation.at("PIESEN") 5
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Mhlú duší mojejá Spase mój razhnáv, svítom zápovidej tvojích ózarí mja, jáko jédín cer míra."),
    sText("1:"),
    jObj4("",none, "", "Hrichí sovokupľáju bezúmno hrichóm, í vosklonénija ňísť v smérti mojéj: úvý mňí, káko jávľúsja Christóvi;"),
    sText("2:"),
    jObj4("",none, "", "Bidú prijémľu jáko korábľ, pohubích mojé brémja, jéže mí dál jésí ščédre, í nýňi óbniščáv zovú: ne prézri mené Christé."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Jáko slávu prezrívše dóľňuju í popirájemuju, nebésňij strastotérpcy spodóbistesja slávi, soprebyvájušče Christú."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ljubvé jáže k plóti úm otlučívše, víroju múki úsvóiste ľubézno strástotérpcy, úsvoájemi Christú."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Danijíl ťá hóru véliju Dúchom zrjášče Bohoródice: ot nejáže kámeň otsíksja, sokrušájet démonov ístukánnaja."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Prosviščénije vo ťmí ležáščich, Spasénije otčájannych Christé Spase mój, k tebí utreňuju cerjú míra, prosvití mja sijánijem tvojím: ínóho bo rázvi tebé Boha ne znáju."),
    sText("1:"),
    jObj4("",none, "", "V tečénijich íordánskich strujá netľínija predtéče, krestív Christá molí ístekánija strastéj mojích ízsušíti, í potóki sládostnyja nasľídovati, í právednych krásnaho rádovanija."),
    sText("2:"),
    jObj4("",none, "", "Úžé rydáju, í sodrahájusja stráchom, í nedoumínijem vsehdá soderžím jésm, pomyšľája mojá soďílannaja, í búduščij súd úžásnyj: bláhoutróbne Hospodi, poščadí mja tvojehó krestíteľa moľbámi."),
    sText("3:"),
    jObj4("",none, "", "Zakonopolahájaj ľúdem Spasénije, v raskájaniji predtéče prehrišénij bývšeje, posreďí zakóna í bláhodáti stál jésí. sehó rádi mólim ťá: óbrazmí pokajánija nás prosvití."),
    sText("4:"),
    jObj4("",none, "", "Dážď mí vrémja pokajánija, únýnno prešédšeje, vsé íždívšemu, bláhoďíteľu, ímíja na sijé moľáščaho ťá Slóve, íoánna velíkaho predtéču, í pokajánija vsemírnaho propovídnika."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Navíty í lovléniji ľstívaho úmertvíchsja, Vladíčice vseneporóčnaja, óživí mja, jáže róždšaja živót vsích Bohoródice ńpostásnyj, da ťá pojú bláhočéstno vseneporóčnuju."),
  ))
  ===== #translation.at("PIESEN") 6
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Vo hlubiňí hrichóvňij soderžím jésm Spase, í v pučíňi žitéjsťij óburevájem: no jákože Jónu ot zvírja, í mené ot strastéj vozvedí, í Spasí mja."),
    sText("1:"),
    jObj4("",none, "", "Jákože drévle chananéa zovú ti Spase, Sýne Božij, pomílovav mjá úščédri: dúšu bo stráždušču ímam v ľútych, í samú v čúvstvo prijití ne choťáščuju."),
    sText("2:"),
    jObj4("",none, "", "Smuščájet mjá bezmírnych strastéj búrja: jákože mórju ínohdá zapretíl jésí, í spásl jésí svjatýja učenikí tvojá, í mené Izráise vozvedí, í Spasí Christé."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Údivíšasja Anheľstiji bezplótniji lícy terpíniju vášemu, jéže v ťilesí: í pochvalíša podajúščaho vám čestníji stradáľcy, í sílu í trudóv vozdajánija."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Ókropľájemi krovéj svojích tečéňmi, í óčiju ízbodájemi mučenicy, pomerzájemi stúdeniju ľútoju, k teploťí žízni preidóste, vospivájušče Christá."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Jáko trapéza chľíb vmiščáješi tájnyj, ot nehóže jádše ne ktomú álčem vsepítaja, víduščiji ťá Christá vsích Boha rodíteľnicu, í pitáteľnicu jáko vojístinnu."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "V bézdňi hrichóvňij vaľájasja, neizsľídnuju milosérdija tvojehó prizyváju bézdnu: ot tlí Bože mjá vozvedí."),
    sText("1:"),
    jObj4("",none, "", "Hlás Slóvo propovídavyj, vsích hlásy vosprijém, prosí hrichóv proščénije darováti, víroju pojúščym ťá."),
    sText("2:"),
    jObj4("",none, "", "Sokrušénije duší mojejá íscilí, í hrichóv brémja razriší, í páče nadéždy Spasí mja molitvami tvojími, blážénne predtéče."),
    sText("3:"),
    jObj4("",none, "", "Íisusa, jéhóže rukóju tvojéju krestíl jésí, predtéče molí, rukí mja ízbáviti hrichá, vzimájušča k nemú rúci prísno, vseslávne."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Dremánijem ľínostnym óderžím jésm, són hrichóvnyj ťahotít sérdce mojé: tvojím prečestaja bďínnym chodátajstvom vozdvíhni, í Spasí mja."),
  ))
  ===== #translation.at("PIESEN") 7
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Cheruvímy podražájušče ótrocy v peščí, likovstvováchu vopijúšče: bláhoslovén jésí Bože, jáko ístinoju í sudóm navél jésí sijá vsjá hrích rádi nášich, prepítyj í preproslávlennyj vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Zakónov tvojích otverhóchsja, í pokoríchsja bezslovésnym pochotém, ďíja neľípaja Christé, jáko ósujetíchsja v bezúmiji mojém, jákože ín niktóže ot čelovík na zemlí: ne óstávi úbo mené Spase, pohíbnuti, čelovikoľúbija rádi."),
    sText("2:"),
    jObj4("",none, "", "V bezzakónijich, Hospodi, sé áz začát jésm, jákože David zovú, í jáko bludníca slezjú, í jáko preohorčevájaj ráb, preohorčích ťá jédínaho súščaho Boha bláháho: ne óstávi úbo mené Spase pohíbnuti, čelovikoľúbija rádi."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Mučeničeskij podvizásja sobór strastotérpec, mučeničeski vinčásja živonósnoju desníceju: jáko vojístinnu Boha vozľubí, vsjá sotvóršaho Slóvom. í nýňi na nebesích rádujasja, naslaždájetsja Božéstvennaho nasľídija."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Óčiju ízbodájemi, í otjémlemi rukámi í nohámi, bláhotéčno k nebesnomu bláhoslávniji posyláchusja šéstviju, prepinájušče šéstvija jédinobórca: ťích molitvami Spasí vsjá Slóve, tebé slavoslóvjaščyja."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Cheruvími slávjat, serafími vospivájut, prestóli, í vlásti, í Hospodstvija prísno, jéže páče úmá tvojé roždestvó, Maríe vsepítaja, jáko jédína Boha raždáješi plótiju. jéhóže molí čestaja, vsím nám Spastísja, ľubóviju počitájuščym ťá."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Bohoprotívnoje veľínije bezzakónnujuščaho mučíteľa, vysók plámeň voznesló jésť: Christós že prostré Bohočestívym ótrokóm rósu Dúchóvnuju, sýj bláhoslovén í preproslávlen."),
    sText("1:"),
    jObj4("",none, "", "Íz kórene sikíroju tvojehó pokajánija, ístórh jázvy strástnaho sérdca mojehó, vsadí predtéče Božéstvennoje bezstrástije, í strách čisťíjšij Božij, vsjákija zlóby otčuždájuščij mjá."),
    sText("2:"),
    jObj4("",none, "", "Vo strujách íordánskich, jáko krestíl jésí pokryvájuščaho vodámi prevýsprenňaja Hospoda: tohó molí vódu darováti Božéstvennaho úmilénija prísno óčíma mojíma, slávnyj predtéče."),
    sText("3:"),
    jObj4("",none, "", "Íže míru vzémľuščaho hrích áhnca Božija, predtéče propovídav, tohó molí ot kózlišč části jávíti mjá čúžda, í desným jéhó óvcám í mené sočetáti, slávne."),
    sText("4:"),
    jObj4("Bohoródičen",none, "", "Neplódnaja útróba nosjáše ťá Ďivo: vo črévi nosívšuju Slóvo voploščénno, jéhóže Božéstvennymi vzyhrániji, velíkij predtéča, neplódnyj vsesvjatýj plód pozná rádujasja, í poklonísja."),
  ))
  ===== #translation.at("PIESEN") 8
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "V kupiňí moyséju Ďivy čúdo, na sijnájsťij horí proobrazívšaho ínohdá, pójte, bláhoslovíte, í prevoznosíte vo vsjá víki."),
    sText("1:"),
    jObj4("",none, "", "Da óbožíši nás, voplotílsja jésí za mílosť, nikákože razumích, poraboščén slasťmí: tvojéju bláhostiju óbratí mja Christé, vsích Spasénije."),
    sText("2:"),
    jObj4("",none, "", "Tý pástyrju dóbryj Slóve, zablúždšuju na horách prestuplénija, ókajánnuju mojú dúšu óbratí í Spasí: da ne do koncá mja vráh ľstívyj požrét."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Stánem múžeski vkúpi, vopijáchu drúh drúhu krásniji stradáľcy, úraňáemi ľúťi: sé Christós prostirájet pobídy vincý vo vsjá víki."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Krípkimi žílami, tvérdymi vášimi boľízňmi údavíste zmíja, choťáščaho vás zlokovárno preľstíti: í rájskija píšči jávístesja nasľídnicy."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Da óbožít nás Boh, voplotísja íz čestych krovéj tvojích, í býsť čelovík Ďivo Bohoródice: jéhóže molí prísno ó čtúščich ťá."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Péšč ínohdá óhnennaja v vavylóňi ďíjstva razďiľáše, Božijim veľínijem chaldéi ópaľájuščaja, vírnyja že órošájuščaja, pojúščyja: bláhoslovíte vsjá ďilá Hospodňa Hospoda."),
    sText("1:"),
    jObj4("",none, "", "Dážď desnícu mňí na zemlí ležáščemu, predtéče, íže desnícu prostér, í ómýl jésí vodámi neskvérnaho: í ízbávi mjá skvérny ťilésnyja, vsehó mja óčiščája pokajánijem, í Spasí mja."),
    sText("2:"),
    jObj4("",none, "", "Ímúšči dušé vrémja pokájatisja, ľínosti ťažčájšij són ottrjasí, í spíšno pobdí vopijúšči Vladícii tvojemú: mílosrde, úščédri mjá, krestíteľa tvojehó moľbámi."),
    sText("3:"),
    jObj4("",none, "", "Potócy strastéj, í vódy zlóby do duší mojejá vnidóša, blážénne predtéče: potščísja skóro ízjáti mjá, íže ríčnymi strujámi ízmýv bezstrástija tišájšuju pučínu."),
    sText("4:"),
    jObj4("",none, "", "Úvý mňí, mnóha zlá sotvóršemu! úvý mňí, jédínomu prohňívavšemu Boha prebláháho! krestíteľu Christóv, pomozí mi, í podážď prehrišénij mojích razrišénije, í dolhóv mojích otsičénije tvojími chodátajstvy."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Výšňaho Bohu plótiju róždšaja, ot hnója mjá vozstávi strastéj óskorbľájuščich mjá, í ľúťi vsehó óbniščávša, Božéstvennymi óbohatí prečestaja dobroďíteľmi, jáko da vospojú ťa spasájem."),
  ))
  ===== #translation.at("PIESEN") 9
  ====== Kanón pokajánen
  #generateTable((
    
    // Kanon 1
    sText(super("1")),
    jObj4("Írmós",none, "", "Ot zemnoródnych któ slýša takovóje, ílí któ víďi kohdá; jáko Ďiva óbrítesja vo črévi ímúščaja, í bezboľíznenno mladénca poróždšaja; takovóje tvojé čúdo, í ťá čestaja Bohoródice veličájem."),
    sText("1:"),
    jObj4("",none, "", "O káko strášno jésť tvojé sudíšče, na némže Christé óžidáju sudítisja, í ne čúvstvuju otňúd sehó strácha, v ľínosti vsjá ľíta provoždája! óbratí mja jédíne soďíteľu, íže manassíju óbraščéj sohrišívšaho."),
    sText("2:"),
    jObj4("",none, "", "Ústávi Christé potóki, vopijú ti, bezmírnych mojích zól, tóki mňí dajáj sléz úmyvájuščyja skvérnu, jáže podjách bezúmijem: í Spasí mja, spasýj bludnícu ot duší pokájavšujusja, mílostiju tvojéju."),
    sText("3:"),
    jObj4("Mučeničen",none, "", "Svitozárnaja Božéstvennych strastotérpec pámjať, jáko sólnce nám vozsijávši, vsjá koncý zemnýja svitovódit, í ťmú prohoňáet Božéstvennym Dúchom ídoloneístovstva, í strastéj dušetľínnych pomračénije."),
    sText("4:"),
    jObj4("Mučeničen",none, "", "Pólk čésten, vóinstvo pobidonósnoje, í ízbránnoje ópolčénije, sobór svjatých mučenik, lík blážénnyj, likostojánijem sočetásja bezplótnych. ťích molitvami Christé, vsjá ný cárstviju tvojemú pričástniki sotvorí."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Svítlymi zarjámi, íz čréva tvojehó vozsijávšaho nám, í bezbóžija nóšč potrébľšaho, Ďivo mati Maríe, prosvití vsjá víroju tebé čtúščyja, í ot nesvitímyja ťmý ízbávi v čás ósuždénija."),
  ))
  ====== Kanón svjatómu velíkomu proróku íoánnu predtéči
  #generateTable((
    
    // Kanon 2
    sText(super("2")),
    jObj4("Írmós",none, "", "Beznačáľna rodíteľa Sýn, Boh í Hospod, voplóščsja ot Ďivy nám jávísja, ómračénnaja prosvitíti, sobráti rastočénnaja. ťím vsepítuju Bohoródicu veličájem."),
    sText("1:"),
    jObj4("",none, "", "Kála mjá ízbávi hrichóvnaho Hospodi, bezhríšňi jédíne í mnohomílostive, krestíteľa moľbámi, íže tebé propovídavyj vsemú míru áhnca Božija, vzémľuščaho čelovíkov hrichí."),
    sText("2:"),
    jObj4("",none, "", "Jáko šípok blahovónen, jáko bláhouchánnyj kyparís, jáko neuvjadájemyj krín, jáko mńro čestno ímíjaj ťá Hospodeň predtéče, mojích ďíl zlosmrádija ízbavľájusja molitvami tvojími, pritekája k pokróvu tvojemú."),
    sText("3:"),
    jObj4("",none, "", "Neplódstvujušča mjá neplódnymi ďíly vseblážénne sotvorí, dobroďítelej blahoplódije prísno prinosjášča, čádo mjá Hospodne tvorjá, í pričástnika Božéstvennomu cárstviju, í svjatých sobóru kupnožíteľa."),
    sText("4:"),
    jObj4("",none, "", "Nám ľúbjaščym ťá, í ľubóviju počitájuščym, í v Božéstvenňim chrámi tvojém likújuščym, dážď s nebesé razrišénije ľútych predtéče Hospodeň, í žitijá íspravlénije, í prehrišénij ízbavlénije."),
    sText("5:"),
    jObj4("Bohoródičen",none, "", "Nosímu vo útróbi Bohomáterni, vsjá nosjáščemu mánijem, poklonílsja jésí proróče: s néjuže molí smirénňij Spastísja duší mojéj, vo mnóhaja vpádajuščej po vsjá dní sohrišénija."),
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((

    // ST Stich na 1
    sText("1:"),
    jObj4("",none, "", "Vsích prevoschoždú hrichóm, kohó naučú pokajániju; ášče vozdochnú jáko mytár, nepščúju óťahčíti nebesá: ášče slezjú jákože bludníca, óskverňáju slezámi zémľu. no dážď mí óstavlénije hrichóv Bože, í pomíluj mjá."),
    "",
    gText("Íspólnichomsja zaútra mílosti tvojejá Hospodi, í vozrádovachomsja í vozveselíchomsja, vo vsjá dní náša vozveselíchomsja, za dní, v ňáže smiríl ný jésí, ľíta, v ňáže víďichom zlája: í prízri na rabý tvojá, í na ďilá tvojá, í nastávi sýny ích."),

    // ST Stich na 2
    sText("2:"),
    jObj4("",none, "", "Bezzakónija mojá prézri Hospodi, ot Ďivy roždéjsja, í sérdce mojé óčísti, chrám sijé tvorjá svjatáho tvojehó Dúcha: ne otvérži mené ot tvojehó licá, bezmírnuju ímíjaj véliju mílosť."),
    "",
    gText("Í búdi svítlosť Hospoda Boha nášeho na nás, í ďilá rúk nášich ísprávi na nás, í ďílo rúk nášich ísprávi."),

    // ST Stich na 3
    sText("3:"),
    jObj4("",none, "", "Krest Christóv vzémše svjatíji mučenicy, órúžije nepobidímoje, vsjú dijávoľu sílu úprazdníša, í prijémše vincý nebésnyja, sťiná nám býša, ó nás tomú moľáščesja."),

    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("Bohoródičen",none, "", "Rádujsja Maríe Bohoródice, chráme nerazrušímyj, páče že svjatýj, jakože vopijét prorók: svjat chrám tvój, díven v právďi."),
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
    jObj4("",none, "", "Hlás tí prinósim razbójnič, í vopijém tí: pomjaní nás Hospodi vo cárstviji tvojém."),

    // B Stich na 3
    sText("3:"),
    gText("Blážéni čístiji sérdcem, jáko tíji Boha úzrjat."),
    "",
    jObj4("",none, "", "Razbójnika prevzydóch, í bludnícu strasťmí: úščédri mjá Spase samoosuždénnaho."),

    // B Stich na 2
    sText("2:"),
    gText("Blážéni mirotvórcy, jáko tíji Sýnove Božiji narekútsja."),
    "",
    jObj4("",none, "", "Pohruzívyj bézdnu bláhoutróbija v voďí predtéče, tvojími molitvami strásti mojá úmáli."),

    // B Stich na 1
    sText("1:"),
    gText("Blážéni ízhnáni právdy rádi, jáko ťích jésť cárstvo nebésnoje."),
    "",
    jObj4("",none, "", "Íže preléstnaja tečénija, krovéj tečéňmi ízsušívše, Christóvy strástotérpcy, dostójno slávimi jésté."),

    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", "Vitíjstvujaj, jákože písano jésť, úm čelovíčeskij ne móžet Božestvá jédíno načálo píti trijypostásnoje."),

    // I:
    col2(gText(translation.at("IN"))),
    "",
    jObj4("",none, "", "Jáže neopáľno róždšuju Boha prebeznačáľna, pochváľnymi vsí písňmi neprestánno vospojím."),
  ))
])
