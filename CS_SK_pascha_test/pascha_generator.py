#!/bin/python3

import io
import json

class DTable:
    def __init__(self):
        self.headers = []
        self.lines = []
    
    def addHeader(self, header, level):
        self.headers.append((header, level))

    def addLine(self, line):
        if line.startswith("#"):
            self.lines.append(f'[{line}],')
        else:
            self.lines.append(f'"{line}",')

    def add(self, left, mid, right, note = None):
        self.addLine(f'#table.cell(pad(left:10pt, par(hanging-indent: -10pt,"{left + ("" if note is None else (" "+note))}")))', )
        self.addLine(f'#table.cell(align(center+top,sText("{mid}")))',)
        self.addLine(f'#table.cell(pad(left:10pt, par(hanging-indent: -10pt,"{right + ("" if note is None else (" "+note))}")))')

    def addK(self, left, right, note = None):
        self.add(left, "K", right)
            
    def addL(self, left, right, note = None):
        self.add(left, "", right)

    def addSingle(self, line):
        self.lines.append(f'table.cell([{line}], colspan: 3),')

    def addNote(self, note):
        self.addSingle(f'#sText[$#sym.ast.circle$] #sText("{note}")')

    def addHr(self):
        self.lines.append(f'table.hline(stroke: (paint: red, dash: "dashed")),')

    def generate(self, file):
        if len(self.lines) == 0:
            return
        file.writelines(
            [f'{"="*level} {header}\n\n' for (header, level) in self.headers]
        )
        file.writelines(
            [f'#generateDouble((\n']+
            [f'{" "*4}{line}\n' for line in self.lines]+
            [f'))\n']
        )

skChV = "Kristus slávne vstal z mŕtvych, * smrťou smrť premohol * a tým, čo sú v hroboch, * život daroval."
csChV = "Christós voskrése iz mértvych, * smértiju smerť popráv * i súščym vo hrobích živót darováv."

sk_ektenia = [
    "Za pokoj zhora a za spásu našich duší modlime sa k Pánovi.",
    "Za mier na celom svete, za blaho svätých Božích cirkví a za zjednotenie všetkých modlime sa k Pánovi.",
    "Za tento svätý chrám a za tých, čo doň vstupujú s vierou, nábožnosťou a s Božou bázňou, modlime sa k Pánovi.",
    "Za veľkňaza všeobecnej Cirkvi, nášho Svätého Otca (povie meno), rímskeho pápeža, modlime sa k Pánovi.",
    "Za nášho najosvietenejšieho otca arcibiskupa a metropolitu (povie meno), za nášho bohumilého otca biskupa (povie meno), za ctihodných kňazov a diakonov v Kristovi, za všetko duchovenstvo a ľud modlime sa k Pánovi.",
    "Za tých, čo spravujú a ochraňujú našu krajinu, modlime sa k Pánovi.",
    "Za toto mesto (alebo Za túto obec alebo Za tento svätý dom), za všetky mestá, obce, krajiny a za tých, ktorí v nich podľa viery žijú, modlime sa k Pánovi.",
    "Za priaznivé počasie, hojnosť plodov zeme a za pokojné časy modlime sa k Pánovi.",
    "Za cestujúcich, chorých, trpiacich, zajatých a za ich záchranu modlime sa k Pánovi.",
    "Za oslobodenie od všetkého nášho zármutku, hnevu a núdze modlime sa k Pánovi.",
    "Zastaň sa a spas nás, zmiluj sa a zachráň nás, Bože, svojou milosťou."
]
cs_ektenia = [
    "O svýšňim míri, i spaséniji dúš nášich, Hóspodu pomólimsja.",
    "O míri vsehó míra, blahostojániji svjatých Bóžijich cerkvéj, i sojedinéniji vsích, Hóspodu pomólimsja.",
    "O svjaťím chrámi sém, i s víroju, blahohovínijem, i stráchom bóžijim vchoďáščich v óň, Hóspodu pomólimsja.",
    "O svjaťíjšem vselénsťim Archijeréji nášem (ímja rek), Pápi Rímsťim, Hóspodu pomólimsja.",
    "O preosvjaščénňijšem Archijepískopi i Mitropolíťi nášem Kýr (ímja rék), i o bohoľubívim Jepískopi nášem Kýr (ímja rék), čéstňim presvýterstvi, vo Chrisťí dijákonstvi, o vsém príčťi i ľúdech, Hóspodu pomólimsja.",
    "O bohochranímim naróďi nášem, o prederžáščich vlastéch nášich, i o vsém vójinstvi, Hóspodu pomólimsja.",
    "O hráďi sém (ilí O vési séj, ilí O svjaťíj obíteli séj), vsjákom hráďi, straňí, i víroju živúščich v ních, Hóspodu pomólimsja.",
    "O blahorastvoréniji vozdúchov, o izobíliji plodóv zemných, i vrémeňich mírnych, Hóspodu pomólimsja.",
    "O plávajuščich, putešéstvujuščich, nedúhujuščich, strážduščich, pľinénnych, i o spaséniji ích, Hóspodu pomólimsja.",
    "O izbávitisja nám ot vsjákija skórbi, hňíva i núždy, Hóspodu pomólimsja.",
    "Zastupí, spasí, pomíluj, i sochraní nás, Bóže, Tvojéju blahodátiju."
]

def generateUvod(out):
    table = DTable()
    table.addHeader("Nedeľa Paschy",1)
    table.addHeader("Utiereň",2)
    table.add(
        "Vzkriesenie tvoje Kriste, Spasiteľu, * ospevujú anjeli na nebesiach. * Aj nám tu na zemi dožič * s čistým srdcom ťa chváliť a velebiť.", "",
        "Voskresénije Tvojé, Christé Spáse, * Anheli pojút na nebesích, * i nas na zemlí spodóbi čístym sérdcem * Tebé píti i sláviti.")
    table.addK(
        "Sláva svätej, jednopodstatnej, životodarnej a nedeliteľnej Trojici v každom čase, teraz i vždycky, i na veky vekov.", 
        "Sláva Svjaťíj, i Jedinosúščňij, i Životvorjáščij, i Nerazďilímij Tróici, vsehdá, nýňi i prísno, i vo víki vikóv.")
    table.addHr()
    table.addNote("Ak niet kňaza:"),
    table.addL(
        "Pane Ježišu Kriste, Bože náš, pre modlitby našich svätých otcov, zmiluj sa nad nami.", 
        "Molítvami svjatých Otéc, Hóspodi Isúse Chríste, Bóže náš, pomíluj nás."),
    table.addHr()
    table.addL("Amen.","Amíň."),
    table.addK(skChV, csChV),
    table.addL(skChV, csChV, note="(2x)"),
    table.generate(out)

def generateVerse(fs, sn, out):
    table = DTable()
    table.addHeader("Verše", 3)
    vfs = fs["CH_S"]
    vsn = sn["CH_S"]
    for (a,b) in zip(vfs, vsn):
        table.add(a,"",b)

    table.generate(out)


def main(fs, sn, out):
    out.writelines([
        '#import "../../all.typ": *\n',
        '\n',
        '#show: book\n',
    ])
    generateUvod(out)
    generateVerse(fs, sn, out)

with io.open("./pascha_sk.json", "r", encoding="utf-8") as sk:
    with io.open("./pascha_csl.json", "r", encoding="utf-8") as cs:
        with io.open("out/pascha_gen.typ", "w", encoding="utf-8") as out:
            main(json.load(sk), json.load(cs), out)