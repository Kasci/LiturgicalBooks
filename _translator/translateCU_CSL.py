#!/bin/python3
import io
import json
import re

dictionary = {	
    "Оу": "U",
    "ѹ": "u",
    "Ѹ": "U",
    "лѧ́е": "ľáje",
    #"": "",
    
    "Ѻ́": "Ó",
    "Лю́": "Ľú",
    #"": "",
    #"": "",
    #"": "",
    #"": "",
    
    "їй": "ij", 
    " є": " je",
    
    "шѧ": "ša",
    "нѧ": "ňa",
    "дѧ": "ďa",
    "тѧ": "ťa",
    "лѧ": "ľa",
    "тѧ́": "ťá",
    "шѧ́": "šá",
    "тѧ́": "ťá",
    "лѧ́": "ľá",
    "нѧ́": "ňá",
    "дѧ́": "ďá",
    
    "ню": "ňu",
    "лю": "ľu",
    
	"а́е": "áje",
    "лю́": "ľú",
    "ꙗ҆́": "já",
    "ᲂу́": "ú",
    "ое́": "ojé",
    "оѐ": "ojé",
    "ои́": "ojí",
    "нѣ": "ňi",
    "нѣ́": "ňí",
    "о́е": "óje",
    "ᲂу": "u",
    "дь": "ď",
    "ть": "ť",
    "ль": "ľ",
    "нь": "ň",
    "їѧ": "ija",
    "їѧ́": "ijá",
    "ое": "oje",
    "дѣ": "ďi",
    "лѣ": "ľi",
    "лѣ́": "ľí",
    "тѣ": "ťi",
    "тѣ́": "ťí",
    "ꙋе": "uje",
    "ꙋ́е": "úje",
    "їю": "iju",
    "їю́": "ijú",
    "ѧ́е": "áje",
    "дѣ́": "ďí",
    "ее": "eje",
    "іи": "iji",
    "і́и": "íji",
    "ае": "aje",
    "єѝ": "ejí",
    "ѿе́": "otjé",
    #"їѡ": "",
    #"": "",
    #"": "",
    #"": "",

    "ы́": "ý",
    "и́": "í",
    "е́": "é",    
    "є́": "é", 
    " є́": " jé",  
    "і́": "í",
    "а́": "á",
    "о́": "ó",
    "ю́": "jú",
    "ѡ́": "ó",
    "ꙗ́": "já",
    "ѣ́": "í",
    "ꙋ́": "ú",
    "ѧ́": "já",
    "ѻ́": "ó",
    #"": "",
    #"": "",
    #"": "",
    #"": "",
    
    
    "Є": "Je",
    "І": "I",
    "А": "A",
    "Б": "B",
    "В": "V",
    "Г": "H",
    "Д": "D",
    "Е": "Je",
    "Ж": "Ž",
    "З": "Z",
    "И": "I",
    "К": "K",
    "Л": "L",
    "М": "M",
    "Н": "N",
    "О": "O",
    "П": "P",
    "Р": "R",
    "С": "S",
    "Т": "T",
    "Х": "Ch",
    "Ц": "C",
    "Ш": "Š",
    "Ч": "Č",
    "Ѕ": "Z",
    "а": "a",
    "б": "b",
    "в": "v",
    "г": "h",
    "д": "d",
    "е": "e",
    "ж": "ž",
    "з": "z",
    "и": "i",
    "й": "j",
    "к": "k",
    "л": "l",
    "м": "m",
    "н": "n",
    "о": "o",
    "п": "p",
    "р": "r",
    "с": "s",
    "т": "t",
    "у": "u",
    "ф": "f",
    "х": "ch",
    "ц": "c",
    "ч": "č",
    "ш": "š",
    "щ": "šč",
    "ъ": "",
    "ы": "y",
    "ь": "",
    "ю": "ju",
    "ѐ": "é",
    "є": "e",
    "ѕ": "z",
    "і": "i",
    "ї": "ij",
    "ѝ": "í",
    "Ѡ": "O",
    "ѡ": "o",
    "ѣ": "i",
    "ѧ": "ja",
    "ѯ": "ž",
    "Ѱ": "Ps",
    "ѱ": "ps",
    "ѳ": "th",
    "ѵ": "n",
    "ѷ": "y",
    "Ѻ": "O",
    "Ѳ": "Ó",
    "ѻ": "o",
    "Ѽ": "O",
    "ѽ": "o",
    "Ѿ": "Ot",
    "ѿ": "ot",
    "ꙋ": "u",
    "Ꙗ": "Ja",
    "ꙗ": "ja",

    "̾": "",
    "̀": "́",
    "҆": "́",
    "̑": "́",
    "": "",
    "": "",
    "": "",
    "": "",

    "҃": "*",
    "҇": "*",
    "ⷣ": "-d*",
    "ⷪ": "-o*",
    "ⷭ": "-s*",
    "꙾": "*",
}

merge = {
    "́́": "́",
    "á": "á",
    "é": "é",
    "í": "í",
    "ó": "ó",
    "ú": "ú",
    "ý": "ý",
    "Á": "Á",
    "É": "É",
    "Í": "Í",
    "Ó": "Ó",
    "Ú": "Ú",
    "Ý": "Ý"
}

words = {
    "voskr-s**n": "voskresén",
    "voskr-s**": "voskres",
    "voskr*s": "voskres",
    
    "č-s**t": "čest",
    "Č-s**t": "Čest",
    "č-s**": "čís",
    "Č-s**": "Čís",

    "chr-s**": "Chris",
    "Chr-s**": "Chris",
    "kr-s**": "kres",
    "Kr-s**": "Kres",
    "árcháhh*": "Archánhe",
    "archáhh*": "Archánhe",
    "Archáhh*": "Archánhe",
    "ahh*": "Anhe",
    "áhh*": "Anhe",
    "Ahh*": "Anhe",
    "Áhh*": "Anhe",
    "st*": "svjat",
    "St*": "Svjat",
    "hd-s**": "Hospod",
    "Hd-s**": "Hospod",
    "str-s**": "strás",
    "Str-s**": "Strás",
    "cr*": "car",
    "Cr*": "Car",
    "bh*": "Boh",
    "Bh*": "Boh",
    "nb-s**": "nebés",
    "Nb-s**": "Nebés",
    "prv-d*": "práved",
    "Prv-d*": "Práved",
    "pr-s**": "pres",
    "Pr-s**": "Pres",
    "tr-o**": "Trój",
    "Tr-o**": "Trój",
    "mt*": "mate",
    "Mt*": "Mate",
    "mr*": "Mar",
    "Mr*": "Mar",
    "bl*": "blá",
    "Bl*": "Blá",
    "dch*": "Dúch",
    "Dch*": "Dúch",
    "ml-s**": "mílos",
    "Ml-s**": "Mílos",
    "sšč*": "svjašč",
    "Sšč*": "Svjašč",
    "bc-d*": "Bohoródic",
    "Bc-d*": "Bohoródic",
    "vl-d*č": "Vladíči",
    "Vl-d*č": "Vladíči",
    "vl-d*k": "Vladýk",
    "Vl-d*k": "Vladýk",
    "prp-d*": "prepodó",
    "Prp-d*": "Prepodó",
    "dš*": "duš",
    "Dš*": "Duš",
    
    "Ap-s**": "Aposto",
    "Áp-s**": "Aposto",
    "ap-s**": "Aposto",
    "áp-s**": "Aposto",
    "oc*": "Otc",
    "Oc*": "Otc",
    "óc*": "Ótc",
    "Óc*": "Ótc",
    "oč*": "Otč",
    "Oč*": "Otč",
    "óč*": "Ótč",
    "Óč*": "Ótč",
    "uč*n": "učeni",
    "úč*n": "učeni",
    "Uč*n": "Učeni",
    "ml*t": "molit",
    "Ml*t": "Molit",
    "mč*n": "mučeni",
    "Mč*n": "Mučeni",
    "sn*": "Sýn",
    "Sn*": "Sýn",
    "sl*": "Sól",
    "Sl*": "Sól",

    " dv*": " Ďiv",
    "dv*": "ďiv",
    " bž*": " Bož",
    "bž*": "bož",
    "Bž*": "Bož",
    "bz*": "Bóz",
    "Bz*": "Bóz",
    " sp*": " Spa",
    "sp*": "spa",
    "Sp*": "Spa",
    
    "ml-d*": "mladé",
    "íi*": "Izrái",
    "nb*": "nebe",
    "čl*": "čelo",
    "cr*": "cer",
    "rž-s**": "roždes",
    "cr-s**": "cárs",
    "Dv*": "Daví",
    "pr-o**": "pro",
    "bž-s**t": "Božest",
    "Nb*": "Neb",
    "Voskr*": "Voskré",

    # small to CAPS
    " sijón": " Sijón",
    " jemmanúil": " Jemmanúil",
    " adám": " Adám",
    " slóv": " Slóv",
    " hedeón": " Hedéon",

    # fix
    "Ďivd": "David",
    "íósif": "Jósif",
    "íón": "Jón",
    "Íón": "Jón",
}

def translate(a):
    for k in dictionary:
        a = a.replace(k,dictionary[k])
    return a

def transform(b):
    for k in merge:
        b = b.replace(k, merge[k])
    for k in words:
        b = b.replace(k, words[k])
    return b

def getUnf(c):
    for t in c.split(" "):
        if "*" in t:
            k = t.replace(".", "").replace(",", "").replace(":", "")
            print(f'"{k}": "{k.split("*")[0]}",')


def generate(i):
    if isinstance(i, (dict)):
        out = {}
        for k in i:
            out[k] = generate(i[k])
        return out
    elif isinstance(i, (list)):
        out = []
        for k in i:
            out.append(generate(k))
        return out
    else:
        return transform(translate(i))

for h in range(1,9):
    for d in ["0_Nedela","1_Pondelok","2_Utorok","3_Streda","4_Stvrtok","5_Piatok","6_Sobota"]:
        IN = None
        with io.open(f"../LiturgicalSource/CU/oktoich/Hlas{h}/{d}.json", "r", encoding="utf-8") as f:  
            IN = json.load(f)
        with io.open(f"CSL_okto_out/Hlas{h}/{d}.json", "w", encoding="utf-8") as o:
            OUT = generate(IN)
            s = json.dumps(OUT, ensure_ascii=False, indent=2).encode('utf8').decode()
            s = re.sub('",\s*"', '", "', s)
            s = re.sub('{\s*"(TITLE|TEXT|PODOBEN|HLAS)', '{"\g<1>', s)
            s = re.sub('"\s*}(,?)', '"}\g<1>', s)
            o.writelines(s)
