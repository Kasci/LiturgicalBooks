#!/usr/bin/env python3

from collections import Counter
import io

def unify_strings2(strings):
    strs = [s.strip().split(" ") for s in strings if s.strip()]
    output = []
    idx = 0
    while True:
        tmps = [s[idx] if idx < len(s) else "" for s in strs]
        c = Counter(tmps)
        mc = c.most_common(1)[0]
        print(f"Most common: '{mc[0]}' with count {mc[1]} in {tmps}")
        output.append(mc[0])
        idx += 1
        if idx >= len(strs[0]):
            break   
    return " ".join(output)


def unify_strings(strings):
    with io.open("exampleO.txt", "w", encoding="utf-8") as f:
        strs = [s.strip() for s in strings if s.strip()]
        output = []
        idx = 0
        while True:
            tmps = [s[idx:(idx + 3 if idx + 3 < len(s) else len(s))] for s in strs]
            c = Counter(tmps)
            mc = c.most_common(1)[0]
            f.write(f"Most common: '{mc[0]}' with count {mc[1]} in {tmps}\n")
            # if mc[1] > len(tmps)/2:
            output.append(mc[0][0])
            # else:
            #     print(f"Counter: {c}")
            #     raise ValueError(f"IDK")
            for i in range(len(strs)):
                spl = list(strs[i])
                if idx + 3 < len(spl):
                    if spl[idx + 3] == mc[0][-1]:
                        f.write(f"Replacing 4 '{''.join(spl[idx:idx + 4])}' with '{mc[0]}'\n")
                        spl2 = spl[:idx] + [mc[0]] + spl[idx + 4:]
                    elif "".join(spl[idx:idx + 2]) == mc[0][:2] and spl[idx + 2] != mc[0][-1]:
                        f.write(f"Replacing 2 '{''.join(spl[idx:idx + 2])}' with '{mc[0]}'\n")
                        spl2 = spl[:idx] + [mc[0]] + spl[idx + 2:]
                    else:
                        f.write(f"Replacing 3 '{''.join(spl[idx:idx + 3])}' with '{mc[0]}'\n")
                        spl2 = spl[:idx] + [mc[0]] + spl[idx + 3:]
                else:
                    spl2 = spl[:idx] + [mc[0]]
                strs[i] = "".join(spl2)
            f.write(f"{''.join(output)}, {mc[0]}\n")
            for s in strs:
                f.write(f">>> {s}\n")
            idx += 1
            if idx >= len(strs[0]):
                break
            f.write("------------------\n")
        return "".join(output)

import re
import json

DAYS = ["0_Nedela", "1_Pondelok", "2_Utorok", "3_Streda", "4_Stvrtok", "5_Piatok", "6_Sobota"]
files = "../../Liturgical_books_source/CU/oktoich/Hlas{}/{}.json"

def getText(str):
    pattern = r"\((\d)_(\d)\)((?:_[\dA-Z]+)+)(_\[[\dA-Z]+\])?"
    match = re.search(pattern, str)
    if not match:
        raise ValueError(f"Invalid string format: {str}")
    file_path = files.format(match.group(1), DAYS[int(match.group(2))])
    j_file = json.load(open(file_path, 'r', encoding='utf-8'))
    values = match.group(3)
    has_b = values.endswith("_B") and not values.endswith("L_B")
    if has_b:
        values = values.replace("_B", "")
    groups = values.split("_")[1:]
    # print(groups)
    if has_b:
        groups[-1] += "_B"
    groups += [(match.group(4)[1:])] if match.group(4) else []
    for g in groups:
        if g.startswith("["):
            j_file = j_file[int(g[1:-1])]
        else:
            j_file = j_file[g]       
    return j_file["TEXT"]

def getFiles():
    path = "out.txt"
    GROUPS = []

    with open(path, 'r') as f:
        lines = f.readlines()
        if len(lines) > 0:
            for l in lines:
                words = l.strip().split(" ")
                if int(words[-1]) > 25:
                    continue
                inserted = False
                for g in GROUPS:
                    if words[0] in g:
                        g.append(words[2])
                        inserted = True
                        break
                if not inserted:
                    for g in GROUPS:
                        if words[2] in g:
                            g.append(words[0])
                            inserted = True
                            break
                if not inserted:
                    GROUPS.append([words[0], words[2]])

    output_file = "tmp/"
    for i,g in enumerate(sorted(GROUPS, key=lambda x: len(x), reverse=True)):
        with io.open(f"{output_file}group_{i}.txt", "w", encoding="utf-8") as f:
            for s in g:
                f.write(s + "\n")
            f.write("--------\n")
            for s in g:
                f.write(getText(s) + "\n")