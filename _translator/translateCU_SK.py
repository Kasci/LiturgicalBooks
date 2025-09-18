#!/usr/bin/env python3

import os
from dotenv import load_dotenv
from openai import OpenAI

load_dotenv()
client = OpenAI()

import io

def translateOktoich():
    first, count = 100, 20

    with io.open("../../Liturgical_books_source/CU/oktoich/texts.txt", "r", encoding="utf-8") as f:
        cu_text = f.readlines()
        for i, line in enumerate(cu_text):
            if i < first:
                continue
            if i >= first + count:
                break
            # print(f"-"*20)
            # print(f"CU {i}: {line.strip()}")
            # print(f"="*20)
            response = client.responses.create(
                model="gpt-5",
                input=f"Translate from Church Slavonic to Slovak language:{line.strip()}",
                text={"verbosity": "low"}
            )
            print(response.output_text)
            # print(f"-"*20)

# --------------------------------------------------------------
# VU6 was created with command:
# ls | xargs jq '.V.HV[].TEXT, .V.HV_B.TEXT, .V.S[].TEXT, 
#    .V.S_B.TEXT, .V.T[]?.TEXT, .V.T_B?.TEXT, .U.S1[].TEXT, 
#    .U.S1_B.TEXT, .U.S2[].TEXT, .U.S2_B.TEXT, .U.S3[]?.TEXT, 
#    .U.S3_B?.TEXT, .U.K[]["1"]?[0].TEXT, .U.CH[]?.TEXT, 
#    .U.ST[]?.TEXT, .U.K.K[]?.TEXT, .U.K.I[]?.TEXT' | sed 's/"//g' | sort -u > ../VU6_texts.txt
# --------------------------------------------------------------
def translateShort():
    with io.open("../../Liturgical_books_source/CU/oktoich/VU6_texts.txt", "r", encoding="utf-8") as f:
        with io.open("../../Liturgical_books_source/SK/oktoich/VU6_texts.txt", "w", encoding="utf-8") as out:
            cu_text = f.readlines()
            for i, line in enumerate(cu_text):
                if line.strip() == "":
                    out.write("\n")
                    continue
                print(f"-"*20)
                print(f"CU {i}: {line.strip()}")
                print(f"="*20)
                response = client.responses.create(
                    model="gpt-5",
                    input=f"Translate from Church Slavonic to Slovak language:{line.strip()}",
                    text={"verbosity": "low"}
                )
                print(response.output_text)
                out.write(response.output_text + "\n")
                print(f"-"*20)