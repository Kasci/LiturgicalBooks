#import "/style.typ": *

#let bg = {
  rect(width: 95%, height: 95%, inset: 10pt, radius: 5pt, stroke: (paint: primary, thickness: 2pt),
    rect(width: 100%, height: 100%, outset: 0pt,  radius: 5pt, stroke: (paint: primary, thickness: 2pt))
  )
}

#let project(body) = {
  
  set page(
    paper:"a5", 
    numbering: "1", 
    number-align: top+right,  
    margin: (x: 30pt, y: 40pt), 
    background: bg,
    header-ascent: 75%,
    footer-descent: 75%
  )
  
  // HEADINGS
  show heading.where(level: 1): it => [ 
    #align(center)[#text(30pt)[
      #primText[#text(hyphenate:false)[#it]]
    ]]
  ]
  show heading.where(level: 2): it => [ 
    #underline[#align(center)[#text(25pt)[
      #primText[#it]
    ]]]
  ]

  // Main body.
  set par(justify: true)
  
  body
}

#let formatx(it) = {
  let type = it.at(0)

  let f = it.at(1)
  if f == none {
    f = i => i
  }

  if type == "one" {
    let a = it.at(2)
    return ("", pad(left: -110%, right: 0%, text(font: "Monomakh Unicode", lang: "cs", fill: black, align(center, f(a)))))
  } else if type == "two" {
    let a = it.at(2)
    let b = it.at(3)

    return (text(font: "Monomakh Unicode", lang: "ru", fill: black, f(a)), text(font: "Monomakh Unicode", lang: "cs", fill: black, f(b)))
  }
}

#let make(values) = {
  let val = values.map(formatx)
  table(
    columns: (50%, 50%),
    stroke: none,
    row-gutter: 0.3em,
    column-gutter: 0.5em,
    ..val.flatten()
  )
}

#show: project
#set text(font: "Monomakh Unicode", lang: "ru", fill: black)

#show "povie meno": secText
#show "Povie meno": secText
#show "и҆́мⷬ҇къ": secText

#let note = secText
#let diakon = it => text(13pt, it)
#let knaz = it => text(15pt, it)

#let zasnubenie = (
  ("one", note, "Po božskej liturgii, kým kňaz stojí vo svätyni, prídu tí, ktorí sa chcú spojiť manželským zväzkom, pred sväté dvere chrámu: muž napravo, žena naľavo."),
  ("one", note, "Kňaz prichádza do predsiene, tri razy robí znamenie kríža nad hlavami mladomanželov, privádza ich do chrámu a diakon hovorí"),
  ("two", diakon, "Бл҃гословѝ влады́ко", "Požehnaj, vladyka!"),
  ("one", note, "Kňaz:"),
  ("two", knaz, "Бл҃гослове́нъ бг҃ъ на́шъ: ***", "Požehnaný Boh náš teraz i vždycky i na veky vekov."),
  ("one", note, "Ľud:"),
  ("two", none, "А҆ми́нь.", "Amen."),
  ("one", note, "Potom kňaz hovorí nahlas túto modlitbu:"),
  ("two", knaz, "Ми́ромъ гдⷭ҇ꙋ помо́лимсѧ.", "Modlime sa k Pánovi."),
  ("two", knaz, "Бж҃е вѣ́чный, разстоѧ̑щаѧсѧ собра́вый въ соедине́нїе, и҆ сою́зъ любвѐ положи́вый и҆̀мъ неразрꙋши́мый: бл҃гослови́вый і҆саа́ка и҆ реве́ккꙋ, и҆ наслѣ́дники ѧ҆̀ твоегѡ̀ ѡ҆бѣтова́нїѧ показа́вый: са́мъ бл҃гословѝ и҆ рабы̑ твоѧ̑ сїѧ̑, и҆́мⷬ҇къ, и҆́мⷬ҇къ, наставлѧ́ѧ ѧ҆̀ на всѧ́кое дѣ́ло бл҃го́е.", "Večný Bože, roztratených si priviedol k jednote a daroval im nezničiteľné puto lásky, požehnal si Izáka a Rebeku a urobil ich dedičmi tvojho prisľúbenia. Ty sám požehnaj aj týchto svojich služobníkov povie meno a povie meno a ukáž im cestu ku každému dobrému skutku."),
  ("one", note, "Zvolanie:"),
  ("two", knaz, "Ꙗ҆́кѡ млⷭ҇тивый и҆ чл҃вѣколю́бецъ бг҃ъ є҆сѝ, и҆ тебѣ̀ сла́вꙋ возсыла́емъ, ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ, ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ.", "Lebo ty si Boh milostivý a láskavý k ľuďom a my ti vzdávame slávu, Otcu i Synu i Svätému Duchu, teraz i vždycky i na veky vekov."),
  ("one", note, "Ľud:"),
  ("two", none, "А҆ми́нь.", "Amen."),
  ("one", note, "Kňaz:"),
  ("two", knaz, "Ми́ръ всѣ̑мъ.", "Pokoj všetkým."),
  ("one", note, "Ľud:"),
  ("two", none, "И҆ дꙋ́хови твоемꙋ̀.", "I tvojmu duchu."),
  ("one", note, "Diakon:"),
  ("two", diakon, "Главы̑ ва́шѧ гдⷭ҇еви приклони́те.", "Skloňte si hlavy pred Pánom."),
  ("one", note, "Ľud:"),
  ("two", none, "Тебѣ̀ гдⷭ҇и.", "Pred tebou, Pane."),
  ("one", note, "Kňaz:"),
  ("two", knaz, "Гдⷭ҇и бж҃е на́шъ, ѿ ꙗ҆зы̑къ пред̾ѡбрꙋчи́вый цр҃ковь дѣ́вꙋ чⷭ҇тꙋю, бл҃гословѝ ѡ҆брꙋче́нїе сїѐ, и҆ соединѝ, и҆ сохранѝ рабы̑ твоѧ̑ сїѧ̑ въ ми́рѣ и҆ є҆диномы́слїи.", "Pane, Bože náš, z pohanských národov si si zasnúbil cirkev, čistú pannu. Požehnaj toto zasnúbenie a zjednoť a zachovaj týchto svojich služobníkov v pokoji a jednomyseľnosti."),
  ("one", note, "Zvolanie:"),
  ("two", knaz, "Тебѣ́ бо подоба́етъ всѧ́каѧ сла́ва, че́сть и҆ поклоне́нїе, ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ, ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ.", "Veď tebe patrí všetka sláva, česť a poklona, Otcu i Synu i Svätému Duchu, teraz i vždycky i na veky vekov."),
  ("one", note, "Ľud:"),
  ("two", none, "А҆ми́нь.", "Amen."),
  ("one", note, "Potom kňaz odovzdáva prstene: najprv mužovi a potom žene. Mužovi hovorí:"),
  ("two", knaz, "Ѡ҆брꙋча́етсѧ ра́бъ бж҃їй, и҆́мⷬ҇къ, рабѣ̀ бж҃їей, и҆́мⷬ҇къ, во и҆́мѧ ѻ҆ц҃а̀, и҆ сн҃а, и҆ ст҃а́гѡ дх҃а, а҆ми́нь.", "Zasnubuje sa Boží služobník povie meno Božej služobníčke povie meno v mene Otca i Syna i Svätého Ducha. Amen."),
  ("one", note, "Potom hovorí aj žene:"),
  ("two", knaz, "Ѡ҆брꙋча́етсѧ раба̀ бж҃їѧ, и҆́мⷬ҇къ, рабꙋ̀ бж҃їю, и҆́мⷬ҇къ, во и҆́мѧ ѻ҆ц҃а̀, и҆ сн҃а, и҆ ст҃а́гѡ дх҃а, а҆ми́нь.", "Zasnubuje sa Božia služobníčka povie meno Božiemu služobníkovi povie meno v mene Otca i Syna i Svätého Ducha. Amen."),
  ("one", note, "Keď to hovorí, pri každom z nich robí prsteňom kríž nad jeho hlavou a nastokne mu ho na prst pravej ruky."),
  ("one", note, "Kňaz, ak chce, hovorí túto modlitbu:"),
  ("one", note, "Diakon:"),
  ("two", diakon, "Гдⷭ҇ꙋ помо́лимсѧ.", "Modlime sa k Pánovi."),
  ("one", note, "Ľud:"),
  ("two", none, "Гдⷭ҇и поми́лꙋй.", "Pane, zmiluj sa."),
  ("two", knaz, "Гдⷭ҇и бж҃е на́шъ, ѻ҆́трокꙋ патрїа́рха а҆враа́ма сше́ствовавый въ средорѣ́чїи, посыла́ѧ ᲂу҆невѣ́стити господи́нꙋ є҆гѡ̀ і҆саа́кꙋ женꙋ̀, и҆ хода́тайствомъ водоноше́нїѧ ѡ҆брꙋчи́ти реве́ккꙋ ѿкры́вый: са́мъ бл҃гословѝ ѡ҆брꙋче́нїе рабѡ́въ твои́хъ, сегѡ̀ и҆́мⷬ҇къ, и҆ сеѧ̀ и҆́мⷬ҇къ, и҆ ᲂу҆твердѝ є҆́же ᲂу҆ ни́хъ глаго́ланное сло́во: ᲂу҆твердѝ ѧ҆̀ є҆́же ѿ тебѐ ст҃ы́мъ соедине́нїемъ: ты́ бо и҆з̾ нача́ла созда́лъ є҆сѝ мꙋ́жескїй по́лъ и҆ же́нскїй, и҆ ѿ тебѐ сочетава́етсѧ мꙋ́жꙋ жена̀, въ по́мощь и҆ въ воспрїѧ́тїе ро́да человѣ́ча. са́мъ ᲂу҆́бѡ гдⷭ҇и бж҃е на́шъ, посла́вый и҆́стинꙋ въ наслѣ́дїе твоѐ, и҆ ѡ҆бѣтова́нїе твоѐ на рабы̑ твоѧ̑ ѻ҆тцы̀ на́шѧ, въ ко́емждо ро́дѣ и҆ ро́дѣ и҆збра̑нныѧ твоѧ̑: при́зри на раба̀ твоего̀ и҆́мⷬ҇къ, и҆ на рабꙋ̀ твою̀ и҆́мⷬ҇къ, и҆ ᲂу҆твердѝ ѡ҆брꙋче́нїе и҆́хъ въ вѣ́рѣ и҆ є҆диномы́слїи, и҆ и҆́стинѣ, и҆ любвѝ. ты́ бо гдⷭ҇и показа́лъ є҆сѝ да́тисѧ ѡ҆брꙋче́нїю и҆ ᲂу҆твержда́тисѧ во все́мъ. Пе́рстнемъ даде́сѧ вла́сть і҆ѡ́сифꙋ во є҆гѵ́птѣ: пе́рстнемъ просла́висѧ данїи́лъ во странѣ̀ вавѷлѡ́нстѣй: пе́рстнемъ ꙗ҆ви́сѧ и҆́стина ѳама́ры: пе́рстнемъ ѻ҆ц҃ъ на́шъ нбⷭ҇ный ще́дръ бы́сть на сн҃а своего̀: дади́те бо, глаго́летъ, пе́рстень на десни́цꙋ є҆гѡ̀, и҆ закла́вше тельца̀ ᲂу҆пита́ннаго, ꙗ҆́дше возвесели́мсѧ. сама̀ десни́ца твоѧ̀ гдⷭ҇и, мѡѷсе́а воѡрꙋжѝ въ чермнѣ́мъ мо́ри: сло́вомъ бо твои́мъ и҆́стиннымъ нб҃са̀ ᲂу҆тверди́шасѧ и҆ землѧ̀ ѡ҆снова́сѧ, и҆ десни́ца ра̑бъ твои́хъ бл҃гослови́тсѧ сло́вомъ твои́мъ держа́внымъ, и҆ мы́шцею твое́ю высо́кою. са́мъ ᲂу҆́бѡ и҆ ны́нѣ влⷣко, бл҃гословѝ пе́рстней положе́нїе сїѐ бл҃гослове́нїемъ нбⷭ҇нымъ: и҆ а҆́гг҃лъ тво́й да пред̾и́детъ пред̾ ни́ми всѧ̑ дни̑ живота̀ и҆́хъ.", "Pane, Bože náš, na cestách po Mezopotámii sisprevádzal sluhu patriarchu Abraháma, ktorý ho poslal nájsť nevestu svojmu pánovi Izákovi, a čerpanie vody si použil na to, aby si mu dal najavo, že Izákovou snúbenicou má byť Rebeka. Ty sám požehnaj toto zasnúbenie tvojich služobníkov povie meno a povie meno a upevni slovo, ktoré si dali. Upevni ich tvojím svätým zjednotením, veď práve ty si na začiatku utvoril človeka ako muža a ženu a práve od teba pochádza to, že mužovi sa pridáva žena na pomoc a pokračovanie ľudského rodu. Pane, Bože náš, ty si poslal pravdu svojmu dedičstvu a svoje prisľúbenie svojim služobníkom, našim otcom, tvojim vyvolencom z každého pokolenia. Zhliadni teda na svojho služobníka povie meno a na svoju služobníčku povie meno a posilni ich zasnúbenie vo viere, jednomyseľnosti, pravde a láske, veď práve ty, Pane, si ukázal, že je správne sa zasnubovať a upevňovať vo všetkom. Bol to prsteň, ktorým sa odovzdala moc Jozefovi v Egypte, bol to prsteň, vďaka ktorému sa preslávil Daniel v babylonskej krajine, bol to prsteň, ktorý ukázal Tamarinu pravdu, bol to prsteň, ktorý svedčil o tom, že náš nebeský Otec preukázal zľutovanie svojmu synovi, keď povedal: „Dajte mu prsteň na pravicu a zabite vykŕmené teľa! Jedzme a veseľme sa!“ Tvoja pravica, Pane, bola Mojžišovou zbraňou v Červenom mori. Veď tvojím pravdivým slovom boli upevnené nebesia a zem postavená na svojich základoch a pravica tvojich služobníkov bude požehnaná tvojím mocným slovom a tvojím zdvihnutým ramenom. Ty, Vládca, aj teraz udeľ svoje nebeské požehnanie tomuto odovzdaniu prsteňov a nech tvoj anjel kráča pred nimi po všetky dni ich života."),
  ("one", note, "Zvolanie:"),
  ("two", knaz, "Ꙗ҆́кѡ ты̀ є҆сѝ бл҃гословлѧ́ѧй и҆ ѡ҆сщ҃а́ѧй всѧ́чєскаѧ: и҆ тебѣ̀ сла́вꙋ возсыла́емъ, ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ, ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ.", "Lebo ty si ten, ktorý požehnáva a posväcuje všetko a my ti vzdávame slávu, Otcu i Synu i Svätému Duchu, teraz i vždycky i na veky vekov."),
  ("one", note, "Ľud:"),
  ("two", none, "А҆ми́нь.", "Amen."),
  ("one", note, "Ak sa zasnúbenie slávi samostatne, nasleduje prepustenie. V opačnom prípade pokračujeme tak, ako sa to uvádza ďalej"),
)

#let korunovanie = (
  ("one", note, "Kým kňaz s kadidelnicou kráča pred nimi k tetrapodu, spievame 127. žalm:"),
  ("two", none, "Бл҃же́ни всѝ боѧ́щїисѧ гдⷭ҇а. * Ходѧ́щїи въ пꙋте́хъ є҆гѡ̀. / Трꙋды̀ плодѡ́въ твои́хъ снѣ́си. * Бл҃же́нъ є҆сѝ, и҆ добро̀ тебѣ̀ бꙋ́детъ. / Жена̀ твоѧ̀ ꙗ҆́кѡ лоза̀ плодови́та, * во страна́хъ до́мꙋ твоегѡ̀. / Сы́нове твоѝ ꙗ҆́кѡ новосаждє́нїѧ ма̑слична, * ѻ҆́крестъ трапе́зы твоеѧ̀. / Сѐ та́кѡ бл҃гослови́тсѧ человѣ́къ * боѧ́йсѧ гдⷭ҇а. / Бл҃гослови́тъ тѧ̀ гдⷭ҇ь ѿ сїѡ́на, * и҆ ᲂу҆́зриши бл҃га̑ѧ і҆ерⷭ҇ли́ма всѧ̑ дни̑ живота̀ твоегѡ̀. / И҆ ᲂу҆́зриши сы́ны сынѡ́въ твои́хъ: * ми́ръ на і҆и҃лѧ.", "Blažení všetci, ktorí sa boja Pána, * ktorí kráčajú po jeho cestách. / Budeš jesť z práce svojich rúk; * blažený si a budeš sa mať dobre. / Tvoja manželka je sťa úrodný vinič * na stenách tvojho domu. / Tvoji synovia sú ako mládniky olivy * okolo tvojho stola. / Hľa, takto bude požehnaný človek, * ktorý sa bojí Pána! / Kiež ťa požehná Pán zo Siona * a budeš vidieť dobro Jeruzalema po všetky dni svojho života. / A budeš vidieť synov svojich synov. * Pokoj nad Izraelom!"),
  ("one", note, "Potom sa kňaz pýta ženícha:"),
  ("two", knaz, "И҆́маши ли, и҆́мⷬ҇къ произволе́нїе бл҃го́е и҆ непринꙋжде́нное, и҆ крѣ́пкꙋю мы́сль, поѧ́ти себѣ̀ въ женꙋ̀ сїю̀, и҆́мⷬ҇къ, ю҆́же здѣ̀ пред̾ тобо́ю ви́диши;", "Povie meno, rozhodol si sa slobodne, v dobrej vôli a s pevným úmyslom vziať si za manželku túto povie meno, ktorú tu pred sebou vidíš?"),
  ("one", note, "Ženích odpovedá:"),
  ("two", none, "И҆́мамъ, честны́й ѻ҆́тче.", "Rozhodol som sa, úctyhodný otče!"),
  ("one", note, "Kňaz znova:"),
  ("two", knaz, "Не ѡ҆бѣща́лсѧ ли є҆сѝ и҆но́й невѣ́стѣ;", "Nesľúbil si sa inej žene?"),
  ("one", note, "Ženích odpovedá:"),
  ("two", none, "Не ѡ҆бѣща́хсѧ, честны́й ѻ҆́тче.", "Nesľúbil som sa, úctyhodný otče!"),
  ("one", note, "Nato sa kňaz obráti k neveste a pýta sa jej:"),
  ("two", knaz, "И҆́маши ли произволе́нїе бл҃го́е и҆ непринꙋжде́нное, и҆ тве́рдꙋю мы́сль, поѧ́ти себѣ̀ въ мꙋ́жа сего̀ и҆́мⷬ҇къ, є҆го́же пред̾ тобо́ю здѣ̀ ви́диши;", "Povie meno, rozhodla si sa slobodne, v dobrej vôli a s pevným úmyslom vziať si za manžela tohto povie meno, ktorého tu pred sebou vidíš?"),
  ("one", note, "Nevesta odpovedá:"),
  ("two", none, "И҆́мамъ, честны́й ѻ҆́тче.", "Rozhodla som sa, úctyhodný otče!"),
  ("one", note, "Kňaz znova:"),
  ("two", knaz, "Не ѡ҆бѣща́ласѧ ли є҆сѝ и҆но́мꙋ мꙋ́жꙋ:", "Nesľúbila si sa inému mužovi?"),
  ("one", note, "Nevesta odpovedá:"),
  ("two", none, "Не ѡ҆бѣща́хсѧ, честны́й ѻ҆́тче.", "Nesľúbila som sa, úctyhodný otče!"),
  
  ("one", note, ""),
  ("two", knaz, "", ""),
  ("two", diakon, "", ""),
  ("two", none, "", ""),
)

= POSTUP PRI KORUNOVANÍ MANŽELOV
== ZASNÚBENIE
#make(zasnubenie)
== KORUNOVANIE
#make(korunovanie)
