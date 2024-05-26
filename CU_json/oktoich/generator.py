#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
from common import *

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
        generateV_HV(f, PRAYER)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni["M"])
        
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
        generateV_HV(f, PRAYER, skip = 3, note = True)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni[str(index) if str(index) in stichiry_Stichovni else "x"])
                
        ## Generuj Tropar
        generateT(f, PRAYER)

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

        ## Generuj Tropar
        generateT(f, PRAYER)
        
        # Generate Sidaleny
        generateU_S(f, PRAYER)
        
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
                          f'    sText(translation.at("VV")),\n    {jObj(P[1])},\n',
                          f'  ))\n']
                )

        # Generuj kanon
        generateU_K(f, PRAYER, kanon_header= kanony[str(index)], pripiv= pripivy[str(index)] if str(index) in pripivy else [])
        
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
                [f'  ))\n']
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
                          f'    sText(translation.at("VV")),\n    {jObj(P[1])},\n',
                          f'  ))\n']
                )
            f.write('  ===== #translation.at("ALLILUJA")\n')
            f.writelines([f'  #generateTable((\n',
                          f'    sText($#sym.dot$),\n    {jObj(P[2])},\n',
                          f'    sText(translation.at("VV")),\n    {jObj(P[3])},\n',
                          f'  ))\n']
                )

        # f.write("  #colbreak()\n")
    

H = [1,2,3,4,5,6,7,8]
D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
Dn = ["Ne", "Po", "Ut", "Sr", "St", "Pi", "So"]

for h in H:
    for i,d in enumerate(D):
        with io.open(f"1_generated/Hlas{h}/{d}.typ", "w", encoding="utf-8") as f:
            f.writelines([
                '#import "../../../all.typ": *\n',
                "#columns(2, gutter: 2pt, [\n\n"])
        
            with io.open(f"0_source/Hlas{h}/{d}.json", "r", encoding="utf-8") as inp:
                j = json.load(inp)
                generate(f,j,i)
        
            f.write("])\n")
    with io.open(f"1_generated/0_all/Hlas{h}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../all.typ": *\n',
            "\n",
            "#show: book\n\n",
            f"= #translation.at(\"HLAS\") {h}\n\n"])
        for i,d in enumerate(D):
            f.write(f'#include "../Hlas{h}/{d}.typ"\n')
            f.write(f'#pagebreak()\n')