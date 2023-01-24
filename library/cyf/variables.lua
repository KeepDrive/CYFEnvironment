---@meta
---@diagnostic disable:undefined-global
---@module "script"
---@module "text"
---@module "sprite"

--All-script

---A value that indicates if you're on CYF. nil if not on CYF.
isCYF = true

---A value which is true whenever CYF's retrocompatibility mode is active and false when it isn't.
---@type boolean
isRetro = nil

---True if CYF's safe mode is enabled, false otherwise.
---@type boolean
safe = nil

---Returns true if the user is on Windows, false otherwise.
---@type boolean
widnows = nil

---Returns a different string based on the version of CYF you are using.
---Pre v0.6: Previous verson's number. (CYF v0.5.5 is "0.5.4")
---v0.6 - v0.6.1.2: always "1.0"
---Post v0.6.1.2: Current version's number. (CYF v0.6.2 is "0.6.2")
---Protip: Use string comparisons: if CYFversion < "0.6.2.2" then.
---@type string
CYFversion = nil

---Returns a different number based on the LTS version of CYF you are using.
---You can compare this number to your own values to make sure the right version of CYF is used to play your mod, if needed.
---You may also want to check if this value exists at all in case older versions of CYF are used to play your mod.
---@type number
LTSversion = nil

--Encounter

---Encounter: Name of your encounter's starting music, without the file extension. If this variable isn't present, it'll play Undertale's default battle theme.
---As of CYF v0.6.4, if you end up with 4 or more lines of encounter text displayed at once, the text will move up (9 pixels, one time) to compensate and try to fit your text inside the box.
---@type string
encountertext = nil
---Encounter: A list of all simultaneous attack waves you want when the monsters start their attacks. You can modify this at any time, and it'll get read out before the enemies start their attack. For most boss-type encounters, you'll likely only want one wave simultaneously - but you can get creative here.
---@type <string>[]
nextwaves = nil
---Encounter: How long it takes for the defending step to end.
wavetimer = 4.0
---Encounter: The inner size of the box the player's constrained to. {155, 130} is the default size for a lot of basic Undertale encounters. Papyrus' battle, for instance, has this at {245, 130} most of the time. You may modify this at any time - it'll only get read out before the enemies start their attack.
---Note: lowest possible setting is {16, 16} - this is the size of the player's soul. Anything lower will be set to 16 anyway.
---@type <number>[]
arenasize = {155, 130}
---Encounter: Defines the names of your enemy scripts that will be used in your encounter. After initialization, the names will be replaced by Script controller objects you can use to control your monster scripts.
---@type <string|Script>[]
enemies = nil
---Encounter: Defines where the enemies are on the screen. {0, 0} means they're centered just above the arena, with 1 pixel of space inbetween. You will always need at least as many enemy positions as enemies in your encounter.
---@type <<number>[]>[]
enemypositions = nil
---Encounter: If this value is set to true, the auto linebreak system will automatically add line breaks (\r) to the text.
autolinebreak = false
---Encounter: If this value is set to true, text commands will be called even if the player skips the text - except for [w] and [letters] commands, and commands with the tag "skipover".
playerskipdocommand = false
---Encounter: If this value is set to true, you can't exit the battle with the ESC key anymore.
unescape = false
---Encounter: If this value is set to false, the Flee option will not appear in the Mercy menu.
flee = true
---Encounter: nil by default. Set this to true or false to force the Flee option to succeed or fail, respectively. Otherwise, Undertale's formula is used, which starts at a 50% chance to flee on the first turn, and increases by 10% every turn after that (regardless of if those turns were spent trying to flee as well).
---@type boolean
fleesuccess = nil
---Encounter: If you set this to a table filled with strings, a random one of your strings will be displayed whenever the player flees the battle (if that's enabled).
---@type <string>[]
fleetexts = nil
---Encounter: If this variable is set to true, the player will be revived when they hit 0 HP.
---By default, there will be no special text for the player being revived; however, if you set deathtext, that will be used.
revive = nil
---Encounter: Text displayed when the player dies, in the Game Over screen. By default, it'll use the normal death text.
---This text is also used if the player gets revived while revive is true. Otherwise, there is no revive text.
---@type <string>[]
deathtext = nil
---Encounter: Sets the death music. The music is played if revive is not set.
---@type string
deathmusic = nil
---Encounter: A table containing the current wave scripts used. Is empty if not in DEFENDING state.
---@type <Script>[]
Wave = nil
---Encounter: If this variable is set to true, the rotation of any child sprite with a rotated parent will no longer be reset after either changing its sprite in any way or scaling it.
noscalerotationbug = false

--Monster

---A list of random comments attached to this monster. You can retrieve one at random using the RandomEncounterText() function in your Encounter script.
---@type <string>[]
comments = nil
---A list of ACT commands you can do. Listed in the ACT menu and used in HandleCustomCommand(). Note that the behaviour for Check is built-in, and shows you the monster's name followed by the ATK and DEF, and then the check variable you'll see all the way down.
---@type <string>[]
command = nil
---A list of random dialogue the monster can have. One of these is selected at random if currentdialogue is nil.
---The dialogue bubble will not be shown so long as it has no displayable letters. Set randomdialogue to a line with only text commands, such as "[noskip][next]", to use this to your advantage.
---@type <string>[]
randomdialogue = nil
---The next dialogue for this monster. This overrides the random dialogue and is meant for special actions (e.g. you hit Vegetoid's green carrots after selecting Dinner from the ACT menu). This variable gets cleared every time after it's read out in the monster dialogue phase.
---The dialogue bubble will not be shown so long as it has no displayable letters. Set currentdialogue to a line with only text commands, such as "[noskip][next]", to use this to your advantage.
---@type <string>[]
currentdialogue = nil
---The text which will be displayed if the Player's attack is successful but deals 0 damage.
defensemisstext = "MISS"
---The text which will be displayed if the Player doesn't press Z when attacking.
noattackmisstext = "MISS"
---If set to false, it will disable the default Check action that shows up in your ACT menu. If you want a custom Check action, you can add it back into your commands table, and handle it like any other custom command.
cancheck = true
---When true, your monster's name will turn yellow and it will be spareable.
canspare = false
---Tells you whether this enemy is active.
---Will be false if they have been manually de-activated, killed or spared.
---Setting this will do nothing! You must call SetActive.
---@type boolean
isactive = nil
---Name of the sprite in your Sprites folder, without the .PNG extension. This is the initial sprite for your monster. It can be changed using SetSprite(name).
---@type string
sprite = nil
---Sprite handler of the monster.
---@type Sprite
monstersprite = nil
---What dialogue bubble will be used for the monster's dialogue. You can change this at any time, but this must be initially set to something. For a list of all possible options, check the dialog bubble names chart; it's also in the sidebar. Positioning of the bubbles is done automatically.
---@type bubbleAlias
dialogbubble = nil
---A string, appended to the beginning of every monster's dialogue.
dialogueprefix = "[effect:rotate]"
---Monster name. Fairly self-explanatory; shows up in the FIGHT/ACT menus. Can also be changed at any time.
---@type string
name = nil
---Your monster's max HP, initially. After the fight has started, this value will always accurately reflect your monster's current HP. You can then modify this value to change your monster's current HP.
---@type number
hp = maxhp
---Your monster's max HP. It is mainly used for lifebars and such. You better not set it as 0 or as a negative number, though.
---@type number
maxhp = nil
---Your monster's ATK. Only used in the default Check handler; bullet damage is set through wave scripts. If you're not using the default Check you can leave this out.
---@type number
atk = nil
---Your monster's DEF.
---@type number
def = nil
---Your monster's XP upon actually defeating them. You only get this by killing the monster.
---@type number
xp = nil
---Gold you get from either killing or sparing this monster. Since the gold can change based on whether you kill or spare the monster, you can modify this at any time up until the fight ends.
---@type number
gold = nil
---When checking with the default Check option, this is what's listed under the monster's name, ATK and DEF.
---@type string
check = nil
---Set it to true and the monster will not be killed if it has less than 1 HP. However, it can still be killed with Kill().
---@type boolean
unkillable = nil
---Deprecated, always returns true.
---Old behavior: Returns true if you are able to move or unbind monstersprite, false otherwise.
---@deprecated
canmove = true
---The x position of the enemy's sprite.
---@type number
posx = nil
---The y position of the enemy's sprite.
---@type number
posy = nil
---The default font used by the monster. Set it to nil if you want to use the normal monster font.
---@type string
font = nil
---The default voice used by the monster. Set it to nil if you want to use the default voice.
---@type string
voice = nil

--Wave

---Wave: Returns the name of the wave file, without the extension, from the Waves folder.
---@type string
wavename = nil
