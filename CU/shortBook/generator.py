#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
sys.path.append(os.path.abspath("../.."))
from common import *
from common_CU import *
from genPrayer import *

def generateProkimen(table, day):
    if day == 0:
        table.add2Col(f'"Гдⷭ҇ь воцр҃и́сѧ, въ лѣ́потꙋ ѡ҆блече́сѧ."')
        table.add(f'sText(translation.at("ST"))', f'"Ѡ҆блече́сѧ гдⷭ҇ь въ си́лꙋ и҆ препоѧ́сасѧ."')
        table.add(f'sText(translation.at("ST"))', f'"И҆́бо ᲂу҆твердѝ вселе́ннꙋю, ꙗ҆́же не подви́житсѧ."')
        table.add(f'sText(translation.at("ST"))', f'"До́мꙋ твоемꙋ̀ подоба́етъ ст҃ы́нѧ гдⷭ҇и, въ долготꙋ̀ дні́й."')
    if day == 1:
        table.add2Col(f'"Сѐ ны́нѣ бл҃гослови́те гдⷭ҇а всѝ рабѝ гдⷭ҇ни."')
        table.add(f'sText(translation.at("ST"))', f'"Стоѧ́щїи во хра́мѣ гдⷭ҇ни, во дво́рѣхъ до́мꙋ бг҃а на́шегѡ."')
    if day == 2:
        table.add2Col(f'"Гдⷭ҇ь ᲂу҆слы́шитъ мѧ̀, внегда̀ воззва́ти мѝ къ немꙋ̀."')
        table.add(f'sText(translation.at("ST"))', f'"Внегда̀ призва́ти мѝ, ᲂу҆слы́ша мѧ̀ бг҃ъ пра́вды моеѧ̀."')
    if day == 3:
        table.add2Col(f'"Млⷭ҇ть твоѧ̀ гдⷭ҇и, пожене́тъ мѧ̀ всѧ̑ дни̑ живота̀ моегѡ̀."')
        table.add(f'sText(translation.at("ST"))', f'"Гдⷭ҇ь пасе́тъ мѧ̀, и҆ ничто́же мѧ̀ лиши́тъ, на мѣ́стѣ ѕла́чнѣ, та́мѡ всели́ мѧ."')
    if day == 4:
        table.add2Col(f'"Бж҃е, во и҆́мѧ твоѐ сп҃си́ мѧ, и҆ въ си́лѣ твое́й сꙋди́ ми."')
        table.add(f'sText(translation.at("ST"))', f'"Бж҃е, ᲂу҆слы́ши мл҃твꙋ мою̀, внꙋшѝ глаго́лы ᲂу҆́стъ мои́хъ."')
    if day == 5:
        table.add2Col(f'"По́мощь моѧ̀ ѿ гдⷭ҇а, сотво́ршагѡ нб҃о и҆ зе́млю."')
        table.add(f'sText(translation.at("ST"))', f'"Возведо́хъ ѻ҆́чи моѝ въ го́ры, ѿню́дꙋже прїи́детъ по́мощь моѧ̀."')
    if day == 6:
        table.add2Col(f'"Бж҃е, застꙋ́пникъ мо́й є҆сѝ ты̀, и҆ млⷭ҇ть твоѧ̀ предвари́тъ мѧ̀."')
        table.add(f'sText(translation.at("ST"))', f'"И҆зми́ мѧ ѿ вра̑гъ мои́хъ бж҃е, и҆ ѿ востаю́щихъ на мѧ̀ и҆зба́ви мѧ̀."')

def generate_V(f, j, day, prevD):
    table = Table()
    table.add2Col(f'[== #translation.at("V")]')
    table.add2Col(f'align(center,sText("("+translation.at("{prevD}_V")+")"))')
    table.addNote(f'"Nacalo, 103, 12xHP, Kathisma, 3xHP, HV, 104 a 141 a 129"')
    table.add2Col(f'[=== #translation.at("HOSPODI_VOZVACH")]')
    verses = j["V"]["HV"]
    for i, item in enumerate(verses):
        table.add(f'sub(sText("({len(verses)-i})"))', f'gText("{stichiry_HospodyVozvach[i]}")')
        table.add2Col(jObj(item))
    table.addRight(f'gText([#translation.at("SI")])')
    table.add2Col(jObj(j["V"]["HV_B"]))
    table.addNote(f'"Svite tichyj"')
    table.add2Col(f'[=== #translation.at("PROKIMEN")]')
    generateProkimen(table, day)
    table.addNote(f'"N/S: 12xHP, Spodobi Hospodi, 12xHP"')
    table.add2Col(f'[=== #translation.at("STICHOVNI")]')
    verses = j["V"]["S"]
    stichy = stichiry_Stichovni["0" if day==0 else "6" if day==6 else "x"]
    for i, item in enumerate(verses):
        table.add2Col(jObj(item))
        if i < len(stichy):
            table.addRight(f'gText({jObj(stichy[i])})')
    table.addRight(f'gText([#translation.at("SI")])')
    table.add2Col(jObj(j["V"]["S_B"]))
    if day == 0:
        table.addNote(f'"Simeon, nacalo"')
        table.add2Col(f'[=== #translation.at("TROPAR")]')
        table.add2Col(jObj(j["V"]["T"][0]))
        table.addRight(f'gText([#translation.at("SI")])')
        table.add2Col(jObj(j["V"]["T_B"]))
        table.addNote(f'"prepustenie"')
    else:
        table.addNote(f'"Simeon, nacalo, K: 12xHP, tropar ak je, prepustenie"')
    table.generate(f)

def generate_U(f, j, day):
    table = Table()
    table.add2Col(f'[== #translation.at("U")]')
    table.addNote(f'"Nacalo, Z19, Z20, nacalo, tropare, 12xHP, Slava svatej, 6zalmie, 12xHP, BohHospod"')
    if "T" in j["U"]:
        table.add2Col(f'[=== #translation.at("TROPAR") ]')
        table.add2Col(jObj(j["U"]["T"][0]))
        table.addRight(f'gText([#translation.at("SI")])')
        table.add2Col(jObj(j["V"]["T_B"]))
    table.add2Col(f'[=== #translation.at("SIDALENY") ]')
    for ix in range(1,4):
        if f"S{ix}" in j["U"]:
            table.add2Col(f'[==== #translation.at("SIDALEN_PO") {ix} ]')
            verses = j["U"][f"S{ix}"]
            for i, item in enumerate(verses):
                table.add2Col(f'sub(sText("({i+1})"))+{jObj(item)}')
            table.addRight(f'gText([#translation.at("SI")])')
            table.add2Col(jObj(j["U"][f"S{ix}_B"]))
    if "Y" in j["U"]:
        table.add2Col(f'[=== #translation.at("YPAKOJ") ]')
        verses = j["U"]["Y"]
        for i, item in enumerate(verses):
            table.add2Col(jObj(item))
    if "A1" in j["U"] or "A2" in j["U"] or "A3" in j["U"]:
        table.add2Col(f'[=== #translation.at("ANTIFONY") ]')
        for ix in range(1,4):
            if f"A{ix}" in j["U"]:
                table.add2Col(f'[==== #translation.at("ANTIFON") {ix} ]')
                verses = j["U"][f"A{ix}"]
                for i, item in enumerate(verses[:-1]):
                    table.add2Col(f'sub(sText("({i+1})"))+{jObj(item)}')
                table.addRight(f'gText([#translation.at("SI")])')
                table.add2Col(jObj(verses[-1]))
    if "K" in j["U"]:
        table.add2Col(f'[=== #translation.at("KANON") ]')
        for k in j["U"]["K"]:
            if k.startswith("P"):
                i=int(k[1:])
                item = j["U"]["K"][k]["1"][0]
                table.add2Col(f'sub(sText("({i})"))+{jObj(item)}')
                if i == 6 and "K" in j["U"]["K"]:
                    table.add2Col(jObj(j["U"]["K"]["K"][0]))
                if i == 6 and "I" in j["U"]["K"]:
                    table.add2Col(jObj(j["U"]["K"]["I"][0]))
    if "CH" in j["U"]:
        table.add2Col(f'[=== #translation.at("CHVALITE") ]')
        verses = j["U"]["CH"]
        stichiras = stichiry_Chvalite[-len(verses):]
        for i, item in enumerate(verses):
            table.add(f'sub(sText("({len(verses)-i})"))', f'gText("{stichiras[i]}")')
            table.add2Col(jObj(item))
    if "ST" in j["U"]:
        table.add2Col(f'[=== #translation.at("STICHOVNI") ]')
        verses = j["U"]["ST"]
        stichiry = stichiry_Stichovni_Utrena[str(day) if str(day) in stichiry_Stichovni_Utrena else "x"][-len(verses)+1:]
        for i, item in enumerate(verses[:-1]):
            table.add2Col(jObj(item))
            if i < len(verses[:-1])-1:
                table.add(f'sub(sText("({i+1})"))', f'gText("{stichiry[i]}")')
        table.addRight(f'gText([#translation.at("SI")])')
        table.add2Col(jObj(verses[-1]))
    table.generate(f)

def generate(f,j,day):
    prevD = Dn[(day-1)%len(Dn)]
    generate_V(f, j, day, prevD)
    generate_U(f, j, day)

def generatePrayer(f, prayer):
    if prayer == "V":
        generateVecieren(f)
    # elif prayer == "P":
    #     generatePovecerie(f)
    # elif prayer == "N":
    #     generatePolnocnica(f)
    elif prayer == "U":
        generateUtieren(f)
    # elif prayer == "C":
    #     generateCasy(f)
    # elif prayer == "I":
    #     generateTypika(f)
    else:
        pass


P = [
        "V",
        # "P",
        # "N",
        "U",
        # "C",
        # "I"
    ]
for p in P:
    with io.open(f"1_generated/9_{p}.typ", "w", encoding="utf-8") as f:
        f.writelines(['#import "../../../all.typ": *\n'])
    
        generatePrayer(f, p)

D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
Dn = ["Ne", "Po", "Ut", "Sr", "St", "Pi", "So"]
for i,d in enumerate(D):
    with io.open(f"1_generated/{d}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../all.typ": *\n',
            "#columns(2, gutter: 2pt, [\n\n"])
    
        with io.open(f"../../LiturgicalSource/CU/oktoich/Hlas6/{d}.json", "r", encoding="utf-8") as inp:
            j = json.load(inp)
            generate(f,j,i)
    
        f.write("])\n")
with io.open(f"1_generated/Short.typ", "w", encoding="utf-8") as f:
    f.writelines([
        '#import "../../../all.typ": *\n',
        "\n",
        "#show: book\n\n"])
    for i,p in enumerate(P):
        f.write(f'= #translation.at("{p}") \n\n')
        f.write(f'#include "9_{p}.typ"\n')
        f.write(f'#pagebreak()\n')
    for i,d in enumerate(D):
        f.write(f'= #translation.at("{Dn[i]}") \n\n')
        f.write(f'#include "{d}.typ"\n')
        f.write(f'#pagebreak()\n')