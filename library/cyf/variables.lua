---#if not CYF then DISABLE() end
---@meta cyfVariables
---#SETDOC 'cyf-variables'
---@diagnostic disable:lowercase-global

---#DES 'isCYF'
isCYF = true

---#DES 'isRetro'
---@type boolean
isRetro = nil

---#DES 'safe'
---@type boolean
safe = nil

---#DES 'windows'
---@type boolean
windows = nil

---#DES 'CYFversion'
---@type string
CYFversion = nil

---#DES 'LTSversion'
---@type integer
LTSversion = nil

---#DES 'music'
---@script E
---@type string
music = nil

---#DES 'encountertext'
---@script E
---@type string
encountertext = nil

---#DES 'nextwaves'
---@script E
---@type string[]
nextwaves = nil

---#DES 'wavetimer'
---@script E
---@type number
wavetimer = nil

---#DES 'arenasize'
---@script E
arenasize = {155, 130}

---#DES 'enemies'
---@script E
---@type string[]
enemies = nil

---#DES 'enemypositions'
---@script E
---@type number[][]
enemypositions = nil

---#DES 'autolinebreak'
---@script E
autolinebreak = false

---#DES 'playerskipdocommand'
---@script E
playerskipdocommand = false

---#DES 'unescape'
---@script E
unescape = false

---#DES 'flee'
---@script E
flee = true

---#DES 'fleesuccess'
---@script E
---@type boolean?
flee = nil

---#DES 'fleetexts'
---@script E
---@type string[]
fleetexts = nil

---#DES 'revive'
---@script E
---@type boolean
revive = nil

---#DES 'deathtext'
---@script E
---@type string[]
deathtext = nil

---#DES 'deathmusic'
---@script E
---@type string
deathmusic = nil

---#DES 'Wave'
---@script E
---@type script[]
Wave = nil

---#DES 'noscalerotationbug'
---@script E
---@type boolean
noscalerotationbug = nil

---#DES 'comments'
---@script M
---@type string[]
comments = nil

---#DES 'commands'
---@script M
---@type string[]
commands = nil

---#DES 'randomdialogue'
---@script M
---@type string[]
randomdialogue = nil

---#DES 'currentdialogue'
---@script M
---@type string[]
currentdialogue = nil

---#DES 'defensemisstext'
---@script M
defensemisstext = "MISS"

---#DES 'noattackmisstext'
---@script M
noattackmisstext = "MISS"

---#DES 'cancheck'
---@script M
cancheck = true

---#DES 'canspare'
---@script M
canspare = false

---#DES 'isactive'
---@script M
---@type boolean
isactive = nil

---#DES 'sprite'
---@script M
---@type string
sprite = nil

---#DES 'monstersprite'
---@script M
---@type sprite
monstersprite = nil

---#DES 'dialogbubble'
---@script M
---@type string
dialogbubble = nil

---#DES 'dialogueprefix'
---@script M
dialogueprefix = "[effect:rotate]"

---#DES 'name'
---@script M
---@type string
name = nil

---#DES 'hp'
---@script M
---@type number
hp = nil

---#DES 'maxhp'
---@script M
---@type number
maxhp = nil

---#DES 'atk'
---@script M
---@type number
atk = nil

---#DES 'def'
---@script M
---@type number
def = nil

---#DES 'xp'
---@script M
---@type number
xp = nil

---#DES 'gold'
---@script M
---@type number
gold = nil

---#DES 'check'
---@script M
---@type string
check = nil

---#DES 'unkillable'
---@script M
---@type boolean
unkillable = nil

---#DES 'canmove'
---@script M
---@deprecated
canmove = true

---#DES 'posx'
---@script M
---@type number
posx = nil

---#DES 'posy'
---@script M
---@type number
posy = nil

---#DES 'font'
---@script M
---@type string
font = nil

---#DES 'voice'
---@script M
---@type string
voice = nil

---#DES 'wavename'
---@script W
---@type string
wavename = nil
