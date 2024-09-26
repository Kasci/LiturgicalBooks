#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
from common import *

def generate(f: io.FileIO, json, index, dn):
    if dn is not None:
        f.write(f'  == #translation.at(\"{dn}\")\n')

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
        generateV_S(f, PRAYER, stichiry_Stichovni["M"])

        ## Generuj Tropar
        generateT(f, PRAYER)

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
    return
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

        # Generuj stichiry
        generateU_ST(f, PRAYER)
            
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

        generateL_A(f, PRAYER)

        # Generate Blazenstva
        generateL_B(f, PRAYER)
        
        # Generate TKB
        generateT(f, PRAYER)
        generateK(f, PRAYER)

        # Generate Prokimen & Alleluja
        generateL_P(f, PRAYER)
        
        # Generate Irmos
        generateL_IR(f, PRAYER)

        #Generate Pricasten
        generateL_PR(f, PRAYER)

        addPrayerNote(f, LETTER, PRAYER, False)
        f.write("  #colbreak()\n")



T = ["0_vseobecna"]
D = [
    "01_Pan",
    "02_Bohorodicka",
    "03_Kriz",
    "04_Anjeli", 
    "05_Predchodca", #-- only vespers
    "06_SvatiOtcovia",
    "07_ProrokJeden",
    "08_ApostolJeden",
    "09_ApostolViac",
    "10_SvatitelJeden",
    "11_SvatitelViac",
    "12_PrepodobnyJeden",
    "13_PrepodobnyViac",
    "14_MucenikJeden",
    "15_MucenikViac",
    "16_HieromucenikJeden",
    "17_HieromucenikViac",
    "18_PrepodobnyMucenikJeden.json",
    "19_PrepodobnyMucenikViac.json",
    "20_MucenicaJedna.json",
    "21_MucenicaViac.json",
    "22_PrepodobnaZenaJedna.json",
    "23_PrepodobnaZenaViac.json",
    "24_PrepodobnaMucenicaJedna.json",
    "25_SpovednikJeden.json",
    "26_DivotvorcaJeden.json"
]
Dn = [
    "M_PAN",
    "M_BOHORODICKA",
    "M_KRIZ",
    "M_ANJELI",
    "M_PREDCHODCA",
    "M_SVATI_OTCOVIA",
    "M_PROROK_JEDEN",
    "M_APOSTOL_JEDEN",
    "M_APOSTOL_VIAC",
    "M_SVATITEL_JEDEN",
    "M_SVATITEL_VIAC",
    "M_PREPODOBNY_JEDEN",
    "M_PREPODOBNY_VIAC",
    "M_MUCENIK_JEDEN",
    "M_MUCENIK_VIAC",
    "M_HIEROMUCENIK_JEDEN",
    "M_HIEROMUCENIK_VIAC",
    "M_PREPODOBNY_MUCENIK_JEDEN",
    "M_PREPODOBNY_MUCENIK_VIAC",
    "M_MUCENICA_JEDNA",
    "M_MUCENICA_VIAC",
    "M_PREPODOBNA_ZENA_JEDNA",
    "M_PREPODOBNA_ZENA_VIAC",
    "M_PREPODOBNA_MUCENICA_JEDNA",
    "M_SPOVEDNIK_JEDEN",
    "M_DIVOTVORCA_JEDEN"
]

for i,d in enumerate(D):
    if not os.path.exists(f"0_source/0_vseobecna/{d}.json"):
        continue
    with io.open(f"1_generated/0_vseobecna/{d}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../all.typ": *\n',
            "#columns(2, gutter: 2pt, [\n\n"])
        with io.open(f"0_source/0_vseobecna/{d}.json", "r", encoding="utf-8") as inp:
            j = json.load(inp)
            generate(f,j,i,Dn[i])
    
        f.write("])\n")
with io.open(f"1_generated/00_all/0_vseobecna.typ", "w", encoding="utf-8") as f:
    f.writelines([
        '#import "../../../all.typ": *\n',
        "\n",
        "#show: book\n\n",
        f'= #translation.at("MINEA_OBS")\n\n'])
    for i,d in enumerate(D):
        if i+1 not in [18,19]: # ITERATOR
            continue
        if not os.path.exists(f"1_generated/0_vseobecna/{d}.typ"):
            continue
        f.write(f'#include "../0_vseobecna/{d}.typ"\n')
        f.write(f'#pagebreak()\n')

# 🕀🕁🕂🕃🕄
Ds = {
    # "01_september": [
        # ("08", "M_NAR_BOHORODICKY"),
        # ("14", "M_VOZDV_KRIZA"),
        # ("26", "M_JAN_BOHOSLOV"),
    # ],
    # "02_oktober": [
        # ("01", "M_POKROV"),
        # ("26", "M_DEMETER"),
    # ],
    # "03_november": [
        # ("08", "M_MICHAL"),
        # ("12", "M_JOZAFAT"),
        # ("13", "M_ZLATOUSTY"),
        # ("21", "M_VOVEDENIE"),
    # ],
    # "04_december": [
        # ("05", "M_SAVA"),
        # ("08", "M_POCATIE_BOHORODICKY"),
        # ("24", "M_NAR_PREDP"),
        # ("25", "M_NARODENIE"),
        # ("26", "M_ZHROM_BOHORODICKA"),
    # ],
    # "05_januar": [
        # ("01", "M_OBREZANIE"),
        # ("06", "M_BOHOZJAVENIE"),
        # ("17", "M_ANTON"),
        # ("20", "M_EUTMIOS"),
        # ("30", "M_TRAJA_SVATITELIA"),
    # ],
    # "06_februar": [
        # ("02", "M_OBETOVANIE"),
    # ],
    # "07_marec": [
        # ("25", "M_ZVESTOVANIE"),
    # ],
    # "08_april": [
        # ("23", "M_JURAJ"),
    # ],
    # "09_maj": [
        # ("08", "M_JAN_EVANJELISTA"),
        # ("11", "M_VASIL_HOPKO"),
    # ],
    # "10_jun": [
        # ("24", "M_NAR_JAN_KRSTITEL"),
        # ("29", "M_PETER_PAVOL")
    # ],
    # "11_jul": [
        # ("05", "M_CYRIL_METOD"),
        # ("15", "M_VLADIMIR"),
        # ("17", "M_PAVOL_GOJDIC"),
        # ("20", "M_ELIAS"),
    # ],
    # "12_august": [
        # ("06", "M_PREMENENIE"),
        # ("15", "M_ZOSNUTIE"),
    # ]
}

with io.open(f'1_generated/00_all/1_minea.typ', "w", encoding="utf-8") as all:
    for t in Ds:    
        D = Ds[t]
        i = 0
        for d,dn in D:
            if not os.path.exists(f"0_source/{t}/{d}.json"):
                continue
            with io.open(f"1_generated/{t}/{d}.typ", "w", encoding="utf-8") as f:
                f.writelines([
                    '#import "../../../all.typ": *\n',
                    f'  == ({d}.) #translation.at(\"{dn}\")\n',
                    "#columns(2, gutter: 2pt, [\n\n"])
                with io.open(f"0_source/{t}/{d}.json", "r", encoding="utf-8") as inp:
                    j = json.load(inp)
                    generate(f,j,i,None)
            
                f.write("])\n")
            i += 1
        all.write(f'#include "{t}.typ"\n')
        with io.open(f"1_generated/00_all/{t}.typ", "w", encoding="utf-8") as f:
            f.writelines([
                '#import "../../../all.typ": *\n',
                "\n",
                "#show: book\n\n",
                f'= #translation.at("M_{t}")\n\n'])
            i = 0
            for d, dn in D:
                if not os.path.exists(f"1_generated/{t}/{d}.typ"):
                    continue
                f.write(f'#include "../{t}/{d}.typ"\n')
                f.write(f'#pagebreak()\n')
                i += 1