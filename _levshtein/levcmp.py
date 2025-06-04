#!/usr/bin/env python3
import io
from collections import Counter

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

def unify_strings2(strings):
    strs = [s.split(" ") for s in strings]
    output = []
    idx = 0
    while True:
        tmps = [s[idx] if idx < len(s) else "" for s in strs]
        c = Counter(tmps)
        mc = c.most_common(1)[0]
        output.append(mc[0])
        idx += 1
        if idx >= len(strs[0]):
            break   
    return " ".join(output)

with io.open("example.txt", "r", encoding="utf-8") as f:
    lines = [l.strip() for l in f.readlines() if l.strip()]
    uni = unify_strings2(lines)
    cache = {}
    sum = 0
    for l in lines:
        lev = lev_out(l, uni, cache)
        sum += lev
    print(f"Sum of Levenshtein distances: {sum}")
    print(f"Average Levenshtein distance: {sum / len(lines)}")