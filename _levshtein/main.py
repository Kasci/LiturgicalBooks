#!/bin/python3

import io
import json
import sys
import threading
from pathlib import Path


def key(s1, s2):
    return f'{s1}|{s2}'

def lev_iter(s1, s2):    
    table = [[0 if n1>0 and n2>0 else n1 if n2==0 else n2 if n1 == 0 else 0 for n1 in range(len(s2)+1)] for n2 in range(len(s1)+1)]
    for n1 in range(1, len(s1)+1):
        for n2 in range(1, len(s2)+1):
            if s1[n1-1]==s2[n2-1]:
                table[n1][n2] = table[n1-1][n2-1]
            else:
                table[n1][n2] = 1 + min(
                    table[n1-1][n2],
                    table[n1][n2-1],
                    table[n1-1][n2-1]
                )
    return table[len(s1)][len(s2)]

# sys.setrecursionlimit(2000)
def lev(s1, s2, cache):
    k = key(s1,s2)
    if k in cache:
        return cache[k]
    
    if len(s1) == 0:
        cache[k] = len(s2)
        return len(s2)
    if len(s2) == 0:
        cache[k] = len(s1)
        return len(s1)
    if s1[-1] == s2[-1]:
        r = lev(s1[:-1], s2[:-1], cache)
        cache[k] = r
        return r
    r = 1 + min(
        lev(s1[:-1], s2, cache),
        lev(s1, s2[:-1], cache),
        lev(s1[:-1], s2[:-1], cache)
    )
    cache[k] = r
    return r

def lev_out(s1, s2, cache):
    k = key(s1, s2)
    if k in cache:
        return cache[k]
    
    # cc = {}
    # r = lev(s1, s2, cc)
    r = lev_iter(s1, s2)
    cache[k] = r
    return r

def getTexts(n, j):
    r = {}
    for k in j:
        # if n.startswith("2_2"):
        #     print(n)
        if isinstance(j[k], dict):
            tmp = getTexts(f'{n}_{k}', j[k])
            for t in tmp:
                r[t] = tmp[t]
        elif isinstance(j[k], list):
            if k.endswith("?"):
                return {}
            for i,a in enumerate(j[k]):
                tmp = getTexts(f'{n}_{k}_[{i}]', a)
                for t in tmp:
                    r[t] = tmp[t]
        else:
            if k == "TEXT":
                r[n] = j[k]
    return r 

### OKTOICH

H = [1,2,3,4,5,6,7,8]
D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
Dn = ["Ne", "Po", "Ut", "Sr", "St", "Pi", "So"]
# PATH = "/c/Users/ZZ01PC693/MyStuff/Cerkovne/Liturgical_books/LiturgicalSource"
PATH = "/c/Users/ZZ01PC693/MyStuff/Cerkovne/Liturgical_books_source"

def getT(h,i):
    with io.open(f"{PATH}/CU/oktoich/Hlas{h}/{D[i]}.json", "r", encoding="utf-8") as inp:
        j = json.load(inp)
        return getTexts(f'({h}_{i})', j)



def run(idx,h,i,hh,ii,in_texts,out_texts):
    cache = {}
    f = f"out/{h}_{i}-{hh}_{ii}-res.txt"
    old = {}
    if Path(f).is_file():
        with io.open(f, "r") as tmp_i:
            lines = [l.split(" ") for l in tmp_i.readlines()]
            for l in lines:
                if l[0] == "!!!":
                    old[key(l[1],l[3])] = int(l[5])
                else:
                    old[key(l[0],l[2])] = int(l[4])  
    with io.open(f, "w") as oup:
        for j1, k1 in enumerate(in_texts):
            print(f'{" "*(idx*2)}{h}_{i}/{hh}_{ii}, {k1}')
            for j2, k2 in enumerate(out_texts):
                if h == hh and i == ii and j1 >= j2: continue
                if key(k1,k2) in old:
                    l = old[key(k1,k2)]
                    cache[key(in_texts[k1], out_texts[k2])] = l
                else:
                    l = lev_out(in_texts[k1], out_texts[k2], cache)
                if l > 0 and l < 50:
                    print(f'--- {k1}, {k2}, {l} ---')
                oup.write(f'{"!!! " if l > 0 and l < 50 else ""}{k1} > {k2} = {l}\n')
    print(f"{h}_{i}-{hh}_{ii} is COMPLETED!")

# L = []
# for h in H:
#     for hh in H:
#         if h > hh: continue
#         for i in range(len(D)):
#             for ii in range(len(D)):
#                 if h == hh and i > ii: continue
#                 L.append((h,hh,i,ii))

# index = 0
# while index < len(L):
#     threads = []
#     for idx in range(8):
#         if index+idx >= len(L):
#             break
#         h,hh,i,ii = L[index+idx]
#         thread = threading.Thread(target=run, args=(idx,h,i,hh,ii,getT(h,i),getT(hh,ii)))
#         thread.start()
#         threads.append(thread)
#     index += 8
#     for thread in threads:
#         thread.join()
#     print(">>> RUN COMPLETED <<<")

import os

with io.open("out.txt", "w") as ouf:
    for file in os.listdir("./out"):
        with io.open("./out/"+file, "r") as inf:
            ouf.writelines([x.replace("!!! ", "") for x in inf.readlines() if x.startswith("!!!")])