#!/usr/bin/env python3

import io
import json

def getObject(F, arr):
    for a in arr:
        F = F[a]
    return F

st = set()

def generate(IN, OUT, C, arr):
    i = getObject(IN, arr)
    if isinstance(i, (dict)):
        for k in i:
            generate(IN, OUT, C, arr + [k])
    elif isinstance(i, (list)):
        for k in range(len(i)):
            generate(IN, OUT, C, arr + [k])
    else:
        o = getObject(OUT, arr) 
        if "*" in o:
            for x in [s for s in o.split() if "*" in s]:
                t = x.replace("*", "\\*")
                st.add(f'[{t}]\n\n')
            C.write(f'table.cell(colspan:2, "{"|".join([str(x) for x in arr[:-1]])}"),\n')
            C.write(f'"{i}", "{o}",\n')

with io.open(f"compare.typ", "w", encoding="utf-8") as c:
    c.write(f"""#let generateDouble(tbl) = [
#table(
    columns: (auto, auto),
    column-gutter: 0pt, 
    stroke: 1pt,
    align: (x, y) => (left, left).at(x),
    ..tbl
)]\n
#set text(font: "Monomakh Unicode", lang: "cs", fill: black, size: 13pt, hyphenate: auto)
#generateDouble((\n""")
    for h in range(1,9):
        for d in ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]:
            IN = None
            OUT = None
            c.write(f'table.cell(colspan:2, text(red, "Hlas {h} - {d}")),\n')
            with io.open(f"../LiturgicalSource/CU/oktoich/Hlas{h}/{d}.json", "r", encoding="utf-8") as f:  
                IN = json.load(f)
            with io.open(f"CSL_okto_out/Hlas{h}/{d}.json", "r", encoding="utf-8") as o:
                OUT = json.load(o)  
            
                generate(IN, OUT, c, [])   
    c.write(f"""))\n""")

    c.writelines([s for s in st])
        
