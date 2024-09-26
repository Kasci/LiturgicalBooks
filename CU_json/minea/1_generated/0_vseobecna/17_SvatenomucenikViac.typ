#import "../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("M_SVATENOMUCENIK_VIAC")


// ---------------------------------------
// VECIEREN V NEDELU VECER
// ---------------------------------------


  === #translation.at("V")
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 3
    sText("3:"),
    gText("Ꙗ҆́кѡ ᲂу҆ гдⷭ҇а млⷭ҇ть, и҆ мно́гое ᲂу҆ негѡ̀ и҆збавле́нїе, и҆ то́й и҆зба́витъ і҆и҃лѧ ѿ всѣ́хъ беззако́нїй є҆гѡ̀."),
    "",
    jObj4("",0, "", ""),
    
    // HV Stich na 2
    sText("2:"),
    gText("Хвали́те гдⷭ҇а всѝ ꙗ҆зы́цы, похвали́те є҆го̀ всѝ лю́дїе."),
    "",
    jObj4("",none, "", " ..."),
    
    // HV Stich na 1
    sText("1:"),
    gText("Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ."),
    "",
    jObj4("",none, "", " ..."),
    
    // S:
    col2(gText(translation.at("S"))),
    "",
    " ...",
    
    // I:
    col2(gText(translation.at("IN"))),
    "",
    " ...",
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    " ...",
  ))
  ==== #translation.at("STICHOVNI")
  #generateTable((
    
    // S Stich na 1
    sText("1:"),
    jObj4("",0, "", ""),
    "",
    gText(jObj4("",none, "", "")),
    
    // S Stich na 2
    sText("2:"),
    jObj4("",none, "", " ..."),
    "",
    gText(jObj4("",none, "", "")),
    
    // S Stich na 3
    sText("3:"),
    jObj4("",none, "", " ..."),
    
    // S:
    col2(gText(translation.at("S"))),
    "",
    " ...",
    
    // I:
    col2(gText(translation.at("IN"))),
    "",
    " ...",
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    " ...",
  ))
  ==== #translation.at("TROPAR")
  #generateTable((
    
    // Tropar 1
    sText($#sym.dot$),
    jObj4("",0, "", ""),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    " ...",
  ))
  #colbreak()
])
