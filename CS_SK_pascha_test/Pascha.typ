#import "/CU_json/all.typ": *

#show: book

#show "(ímja rek)": sText
#show "(povie meno)": sText

#let sk = json("./pascha_sk.json")
#let csl = json("./pascha_csl.json")

#let generateTable(tbl) = [
  #table(
    columns: (auto, 20pt, auto),
    column-gutter: 0pt, 
    stroke: none,
    // align: (a,b,c,d,e) => (center, left, center, center, left).at(a),
    ..tbl
  )
]

#set text(font: "Monomakh Unicode", lang: "cs", fill: black)
#show heading: it => {
  // if it.location().position().y > (page.height * 0.5).to-absolute() [
  //   #pagebreak()
  // ]
  align(center, block(inset: (y: 1em), text(hyphenate: false, it)))
}
#show heading.where(level:1): it => align(center, block(inset: (y: 2em), text(hyphenate: false, it)))


#let line = table.hline(stroke: (paint: red, dash: "dashed"))
#let note(txt) = table.cell(colspan: 3, pText(txt))
#let D(sk, cs) = (
  gText(sk),
  table.cell(align: center, pText("D")),
  gText(cs))
#let K(sk, cs) = (
  gText(sk),
  table.cell(align: center, pText("K")),
  gText(cs))
#let L(sk, cs, note: "") = (
  sk + if note.len() > 0 {sText(" " + note)} else {""},
  table.cell(align: center, pText("L")),
  cs + if note.len() > 0 {sText(" " + note)} else {""}
)
#let N(sk, cs, mid) = (
  cText(sk),
  table.cell(align: center, pText(mid)),
  cText(cs)
)
#let X(sk, cs, mid) = (
  gText(sk),
  table.cell(align: center, pText(mid)),
  gText(cs)
)

#let skChV = "Kristus slávne vstal z mŕtvych, * smrťou smrť premohol * a tým, čo sú v hroboch, * život daroval."
#let cslChV = "Christós voskrése iz mértvych, * smértiju smerť popráv * i súščym vo hrobích živót darováv."

#let paschalnyUvod() = {
  generateTable((
    K("Sláva svätej, jednopodstatnej, životodarnej a nedeliteľnej Trojici v každom čase, teraz i vždycky, i na veky vekov.", "Sláva Svjaťíj, i Jedinosúščňij, i Životvorjáščij, i Nerazďilímij Tróici, vsehdá, nýňi i prísno, i vo víki vikóv."),
    line,
    note("Ak niet kňaza:"),
    L("Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov, zmiluj sa nad nami.", "Molítvami svjatých Otéc, Hóspodi Isúse Chríste, Bóže náš, pomíluj nás."),
    line,
    L("Amen.","Amíň."),
    K(skChV, cslChV),
    L(skChV, cslChV, note: "(2x)"),
  ).flatten())
}

#let verse() = {
  let cnt = 1
  let vers = sk.CH_S.zip(csl.CH_S)
  let ret = (
    table.cell(colspan: 3, inset: 1em, [== Verše]),
  )
  for it in vers {
    ret.push(N(it.at(0), it.at(1), numbering("i", cnt)))
    ret.push(L(skChV, cslChV))
    cnt += 1
  }
  
  generateTable(ret.flatten())
}

#let velkaEktenia() = {
  let sk = (
    "Za pokoj zhora a za spásu našich duší modlime sa k Pánovi.",
    "Za mier na celom svete, za blaho svätých Božích cirkví a za zjednotenie všetkých modlime sa k Pánovi.",
    "Za tento svätý chrám a za tých, čo doň vstupujú s vierou, nábožnosťou a s Božou bázňou, modlime sa k Pánovi.",
    "Za veľkňaza všeobecnej Cirkvi, nášho Svätého Otca (povie meno), rímskeho pápeža, modlime sa k Pánovi.",
    "Za nášho najosvietenejšieho otca arcibiskupa a metropolitu (povie meno), za nášho bohumilého otca biskupa (povie meno), za ctihodných kňazov a diakonov v Kristovi, za všetko duchovenstvo a ľud modlime sa k Pánovi.",
    "Za tých, čo spravujú a ochraňujú našu krajinu, modlime sa k Pánovi.",
    "Za toto mesto (alebo Za túto obec alebo Za tento svätý dom), za všetky mestá, obce, krajiny a za tých, ktorí v nich podľa viery žijú, modlime sa k Pánovi.",
    "Za priaznivé počasie, hojnosť plodov zeme a za pokojné časy modlime sa k Pánovi.",
    "Za cestujúcich, chorých, trpiacich, zajatých a za ich záchranu modlime sa k Pánovi.",
    "Za oslobodenie od všetkého nášho zármutku, hnevu a núdze modlime sa k Pánovi.",
    "Zastaň sa a spas nás, zmiluj sa a zachráň nás, Bože, svojou milosťou."
  )
  let csl = (
    "O svýšňim míri, i spaséniji dúš nášich, Hóspodu pomólimsja.",
    "O míri vsehó míra, blahostojániji svjatých Bóžijich cerkvéj, i sojedinéniji vsích, Hóspodu pomólimsja.",
    "O svjaťím chrámi sém, i s víroju, blahohovínijem, i stráchom bóžijim vchoďáščich v óň, Hóspodu pomólimsja.",
    "O svjaťíjšem vselénsťim Archijeréji nášem (ímja rek), Pápi Rímsťim, Hóspodu pomólimsja.",
    "O preosvjaščénňijšem Archijepískopi i Mitropolíťi nášem Kýr (ímja rék), i o bohoľubívim Jepískopi nášem Kýr (ímja rék), čéstňim presvýterstvi, vo Chrisťí dijákonstvi, o vsém príčťi i ľúdech, Hóspodu pomólimsja.",
    "O bohochranímim naróďi nášem, o prederžáščich vlastéch nášich, i o vsém vójinstvi, Hóspodu pomólimsja.",
    "O hráďi sém (ilí O vési séj, ilí O svjaťíj obíteli séj), vsjákom hráďi, straňí, i víroju živúščich v ních, Hóspodu pomólimsja.",
    "O blahorastvoréniji vozdúchov, o izobíliji plodóv zemných, i vrémeňich mírnych, Hóspodu pomólimsja.",
    "O plávajuščich, putešéstvujuščich, nedúhujuščich, strážduščich, pľinénnych, i o spaséniji ích, Hóspodu pomólimsja.",
    "O izbávitisja nám ot vsjákija skórbi, hňíva i núždy, Hóspodu pomólimsja.",
    "Zastupí, spasí, pomíluj, i sochraní nás, Bóže, Tvojéju blahodátiju."
  )

  let idx = 1
  let mix = sk.zip(csl)
  let all = (
  )
  for (s, c) in mix {
    all.push(X(s,c,numbering("i", idx)))
    idx += 1
  }

  let first_sk = "Modlime sa v pokoji k Pánovi."
  let first_csl = "Mírom Hóspodu pomólimsja."
  let last_sk = "Presvätú, prečistú, preblahoslavenú a slávnu Vládkyňu našu, Bohorodičku Máriu, vždy Pannu, i všetkých svätých spomínajúc, sami seba, druh druha i celý náš život Kristu Bohu oddajme."
  let last_csl = "Presvjatúju, prečístuju, preblahoslovénnuju, slávnuju Vladýčicu nášu Bohoródicu i prisnoďívu Maríju, so vsími svjatými pomjanúvše, sámi sebé i drúh drúha, i vés živót náš Christú Bóhu predadím."
  let zvolanie_sk = "Lebo tebe patrí všetka sláva, česť a poklona, Otcu i Synu, i Svätému Duchu, teraz i vždycky, i na veky vekov."
  let zvolanie_csl = "Jáko podobájet Tebí vsjákaja sláva, čésť i poklonénije, Otcú, i Sýnu, i svjatómu Dúchu, nýňi i prísno i vo víki vikóv."
  [== Ekténia]
  generateTable((
    line,
    note("Ak je prítomný kňaz, alebo diakon, prednáša veľkú ekténiu. Ak nie, berieme:"),
    L("Pane, zmiluj sa.", "Hóspodi, pomíluj.", note: "(12x)"),
    L("Sláva, i teraz:", "Sláva, i nýňi:"),
    line,
    all,
    D(first_sk, first_csl),
    L("Pane, zmiluj sa.", "Hóspodi, pomíluj.", note: "(po každej prosbe)"),
    D(last_sk, last_csl),
    L("Tebe, Pane.", "Tebí, Hóspodi."),
    K(zvolanie_sk, zvolanie_csl),
    L("Amen.", "Amíň.")
  ).flatten())
}

#let piesen(idx) = {
  let s = sk.K.at(str(idx))
  let c = csl.K.at(str(idx))
  let s_k = sk.K.at(str(idx)+"_K")
  let c_k = csl.K.at(str(idx)+"_K")
  let mix = s.zip(c)
  let i = 1
  let all = mix.slice(1).map(it => ((
    if "TITLE" in it.at(0) and it.at(0).TITLE == "Troičen" {
      N("Svätá Trojica, Bože náš, sláva tebe.", "Presvjatája Trojce, Bóže náš, sláva Tebí.", "")
    } else {
      N("Kristus slávne vstal z mŕtvych.", "Christós voskrése iz mértvych.", "")
    }
  ),(
    jObj(it.at(0)),
    pText(numbering("i", mix.position(x => x == it))),
    jObj(it.at(1))
  )))

  [=== Pieseň #idx] 
  generateTable((
    jObj(mix.at(0).at(0)), "", jObj(mix.at(0).at(1)),
    all,
    (jObj(s_k), "", jObj(c_k))
  ).flatten())
}

#let mala_ektenia(zvolanie_sk, zvolanie_csl) = {

  let last_sk = "Presvätú, prečistú, preblahoslavenú a slávnu Vládkyňu našu, Bohorodičku Máriu, vždy Pannu, i všetkých svätých spomínajúc, sami seba, druh druha i celý náš život Kristu Bohu oddajme."
  let last_csl = "Presvjatúju, prečístuju, preblahoslovénnuju, slávnuju Vladýčicu nášu Bohoródicu i prisnoďívu Maríju, so vsími svjatými pomjanúvše, sámi sebé i drúh drúha, i vés živót náš Christú Bóhu predadím."
  
  [=== Malá ekténia] 
  
  generateTable((
    line,
    note("Ak je prítomný kňaz, alebo diakon, prednáša malú ekténiu. Ak nie, berieme:"),
    L("Pane, zmiluj sa.", "Hóspodi, pomíluj.", note: "(3x)"),
    L("Sláva, i teraz: Amen.", "Sláva, i nýňi: Amíň."),
    line,
    D("Znova a znova modlime sa v pokoji k Pánovi.", "Páki i páki, mírom Hóspodu pomólimsja."),
    L("Pane, zmiluj sa.", "Hóspodi, pomíluj."),
    D("Zastaň sa a spas nás, zmiluj sa a zachráň nás, Bože, svojou milosťou.","Zastupí, spasí, pomíluj, i sochraní nás, Bóže, Tvojéju blahodátiju."),
    L("Pane, zmiluj sa.", "Hóspodi, pomíluj."),
    D(last_sk, last_csl),
    L("Tebe, Pane.", "Tebí, Hóspodi."),
    K(zvolanie_sk, zvolanie_csl),
    L("Amen.", "Amíň.")
  ).flatten())
}

#let kanon() = {

  [== Kánon]
  align(center, pText("Hlas " + str(sk.K.H)))
  
  piesen(1)
  mala_ektenia("Lebo ty vládneš a tvoje je kráľovstvo a moc i sláva, Otca i Syna i Svätého Ducha, teraz i vždycky i na veky vekov.", "Jáko Tvojá deržáva, i Tvojé jésť cárstvo i síla, i sláva Otcá i Sýna i svjatáho Dúcha, nýňi i prísno i vo víki vikóv.")
  piesen(3)
  mala_ektenia("Lebo ty si náš Boh a my ti vzdávame slávu, Otcu i Synu, i Svätému Duchu, teraz i vždycky, i na veky vekov.", "Jako Ty jesí Boh naš, i Tebí slávu vozsylájem, Otcú, i Sýnu, i Svjatómu Dúchu, nýňi i prísno, i vo víki vikóv.")
  // ypakoj
  piesen(4)
  mala_ektenia("Lebo ty si Boh dobrý a láskavý k ľuďom a my ti vzdávame slávu, Otcu i Synu i Svätému Duchu, teraz i vždycky i na veky vekov.", "Jako Blah i Čelovikoľúbec Boh jesí, i Tebí slávu vozsylájem, Otcú, i Sýnu, i Svjatómu Dúchu, nýňi i prísno, i vo víki vikóv.")
  piesen(5)
  mala_ektenia("Lebo sa posväcuje a oslavuje tvoje vznešené a veľkolepé meno, Otca i Syna i Svätého Ducha, teraz i vždycky i na veky vekov.", "Jako svjatísja i proslávisja prečestnóe i velikoľípoje ímja Tvojé, Otcá, i Sýna, i Svjatáho Dúcha, nýňi i prísno, i vo víki vikóv.")
  piesen(6)
  mala_ektenia("Lebo ty si Kráľ pokoja a Spasiteľ našich duší, a my ti vzdávame slávu, Otcu i Synu, i Svätému Duchu, teraz i vždycky, i na veky vekov.", "Ty bo jesí Car míra, i Spas duš nášich, i Tebí slávu vozsylájem, Otcú, i Sýnu, i Svjatómu Dúchu, nýňi i prísno, i vo víki vikóv.")
  // kondak, ikos, videli sme..., stichira
  piesen(7)
  mala_ektenia("Nech je vždy oslavovaná a zvelebovaná vláda kráľovstva Otca i Syna i Svätého Ducha, teraz i vždycky i na veky vekov.", "Búdi deržáva Cárstvija Tvojehó blahoslovénna i preproslávlenna, Otcá, i Sýna, i Svjatáho Dúcha, nýňi i prísno, i vo víki vikóv.")
  piesen(8)
  mala_ektenia("Lebo sa požehnáva tvoje meno a oslavuje sa tvoje kráľovstvo, Otca i Syna, i Svätého Ducha, teraz i vždycky, i na veky vekov.", "Jako blahoslovísja ímja Tvojé, i proslávisja Cárstvo Tvojé, Otcá, i Sýna, i Svjatáho Dúcha, nýňi i prísno, i vo víki vikóv.")
  // velebenie
  piesen(9)
  mala_ektenia("Lebo teba chvália všetky nebeské mocnosti a my ti vzdávame slávu, Otcu i Synu, i Svätému Duchu, teraz i vždycky, i na veky vekov.", "Jáko tebé chváľat vsjá síly nebésnyja, i tebí slávu vozsylájem Otcú i Sýnu i svjatómu Dúchu, nýňi i prísno i vo víki vikóv.")
}

= Utiereň svetlého týždňa

#paschalnyUvod()
#verse()
#velkaEktenia()
#kanon()
  
    // svitilen
    // chvaly
    // ektenia
    // prepustenie
