function OnSetText(uri, text)
  local diffs = {}
  if uri:find("Encounters/", 1, true) then
    diffs[#diffs+1] = {start = 1, finish = 0, text = [[
---@diagnostic disable
---Happens once when everything's done initializing but before any encounter actions start. You should do things like stopping the music here, or using State() if you want to start the fight off with some dialogue.
local function EncounterStarting() end
EncounterStarting()
---Happens when you go to the monster dialogue state. You're still free to modify monster dialogue here.
local function EnemyDialogueStarting() end
EnemyDialogueStarting()
---Happens when you go from the monster dialogue state to the defending state.
local function EnemyDialogueEnding() end
EnemyDialogueEnding()
---Happens when you go from the defending state of the game to any other state.
local function DefenseEnding() end
DefenseEnding()
---Happens when you select the Spare option from the Mercy menu, regardless of whether a monster is spareable or not. This event fires after the sparing of monsters is completed. If you spare the last enemy in the encounter, this function will not happen.
local function HandleSpare() end
HandleSpare()
---Happens when you select the Flee option from the Mercy menu. If you implement HandleFlee(), the fleeing sequence will not run automatically, and you will have to do it manually with the Flee() function.
---@param success boolean Whether the fleeing condition is true.
local function HandleFlee(success) end
HandleFlee()
---Happens when you select an item from the item menu.
---@param item_ID string The name of the item used, IN ALL CAPS. Similar to HandleCustomCommand in monster scripts.
---@param position number The position of the item used in the player's inventory. The first item is number 1.
local function HandleItem(item_ID, position) end
HandleItem()
---When you enter a new state, this function will fire with newstate containing the new state's name, and oldstate containing the previous state's name. You can use State() here to interrupt state changes initiated by the engine itself.
---@param newstate stateType
---@param oldstate stateType
local function EnteringState(newstate, oldstate) end
EnteringState()
---This function runs the moment the Player takes mortal damage, just before activating the Game Over sequence.
---If you use Player.hp or Player.Heal here to bring the Player's hp back to greater than 0, they will live and the Game Over sequence will be cancelled.
local function BeforeDeath() end
BeforeDeath()
---This function runs for every frame for all of the encounter, even during waves. The only exception is the game over state - if the player dies, no code from within this function will be run.
local function Update() end
Update()
---Select a random monster from the encounter, then get a random entry from the comments table there. You'll want to use this to replicate default encounter behaviour.
---@return string
---@nodiscard
local function RandomEncounterText() end
RandomEncounterText()
---Changes the layer of the FIGHT, ACT, ITEM and MERCY buttons and the Player's name, lv and hp.
---@param layer layerType|"default"
local function SetButtonLayer(layer) end
SetButtonLayer()
---This function creates an enemy script using the script scriptName in the Lua/Monsters folder of your mod, which will act as a new enemy in battle, and returns a reference to it.
---It will move the enemy so that it is centered just above the arena, with 1 pixel of space inbetween, and will move the enemy's sprite by x pixels horizontally and y pixels vertically.
---Be aware that creating an enemy this way will NOT add it to the Encounter script's enemies table, so you have to manage the table yourself by adding this new enemy script to it.
---@param scriptName string
---@param x number
---@param y number
---@return Script
---@nodiscard
local function CreateEnemy(scriptName, x, y) end
CreateEnemy()
---Name of your encounter's starting music, without the file extension. If this variable isn't present, it'll play Undertale's default battle theme.
---As of CYF v0.6.4, if you end up with 4 or more lines of encounter text displayed at once, the text will move up (9 pixels, one time) to compensate and try to fit your text inside the box.
---@type string
local encountertext = nil
print(encountertext)
---A list of all simultaneous attack waves you want when the monsters start their attacks. You can modify this at any time, and it'll get read out before the enemies start their attack. For most boss-type encounters, you'll likely only want one wave simultaneously - but you can get creative here.
---@type string[]
local nextwaves = nil
print(nextwaves)
---How long it takes for the defending step to end.
local wavetimer = 4.0
print(wavetimer)
---The inner size of the box the player's constrained to. {155, 130} is the default size for a lot of basic Undertale encounters. Papyrus' battle, for instance, has this at {245, 130} most of the time. You may modify this at any time - it'll only get read out before the enemies start their attack.
---Note: lowest possible setting is {16, 16} - this is the size of the player's soul. Anything lower will be set to 16 anyway.
---@type number[]
local arenasize = {155, 130}
print(arenasize)
---Defines the names of your enemy scripts that will be used in your encounter. After initialization, the names will be replaced by Script controller objects you can use to control your monster scripts.
---@type string[]|Script[]
local enemies = nil
print(enemies)
---Defines where the enemies are on the screen. {0, 0} means they're centered just above the arena, with 1 pixel of space inbetween. You will always need at least as many enemy positions as enemies in your encounter.
---@type number[][]
local enemypositions = nil
print(enemypositions)
---If this value is set to true, the auto linebreak system will automatically add line breaks (\r) to the text.
local autolinebreak = false
print(autolinebreak)
---If this value is set to true, text commands will be called even if the player skips the text - except for [w] and [letters] commands, and commands with the tag "skipover".
local playerskipdocommand = false
print(playerskipdocommand)
---If this value is set to true, you can't exit the battle with the ESC key anymore.
local unescape = false
print(unescape)
---If this value is set to false, the Flee option will not appear in the Mercy menu.
local flee = true
print(flee)
---nil by default. Set this to true or false to force the Flee option to succeed or fail, respectively. Otherwise, Undertale's formula is used, which starts at a 50% chance to flee on the first turn, and increases by 10% every turn after that (regardless of if those turns were spent trying to flee as well).
---@type boolean
local fleesuccess = nil
print(fleesuccess)
---If you set this to a table filled with strings, a random one of your strings will be displayed whenever the player flees the battle (if that's enabled).
---@type string[]
local fleetexts = nil
print(fleetexts)
---If this variable is set to true, the player will be revived when they hit 0 HP.
---By default, there will be no special text for the player being revived; however, if you set deathtext, that will be used.
local revive = nil
print(revive)
---Text displayed when the player dies, in the Game Over screen. By default, it'll use the normal death text.
---This text is also used if the player gets revived while revive is true. Otherwise, there is no revive text.
---@type string[]
local deathtext = nil
print(deathtext)
---Sets the death music. The music is played if revive is not set.
---@type string
local deathmusic = nil
print(deathmusic)
---A table containing the current wave scripts used. Is empty if not in DEFENDING state.
---@type Script[]
local Wave = nil
print(Wave)
---If this variable is set to true, the rotation of any child sprite with a rotated parent will no longer be reset after either changing its sprite in any way or scaling it.
local noscalerotationbug = false
print(noscalerotationbug)
---@diagnostic enable
    ]]}
  elseif uri:find("Monsters/", 1, true) then
    diffs[#diffs+1] = {start = 1, finish = 0, text = [[
---@diagnostic disable
---Happens the moment the player's attack has applied damage - this is when you hear the hitting sound after the slash animation.
---@param damage number -1 if the player pressed Fight, but didn't press any buttons and let it end by itself. The monster's hp variable will have updated at this time, too.
---Don't call BattleDialog() here, it's a bit buggy right now.
local function HandleAttack(damage) end
HandleAttack()
---Happens after your attack's shaking animation has completed and the monster's HP is 0. If you implement OnDeath(), your monster will not die automatically, and you will have to do it manually with the Kill() function.
---OnDeath() will only happen through monster kills that happened with the FIGHT command; scripted Kill() calls will not trigger it.
---Calling BattleDialog() here will probably screw up the battle UI.
local function OnDeath() end
OnDeath()
---Happens after you successfully spared a monster. If you implement OnSpare(), your monster will not be spared automatically, and you will have to do it manually with the Spare() function.
---OnSpare() will only happen through a monster spare that happened with the SPARE command; scripted Spare() calls will not trigger it.
local function OnSpare() end
OnSpare()
---Happens before the damage calculation the moment you press Z when attacking. You can easily use SetDamage() in this function. This is also the best place to initiate a dodge animation, if you want such a thing.
local function BeforeDamageCalculation() end
BeforeDamageCalculation()
---Happens before the damage UI is displayed on the monster (the life bar and the damage number) and before the hp changing. You can still change the target with Player.ChangeTarget(targetNumber) in this function, but you can not use SetDamage here.
---@param damage number is equal to the incoming damage the enemy is about to take. This damage has not been applied yet, unlike in HandleAttack.
local function BeforeDamageValues(damage) end
BeforeDamageValues()
---Happens when you select an Act command on this monster.
---@param command string same as defined in the commands list, except IN ALL CAPS.
local function HandleCustomCommand(command) end
HandleCustomCommand()
---Sets the monster's sprite from the Sprites folder to filename.png. Can be used with [func] to change sprites mid-dialogue.
---@param filename string
local function SetSprite(filename) end
SetSprite()
---If false, this monster will stay on screen but will not show up in menus, do its dialogue or run any of its events. You can use this to introduce monsters to an encounter at a later point. The battle will end when a monster is killed or spared and there are no active monsters left. Having no active monsters at all will likely cause a bunch of errors right now.
---@param active boolean
local function SetActive(active) end
SetActive()
---Set the amount of damage the monster will take the next time it is attacked. Can be negative.
---Set amount to the amount of damage the monster will take, or 0 to make the attack miss.
---This function can only be used within the Game Event BeforeDamageCalculation, or just before using the function Player.ChangeTarget.
---You also don't want to use it with a monster who's been disabled with SetActive(false).
---@param amount number
local function SetDamage(amount) end
SetDamage()
---Kills the monster immediately. If this was the last monster, the battle ends.
---Does NOT call the Game Event OnDeath.
---If playSound is set to false, the dusting sound will not be played.
---@param playSound? boolean
local function Kill(playSound) end
Kill()
---Spares the monster immediately. Similar to Kill(), if this was the last monster, the battle ends.
---Does NOT call the Game Event OnSpare.
---If playSound is set to false, the sparing sound will not be played.
---@param playSound? boolean
local function Spare(playSound) end
Spare()
---Moves the enemy's sprite relative to its current position.
---@param x number
---@param y number
local function Move(x, y) end
Move()
---Moves the enemy's sprite relative to the bottom left corner of the screen.
---This is effectively the same as setting enemypositions again, except x is 320px left and y is 231px down.
---@param x number
---@param y number
local function MoveTo(x, y) end
MoveTo()
---Controls whether the enemy's sprite will follow the Arena's movements.
---If bind is true, the enemy will be parented to the Arena and follow all of its movements.
---Otherwise, it will be either behind or in front of the arena, depending on the value of isUnderArena.
---@param bind boolean
---@param isUnderArena? boolean
local function BindToArena(bind, isUnderArena) end
BindToArena()
---Makes the enemy's dialogue bubble appear x pixels horizontally and y pixels vertically relative to its original position.
---@param x number
---@param y number
local function SetBubbleOffset(x, y) end
SetBubbleOffset()
---Changes the offset of the enemy's damage UI (the enemy's health bar and the red numbers). Note that the damage UI is on a layer above that of the arena.
---@param x number
---@param y number
local function SetDamageUIOffset(x, y) end
SetDamageUIOffset()
---Changes the offset of the attack animation (the red slice by default) for when the player attacks this monster.
---@param x number
---@param y number
local function SetSliceAnimOffset(x, y) end
SetSliceAnimOffset()
---This function immediately removes this enemy from the encounter, including the script it's been called from.
---Be aware that removing an enemy this way will NOT remove it from the Encounter script's enemies table, so you have to manage the table yourself by removing this enemy script from it before running this function, because any reference to it will be invalid.
local function Remove() end
Remove()
---A list of random comments attached to this monster. You can retrieve one at random using the RandomEncounterText() function in your Encounter script.
---@type string[]
local comments = nil
print(comments)
---A list of ACT commands you can do. Listed in the ACT menu and used in HandleCustomCommand(). Note that the behaviour for Check is built-in, and shows you the monster's name followed by the ATK and DEF, and then the check variable you'll see all the way down.
---@type string[]
local command = nil
print(command)
---A list of random dialogue the monster can have. One of these is selected at random if currentdialogue is nil.
---The dialogue bubble will not be shown so long as it has no displayable letters. Set randomdialogue to a line with only text commands, such as "[noskip][next]", to use this to your advantage.
---@type string[]
local randomdialogue = nil
print(randomdialogue)
---The next dialogue for this monster. This overrides the random dialogue and is meant for special actions (e.g. you hit Vegetoid's green carrots after selecting Dinner from the ACT menu). This variable gets cleared every time after it's read out in the monster dialogue phase.
---The dialogue bubble will not be shown so long as it has no displayable letters. Set currentdialogue to a line with only text commands, such as "[noskip][next]", to use this to your advantage.
---@type string[]
local currentdialogue = nil
print(currentdialogue)
---The text which will be displayed if the Player's attack is successful but deals 0 damage.
local defensemisstext = "MISS"
print(defensemisstext)
---The text which will be displayed if the Player doesn't press Z when attacking.
local noattackmisstext = "MISS"
print(noattackmisstext)
---If set to false, it will disable the default Check action that shows up in your ACT menu. If you want a custom Check action, you can add it back into your commands table, and handle it like any other custom command.
local cancheck = true
print(cancheck)
---When true, your monster's name will turn yellow and it will be spareable.
local canspare = false
print(canspare)
---Tells you whether this enemy is active.
---Will be false if they have been manually de-activated, killed or spared.
---Setting this will do nothing! You must call SetActive.
---@type boolean
local isactive = nil
print(isactive)
---Name of the sprite in your Sprites folder, without the .PNG extension. This is the initial sprite for your monster. It can be changed using SetSprite(name).
---@type string
local sprite = nil
print(sprite)
---Sprite handler of the monster.
---@type Sprite
local monstersprite = nil
print(monstersprite)
---What dialogue bubble will be used for the monster's dialogue. You can change this at any time, but this must be initially set to something. For a list of all possible options, check the dialog bubble names chart; it's also in the sidebar. Positioning of the bubbles is done automatically.
---@type bubbleAlias
local dialogbubble = nil
print(dialogbubble)
---A string, appended to the beginning of every monster's dialogue.
local dialogueprefix = "[effect:rotate]"
print(dialogueprefix)
---Monster name. Fairly self-explanatory; shows up in the FIGHT/ACT menus. Can also be changed at any time.
---@type string
local name = nil
print(name)
---Your monster's max HP, initially. After the fight has started, this value will always accurately reflect your monster's current HP. You can then modify this value to change your monster's current HP.
---@type number
local hp = maxhp
print(hp)
---Your monster's max HP. It is mainly used for lifebars and such. You better not set it as 0 or as a negative number, though.
---@type number
local maxhp = nil
print(maxhp)
---Your monster's ATK. Only used in the default Check handler; bullet damage is set through wave scripts. If you're not using the default Check you can leave this out.
---@type number
local atk = nil
print(atk)
---Your monster's DEF.
---@type number
local def = nil
print(def)
---Your monster's XP upon actually defeating them. You only get this by killing the monster.
---@type number
local xp = nil
print(xp)
---Gold you get from either killing or sparing this monster. Since the gold can change based on whether you kill or spare the monster, you can modify this at any time up until the fight ends.
---@type number
local gold = nil
print(gold)
---When checking with the default Check option, this is what's listed under the monster's name, ATK and DEF.
---@type string
local check = nil
print(check)
---Set it to true and the monster will not be killed if it has less than 1 HP. However, it can still be killed with Kill().
---@type boolean
local unkillable = nil
print(unkillable)
---Deprecated, always returns true.
---Old behavior: Returns true if you are able to move or unbind monstersprite, false otherwise.
---@deprecated
local canmove = true
print(canmove)
---The x position of the enemy's sprite.
---@type number
local posx = nil
print(posx)
---The y position of the enemy's sprite.
---@type number
local posy = nil
print(posy)
---The default font used by the monster. Set it to nil if you want to use the normal monster font.
---@type string
local font = nil
print(font)
---The default voice used by the monster. Set it to nil if you want to use the default voice.
---@type string
local voice = nil
print(voice)
---@diagnostic enable
]]}
  elseif uri:find("Waves/", 1, true) then
    diffs[#diffs+1] = {start = 1, finish = 0, text = [[
---@diagnostic disable
---This function is called just before the wave ends. It allows you to easily reset some variables and other such things.
local function EndingWave() end
EndingWave()
---This function is called every frame while monsters are attacking (the defense step). Update your bullets here.
local function Update() end
Update()
---Ends this wave immediately. You can only call this function from the Update function.
local function EndWave() end
EndWave()
---Returns the name of the wave file, without the extension, from the Waves folder.
---@type string
local wavename = nil
print(wavename)
---@diagnostic enable
    ]]}
  end
  return diffs
end
