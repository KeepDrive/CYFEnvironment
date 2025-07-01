---#if not CYF then DISABLE() end
---@meta cyfEvents
---#SETDOC 'cyf-api-events'

---@alias enterstate
---| '"ACTIONSELECT"' # ---#DESTAIL 'EnteringState.ACTIONSELECT'
---| '"ATTACKING"' # ---#DESTAIL 'EnteringState.ATTACKING'
---| '"DEFENDING"' # ---#DESTAIL 'EnteringState.DEFENDING'
---| '"ENEMYSELECT"' # ---#DESTAIL 'EnteringState.ENEMYSELECT'
---| '"ACTMENU"' # ---#DESTAIL 'EnteringState.ACTMENU'
---| '"ITEMMENU"' # ---#DESTAIL 'EnteringState.ITEMMENU'
---| '"ENEMYDIALOGUE"' # ---#DESTAIL 'EnteringState.ENEMYDIALOGUE'
---| '"DIALOGRESULT"' # ---#DESTAIL 'EnteringState.DIALOGRESULT'

---#DES 'EncounterStarting'
---@script E
function EncounterStarting() end

---#DES 'EnemyDialogueStarting'
---@script E
function EnemyDialogueStarting() end

---#DES 'EnemyDialogueEnding'
---@script E
function EnemyDialogueEnding() end

---#DES 'DefenseEnding'
---@script E
function DefenseEnding() end

---#DES 'HandleSpare'
---@script E
function HandleSpare() end

---#DES 'HandleFlee'
---@script E
---@param success boolean
function HandleFlee(success) end

---#DES 'HandleItem'
---@script E
---@param item_ID string
---@param position integer
function HandleItem(item_ID, position) end

---#DES 'EnteringState'
---@script E
---@param newstate enterstate
---@param oldstate enterstate
function EnteringState(newstate, oldstate) end

---#DES 'UpdateE'
---@script E
function Update() end

---#DES 'BeforeDeath'
---@script E
function BeforeDeath() end

---#DES 'OnTextDisplay'
---@script E
---@param text Text
function OnTextDisplay() end

---#DES 'HandleAttack'
---@script M
---@param damage number
function HandleAttack(damage) end

---#DES 'OnDeath'
---@script M
function OnDeath() end

---#DES 'OnSpare'
---@script M
function OnSpare() end

---#DES 'BeforeDamageCalculation'
---@script M
function BeforeDamageCalculation() end

---#DES 'BeforeDamageValues'
---@script M
---@param damage number
function BeforeDamageValues(damage) end

---#DES 'HandleCustomCommand'
---@script M
---@param command string
function HandleCustomCommand(command) end

---#DES 'UpdateW'
---@script W
function Update() end

---#DES 'EndingWave'
---@script W
function EndingWave() end

---#DES 'OnHit'
---@param bullet bullet
function OnHit(bullet) end
