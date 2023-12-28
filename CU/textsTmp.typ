#import "../style.typ": *

#let trojsvatePoOtcenas = [
  #lettrine("Ст҃ы́й бж҃е, ст҃ы́й крѣ́пкїй, ст҃ы́й безсме́ртный, поми́лꙋй на́съ. (3x)")

  #lettrine("Сла́ва ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ.")

  #lettrine("И҆ ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ, а҆ми́нь.")

  #lettrine("Прест҃а́ѧ трⷪ҇це, поми́лꙋй на́съ: гдⷭ҇и, ѡ҆чи́сти грѣхѝ на́шѧ: влⷣко, простѝ беззакѡ́нїѧ на̑ша: ст҃ы́й, посѣтѝ и҆ и҆сцѣлѝ не́мѡщи на́шѧ, и҆́мене твоегѡ̀ ра́ди.")

  #lettrine("Гдⷭ҇и поми́лꙋй. (3x)")

  #lettrine("Сла́ва ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ.")

  #lettrine("И҆ ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ, а҆ми́нь.")

  #lettrine("Ѻ҆́ч҃е на́шъ, и҆́же є҆сѝ на нб҃сѣ́хъ, да свѧти́тсѧ и҆́мѧ твоѐ, да прїи́детъ црⷭ҇твїе твоѐ, да бꙋ́детъ во́лѧ твоѧ̀, ꙗ҆́кѡ на нб҃сѝ и҆ на землѝ. хлѣ́бъ на́шъ насꙋ́щный да́ждь на́мъ дне́сь, и҆ ѡ҆ста́ви на́мъ до́лги на́шѧ, ꙗ҆́коже и҆ мы̀ ѡ҆ставлѧ́емъ должникѡ́мъ на́шымъ: и҆ не введѝ на́съ во и҆скꙋше́нїе, но и҆зба́ви на́съ ѿ лꙋка́вагѡ.")

  #lettrine("Ꙗ҆́кѡ твоѐ є҆́сть црⷭ҇тво:", color: blue)
  
  #lettrine("А҆ми́нь.")
]

#let nacaloPoOtcenasBezKnaza = [
  #lettrine("Мл҃твами ст҃ы́хъ ѻ҆тє́цъ на́шихъ, гдⷭ҇и і҆и҃се хрⷭ҇тѐ бж҃е на́шъ, поми́лꙋй на́съ.")
  
  #lettrine("А҆ми́нь.")

  #lettrine("Сла́ва тебѣ̀ бж҃е на́шъ, сла́ва тебѣ̀.")

  #lettrine("Цр҃ю̀ нбⷭ҇ный, ᲂу҆тѣ́шителю, дш҃е и҆́стины, и҆́же вездѣ̀ сы́й, и҆ всѧ̑ и҆сполнѧ́ѧй, сокро́вище бл҃ги́хъ и҆ жи́зни пода́телю, прїидѝ и҆ всели́сѧ въ ны̀, и҆ ѡ҆чи́сти ны̀ ѿ всѧ́кїѧ скве́рны, и҆ сп҃сѝ бл҃же, дꙋ́шы на́шѧ.")

  #trojsvatePoOtcenas
]

#let nacaloPoOtcenas = [
  #note[Jeréj: ]#lettrine("Blahoslovén Bóh náš, vsehdá nýňi i prísno i vo víki vikóv.", color: blue)
  
  #note[ak nie je kňaz, prednášaj:] 
  
  #nacaloPoOtcenasBezKnaza
]

#let nacaloBezKnaza = [
  #nacaloPoOtcenasBezKnaza

  #lettrine("Гдⷭ҇и поми́лꙋй. ") #primText[(12x)]

  #lettrine("Сла́ва ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ.")

  #lettrine("И҆ ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ, а҆ми́нь.")

  #lettrine("Прїиди́те, поклони́мсѧ цр҃е́ви на́шемꙋ бг҃ꙋ.")

  #lettrine("Прїиди́те, поклони́мсѧ и҆ припаде́мъ хрⷭ҇тꙋ̀, цр҃е́ви на́шемꙋ бг҃ꙋ.")

  #lettrine("Прїиди́те, поклони́мсѧ и҆ припаде́мъ самомꙋ̀ хрⷭ҇тꙋ̀, цр҃е́ви и҆ бг҃ꙋ на́шемꙋ.")
]

#let nacalo = [
  #nacaloPoOtcenas

  #lettrine("Гдⷭ҇и поми́лꙋй. ") #primText[(12x)]

  #lettrine("Сла́ва ѻ҆ц҃ꙋ̀, и҆ сн҃ꙋ, и҆ ст҃о́мꙋ дх҃ꙋ.")

  #lettrine("И҆ ны́нѣ и҆ при́снѡ, и҆ во вѣ́ки вѣкѡ́въ, а҆ми́нь.")

  #lettrine("Прїиди́те, поклони́мсѧ цр҃е́ви на́шемꙋ бг҃ꙋ.")

  #lettrine("Прїиди́те, поклони́мсѧ и҆ припаде́мъ хрⷭ҇тꙋ̀, цр҃е́ви на́шемꙋ бг҃ꙋ.")

  #lettrine("Прїиди́те, поклони́мсѧ и҆ припаде́мъ самомꙋ̀ хрⷭ҇тꙋ̀, цр҃е́ви и҆ бг҃ꙋ на́шемꙋ.")
]

#let prepustenieBezKnaza = [\
  == Otpust <X>

  #lettrine("Чⷭ҇тнѣ́йшꙋю херꙋві̑мъ:", color: blue)

  #lettrine("Sláva Otcú, i Sýnu, i svjatómu Dúchu, i nýňi i prísno, i vo víki vikóv. Amíň. Hóspodi, pomíluj. (3x) Blahosloví.", color: blue)

  #lettrine("Мл҃твами ст҃ы́хъ ѻ҆тє́цъ на́шихъ, гдⷭ҇и і҆и҃се хрⷭ҇тѐ бж҃е на́шъ, поми́лꙋй на́съ.")
  
  #lettrine("А҆ми́нь.")
]

#let prepustenie = [\
  == Otpust <X>

  #note[Jeréj: ] #lettrine("Premúdrosť!")

  #lettrine("Чⷭ҇тнѣ́йшꙋю херꙋві̑мъ:", color: blue)

  #note[Jeréj: ] #lettrine("Sláva tebi, Christé Bóže, upovánije náše, sláva tebí.")

  #note[Lík: ] #lettrine("Sláva Otcú, i Sýnu, i svjatómu Dúchu, i nýňi i prísno, i vo víki vikóv. Amíň. Hóspodi, pomíluj. (3x) Blahosloví.", color: blue)

  #note[Jeréj: ] #lettrine("Christós ístinnyj Bóh náš, molítvami prečístyja svojejá Mátere, síloju čestnáho i životvorjáščaho Krestá, jehóže dnés vsemírnoje vozdvíženije svítlo prázdnujem i vsích svjatých, pomílujet i spasét nás, jáko bláh i čelovikoľúbec.")

  #note[Lík: ] #lettrine("А҆ми́нь.")
]

#let tropar(hlas, podoben, txt) = [
  #primText[Tropár (#hlas. hlas#if podoben != none [, #podoben])]: #txt
]

#let sit(hlas, podoben, txt) = [
  #primText[Sláva: I nýňi: #if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):] ]#txt
]

#let stich(hlas, podoben, txt) = [
  #primText[#if hlas != none [(#hlas. hlas#if podoben != none [, #podoben]):]] #txt
]

#let vers(txt) = [
    #pad(left: 20pt)[#primText[Verš:] #txt]
]

#let K(txt) = [
  #note[Jeréj:] #txt
]

#let L(txt) = [
  #note[Lík:] #txt
]

#let prokimen(hlas, txt, v) = [
  #primText[Prokimen (#hlas. hlas)]: #txt

  #vers[#v]
]
