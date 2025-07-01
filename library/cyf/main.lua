---#if not CYF then DISABLE() end
---@meta cyfMain
---#SETDOC 'cyf-api-functions-main'

---@alias state
---| '"ACTIONSELECT"' # ---#DESTAIL 'state.ACTIONSELECT'
---| '"ENEMYDIALOGUE"' # ---#DESTAIL 'state.ENEMYDIALOGUE'
---| '"DEFENDING"' # ---#DESTAIL 'state.DEFENDING'
---| '"ATTACKING"' # ---#DESTAIL 'state.ATTACKING'
---| '"ENEMYSELECT"' # ---#DESTAIL 'state.ENEMYSELECT'
---| '"ACTMENU"' # ---#DESTAIL 'state.ACTMENU'
---| '"ITEMMENU"' # ---#DESTAIL 'state.ITEMMENU'
---| '"MERCYMENU"' # ---#DESTAIL 'state.MERCYMENU'
---| '"DIALOGRESULT"' # ---#DESTAIL 'state.DIALOGRESULT'
---| '"DONE"' # ---#DESTAIL 'state.DONE'
---| '"NONE"' # ---#DESTAIL 'state.NONE'
---| '"PAUSE"' # ---#DESTAIL 'state.PAUSE'

---#DES 'DEBUG'
---@param text string|number|boolean|userdata
function DEBUG(text) end

---#DES 'EnableDebugger'
---@param bool boolean
function EnableDebugger(bool) end

---#DES 'SetGlobal'
---@param your_variable_name string
---@param value any
function SetGlobal(your_variable_name, value) end

---#DES 'GetGlobal'
---@param your_variable_name string
---@return any value
---@nodiscard
function GetGlobal(your_variable_name) end

---@alias nonComplexVar boolean|string|number

---#DES 'SetRealGlobal'
---@param your_variable_name string
---@param value nonComplexVar
function SetRealGlobal(your_variable_name, value) end

---#DES 'GetRealGlobal'
---@param your_variable_name string
---@return nonComplexVar value
---@nodiscard
function GetRealGlobal(your_variable_name) end

---#DES 'SetAlmightyGlobal'
---@param your_variable_name string
---@param value nonComplexVar
function SetAlmightyGlobal(your_variable_name, value) end

---#DES 'GetAlmightyGlobal'
---@param your_variable_name string
---@return nonComplexVar value
---@nodiscard
function GetAlmightyGlobal(your_variable_name) end

---#DES 'SetFrameBasedMovement'
---@param bool boolean
function SetFrameBasedMovement(bool) end

---#DES 'SetAction'
---@param action "FIGHT"|"ACT"|"ITEM"|"MERCY"
function SetAction(action) end

---#DES 'AllowPlayerDef'
---@param bool boolean
function AllowPlayerDef(bool) end

---#DES 'SetPPCollision'
---@param bool boolean
function SetPPCollision(bool) end

---#DES 'BattleDialogue'
---@param list_of_strings string[]
function BattleDialogue(list_of_strings) end

---#DES 'BattleDialogue'
---@param list_of_strings string[]
function BattleDialog(list_of_strings) end

---#DES 'CreateState'
---@param name string
function CreateState(name) end

---#DES 'UnloadSprite'
---@param path string
function UnloadSprite(path) end

---#DES 'State'
---@param state_to_go_to state|string
function State(state_to_go_to) end

---#DES 'GetCurrentState'
---@return state|string state
---@nodiscard
function GetCurrentState() end

---#DES 'RandomEncounterText'
---@script E
---@return string text
---@nodiscard
function RandomEncounterText() end

---#DES 'SetButtonLayer'
---@script E
---@param layer layer|"default"|string
function SetButtonLayer(layer) end

---#DES 'CreateEnemy'
---@script E
---@param scriptName string
---@param x number
---@param y number
function CreateEnemy(scriptName, x, y) end

---#DES 'Flee'
---@script E
function Flee() end

---#DES 'SetSprite'
---@script M
---@param filename string
function SetSprite(filename) end

---#DES 'SetActive'
---@script M
---@param active boolean
function SetActive(active) end

---#DES 'SetDamage'
---@script M
---@param amount integer
function SetDamage(amount) end

---#DES 'Kill'
---@script M
---@param playSound? boolean
function Kill(playSound) end

---#DES 'Spare'
---@script M
---@param playSound? boolean
function Spare(playSound) end

---#DES 'Move'
---@script M
---@param x number
---@param y number
function Move(x, y) end

---#DES 'MoveTo'
---@script M
---@param x number
---@param y number
function MoveTo(x, y) end

---#DES 'BindToArena'
---@script M
---@param bind boolean
---@param isUnderArena? boolean
function BindToArena(bind, isUnderArena) end

---#DES 'SetBubbleOffset'
---@script M
---@param x number
---@param y number
function SetBubbleOffset(x, y) end

---#DES 'SetDamageUIOffset'
---@script M
---@param x number
---@param y number
function SetDamageUiOffset(x, y) end

---#DES 'SetSliceAnimOffset'
---@script M
---@param x number
---@param y number
function SetSliceAnimOffset(x, y) end

---#DES 'Remove'
---@script M
function Remove() end

---#DES 'EndWave'
---@script W
function EndWave() end
