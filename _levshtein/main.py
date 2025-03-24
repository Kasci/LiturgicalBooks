#!/bin/python3

import io
import json
import sys
import threading


def key(s1, s2):
    return f'{s1}|{s2}'

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
    
    cc = {}
    r = lev(s1, s2, cc)
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

sys.setrecursionlimit(2000)

H = [1,2,3,4,5,6,7,8]
D = ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]
Dn = ["Ne", "Po", "Ut", "Sr", "St", "Pi", "So"]
# PATH = "/c/Users/ZZ01PC693/MyStuff/Cerkovne/Liturgical_books/LiturgicalSource"
PATH = "/c/Users/ZZ01PC693/MyStuff/Cerkovne/Liturgical_books_source"

cache = {}
texts = {}
for h in H:
    for i,d in enumerate(D):
        with io.open(f"{PATH}/CU/oktoich/Hlas{h}/{d}.json", "r", encoding="utf-8") as inp:
            j = json.load(inp)
            texts = texts | getTexts(f'{h}_{i}', j)
                
for h in H:
    for i,d in enumerate(D):
        with io.open(f"out/{h}_{d}_res.txt", "w") as oup:
            N = len(texts)
            for i in range(N):
                k1 = list(texts.keys())[i]
                # print(k1)
                for j in range(i+1, N):
                    k2 = list(texts.keys())[j]
                    l = lev_out(texts[k1], texts[k2], cache)
                    if l > 0 and l < 50:
                        print(k1, k2, l)
                    oup.write(f'{"!!! " if l > 0 and l < 50 else ""}{k1} > {k2} = {l}\n')