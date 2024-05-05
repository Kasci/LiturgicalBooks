#!/bin/python3

import io
import json

def jObj(obj):
    return f'jObj4("{obj["TITLE"] if "TITLE" in obj else ""}",{obj["HLAS"] if "HLAS" in obj else "none"}, "{obj["PRIPIV"] if "PRIPIV" in obj else ""}", "{obj["TEXT"] if "TEXT" in obj else ""}")'

def fixObjects(lst):
    ret = []
    for l in lst:
        if len(ret) == 0:
            ret.append(l)
            continue
        c = ret[-1]
        lT = l["TEXT"]
        if c["TEXT"] == l["TEXT"]:
            lTs = lT.split(" ")
            l["TEXT"] = " ".join(lTs[:3]) + " ..."
        ret.append(l)
    return ret

H = [1,2,3,4,5,6,7,8]
D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
Dn = ["Ne", "Po", "Ut", "Sr", "St", "Pi", "So"]

stichiry_HospodyVozvach = [
  "И҆зведѝ и҆з̾ темни́цы дꙋ́шꙋ мою̀, и҆сповѣ́датисѧ и҆́мени твоемꙋ̀.",
  "Менѐ ждꙋ́тъ пра́вєдницы, до́ндеже возда́си мнѣ̀.",
  "И҆з̾ глꙋбины̀ воззва́хъ къ тебѣ̀ гдⷭ҇и, гдⷭ҇и, ᲂу҆слы́ши гла́съ мо́й.",
  "Да бꙋ́дꙋтъ ᲂу҆́ши твоѝ, вне́млющѣ гла́сꙋ моле́нїѧ моегѡ̀.",
  "А҆́ще беззакѡ́нїѧ на́зриши гдⷭ҇и, гдⷭ҇и, кто̀ постои́тъ; ꙗ҆́кѡ ᲂу҆ тебѐ ѡ҆чище́нїе є҆́сть.",
  "И҆́мене ра́ди твоегѡ̀ потерпѣ́хъ тѧ̀ гдⷭ҇и, потерпѣ̀ дꙋша̀ моѧ̀ въ сло́во твоѐ, ᲂу҆пова̀ дꙋша̀ моѧ̀ на гдⷭ҇а.",
  "Ѿ стра́жи ᲂу҆́треннїѧ до но́щи, ѿ стра́жи ᲂу҆́треннїѧ, да ᲂу҆пова́етъ і҆и҃ль на гдⷭ҇а.",
  "Ꙗ҆́кѡ ᲂу҆ гдⷭ҇а млⷭ҇ть, и҆ мно́гое ᲂу҆ негѡ̀ и҆збавле́нїе, и҆ то́й и҆зба́витъ і҆и҃лѧ ѿ всѣ́хъ беззако́нїй є҆гѡ̀.",
  "Хвали́те гдⷭ҇а всѝ ꙗ҆зы́цы, похвали́те є҆го̀ всѝ лю́дїе.",
  "Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ."
  ]

stichiry_Stichovni = {
  "M": (
    "Помѧнꙋ̀ и҆́мѧ твоѐ во всѧ́комъ ро́дѣ и҆ ро́дѣ.",
    "Слы́ши дщѝ и҆ ви́ждь, и҆ приклонѝ ᲂу҆́хо твоѐ.",
    "Лицꙋ̀ твоемꙋ̀ помо́лѧтсѧ бога́тїи лю́дстїи.",
  ),
  "0": (
    "Гдⷭ҇ь воцари́сѧ, въ лѣ́потꙋ ѡ҆блече́сѧ.",
    "И҆́бо ᲂу҆твердѝ вселе́ннꙋю, ꙗ҆́же не подви́житсѧ.",
    "До́мꙋ твоемꙋ̀ подоба́етъ ст҃ы́нѧ гдⷭ҇и, въ долготꙋ̀ дні́й.",
  ),
  "6": (
    "Бл҃же́ни, ꙗ҆̀же и҆збра́лъ и҆ прїѧ́лъ є҆сѝ гдⷭ҇и.",
    "Дꙋ́шы и҆́хъ во бл҃ги́хъ водворѧ́тсѧ.",
    "",
  ),
  "x": (
    "Къ тебѣ̀ возведо́хъ ѻ҆́чи моѝ, живꙋ́щемꙋ на нб҃сѝ. сѐ ꙗ҆́кѡ ѻ҆́чи ра̑бъ въ рꙋкꙋ̀ госпо́дїй свои́хъ, ꙗ҆́кѡ ѻ҆́чи рабы́ни въ рꙋкꙋ̀ госпожѝ своеѧ̀: та́кѡ ѻ҆́чи на́ши ко гдⷭ҇ꙋ бг҃ꙋ на́шемꙋ, до́ндеже ᲂу҆ще́дритъ ны̀.",
    "Поми́лꙋй на́съ, гдⷭ҇и, поми́лꙋй на́съ, ꙗ҆́кѡ по мно́гꙋ и҆спо́лнихомсѧ ᲂу҆ничиже́нїѧ: наипа́че напо́лнисѧ дꙋша̀ на́ша поноше́нїѧ гобзꙋ́ющихъ, и҆ ᲂу҆ничиже́нїѧ го́рдыхъ.",
  )
}

stichiry_Chvalite = [
  "Сотвори́ти въ ни́хъ сꙋ́дъ напи́санъ: сла́ва сїѧ̀ бꙋ́детъ всѣ̑мъ прпⷣбнымъ є҆гѡ̀.",
  "Хвали́те бг҃а во ст҃ы́хъ є҆гѡ̀, хвали́те є҆го̀ во ᲂу҆тверже́нїи си́лы є҆гѡ̀.",
  "Хвали́те є҆го̀ на си́лахъ є҆гѡ̀, хвали́те є҆го̀ по мно́жествꙋ вели́чествїѧ є҆гѡ̀.",
  "Хвали́те є҆го̀ во гла́сѣ трꙋ́бнѣмъ: хвали́те є҆го̀ во ѱалти́ри и҆ гꙋ́слехъ.",
  "Хвали́те є҆го̀ въ тѷмпа́нѣ и҆ ли́цѣ, хвали́те є҆го̀ во стрꙋ́нахъ и҆ ѻ҆рга́нѣ.",
  "Хвали́те є҆го̀ въ кѷмва́лѣхъ доброгла́сныхъ, хвали́те є҆го̀ въ кѷмва́лѣхъ восклица́нїѧ: всѧ́кое дыха́нїе да хва́литъ гдⷭ҇а.",
  "Воскрⷭ҇нѝ гдⷭ҇и бж҃е мо́й, да вознесе́тсѧ рꙋка̀ твоѧ̀, не забꙋ́ди ᲂу҆бо́гихъ твои́хъ до конца̀.",
  "И҆сповѣ́мсѧ тебѣ̀ гдⷭ҇и всѣ́мъ се́рдцемъ мои́мъ, повѣ́мъ всѧ̑ чꙋдеса̀ твоѧ̑.",
]

stichiry_Stichovni_Utrena = {
  "x": (
    "И҆спо́лнихомсѧ заꙋ́тра млⷭ҇ти твоеѧ̀ гдⷭ҇и, и҆ возра́довахомсѧ и҆ возвесели́хомсѧ, во всѧ̑ дни̑ на́шѧ возвесели́хомсѧ, за дни̑, въ нѧ́же смири́лъ ны̀ є҆сѝ, лѣ̑та, въ нѧ́же ви́дѣхомъ ѕла̑ѧ: и҆ при́зри на рабы̑ твоѧ̑, и҆ на дѣла̀ твоѧ̑, и҆ наста́ви сы́ны и҆́хъ.",
    "И҆ бꙋ́ди свѣ́тлость гдⷭ҇а бг҃а на́шегѡ на на́съ, и҆ дѣла̀ рꙋ́къ на́шихъ и҆спра́ви на на́съ, и҆ дѣ́ло рꙋ́къ на́шихъ и҆спра́ви.",
  ),
  "6": (
    "Бл҃же́ни, ꙗ҆̀же и҆збра́лъ и҆ прїѧ́лъ є҆сѝ гдⷭ҇и.",
    "Дꙋ́шы и҆́хъ во бл҃ги́хъ водворѧ́тсѧ.",
    "И҆ па́мѧть и҆́хъ въ ро́дъ и҆ ро́дъ.",
  )
}

stichiry_Blazenny = (
  "Бл҃же́ни ни́щїи дх҃омъ, ꙗ҆́кѡ тѣ́хъ є҆́сть црⷭ҇тво нбⷭ҇ное.",
  "Бл҃же́ни пла́чꙋщїи, ꙗ҆́кѡ ті́и ᲂу҆тѣ́шатсѧ.",
  "Бл҃же́ни кро́тцыи, ꙗ҆́кѡ ті́и наслѣ́дѧтъ зе́млю.",
  "Бл҃же́ни а҆́лчꙋщїи и҆ жа́ждꙋщїи пра́вды, ꙗ҆́кѡ ті́и насы́тѧтсѧ.",
  "Бл҃же́ни млⷭ҇тивїи, ꙗ҆́кѡ ті́и поми́ловани бꙋ́дꙋтъ.",
  "Бл҃же́ни чи́стїи се́рдцемъ, ꙗ҆́кѡ ті́и бг҃а ᲂу҆́зрѧтъ.",
  "Бл҃же́ни миротво́рцы, ꙗ҆́кѡ ті́и сн҃ове бж҃їи нарекꙋ́тсѧ.",
  "Бл҃же́ни и҆згна́ни пра́вды ра́ди, ꙗ҆́кѡ тѣ́хъ є҆́сть црⷭ҇тво нбⷭ҇ное.",
  "Бл҃же́ни є҆стѐ, є҆гда̀ поно́сѧтъ ва́мъ, и҆ и҆жденꙋ́тъ, и҆ рекꙋ́тъ всѧ́къ ѕо́лъ глаго́лъ на вы̀ лжꙋ́ще менѐ ра́ди.",
  "Ра́дꙋйтесѧ и҆ весели́тесѧ, ꙗ҆́кѡ мзда̀ ва́ша мно́га на нб҃сѣ́хъ.",
)

pripivy = {
  "0": (
    ("Сла́ва гдⷭ҇и ст҃о́мꙋ воскрⷭ҇нїю твоемꙋ̀."),
    ("Сла́ва гдⷭ҇и крⷭ҇тꙋ̀ твоемꙋ̀ и҆ воскрⷭ҇нїю."),
    ("Прест҃а́ѧ Бцⷣе, сп҃сѝ на́съ.")
  )
}

pripiv_P = "Прест҃а́ѧ бцⷣе сп҃сѝ на́съ."
pripiv_N = "Прест҃а́ѧ трⷪ҇це бж҃е на́шъ, сла́ва тебѣ̀."

def generate(file: io.FileIO, json, index):
    f.write(f'  == #translation.at(\"{Dn[index]}\")\n')

    #########################################################
    # Generuj malu vecieren
    #########################################################
    if "M" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// MALA VECIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f'  === #translation.at(\"M\")\n',
                      f'  #header3([(#translation.at(\"{Dn[(index-1)%len(Dn)]}_V\"))])\n'
                      ])
        PRAYER = json["M"]
        ## Generuj Hospodi Vozvach
        HV = fixObjects(PRAYER["HV"])
        
        f.write('  ==== #translation.at("HOSPODI_VOZVACH")\n')
        length_HV = len(HV)
        stichiras = stichiry_HospodyVozvach[-length_HV:]
        f.writelines(
            [f'  #generateTable((\n']+
            [f'\n    // HV Stich na {length_HV - i}\n    sText("{length_HV - i}:"),\n    gText("{stichiras[i]}"),\n    "",\n    {jObj(x)},\n' for i,x in enumerate(HV)]+
            [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
             f'    "",\n    {jObj(PRAYER["HV_B"])},\n',
             f'  ))\n']
            )

        ## Generuj Stichiry
        SS = fixObjects(PRAYER["S"])
        
        f.write('  ==== #translation.at("STICHOVNI")\n')
        length_SS = len(SS)
        stichiras = stichiry_Stichovni["M"][-length_SS:]
        f.writelines(
            [f'  #generateTable((\n']+
            [f'\n    // S Stich na {i+1}\n    sText("{i+1}:"),\n    {jObj(x)},\n    "",\n    gText("{stichiras[i]}"),\n' for i,x in enumerate(SS[:-1])]+
            [f'\n    // S Stich na 4\n    sText("4:"),\n    {jObj(SS[-1])},\n']+
            [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
             f'    "",\n    {jObj(PRAYER["S_B"])},\n',
             f'  ))\n']
            )
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj velku vecieren
    #########################################################
    if "V" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// VELKA VECIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"V\")\n",
                      f"  #header3([(#translation.at(\"{Dn[(index-1)%len(Dn)]}_V\"))])\n"
                      ])
        PRAYER = json["V"]  

        ## Generuj Hospodi Vozvach
        HV = fixObjects(PRAYER["HV"])
        f.write('  ==== #translation.at("HOSPODI_VOZVACH")\n')
        length_HV = len(HV)
        skip = 3
        stichiras = stichiry_HospodyVozvach[-length_HV:-skip]
        f.writelines(
            [f'  #generateTable((\n']+
            [f'\n    // HV Stich na {length_HV - i}\n    sText("{length_HV - i}:"),\n    gText("{stichiras[i]}"),\n    "",\n    {jObj(x)},\n' for i,x in enumerate(HV[:-skip])]+
            [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
             f'    "",\n    {jObj(PRAYER["HV_B"])},\n',
             f'  ))\n']
            )

        ## Generuj Stichiry
        SS = fixObjects(PRAYER["S"])
        
        f.write('  ==== #translation.at("STICHOVNI")\n')
        length_SS = len(SS)
        stichiras = stichiry_Stichovni[str(index) if str(index) in stichiry_Stichovni else "x"][-length_SS:]
        f.writelines(
            [f'  #generateTable((\n']+
            [f'\n    // S Stich na {i+1}\n    sText("{i+1}:"),\n    {jObj(x)},\n    "",\n    gText("{stichiras[i]}"),\n' for i,x in enumerate(SS[:-1])]+
            [f'\n    // S Stich na 4\n    sText("4:"),\n    {jObj(SS[-1])},\n']+
            [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
             f'    "",\n    {jObj(PRAYER["S_B"])},\n',
             f'  ))\n']
            )
        
        if "T" in PRAYER:
            ## Generuj Tropar
            T = fixObjects(PRAYER["T"])
            
            f.write('  ==== #translation.at("TROPAR")\n')
            f.writelines(
                [f'  #generateTable((\n']+
                [f'\n    sText($#sym.dot$),\n    {jObj(x)},\n' for i,x in enumerate(T)]+
                [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                f'    "",\n    {jObj(PRAYER["T_B"])},\n',
                f'  ))\n']
                )
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj povecerie
    #########################################################
    if "P" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// POVECERIE \n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"P\")\n",
                      f"  #header3([(#translation.at(\"{Dn[(index-1)%len(Dn)]}_N\"))])\n"
                      ])
        PRAYER = json["P"]

        # Generuj kanon
        f.write('  ==== #translation.at("KANON")\n')
        for song in ["1","2","3","4","5","6","7","8","9"]:
            if song not in PRAYER:
                continue
            ## Generuj piesen kanonu
            f.write(f'  ===== #translation.at("PIESEN") {song}\n')
            P = fixObjects(PRAYER[song])
            f.writelines(
                [f'  #generateTable((\n',
                 f'\n    "",\n    {jObj(P[0])},\n',
                 f'    sText(translation.at("PR")),\n    gText("{pripiv_P}"),\n']+
                [f'\n    sText("{i+1}:"),\n    {jObj(x)},\n' for i,x in enumerate(P[1:-2])]+
                [f'\n    // S:\n    col2(gText(translation.at("S"))),\n',
                 f'    "",\n    {jObj(P[-2])},\n',
                 f'\n    // I:\n    col2(gText(translation.at("IN"))),\n',
                 f'    "",\n    {jObj(P[-1])},\n',
                 f'  ))\n']
                )
            if song == "6":
                f.write(f'  ===== #translation.at("SIDALEN")\n')

                ## Generuj sedalen
                S = fixObjects(PRAYER["S"])
                f.writelines(
                    [f'  #generateTable((\n']+
                    [f'\n    sText($#sym.dot$),\n    {jObj(x)},\n' for i,x in enumerate(S)]+
                    [f'  ))\n']
                )
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj polnocnicu
    #########################################################
    if "N" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// POLNOCNICA\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"N\")\n"])
        PRAYER = json["N"]
        
        # Generuj kanon
        f.write('  ==== #translation.at("KANON")\n')
        for song in ["1","2","3","4","5","6","7","8","9"]:
            if song not in PRAYER:
                continue
            ## Generuj piesen kanonu
            f.write(f'  ===== #translation.at("PIESEN") {song}\n')
            P = fixObjects(PRAYER[song])
            f.writelines(
                [f'  #generateTable((\n',
                 f'\n    "",\n    {jObj(P[0])},\n',
                 f'    sText(translation.at("PR")),\n    gText("{pripiv_N}"),\n']+
                [f'\n    sText("{i+1}:"),\n    {jObj(x)},\n' for i,x in enumerate(P[1:-2])]+
                [f'\n    // S:\n    col2(gText(translation.at("S"))),\n',
                 f'    "",\n    {jObj(P[-2])},\n',
                 f'\n    // I:\n    col2(gText(translation.at("IN"))),\n',
                 f'    "",\n    {jObj(P[-1])},\n',
                 f'  ))\n']
                )
            if song == "3":
                f.write(f'  ===== #translation.at("SIDALEN")\n')

                ## Generuj sedalen
                S = fixObjects(PRAYER["S1"])
                f.writelines(
                    [f'  #generateTable((\n']+
                    [f'\n    sText($#sym.dot$),\n    {jObj(x)},\n' for i,x in enumerate(S[:-1])]+
                    [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                     f'    "",\n    {jObj(S[-1])},\n',
                     f'  ))\n']
                )
            if song == "6":
                f.write(f'  ===== #translation.at("SIDALEN")\n')

                ## Generuj sedalen
                S = fixObjects(PRAYER["S2"])
                f.writelines(
                    [f'  #generateTable((\n']+
                    [f'\n    sText($#sym.dot$),\n    {jObj(x)},\n' for i,x in enumerate(S[:-1])]+
                    [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                     f'    "",\n    {jObj(S[-1])},\n',
                     f'  ))\n']
                )
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj utieren
    #########################################################
    if "U" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// UTIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f'  === #translation.at("U")\n'])
        PRAYER = json["U"]

        if "T" in PRAYER:
            ## Generuj Tropar
            T = fixObjects(PRAYER["T"])
            
            f.write('  ==== #translation.at("TROPAR")\n')
            f.writelines(
                [f'  #generateTable((\n']+
                [f'\n    sText($#sym.dot$),\n    {jObj(x)},\n' for i,x in enumerate(T)]+
                [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                f'    "",\n    {jObj(PRAYER["T_B"])},\n',
                f'  ))\n']
                )
        
        # Generate sidaleny
        f.write('  ==== #translation.at("SIDALENY")\n')
        for ix in range(5):
            if "S"+str(ix) in PRAYER:
                f.write(f'  ===== #translation.at("SIDALEN_PO") {ix}\n')
                S = PRAYER["S"+str(ix)]
                f.writelines(
                    [f'  #generateTable((\n']+
                    [f'\n    sText("{i+1}:"),\n    {jObj(x)},\n' for i,x in enumerate(S[:-1])]+
                    [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                    f'    "",\n    {jObj(S[-1])},\n',
                    f'  ))\n']
                )
        
        if "Y" in PRAYER:
            # Generate ypakoj
            f.write('  ==== #translation.at("YPAKOJ")\n')
            f.writelines(
                [f'  #generateTable((\n',
                 f'\n    sText($#sym.dot$),\n    {jObj(PRAYER["Y"][0])},\n',
                 f'  ))\n']
                )
            
        # Generate stepenny
        if "A1" in PRAYER:
            f.write('  ==== #translation.at("STEPENNY")\n')
            for ix in range(6):
                if "A"+str(ix) in PRAYER:
                    f.write(f'  ===== #translation.at("ANTIFON") {ix}\n')
                    A = PRAYER["A"+str(ix)]
                    f.writelines(
                        [f'  #generateTable((\n']+
                        [f'\n    sText("{i+1}:"),\n    {jObj(x)},\n' for i,x in enumerate(A[:-1])]+
                        [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                        f'    "",\n    {jObj(A[-1])},\n',
                        f'  ))\n']
                    )
        
        # Generuj prokimen
        if "P" in PRAYER:
            P = PRAYER["P"]
            f.write('  ==== #translation.at("PROKIMEN")\n')
            f.writelines([f'  #generateTable((\n',
                          f'    sText($#sym.dot$),\n    {jObj(P[0])},\n',
                          f'    sText([$#sym.VV$:]),\n    {jObj(P[1])},\n',
                          f'  ))\n']
                )

        # Generuj kanon
        f.write('  ==== #translation.at("KANON")\n')
        for sidx, song in enumerate(["1","2","3","4","5","6","7","8","9"]):
            KK = PRAYER["K"]
            if "P"+song not in KK:
                continue
            ## Generuj piesen kanonu
            f.write(f'  ===== #translation.at("PIESEN") {song}\n')
            S = KK["P"+song]
            for kidx, kan in enumerate(["1","2","3"]):
                if kan in S:
                    P = fixObjects(S[kan])
                    f.writelines(
                        [f'  #generateTable((\n',
                         f'\n    sText(super("{kan}")),\n    {jObj(P[0])},\n']+
                        ([f'    sText(translation.at("PR")),\n    gText("{pripivy[str(index)][kidx]}"),\n'] if str(index) in pripivy else [])+
                        [f'\n    sText("{i+1}:"),\n    {jObj(x)},\n' for i,x in enumerate(P[1:])]+
                        [
                        # f'\n    // S:\n    col2(gText(translation.at("S"))),\n',
                        # f'    "",\n    {jObj(P[-2])},\n',
                        # f'\n    // I:\n    col2(gText(translation.at("IN"))),\n',
                        # f'    "",\n    {jObj(P[-1])},\n',
                        f'  ))\n']
                        )
            if song == "6" and "K" in KK:
                f.write(f'  ===== #translation.at("KONDAK")\n')
                f.writelines([f'  #generateTable((\n',
                        f'    sText($#sym.dot$),\n    {jObj(KK["K"][0])},\n',
                        f'  ))\n'])
                f.write(f'  ===== #translation.at("IKOS")\n')
                f.writelines([f'  #generateTable((\n',
                        f'    sText($#sym.dot$),\n    {jObj(KK["K"][1])},\n',
                        f'  ))\n'])
        
        # Generuj stichovni na chvalitech
        if "CH" in PRAYER:
            CH = fixObjects(PRAYER["CH"])
            f.write('  ==== #translation.at("CHVALITE")\n')
            length_CH = len(CH)
            skip = 0
            stichiras = stichiry_Chvalite[-length_CH:]
            f.writelines(
                [f'  #generateTable((\n']+
                [f'\n    // CH Stich na {length_CH - i}\n    sText("{length_CH - i}:"),\n    gText("{stichiras[i]}"),\n    "",\n    {jObj(x)},\n' for i,x in enumerate(CH[:])]+
                [
                #  f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                #  f'    "",\n    {jObj(PRAYER["HV_B"])},\n',
                f'  ))\n']
                )
            
        # Generuj stichovni na stichirach
        if "ST" in PRAYER:
            ST = fixObjects(PRAYER["ST"])
            f.write('  ==== #translation.at("STICHOVNI")\n')
            length_ST = len(ST)
            stichiras = stichiry_Stichovni_Utrena[str(index) if str(index) in stichiry_Stichovni_Utrena else "x"][-length_ST:]
            f.writelines(
                [f'  #generateTable((\n']+
                [f'\n    // ST Stich na {i+1}\n    sText("{i+1}:"),\n    {jObj(x)},\n    "",\n    gText("{stichiras[i]}"),\n' for i,x in enumerate(ST[:-2])]+
                [f'\n    // ST Stich na {length_ST-1}\n    sText("{length_ST-1}:"),\n    {jObj(ST[-2])},\n']+
                [f'\n    // S:I:\n    col2(gText(translation.at("SI"))),\n',
                 f'    "",\n    {jObj(ST[-1])},\n',
                 f'  ))\n']
                )
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj liturgiu
    #########################################################
    if "L" in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// LITURGIA\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"L\")\n",
                      f"  #header3([(#translation.at(\"I\"))])\n"
                      ])
        PRAYER = json["L"]

        # Generate Blazenstva
        B = fixObjects(PRAYER["B"])
        f.write('  ==== #translation.at("BLAZENNA")\n')
        length_B = len(B)
        stichiras = stichiry_Blazenny[-length_B:]
        f.writelines(
            [f'  #generateTable((\n']+
            [f'\n    // B Stich na {length_B - i - 2}\n    sText("{length_B - i - 2}:"),\n    gText("{stichiras[i]}"),\n    "",\n    {jObj(x)},\n' for i,x in enumerate(B[:-2])]+
            [f'\n    // S:\n    col2(gText(translation.at("S"))),\n',
             f'    "",\n    {jObj(B[-2])},\n',
             f'\n    // I:\n    col2(gText(translation.at("IN"))),\n',
             f'    "",\n    {jObj(B[-1])},\n',
             f'  ))\n']
            )
        
        # TODO: Generate TKB

        # Generate Prokimen & Alleluja
        if "P" in PRAYER:
            P = PRAYER["P"]
            f.write('  ==== #translation.at("PROKIMEN")\n')
            f.writelines([f'  #generateTable((\n',
                          f'    sText($#sym.dot$),\n    {jObj(P[0])},\n',
                          f'    sText([$#sym.VV$:]),\n    {jObj(P[1])},\n',
                          f'  ))\n']
                )
            f.write('  ===== #translation.at("ALLILUJA")\n')
            f.writelines([f'  #generateTable((\n',
                          f'    sText($#sym.dot$),\n    {jObj(P[2])},\n',
                          f'    sText([$#sym.VV$:]),\n    {jObj(P[3])},\n',
                          f'  ))\n']
                )

        # f.write("  #colbreak()\n")
    

for h in H:
    for i,d in enumerate(D):
        with io.open(f"oktoich_generated/Hlas{h}/{d}.typ", "w", encoding="utf-8") as f:
            f.writelines([
                '#import "../../all.typ": *\n',
                "#columns(2, gutter: 2pt, [\n\n"])
        
            with io.open(f"oktoich/Hlas{h}/{d}.json", "r", encoding="utf-8") as inp:
                j = json.load(inp)
                generate(f,j,i)
        
            f.write("])\n")
    with io.open(f"oktoich_generated/0_all/Hlas{h}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../all.typ": *\n',
            "\n",
            "#show: book\n\n",
            f"= #translation.at(\"HLAS\") {h}\n\n"])
        for i,d in enumerate(D):
            f.write(f'#include "../Hlas{h}/{d}.typ"\n')
            f.write(f'#pagebreak()\n')