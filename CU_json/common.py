import io
import json

stichiry_HospodyVozvach = [
  "И҆зведѝ и҆з̾ темни́цы дꙋ́шꙋ мою̀, и҆сповѣ́датисѧ и҆́мени твоемꙋ̀.",
  "Менѐ ждꙋ́тъ пра́вєдницы, до́ндеже возда́си мнѣ̀.",
  "И҆з̾ глꙋбины̀ воззва́хъ къ тебѣ̀ гдⷭ҇и, гдⷭ҇и, ᲂу҆слы́ши гла́съ мо́й.",
  "Да бꙋ́дꙋтъ ᲂу҆́ши твоѝ, вне́млющѣ гла́сꙋ моле́нїѧ моегѡ̀.",
  "А҆́ще беззакѡ́нїѧ на́зриши гдⷭ҇и, гдⷭ҇и, кто̀ постои́тъ; ꙗ҆́кѡ ᲂу҆ тебѐ ѡ҆чище́нїе є҆́сть.",
  "И҆́мене ра́ди твоегѡ̀ потерпѣ́хъ тѧ̀ гдⷭ҇и, потерпѣ̀ дꙋша̀ моѧ̀ въ сло́во твоѐ, ᲂу҆пова̀ дꙋша̀ моѧ̀ на гдⷭ҇а.",
  "Ѿ стра́жи ᲂу҆́треннїѧ до но́щи, ѿ стра́жи ᲂу҆́треннїѧ, да ᲂу҆пова́етъ і҆и҃ль на гдⷭ҇а.",
  "Ꙗ҆́кѡ ᲂу҆ гдⷭ҇а млⷭ҇ть, и҆ мно́гое ᲂу҆ негѡ̀ и҆збавле́нїе, и҆ то́й и҆зба́витъ і҆и҃лѧ ѿ всѣ́хъ беззако́нїй є҆гѡ̀.",
  "Хвали́те гдⷭ҇а всѝ ꙗ҆зы́цы, похвали́те є҆го̀ всѝ лю́дїе.",
  "Ꙗ҆́кѡ ᲂу҆тверди́сѧ млⷭ҇ть є҆гѡ̀ на на́съ, и҆ и҆́стина гдⷭ҇нѧ пребыва́етъ во вѣ́къ."
  ]

stichiry_Stichovni = {
  "M": (
    {"TEXT": "Помѧнꙋ̀ и҆́мѧ твоѐ во всѧ́комъ ро́дѣ и҆ ро́дѣ."},
    {"TEXT": "Слы́ши дщѝ и҆ ви́ждь, и҆ приклонѝ ᲂу҆́хо твоѐ."},
    {"TEXT": "Лицꙋ̀ твоемꙋ̀ помо́лѧтсѧ бога́тїи лю́дстїи."},
  ),
  "0": (
    {"TEXT": "Гдⷭ҇ь воцари́сѧ, въ лѣ́потꙋ ѡ҆блече́сѧ."},
    {"TEXT": "И҆́бо ᲂу҆твердѝ вселе́ннꙋю, ꙗ҆́же не подви́житсѧ."},
    {"TEXT": "До́мꙋ твоемꙋ̀ подоба́етъ ст҃ы́нѧ гдⷭ҇и, въ долготꙋ̀ дні́й."},
  ),
  "6": (
    {"TEXT": "Бл҃же́ни, ꙗ҆̀же и҆збра́лъ и҆ прїѧ́лъ є҆сѝ гдⷭ҇и."},
    {"TEXT": "Дꙋ́шы и҆́хъ во бл҃ги́хъ водворѧ́тсѧ."},
    {"TEXT": ""},
  ),
  "x": (
    {"TEXT": "Къ тебѣ̀ возведо́хъ ѻ҆́чи моѝ, живꙋ́щемꙋ на нб҃сѝ. сѐ ꙗ҆́кѡ ѻ҆́чи ра̑бъ въ рꙋкꙋ̀ госпо́дїй свои́хъ, ꙗ҆́кѡ ѻ҆́чи рабы́ни въ рꙋкꙋ̀ госпожѝ своеѧ̀: та́кѡ ѻ҆́чи на́ши ко гдⷭ҇ꙋ бг҃ꙋ на́шемꙋ, до́ндеже ᲂу҆ще́дритъ ны̀."},
    {"TEXT": "Поми́лꙋй на́съ, гдⷭ҇и, поми́лꙋй на́съ, ꙗ҆́кѡ по мно́гꙋ и҆спо́лнихомсѧ ᲂу҆ничиже́нїѧ: наипа́че напо́лнисѧ дꙋша̀ на́ша поноше́нїѧ гобзꙋ́ющихъ, и҆ ᲂу҆ничиже́нїѧ го́рдыхъ."},
  )
}

stichiry_Chvalite = [
  "Сотвори́ти въ ни́хъ сꙋ́дъ напи́санъ: сла́ва сїѧ̀ бꙋ́детъ всѣ̑мъ прпⷣбнымъ є҆гѡ̀.",
  "Хвали́те бг҃а во ст҃ы́хъ є҆гѡ̀, хвали́те є҆го̀ во ᲂу҆тверже́нїи си́лы є҆гѡ̀.",
  "Хвали́те є҆го̀ на си́лахъ є҆гѡ̀, хвали́те є҆го̀ по мно́жествꙋ вели́чествїѧ є҆гѡ̀.",
  "Хвали́те є҆го̀ во гла́сѣ трꙋ́бнѣмъ: хвали́те є҆го̀ во ѱалти́ри и҆ гꙋ́слехъ.",
  "Хвали́те є҆го̀ въ тѷмпа́нѣ и҆ ли́цѣ, хвали́те є҆го̀ во стрꙋ́нахъ и҆ ѻ҆рга́нѣ.",
  "Хвали́те є҆го̀ въ кѷмва́лѣхъ доброгла́сныхъ, хвали́те є҆го̀ въ кѷмва́лѣхъ восклица́нїѧ: всѧ́кое дыха́нїе да хва́литъ гдⷭ҇а.",
  "Воскрⷭ҇нѝ гдⷭ҇и бж҃е мо́й, да вознесе́тсѧ рꙋка̀ твоѧ̀, не забꙋ́ди ᲂу҆бо́гихъ твои́хъ до конца̀.",
  "И҆сповѣ́мсѧ тебѣ̀ гдⷭ҇и всѣ́мъ се́рдцемъ мои́мъ, повѣ́мъ всѧ̑ чꙋдеса̀ твоѧ̑.",
]

stichiry_Stichovni_Utrena = {
  "x": (
    "И҆спо́лнихомсѧ заꙋ́тра млⷭ҇ти твоеѧ̀ гдⷭ҇и, и҆ возра́довахомсѧ и҆ возвесели́хомсѧ, во всѧ̑ дни̑ на́шѧ возвесели́хомсѧ, за дни̑, въ нѧ́же смири́лъ ны̀ є҆сѝ, лѣ̑та, въ нѧ́же ви́дѣхомъ ѕла̑ѧ: и҆ при́зри на рабы̑ твоѧ̑, и҆ на дѣла̀ твоѧ̑, и҆ наста́ви сы́ны и҆́хъ.",
    "И҆ бꙋ́ди свѣ́тлость гдⷭ҇а бг҃а на́шегѡ на на́съ, и҆ дѣла̀ рꙋ́къ на́шихъ и҆спра́ви на на́съ, и҆ дѣ́ло рꙋ́къ на́шихъ и҆спра́ви.",
  ),
  "6": (
    "Бл҃же́ни, ꙗ҆̀же и҆збра́лъ и҆ прїѧ́лъ є҆сѝ гдⷭ҇и.",
    "Дꙋ́шы и҆́хъ во бл҃ги́хъ водворѧ́тсѧ.",
    "И҆ па́мѧть и҆́хъ въ ро́дъ и҆ ро́дъ.",
  )
}

stichiry_Blazenny = (
  "Бл҃же́ни ни́щїи дх҃омъ, ꙗ҆́кѡ тѣ́хъ є҆́сть црⷭ҇тво нбⷭ҇ное.",
  "Бл҃же́ни пла́чꙋщїи, ꙗ҆́кѡ ті́и ᲂу҆тѣ́шатсѧ.",
  "Бл҃же́ни кро́тцыи, ꙗ҆́кѡ ті́и наслѣ́дѧтъ зе́млю.",
  "Бл҃же́ни а҆́лчꙋщїи и҆ жа́ждꙋщїи пра́вды, ꙗ҆́кѡ ті́и насы́тѧтсѧ.",
  "Бл҃же́ни млⷭ҇тивїи, ꙗ҆́кѡ ті́и поми́ловани бꙋ́дꙋтъ.",
  "Бл҃же́ни чи́стїи се́рдцемъ, ꙗ҆́кѡ ті́и бг҃а ᲂу҆́зрѧтъ.",
  "Бл҃же́ни миротво́рцы, ꙗ҆́кѡ ті́и сн҃ове бж҃їи нарекꙋ́тсѧ.",
  "Бл҃же́ни и҆згна́ни пра́вды ра́ди, ꙗ҆́кѡ тѣ́хъ є҆́сть црⷭ҇тво нбⷭ҇ное.",
  "Бл҃же́ни є҆стѐ, є҆гда̀ поно́сѧтъ ва́мъ, и҆ и҆жденꙋ́тъ, и҆ рекꙋ́тъ всѧ́къ ѕо́лъ глаго́лъ на вы̀ лжꙋ́ще менѐ ра́ди.",
  "Ра́дꙋйтесѧ и҆ весели́тесѧ, ꙗ҆́кѡ мзда̀ ва́ша мно́га на нб҃сѣ́хъ.",
)

pripivy = {
  "0": (
    ("Сла́ва гдⷭ҇и ст҃о́мꙋ воскрⷭ҇нїю твоемꙋ̀."),
    ("Сла́ва гдⷭ҇и крⷭ҇тꙋ̀ твоемꙋ̀ и҆ воскрⷭ҇нїю."),
    ("Прест҃а́ѧ Бцⷣе, сп҃сѝ на́съ.")
  )
}

pripiv_P = "Прест҃а́ѧ бцⷣе сп҃сѝ на́съ."
pripiv_N = "Прест҃а́ѧ трⷪ҇це бж҃е на́шъ, сла́ва тебѣ̀."

kanony = {
  "0": (
    "Канѡ́нъ воскрⷭ҇нъ",
    "Канѡ́нъ крⷭ҇товоскре́сенъ",
    "Канѡ́нъ прест҃ѣ́й бцⷣѣ,"
  ),
  "1": (
    "Канѡ́нъ ᲂу҆мили́тельный",
    "Канѡ́нъ безплѡ́тнымъ"
  ),
  "2": (
    "Канѡ́нъ покаѧ́ненъ",
    "Канѡ́нъ ст҃о́мꙋ вели́комꙋ прⷪ҇ро́кꙋ і҆ѡа́ннꙋ предте́чи"
  ),
  "3": (
    "Канѡ́нъ чⷭ҇тно́мꙋ и҆ животворѧ́щемꙋ крⷭ҇тꙋ̀",
    "Канѡ́нъ прест҃ѣ́й бцⷣѣ,"
  ),
  "4": (
    "Канѡ́нъ ст҃ы́мъ а҆пⷭ҇лѡмъ",
    "Канѡ́нъ нїкола́ю чꙋдотво́рцꙋ"
  ),
  "5": (
    "Канѡ́нъ чⷭ҇тно́мꙋ и҆ животворѧ́щемꙋ крⷭ҇тꙋ̀",
    "Канѡ́нъ прест҃ѣ́й бцⷣѣ,"
  ),
  "6": (
    "Канѡ́нъ ст҃ы̑мъ мч҃нкѡмъ, и҆ ст҃и́телємъ, и҆ прпⷣбнымъ и҆ ᲂу҆со́пшымъ",
    "Канѡ́нъ ᲂу҆со́пшымъ"
  )
}

class Table:

  def __init__(self):
      self.lines = []

  def addLine(self, line):
      self.lines.append(line)

  def addEmpty(self):
     self.lines.append("")
  
  def addLines(self, lines):
      self.lines.extend(lines)

  def addComment(self, comment):
    self.addEmpty()
    self.addLine('// ' + comment)

  def addNote(self, note):
    self.add("cText[$#sym.ast.circle$]", f'cText({note})')

  def addTodo(self, todo):
     self.add('cText("!!!")', f'cText({todo})')

  def add2Col(self, text):
     self.addLine(f'col2({text}),')

  def add(self, left, right):
    self.addLine(f'{left},')
    self.addLine(f'{right},')

  def addDot(self, right):
    self.add(f'sText($#sym.dot$)', right)

  def generate(self, f: io.FileIO):
    if len(self.lines) == 0:
       return
    f.writelines(
      [f'  #generateTable((\n']+
      [(' '*4)+line+'\n' for line in self.lines]+
      [f'  ))\n']
    )

###############################
#
# ███████ ██████   ██████  ██       ██████   ██████ ███    ██ ███████ 
# ██      ██   ██ ██    ██ ██      ██    ██ ██      ████   ██ ██      
# ███████ ██████  ██    ██ ██      ██    ██ ██      ██ ██  ██ █████   
#      ██ ██      ██    ██ ██      ██    ██ ██      ██  ██ ██ ██      
# ███████ ██       ██████  ███████  ██████   ██████ ██   ████ ███████ 
# 
###############################


def jObj(obj):
    if "TYPE" in obj:
       return f'"{obj["TEXT"]}"'
    return f'jObj4("{obj["TITLE"] if "TITLE" in obj else ""}",{obj["HLAS"] if "HLAS" in obj and obj["HLAS"] != None else "none"}, "{obj["PODOBEN"] if "PODOBEN" in obj else ""}", "{obj["TEXT"] if "TEXT" in obj else ""}")'

def shorten(obj):
    lTs = obj.split(" ")
    return " ".join(lTs[:3]) + " ..."

def fixObjects(lst):
    last = None
    ret = []
    for l in lst:
        if len(ret) == 0:
            last = l
            ret.append(l)
            continue
        if last["TEXT"] == l["TEXT"]:
            k = dict()
            k["TEXT"] = shorten(l["TEXT"])
            if "TITLE" in l:
              k["TITLE"] = l["TITLE"]
            ret.append(k)
        else:
          ret.append(l)
    return ret

def isNotPrayer(prefix, prayer):
  return prefix not in prayer and prefix+"_S" not in prayer and prefix+"_N" not in prayer and prefix+"_B" not in prayer

def isPrayer(prefix, prayer):
  return prefix in prayer or prefix+"_S" in prayer or prefix+"_N" in prayer or prefix+"_B" in prayer






def addSNB(table: Table, prefix, prayer):
  # last from the prayer
  previous = None
  if prefix in prayer:
    obj = prayer[prefix]
    if isinstance(obj, dict):
      previous = obj["TEXT"]
    elif isinstance(obj, list) and len(obj) > 0:
      previous = obj[-1]["TEXT"]

  # get Slava and compare to the last one
  if prefix+"_S" in prayer:
    table.addComment(f'S:')
    table.add2Col(f'gText(translation.at("S"))')
    print(prefix, previous, prayer[prefix+"_S"])
    if previous == prayer[prefix+"_S"]["TEXT"]:
      table.add(f'""', f'"{shorten(previous)}"')
    else:
      table.add(f'""', jObj(prayer[prefix+"_S"]))

  # get I Nyni and compare to last one
  if prefix+"_N" in prayer:
    table.addComment(f'I:')
    table.add2Col(f'gText(translation.at("IN"))')
    # get Slava and if same as I Nyni shorten too
    if prefix+"_S" in prayer and prayer[prefix+"_S"]["TEXT"] == prayer[prefix+"_N"]["TEXT"]:
      previous = prayer[prefix+"_S"]["TEXT"]
    if previous == prayer[prefix+"_N"]["TEXT"]:
      table.add(f'""', f'"{shorten(previous)}"')
    else:
      table.add(f'""', jObj(prayer[prefix+"_N"]))
  
  # get Slava I Nyni and compare to last one
  if prefix+"_B" in prayer:
    table.addComment(f'S:I:')
    table.add2Col(f'gText(translation.at("SI"))')
    if previous == prayer[prefix+"_B"]["TEXT"]:
      table.add(f'""', f'"{shorten(previous)}"')
    else:
      table.add(f'""', jObj(prayer[prefix+"_B"]))




def addPrayerNote(f: io.FileIO, prefix, prayer, before = True):
  table = Table()
  addNote(table, prefix, prayer, before)
  table.generate(f)

def addNote(table:Table, prefix, prayer, before = True):
  val = prefix + "_NOTE_" + ("BEFORE" if before else "AFTER")
  if val in prayer:
    for i,p in enumerate(prayer[val]):
      table.addComment(f'Note {i+1}: {"before" if before else "after"} {prefix}')
      table.addNote(f'[{p}]')





def generateProkimen(f: io.FileIO, prayer):
  LETTER = "P"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write(f'  ==== #translation.at("PROKIMEN")\n')
  
  table = Table()
  addNote(table, LETTER, prayer, True)

  table.addComment(f'Prokimen')
  table.addDot(jObj(prayer[LETTER]))
  for i,x in enumerate(prayer["P_ST"]):
    table.addComment(f'Stich {i}')
    table.add(f'sText([#translation.at("ST")#super("{i+1}")])', jObj(x))
  
  addNote(table, LETTER, prayer, False)
  table.generate(f)

def generateT(f: io.FileIO, prayer):
  LETTER = "T"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("TROPAR")\n')
  
  table = Table()
  if LETTER in prayer:
      addNote(table, LETTER, prayer, True)
      T = fixObjects(prayer[LETTER])
            
      for i,x in enumerate(T):
         table.addComment(f'Tropar {i+1}')
         table.addDot(jObj(x))
         
      addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)
  
  table.generate(f)

###############################
#
# ██    ██ ███████  ██████ ██ ███████ ██████  ███████ ███    ██ 
# ██    ██ ██      ██      ██ ██      ██   ██ ██      ████   ██ 
# ██    ██ █████   ██      ██ █████   ██████  █████   ██ ██  ██ 
#  ██  ██  ██      ██      ██ ██      ██   ██ ██      ██  ██ ██ 
#   ████   ███████  ██████ ██ ███████ ██   ██ ███████ ██   ████ 
#
###############################

def generateV_HV(f: io.FileIO, prayer, skip = 0, note = False, offset = 0):
  LETTER = "HV"
  if LETTER not in prayer:
      return
  
  f.write('  ==== #translation.at("HOSPODI_VOZVACH")\n')
  
  HV = fixObjects(prayer[LETTER])
  length_HV = len(HV)
  skip = -skip if skip != 0 else len(stichiry_HospodyVozvach)
  stichiras = stichiry_HospodyVozvach[-length_HV + offset:skip + offset]
  
  table = Table()
  addNote(table, LETTER, prayer, True)

  for i,x in enumerate(HV[:skip]):
    table.addComment(f'HV Stich na {length_HV - i + offset}')
    table.add(f'sText("{length_HV - i + offset}:")', f'gText("{stichiras[i]}")')
    table.add(f'""', f'{jObj(x)}')
  if note:
    table.addComment(f'Notes:')
    table.addNote(f'translation.at("HV_MINEA")')
    table.addNote(f'translation.at("HV_NOTE")')  
  
  addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)

  table.generate(f)

def generateV_PAR(f: io.FileIO, prayer):
  LETTER = "PAR"
  if LETTER not in prayer:
      return
  
  f.write('  ==== #translation.at("PARAMIE")\n')
  table = Table()
  for i,p in enumerate(prayer[LETTER]):
    table.addComment(f'Paramia {i+1}')
    table.add(f'""', f'sText("{p["TITLE"]}")')
    table.add2Col(f'"{p["TEXT"]}"')
  table.generate(f)
  

def generateV_P(f: io.FileIO, prayer):
  generateProkimen(f, prayer)

def generateV_L(f: io.FileIO, prayer):
  LETTER = "L"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("LITIA")\n')
  table = Table()
  if LETTER in prayer:
      
    LS = fixObjects(prayer[LETTER])

    addNote(table, LETTER, prayer, True)
    for i,x in enumerate(LS):
      table.addComment(f'L Stich na {i+1}')
      table.add(f'sText("{i+1}:")', jObj(x))
    addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)
  
  table.generate(f)

def generateV_S(f: io.FileIO, prayer, stichiry):
  LETTER = "S"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("STICHOVNI")\n')
  table = Table()
  if LETTER in prayer:
      
    SS = fixObjects(prayer[LETTER])
    length_SS = len(SS)
    if LETTER+"_ST" in prayer:
       stichiry = prayer[LETTER+"_ST"]
    stichiras = stichiry[-length_SS:]
    
    addNote(table, LETTER, prayer, True)

    for i,x in enumerate(SS[:-1]):
      table.addComment(f'S Stich na {i+1}')
      table.add(f'sText("{i+1}:")', jObj(x))
      table.add(f'""', f'gText({jObj(stichiras[i])})')
      
    table.addComment(f'S Stich na {length_SS}')
    table.add(f'sText("{length_SS}:")', jObj(SS[-1]))
  
    addNote(table, LETTER, prayer, False)
  
  addSNB(table, LETTER, prayer)

  table.generate(f)

###############################
# 
# ██████   ██████  ██    ██ ███████  ██████ ███████ ██████  ██ ███████ 
# ██   ██ ██    ██ ██    ██ ██      ██      ██      ██   ██ ██ ██      
# ██████  ██    ██ ██    ██ █████   ██      █████   ██████  ██ █████   
# ██      ██    ██  ██  ██  ██      ██      ██      ██   ██ ██ ██      
# ██       ██████    ████   ███████  ██████ ███████ ██   ██ ██ ███████ 
# 
###############################

###############################
# 
# ██████   ██████  ██      ███    ██  ██████   ██████ ███    ██ ██  ██████  █████  
# ██   ██ ██    ██ ██      ████   ██ ██    ██ ██      ████   ██ ██ ██      ██   ██ 
# ██████  ██    ██ ██      ██ ██  ██ ██    ██ ██      ██ ██  ██ ██ ██      ███████ 
# ██      ██    ██ ██      ██  ██ ██ ██    ██ ██      ██  ██ ██ ██ ██      ██   ██ 
# ██       ██████  ███████ ██   ████  ██████   ██████ ██   ████ ██  ██████ ██   ██ 
# 
###############################

###############################
#
# ██    ██ ████████ ██ ███████ ██████  ███████ ███    ██ 
# ██    ██    ██    ██ ██      ██   ██ ██      ████   ██ 
# ██    ██    ██    ██ █████   ██████  █████   ██ ██  ██ 
# ██    ██    ██    ██ ██      ██   ██ ██      ██  ██ ██ 
#  ██████     ██    ██ ███████ ██   ██ ███████ ██   ████
#
###############################


def generateU_S(f: io.FileIO, prayer):
  LETTER = "S"
  if not any([isPrayer(f'{LETTER}{i}', prayer) for i in range(5)]):
    return
  
  # Generate sidaleny
  f.write('  ==== #translation.at("SIDALENY")\n')
  for ix in range(5):
      LETTER_IN = f'{LETTER}{ix}'
      if LETTER_IN in prayer:
          f.write(f'  ===== #translation.at("SIDALEN_PO") {ix}\n')
          S = fixObjects(prayer[LETTER_IN])
          table = Table()
          addNote(table, LETTER_IN, prayer, True)
          for i,x in enumerate(S[:-1]):
             table.addComment(f'Sidalen {ix}, {i+1}')
             table.add(f'sText("{i+1}:")', jObj(x))
          table.addComment(f'S:I:')
          table.add2Col(f'gText(translation.at("SI"))')
          table.add(f'""', jObj(S[-1]))
          table.generate(f)
          addNote(table, LETTER_IN, prayer, False)

def generateU_P(f: io.FileIO, prayer):
  generateProkimen(f, prayer)

def generateU_50(f: io.FileIO, prayer):
  LETTER = "50"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("50_STICHIRA")\n')
  table = Table()
  if LETTER in prayer:
    for i,s in enumerate(prayer[LETTER]):
      table.addComment(f'Stichira po 50. zalme {i+1}')
      table.addDot(jObj(s))
    addSNB(table, LETTER, prayer)
  table.generate(f)


def generateKanon(f: io.FileIO, pisn, kan, kanon_header, pripiv, kidx):
  if kanon_header != None:
    f.write(f'  ====== {kanon_header[kidx]}\n')
  P = fixObjects(pisn)
  if kidx > 0:
      P[0]["TEXT"] = shorten(P[0]["TEXT"])
  table = Table()
  table.addComment(f'Kanon {kan}')
  table.add(f'sText(super("{kan}"))', jObj(P[0]))
  if pripiv != None and len(pripiv):
    table.add(f'sText(translation.at("PR"))', f'gText("{pripiv[kidx]}")')
  skipped = 0
  for i,x in enumerate(P[1:]):
    if "TYPE" in x:
      skipped += 1
      if x["TYPE"] == "NOTE":
        table.addNote(jObj(x))
      elif x["TYPE"] == "TODO":
          table.addTodo(jObj(x))
    else:
      table.add(f'sText("{i+1-skipped}:")', jObj(x))
  table.generate(f)

def generateU_K(f: io.FileIO, prayer, kanon_header = None, pripiv = None):
  LETTER = "K"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("KANON")\n')
  KK = prayer[LETTER]
  if "H" in KK:
     f.write(f'  #align(center, sText([(#translation.at("HLAS") {KK["H"]})]))\n')
  if kanon_header == None and "HEAD" in KK:
     kanon_header = KK["HEAD"]
  for sidx, song in enumerate(["1","2","3","4","5","6","7","8","9"]):
    P_LETTER = f'P{song}'
    if P_LETTER not in KK:
        continue
    ## Generuj piesen kanonu
    f.write(f'  ===== #translation.at("PIESEN") {song}\n')
    table = Table()
    addNote(table, P_LETTER, prayer, True)
    table.generate(f)
    S = KK[P_LETTER]
    if isinstance(S, list):
       generateKanon(f, S, "1", kanon_header, pripiv, 0)
    elif isinstance(S, dict):
      for kidx, kan in enumerate(["1","2","3"]):
          if kan in S:
              generateKanon(f, S[kan], kan, kanon_header, pripiv, kidx)
    else:
       raise Exception("Unkown kind of Kanon " + type(S))
    table = Table()
    if P_LETTER+"_A" in KK:
      A = KK[P_LETTER+"_A"]
      AS = KK[P_LETTER+"_A_ST"]
      for i,a in enumerate(A):
         table.add2Col(f'gText({jObj(AS[i])})')
         table.add('""', jObj(a))
    if P_LETTER+"_K" in KK:
      table.add(f'sText([#sym.KK#super("{song}")])', jObj(KK[P_LETTER+"_K"]))
    addNote(table, P_LETTER, prayer, False)
    table.generate(f)
    if song == "3" and isPrayer("S", KK):
      f.write(f'  ===== #translation.at("SIDALEN")\n')
      table = Table()
      if isinstance(KK["S"], list):
        for k in KK["S"]:
          table.addComment(f'Sidalen')
          table.addDot(jObj(k))
      else:
        table.addComment(f'Sidalen')
        table.addDot(jObj(KK["S"]))
      addSNB(table, "S", KK)
      table.generate(f)
    if song == "6" and "K" in KK:
      f.write(f'  ===== #translation.at("KONDAK")\n')
      table = Table()
      addNote(table, "K", KK, before=True)
      for k in KK["K"]:
        table.addComment(f'Kondak')
        table.addDot(jObj(k))
      addNote(table, "K", KK, before=False)
      table.generate(f)
      f.write(f'  ===== #translation.at("IKOS")\n')
      table = Table()
      addNote(table, "I", KK, before=True)
      for i in KK["I"]:
        table.addComment(f'Ikos')
        table.addDot(jObj(i))
      addNote(table, "I", KK, before=False)
      table.generate(f)

def generateU_CH(f: io.FileIO, prayer, day = None):
  LETTER = "CH"
  if isNotPrayer(LETTER, prayer):
    return
  
  table = Table()
  if LETTER in prayer:
    addNote(table, LETTER, prayer, True)
    CH = fixObjects(prayer[LETTER])
    f.write('  ==== #translation.at("CHVALITE")\n')
    length_CH = len(CH)
    offset = 2 if day != None and day > 0 else 0
    # This offset calculation is for Sunday, we add two stichs on Sunday at the end
    # On normal days, we do not add anything, so we skip last two stichs
    stichiras = stichiry_Chvalite[-(length_CH+offset):]
    if offset > 0:
      stichiras = stichiras[:-offset]
    # If there are defined stichs, we use those, and skip regular ones
    if "CH_ST" in prayer:
       stichiras = prayer["CH_ST"]
    for i,x in enumerate(CH):
        table.addComment(f'CH Stich na {length_CH - i}')
        if len(stichiras) >= length_CH - i:
          table.add(f'sText("{length_CH - i}:")', 
                    f'gText("{stichiras[len(stichiras) - length_CH + i]}")')
          table.add(f'""', jObj(x))
        else:
          table.add(f'sText("{length_CH - i}:")', jObj(x))
    addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)
  
  table.generate(f)

def generateU_SV(f: io.FileIO, prayer):
  LETTER = "SV"
  if isNotPrayer(LETTER, prayer):
    return
  
  table = Table()
  if LETTER in prayer:
    addNote(table, LETTER, prayer, True)
    SV = fixObjects(prayer[LETTER])
    f.write('  ==== #translation.at("SVITILEN")\n')
    for i,s in enumerate(SV):
      table.addDot(jObj(s))
    table.generate(f)
    addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)



###############################
#
# ██      ██ ████████ ██    ██ ██████   ██████  ██  █████  
# ██      ██    ██    ██    ██ ██   ██ ██       ██ ██   ██ 
# ██      ██    ██    ██    ██ ██████  ██   ███ ██ ███████ 
# ██      ██    ██    ██    ██ ██   ██ ██    ██ ██ ██   ██ 
# ███████ ██    ██     ██████  ██   ██  ██████  ██ ██   ██ 
#
###############################


def generateL_B(f: io.FileIO, prayer):
  LETTER = "B"
  if isNotPrayer(LETTER, prayer):
     return
  
  if LETTER in prayer:
    B = fixObjects(prayer[LETTER])
    f.write('  ==== #translation.at("BLAZENNA")\n')
    length_B = len(B)
    stichiras = stichiry_Blazenny[-length_B:]
    table = Table()
    addNote(table, LETTER, prayer, True)
    for i,x in enumerate(B):
      table.addComment(f'B Stich na {length_B - i}')
      table.add(f'sText("{length_B - i}:")', f'gText("{stichiras[i]}")')
      table.add(f'""', jObj(x))
    addNote(table, LETTER, prayer, False)
  
  addSNB(table, LETTER, prayer)
  table.generate(f)

def generateL_P(f: io.FileIO, prayer):
  LETTER = "P"
  if isNotPrayer(LETTER, prayer):
    return
  P = prayer[LETTER]
  
  f.write('  ==== #translation.at("PROKIMEN")\n')
  table = Table()
  table.addComment(f'Prokimen')
  table.addDot(jObj(P[0]))
  table.add(f'sText(translation.at("VV"))', jObj(P[1]))
  table.generate(f)

  f.write('  ===== #translation.at("ALLILUJA")\n')
  table = Table()
  table.addComment(f'Alliluja')
  table.addDot(jObj(P[2]))
  table.add(f'sText(translation.at("VV"))', jObj(P[3]))
  table.generate(f)

def generateL_PR(f: io.FileIO, prayer):
  LETTER = "PR"
  if isNotPrayer(LETTER, prayer):
    return
  PR = prayer[LETTER]
  
  f.write('  ==== #translation.at("PRICASTEN")\n')
  table = Table()
  addNote(table, LETTER, prayer, True)
  for p in PR:
    table.addComment(f'Pricasten')
    table.addDot(jObj(p))
  addNote(table, LETTER, prayer, False)
  table.generate(f)
