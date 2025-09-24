#!/bin/python3

import io
import json
import os
import sys

sys.path.append(os.path.abspath(".."))
sys.path.append(os.path.abspath("../.."))
from common import *
from common_SK import *

def generate(f,j,day):
    f.write(f'// {D[day]}\n\n')

D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
for i,d in enumerate(D):
    with io.open(f"1_generated/{d}.typ", "w", encoding="utf-8") as f:
        f.writelines([
            '#import "../../../all.typ": *\n',
            "#columns(2, gutter: 2pt, [\n\n"])
    
        with io.open(f"../../LiturgicalSource/SK/oktoich/Hlas6/{d}.json", "r", encoding="utf-8") as inp:
            j = json.load(inp)
            generate(f,j,i)
    
        f.write("])\n")
with io.open(f"1_generated/Short.typ", "w", encoding="utf-8") as f:
    f.writelines([
        '#import "../../../all.typ": *\n',
        "\n",
        "#show: book\n\n",
        f"= Dni \n\n"])
    for i,d in enumerate(D):
        f.write(f'#include "{d}.typ"\n')
        f.write(f'#pagebreak()\n')