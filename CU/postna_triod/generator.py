#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
sys.path.append(os.path.abspath("../.."))
from common import *
from common_CU import *

def generate(f: io.FileIO, json, index):
    f.write(f'  == #translation.at(\"{Dn[index]}\")\n')

    #########################################################
    # Generuj malu vecieren
    #########################################################
    LETTER = "M"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// MALA VECIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f'  === #translation.at(\"M\")\n',
                      f'  #header3([(#translation.at(\"{Dn[(index-1)%len(Dn)]}_V\"))])\n'
                      ])
        PRAYER = json[LETTER]

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Hospodi Vozvach
        generateV_HV(f, PRAYER, stichiry_HospodyVozvach)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni["M"])

        addPrayerNote(f, LETTER, PRAYER, False)

        f.write("  #colbreak()\n")

    
    #########################################################
    # Generuj (velku) vecieren
    #########################################################
    LETTER = "SV"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// (VELKA) VECIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"V\")\n",
                      f"  #header3([(#translation.at(\"{Dn[(index-1)%len(Dn)]}_V\"))])\n"
                      ])
        PRAYER = json[LETTER]  

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Hospodi Vozvach
        generateV_HV(f, PRAYER, stichiry_HospodyVozvach, offset=0 if index == 6 else 3)

        ## Generuj Prokimen
        generateV_P(f, PRAYER)

        ## Generuj Litiu
        generateV_L(f, PRAYER)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni[str(index) if str(index) in stichiry_Stichovni else "x"])
        
        ## Generuj Tropar
        generateT(f, PRAYER)

        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj utieren
    #########################################################
    LETTER = "U"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// UTIEREN\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f'  === #translation.at("U")\n'])
        PRAYER = json[LETTER]

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Tropar
        generateT(f, PRAYER)
        
        # Generate Sidaleny
        generateU_S(f, PRAYER)
        
        # Generuj kanon
        generateU_K(f, PRAYER)
        
        # Generuj stichovni na chvalitech
        generateU_CH(f, PRAYER, stichiry_Chvalite)
            
        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")

    #########################################################
    # Generuj 6. cas
    #########################################################
    LETTER = "6"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// 6. cas\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f'  === #translation.at("6")\n'])
        PRAYER = json[LETTER]

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Tropar
        generateT(f, PRAYER)

        generate6_P(f, PRAYER)

        generate6_PAR(f, PRAYER)

        generate6_P(f, PRAYER, "2")
            
        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")


    #########################################################
    # Generuj liturgiu
    #########################################################
    LETTER = "L"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// LITURGIA\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"L\")\n",
                      f"  #header3([(#translation.at(\"I\"))])\n"
                      ])
        PRAYER = json[LETTER]

        addPrayerNote(f, LETTER, PRAYER, True)

        # Generate Blazenstva
        generateL_B(f, PRAYER, stichiry_Blazenny)
        
        # TODO: Generate TKB

        # Generate Prokimen & Alleluja
        generateL_P(f, PRAYER)

        #Generate Pricasten
        generateL_PR(f, PRAYER)

        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")
    
    #########################################################
    # Generuj vecieren v nedelu vecer
    #########################################################
    LETTER = "V"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// VECIEREN V NEDELU VECER\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"V\")\n",
                      f"  #header3([(#translation.at(\"{Dn[(index)]}_V\"))])\n"
                      ])
        PRAYER = json[LETTER]  

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Hospodi Vozvach
        generateV_HV(f, PRAYER, stichiry_HospodyVozvach, offset=3 if i == 6 else 0)

        ## Generuj Paremie
        generateV_PAR_LENT(f, PRAYER)

        ## Generuj Litiu
        generateV_L(f, PRAYER)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni["x"])
        
        ## Generuj Tropar
        generateT(f, PRAYER)
        
        addPrayerNote(f, LETTER, PRAYER, False)

        f.write("  #colbreak()\n")

    #########################################################
    # Generuj povecerie
    #########################################################
    LETTER = "P"
    if LETTER in json:
        
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// POVECERIE\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"P\")\n",
                      f"  #header3([(#translation.at(\"{Dn[(index)]}_N\"))])\n"
                      ])
        PRAYER = json[LETTER]  

        addPrayerNote(f, LETTER, PRAYER, True)

        generateP_K(f, PRAYER)

        addPrayerNote(f, LETTER, PRAYER, False)

        f.write("  #colbreak()\n")

# T = ["-01", "1"]
T = ["1"]
# D = ["1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota","7_Nedela"]
# D = ["3_Streda", "5_Piatok"]
D = ["5_Piatok"]
Dn = ["Po", "Ut", "Sr", "St", "Pi", "So","Ne"]

DEBUG = True
DEBUG_PATH = "../Liturgical_books_source" if DEBUG else "LiturgicalSource"

for t in T:
    for i,d in enumerate(D):
        PATH = f"../../{DEBUG_PATH}/CU/postna_triod/Tyzden{t}/{d}.json"
        print(PATH)
        if not os.path.exists(PATH):
            continue
        with io.open(f"1_generated/Tyzden{t}/{d}.typ", "w", encoding="utf-8") as f:
            f.writelines([
                '#import "../../../../all.typ": *\n',
                "#columns(2, gutter: 2pt, [\n\n"])
            with io.open(PATH, "r", encoding="utf-8") as inp:
                j = json.load(inp)
                try:
                    generate(f,j,i)
                except Exception as e:
                    print("ERROR: ",t,d)
                    print(e)
        
            f.write("])\n")
    with io.open(f"1_generated/0_all/Tyzden{t}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../../all.typ": *\n',
            "\n",
            "#show: book\n\n",
            f"= {t}. #translation.at(\"TYZDEN\")\n\n"])
        for i,d in enumerate(D):
            if not os.path.exists(f"1_generated/Tyzden{t}/{d}.typ"):
                continue
            f.write(f'#include "../Tyzden{t}/{d}.typ"\n')
            f.write(f'#pagebreak()\n')