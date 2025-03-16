import io

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
      if obj["TYPE"] == "NOTE":
        return f'"{obj["TEXT"]}"'
      elif obj["TYPE"] == "TODO":
        return f'jObj4("{obj["TITLE"] if "TITLE" in obj else ""}",{obj["HLAS"] if "HLAS" in obj and obj["HLAS"] != None else "none"}, "{obj["PODOBEN"] if "PODOBEN" in obj else ""}", cText("{obj["TEXT"] if "TEXT" in obj else ""}"))'
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
          last = l
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
    # print(prefix, previous, prayer[prefix+"_S"])
    if isinstance(prayer[prefix+"_S"], list):
      print(f'ERROR: {prefix}_S is list not object!')
    if previous == prayer[prefix+"_S"]["TEXT"]:
      table.add(f'""', f'"{shorten(previous)}"')
    else:
      table.add(f'""', jObj(prayer[prefix+"_S"]))

  # get I Nyni and compare to last one
  if prefix+"_N" in prayer:
    table.addComment(f'I:')
    table.add2Col(f'gText(translation.at("IN"))')
    # get Slava and if same as I Nyni shorten too
    if isinstance(prayer[prefix+"_N"], list):
      print(f'ERROR: {prefix}_N is list not object!')
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
    if isinstance(prayer[prefix+"_B"], list):
      print(f'ERROR: {prefix}_B is list not object!')
    if previous == prayer[prefix+"_B"]["TEXT"]:
      table.add(f'""', f'"{shorten(previous)}"')
    else:
      table.add(f'""', jObj(prayer[prefix+"_B"]))

def generateKanon(f: io.FileIO, pisn, kan, kanon_header, pripiv, kidx):
  if kanon_header != None:
    f.write(f'  ====== {kanon_header[kidx]}\n')
  P = fixObjects(pisn)
  # if kidx > 0:
  #     P[0]["TEXT"] = shorten(P[0]["TEXT"])
  table = Table()
  table.addComment(f'Kanon {kan}')
  table.add(f'sText(super("{kan}"))', jObj(P[0]))
  if pripiv != None and len(pripiv):
    table.add(f'sText(translation.at("PR"))', f'gText("{pripiv[kidx]["TEXT"]}")')
  skipped = 0
  for i,x in enumerate(P[1:]):
    if "TYPE" in x:
      skipped += 1
      if x["TYPE"] == "NOTE":
        table.addNote(jObj(x))
      elif x["TYPE"] == "TODO":
        table.addTodo(jObj(x))
      elif x["TYPE"] == "PRIPIV":
        table.add(f'sText(translation.at("PR"))', f'gText("{x["TEXT"]}")')
      elif x["TYPE"] == "STICH":
        table.add(f'sText(translation.at("ST"))', f'gText("{x["TEXT"]}")')
    else:
      table.add(f'sText("{i+1-skipped}:")', jObj(x))
  table.generate(f)


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
  if "P_ST" in prayer:
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

def generateK(f: io.FileIO, prayer):
  LETTER = "K"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("KONDAK")\n')
  
  table = Table()
  if LETTER in prayer:
      addNote(table, LETTER, prayer, True)
      T = fixObjects(prayer[LETTER])
            
      for i,x in enumerate(T):
         table.addComment(f'Kondak {i+1}')
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

def generateV_HV(f: io.FileIO, prayer, stichiry_HospodyVozvach, skip = 0, note = False, offset = 0):
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

def generateV_PAR_LENT(f: io.FileIO, prayer):
  LETTER = "PAR"
  if LETTER not in prayer or "P" not in prayer or "P2" not in prayer:
      return
  
  f.write('  ==== #translation.at("PARAMIE")\n')
  table = Table()
  addNote(table, LETTER, prayer, True)
  for i,p in enumerate(prayer[LETTER]):
    table.addComment(f'Prokimen')
    L = "P"+("" if i == 0 else str(i+1))

    table.addDot(jObj(prayer[L]))
    if L+"_ST" in prayer:
        for i,x in enumerate(prayer[L+"_ST"]):
          table.addComment(f'Stich {i}')
          table.add(f'sText([#translation.at("ST")#super("{i+1}")])', jObj(x))

    table.addComment(f'Paramia {i+1}')
    table.add(f'""', f'sText("{p["TITLE"]}")')
    table.add2Col(f'"{p["TEXT"]}"')
  addNote(table, LETTER, prayer, True)
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
def generateP_K(f: io.FileIO, prayer, kanon_header = None, pripiv = None):
  LETTER = "K"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("KANON")\n')
  KK = prayer[LETTER]
  if "H" in KK:
    if isinstance(KK["H"], int):
      f.write(f'  #align(center, sText([(#translation.at("HLAS") {KK["H"]})]))\n')
    else:
      hs = ", ".join([f'{x}#super[{i+1}]' for i,x in enumerate(KK["H"])])
      f.write(f'  #align(center, sText([(#translation.at("HLAS") {hs})]))\n')
  if kanon_header == None and "HEAD" in KK:
    kanon_header = KK["HEAD"]
  if pripiv == None and "PR" in KK:
    pripiv = KK["PR"]
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
      generateKatavasia(f, S["K"], song)
    else:
       raise Exception("Unkown kind of Kanon " + type(S))
    
    if song == "6" and "K" in KK:
      f.write(f'  ===== #translation.at("KONDAK")\n')
      table = Table()
      addNote(table, "K", KK, before=True)
      table.addComment(f'Kondak')
      table.addDot(jObj(KK["K"]))
      addNote(table, "K", KK, before=False)
      table.generate(f)
    

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
          for i,x in enumerate(S[:]):
             table.addComment(f'Sidalen {ix}, {i+1}')
             table.add(f'sText("{i+1}:")', jObj(x))
          addSNB(table, LETTER_IN, prayer)
          table.generate(f)
          addNote(table, LETTER_IN, prayer, False)
      
      if ix == 2 and "V" in prayer:
        table = Table()
        table.addComment(f'Velicanie')
        f.write(f'  ===== #translation.at("VELICANIE")\n')
        table.addDot(jObj(prayer["V"]))
        table.generate(f)

def generateU_P(f: io.FileIO, prayer):
  generateProkimen(f, prayer)

def generateU_50(f: io.FileIO, prayer):
  LETTER = "50"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("50_STICHIRA")\n')
  table = Table()
  if LETTER in prayer:
    addSNB(table, LETTER, prayer)
    for i,s in enumerate(prayer[LETTER]):
      table.addComment(f'Stichira po 50. zalme {i+1}')
      table.addDot(jObj(s))
  table.generate(f)

def generateKatavasia(f: io.FileIO, prayer, song):
  table = Table()
  KAT = prayer
  if isinstance(KAT, dict):
    KAT = [KAT]
  for i,k in enumerate(KAT):  
    if i == 0:
      table.add(f'sText([#sym.KK#super("{song}")])', jObj(k))
    else:
      table.addDot(jObj(k))
  table.generate(f)

def generateU_K(f: io.FileIO, prayer, kanon_header = None, pripiv = None):
  LETTER = "K"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("KANON")\n')
  KK = prayer[LETTER]
  if "H" in KK:
    if isinstance(KK["H"], int):
      f.write(f'  #align(center, sText([(#translation.at("HLAS") {KK["H"]})]))\n')
    else:
      hs = ", ".join([f'{x}#super[{i+1}]' for i,x in enumerate(KK["H"])])
      f.write(f'  #align(center, sText([(#translation.at("HLAS") {hs})]))\n')
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
      generateKatavasia(f, S["K"], song)
    else:
       raise Exception("Unkown kind of Kanon " + type(S))
    
    # Generate ???
    if P_LETTER+"_A" in KK:
      table = Table()
      A = KK[P_LETTER+"_A"]
      AS = KK[P_LETTER+"_A_ST"]
      for i,a in enumerate(A):
         table.add2Col(f'gText({jObj(AS[i])})')
         table.add('""', jObj(a))
      table.generate(f)

    # Generate katavasia     
    if P_LETTER+"_K" in KK:
      generateKatavasia(f, KK[P_LETTER+"_K"], song)

    # Generate ypakoj in kanon
    if song == "3" and isPrayer("Y", KK):
      f.write(f'  ===== #translation.at("YPAKOJ")\n')
      table = Table()
      addNote(table, "Y", KK, before=True)
      if isinstance(KK["Y"], list):
        for k in fixObjects(KK["Y"]):
          table.addComment(f'Ypakoj')
          table.addDot(jObj(k))
      else:
        table.addComment(f'Ypakoj')
        table.addDot(jObj(KK["Y"]))
      addSNB(table, "Y", KK)
      addNote(table, "Y", KK, before=False)
      table.generate(f)
    
    # Generate Sidalen in kanon
    if song == "3" and isPrayer("S", KK):
      f.write(f'  ===== #translation.at("SIDALEN")\n')
      table = Table()
      addNote(table, "S", KK, before=True)
      if isinstance(KK["S"], list):
        for k in fixObjects(KK["S"]):
          table.addComment(f'Sidalen')
          table.addDot(jObj(k))
      else:
        table.addComment(f'Sidalen')
        table.addDot(jObj(KK["S"]))
      addSNB(table, "S", KK)
      addNote(table, "S", KK, before=False)
      table.generate(f)

    # Generate kondak and ikos
    if song == "6" and "K" in KK:
      f.write(f'  ===== #translation.at("KONDAK")\n')
      table = Table()
      addNote(table, "K", KK, before=True)
      for k in KK["K"]:
        table.addComment(f'Kondak')
        table.addDot(jObj(k))
      addNote(table, "K", KK, before=False)
      table.generate(f)
    if song == "6" and "I" in KK:
      f.write(f'  ===== #translation.at("IKOS")\n')
      table = Table()
      addNote(table, "I", KK, before=True)
      for i in KK["I"]:
        table.addComment(f'Ikos')
        table.addDot(jObj(i))
      addNote(table, "I", KK, before=False)
      table.generate(f)

def generateU_CH(f: io.FileIO, prayer, stichiry_Chvalite, day = None):
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
       print(len(stichiras), CH)
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
    addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)
  table.generate(f)

def generateU_ST(f: io.FileIO, prayer):
  LETTER = "ST"
  if isNotPrayer(LETTER, prayer):
    return
  
  f.write('  ==== #translation.at("STICHOVNI")\n')
  table = Table()
  if LETTER in prayer:
      
    LS = fixObjects(prayer[LETTER])

    addNote(table, LETTER, prayer, True)
    for i,x in enumerate(LS):
      table.addComment(f'ST Stich na {i+1}')
      table.add(f'sText("{i+1}:")', jObj(x))
    addNote(table, LETTER, prayer, False)

  addSNB(table, LETTER, prayer)
  
  table.generate(f)



###############################
#
# ██      ██ ████████ ██    ██ ██████   ██████  ██  █████  
# ██      ██    ██    ██    ██ ██   ██ ██       ██ ██   ██ 
# ██      ██    ██    ██    ██ ██████  ██   ███ ██ ███████ 
# ██      ██    ██    ██    ██ ██   ██ ██    ██ ██ ██   ██ 
# ███████ ██    ██     ██████  ██   ██  ██████  ██ ██   ██ 
#
###############################

def generateL_A(f: io.FileIO, prayer):
  LETTER = "A"
  if not any([isPrayer(f'{LETTER}{i}', prayer) for i in range(5)]):
    return
  
  f.write('  ==== #translation.at("ANTIFONY")\n')
  for ix in range(5):
      LETTER_IN = f'{LETTER}{ix}'
      if LETTER_IN in prayer:
          f.write(f'  ===== #translation.at("ANTIFON") {ix}\n')
          S = fixObjects(prayer[LETTER_IN])
          if ix == 3: 
            ST = prayer["T"][0].copy()
            ST["HLAS"] = None
            ST["PODOBEN"] = ""
          else:
            ST = prayer[LETTER_IN+"_ST"] if LETTER_IN+"_ST" in prayer else {"TEXT": "XXX", "TYPE": "TODO"}
          table = Table()
          addNote(table, LETTER_IN, prayer, True)
          for i,x in enumerate(S[:]):
             table.addComment(f'Antifon {ix}, {i+1}')
             table.add(f'sText("{i+1}:")', jObj(x))
             table.add(f'sText(translation.at("ST"))', f'gText({jObj(ST)})')
             if i == 0:
               ST["TEXT"] = shorten(ST["TEXT"])
          if ix == 1: 
            table.addComment(f'Antifon {ix}, SI')
            table.add(f'sText("{i+2}:")', f'translation.at("SI")')
            table.add(f'sText(translation.at("ST"))', f'gText({jObj(ST)})')
          elif ix == 2:
            table.addComment(f'Antifon {ix}, SI')
            table.add(f'""', f'translation.at("SI")')
            table.add(f'""', f'translation.at("JEDINORODNY")')
          addSNB(table, LETTER_IN, prayer)
          table.generate(f)
          addNote(table, LETTER_IN, prayer, False)
    
  f.write(f'  ===== #translation.at("VCHOD")\n')
  table = Table()
  table.addDot(jObj(prayer["VCH"]))
  table.generate(f)

def generateL_B(f: io.FileIO, prayer, stichiry_Blazenny):
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
  table.add(f'sText(translation.at("ST"))', jObj(P[1]))
  table.generate(f)

  f.write('  ===== #translation.at("ALLILUJA")\n')
  table = Table()
  table.addComment(f'Alliluja')
  table.addDot(jObj(P[2]))
  table.add(f'sText(translation.at("ST"))', jObj(P[3]))
  table.generate(f)

def generateL_IR(f: io.FileIO, prayer):
  LETTER = "IR"
  if isNotPrayer(LETTER, prayer):
    return
  PR = prayer[LETTER]
  
  f.write('  ==== #translation.at("IRMOS")\n')
  table = Table()
  addNote(table, LETTER, prayer, True)
  for p in PR:
    table.addComment(f'Irmos')
    table.addDot(jObj(p))
  addNote(table, LETTER, prayer, False)
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



###############################
#
# ████████  
# ██       
# ████████
# ██    ██ 
# ████████ 
#
###############################

def generate6_P(f: io.FileIO, prayer, number=""):
  LETTER = "P"+number
  if isNotPrayer(LETTER, prayer):
    return
  P = prayer[LETTER]
  
  f.write('  ==== #translation.at("PROKIMEN")\n')
  table = Table()
  table.addComment(f'Prokimen')
  table.addDot(jObj(P))
  for p in prayer[LETTER+"_ST"]:
    table.add(f'sText(translation.at("ST"))', jObj(p))
  table.generate(f)

def generate6_PAR(f: io.FileIO, prayer):
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