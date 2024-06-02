#import "../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("M_APOSTOL_VIAC")


// ---------------------------------------
// VECIEREN V NEDELU VECER
// ---------------------------------------


  === #translation.at("V")
  ==== #translation.at("HOSPODI_VOZVACH")
  #generateTable((
    
    // HV Stich na 2
    sText("2:"),
    gText("Хвали́те гдⷭ҇а всѝ ꙗ҆зы́цы, похвали́те є҆го̀ всѝ лю́дїе."),
    "",
    jObj4("",none, "", ""),
    
    // HV Stich na 1
    sText("1:"),
    gText("Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ."),
    "",
    jObj4("",none, "", " ..."),
    
    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", ""),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("",none, "", ""),
  ))
  ==== #translation.at("STICHOVNI")
