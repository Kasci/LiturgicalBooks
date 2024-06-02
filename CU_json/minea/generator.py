#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
from common import *

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
        f.writelines([f'  === #translation.at(\"M\")\n'])
        PRAYER = json[LETTER]

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Hospodi Vozvach
        generateV_HV(f, PRAYER)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, PRAYER["S_ST"])

        addPrayerNote(f, LETTER, PRAYER, False)

        f.write("  #colbreak()\n")

    #########################################################
    # Generuj vecieren
    #########################################################
    LETTER = "V"
    if LETTER in json:
        f.writelines([
            '\n\n// ---------------------------------------\n',
            '// VECIEREN V NEDELU VECER\n',
            '// ---------------------------------------\n\n\n',
        ])
        f.writelines([f"  === #translation.at(\"V\")\n"])
        PRAYER = json[LETTER]  

        addPrayerNote(f, LETTER, PRAYER, True)

        ## Generuj Hospodi Vozvach
        generateV_HV(f, PRAYER)

        ## Generuj Citania
#        generateV_PAR(f, PRAYER)

        ## Generuj Prokimen
        generateV_P(f, PRAYER)

        ## Generuj Litiu
        generateV_L(f, PRAYER)

        ## Generuj Stichiry
        generateV_S(f, PRAYER, stichiry_Stichovni["x"])
        
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
        
        # Generuj Sidaleny
        generateU_S(f, PRAYER)

        # Generuj Prokimen
        generateU_P(f, PRAYER)

        # Generuj Stichiru po 50 Zalme
        generateU_50(f, PRAYER)
        
        # Generuj kanon
        generateU_K(f, PRAYER)

        # Generuj svitilen
        generateU_SV(f, PRAYER)
        
        # Generuj stichovni na chvalitech
        generateU_CH(f, PRAYER)
            
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
        generateL_B(f, PRAYER)
        
        # TODO: Generate TKB

        # Generate Prokimen & Alleluja
        generateL_P(f, PRAYER)

        #Generate Pricasten
        generateL_PR(f, PRAYER)

        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")



T = ["0_vseobecna"]
D = [
# "01_Pan",
# "02_Bohorodicka",
"03_Kriz",
# "04_Anjeli",
# "05_Predchodca",
# "06_SvatiOtcovia",
# "07_ProrokJeden",
# "08_ApostolJeden",
# "09_ApostolViac"
]
Dn = [
# "M_PAN",
# "M_BOHORODICKA",
"M_KRIZ",
# "M_ANJELI",
# "M_PREDCHODCA",
# "M_SVATI_OTCOVIA",
# "M_PROROK_JEDEN",
# "M_APOSTOL_JEDEN",
# "M_APOSTOL_VIAC",
]

for t in T:
    for i,d in enumerate(D):
        if not os.path.exists(f"0_source/{t}/{d}.json"):
            continue
        with io.open(f"1_generated/{t}/{d}.typ", "w", encoding="utf-8") as f:
            f.writelines([
                '#import "../../../all.typ": *\n',
                "#columns(2, gutter: 2pt, [\n\n"])
            with io.open(f"0_source/{t}/{d}.json", "r", encoding="utf-8") as inp:
                j = json.load(inp)
                generate(f,j,i)
        
            f.write("])\n")
    with io.open(f"1_generated/0_all/{t}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../all.typ": *\n',
            "\n",
            "#show: book\n\n",
            f'= #translation.at("MINEA_OBS")\n\n'])
        for i,d in enumerate(D):
            if not os.path.exists(f"1_generated/{t}/{d}.typ"):
                continue
            f.write(f'#include "../{t}/{d}.typ"\n')
            f.write(f'#pagebreak()\n')