#import "../../../all.typ": *
#columns(2, gutter: 2pt, [

  == #translation.at("M_APOSTOL_JEDEN")


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
    jObj4("",8, "Čto vy narečem", "Čto ťá imenújem Apoštole? nébo li? jáko slávu ispovídal jesí Bóžiju: rikú li? jáko tvar napajáješi tájno: zvizdú, ozarjájuščuju cérkov? čášu, pivo svjatoje izlivájuščuju?drúha Christóva blĺžňijšaho, Bezplótnych ravnosélnika: molí o spasénii duš nášich."),
    
    // HV Stich na 1
    sText("1:"),
    gText("Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ."),
    "",
    jObj4("",none, "", "Slávne bohovídče Apoštole, ukrasíšasja tvojá nóhi, putém própovidi šéstvujuščyja dóbri, i pútí vsja vrážija sťisňájuščyja, širotóju božéstvennaho rázuma, Slova jávlšahosja debelstvóm plóti, i učeniká ťa preslávna izbrávšaho, blažénne: Jehóže molí, spastísja dušám nášym."),
    
    // S:
    col2(gText(translation.at("S"))),
    "",
    jObj4("",none, "", ""),
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("",none, "", "Voístinnu bohohlahólive Apoštole, póslan byl jesí jáko strilá ot Christá svitovídnaja, ujazvľájuščaja vrahí, ujázvlennym že dušám jávstvenno podajúšča izcilénije: ťímže ťa po dólhu ublažájem, i svjatóje tvojé dnes soveršájem toržestvó: molí spastísja dušám nášym."),
  ))
  ==== #translation.at("TROPAR")
  #generateTable((
    
    // S:I:
    col2(gText(translation.at("SI"))),
    "",
    jObj4("",3, "", "Apoštole svjatýj (N.): molí mílostivaho Bóha, da prehrišénij ostavlénije podásť dušám nášym."),
  ))
  #colbreak()
])
