#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
sys.path.append(os.path.abspath("../.."))
from common import *
from common_CU import *

def generate(f, j, k):
    A = j["ANTIFONY"]
    for i,a in enumerate(A):
        f.write(f'== #translation.at("ANTIFON") {number(i+1)}\n')
        table = Table()
        for l in a:
            if l["TYPE"] == "HEADER":
                in_text = '(#translation.at("PSALM") '+l["PSALM_NUM"]+')' if "PSALM_NUM" in l else ""
                text = f'sText([{l["TEXT"]} {in_text}])'
                if "VERSE_NUM" in l and l["VERSE_NUM"]:
                    table.add(f'gText("{l["VERSE_NUM"]}")', text)
                else:
                    table.addRight(text)
            elif l["TYPE"] == "VERSE":
                table.add(f'gText("{l["VERSE_NUM"]}")', f'par([{l["TEXT"]}])')
        table.add2Col('gText([#translation.at("SI")])')
        table.generate(f)
    table = Table()
    table.add2Col('sText(translation.at("AFTER_KAFTIZMA"))')
    for t in j["T"]:
        table.add('sText("T")', jObj(t))
    addSNB(table, "T", j)
    table.add2Col(f'translation.at("HOSPODI_POMILUJ")+". "+sText("({number(40)})")')
    table.add2Col('sText(translation.at("MOLITVA"))')
    if "M" in j:
        table.addRight(jObj(j["M"]))
    table.generate(f)

def generate_list(table, topic, j):
    for x in j[topic]:
        if x["TYPE"] == "R":
            table.add2Col(f'sText("{x["TEXT"]}")')
        elif x["TYPE"] == "B":
            t = f'{lettrice(x["TEXT"])}'
            if "REPEAT" in x:
                t += f'+sText(" ({number(x["REPEAT"])})")'
            table.addRight(t)

def generate_begining(f, j):
    f.write('= #translation.at("PSALTYR")\n')
    f.write("#columns(2, gutter: 2pt, [\n")
    table = Table()
    
    generate_list(table, "BEGIN", j)
    table.add('sText("T")', jObj(j["TROPARS"]["T"]))
    addSNB(table, "T", j["TROPARS"])
    generate_list(table, "BEGIN_END", j)

    table.generate(f)
    f.write("])\n#pagebreak()\n")

def generate_end(f, j):
    f.write("#columns(2, gutter: 2pt, [\n")
    table = Table()
    
    generate_list(table, "END", j)
    table.add('sText("T")', jObj(j["TROPARS"]["T"]))
    addSNB(table, "T", j["TROPARS"])
    generate_list(table, "END_END", j)

    table.generate(f)
    f.write("])\n")

for k in range(1,21):
    with io.open(f"1_generated/kaftizmy/K{k}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../../all.typ": *\n',
            f'= #translation.at(\"KAFTIZMA\") {number(k)}\n\n',
            "#columns(2, gutter: 2pt, [\n\n"])
    
        with io.open(f"../../LiturgicalSource/CU/psaltyr/kaftizmy/K{k}.json", "r", encoding="utf-8") as inp:
            j = json.load(inp)
            generate(f,j,k)
    
        f.write("])\n")
with io.open(f"1_generated/0_all/Psaltyr.typ", "w", encoding="utf-8") as f:
    f.writelines([
        '#import "../../../../all.typ": *\n',
        "\n",
        "#show: book\n\n"])
    with io.open(f"../../LiturgicalSource/CU/psaltyr/general.json", "r", encoding="utf-8") as inp:
        j = json.load(inp)
        generate_begining(f,j)
        for k in range(1,21):
            f.write(f'#include "../kaftizmy/K{k}.typ"\n')
            f.write(f'#pagebreak()\n')
        generate_end(f,j)