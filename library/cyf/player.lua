---#if not CYF then DISABLE() end
---@meta cyfPlayer
---#SETDOC 'cyf-api-functions-player'

---#DES 'Player'
---@class Player: userdata
Player = nil

---#DES 'Player.x'
---@type number
Player.x = nil

---#DES 'Player.y'
---@type number
Player.y = nil

---#DES 'Player.absx'
---@type number
Player.absx = nil

---#DES 'Player.absy'
---@type number
Player.absy = nil

---#DES 'Player.sprite'
---@type sprite
Player.sprite = nil

---#DES 'Player.hp'
---@type number
Player.hp = nil

---#DES 'Player.maxhp'
---@type number
Player.maxhp = nil

---#DES 'Player.maxhpshift'
---@type number
Player.maxhpshift = nil

---#DES 'Player.atk'
---@type number
Player.atk = nil

---#DES 'Player.weapon'
---@type string
Player.weapon = nil

---#DES 'Player.weaponatk'
---@type number
Player.weaponatk = nil

---#DES 'Player.def'
---@type number
Player.def = nil

---#DES 'Player.armor'
---@type string
Player.armor = nil

---#DES 'Player.armordef'
---@type string
Player.armordef = nil

---#DES 'Player.speed'
Player.speed = 120

---#DES 'Player.name'
Player.name = "Rhenao"

---#DES 'Player.lv'
Player.lv = 1

---#DES 'Player.lastenemychosen'
---@type integer
Player.lastenemychosen = nil

---#DES 'Player.lasthitmultiplier'
---@type number
Player.lasthitmultiplier = nil

---#DES 'Player.ishurting'
---@type boolean
Player.ishurting = nil

---#DES 'Player.ismoving'
---@type boolean
Player.ismoving = nil

---#DES 'Player.Hurt'
---@param damage number
---@param invul_time? number
---@param ignoreDef? boolean
function Player.Hurt(damage, invul_time, ignoreDef) end

---#DES 'Player.Heal'
---@param value number
function Player.Hurt(value) end

---#DES 'Player.SetControlOverride'
---@param boolean boolean
function Player.SetControlOverride(boolean) end

---#DES 'Player.Move'
---@param x number
---@param y number
---@param ignoreWalls? boolean
function Player.Move(x, y, ignoreWalls) end

---#DES 'Player.MoveTo'
---@param x number
---@param y number
---@param ignoreWalls? boolean
function Player.MoveTo(x, y, ignoreWalls) end

---#DES 'Player.MoveToAbs'
---@param x number
---@param y number
---@param ignoreWalls? boolean
function Player.MoveToAbs(x, y, ignoreWalls) end

---#DES 'Player.ForceHP'
---@param amount number
function Player.ForceHP(amount) end

---#DES 'Player.SetMaxHPShift'
---@param shift number
---@param invulnerabilitySeconds? number
---@param set? boolean
---@param canHeal? boolean
---@param playSound? boolean
function Player.SetMaxHPShift(shift, invulnerabilitySeconds, set, canHeal, playSound) end

---#DES 'Player.ResetStats'
---@param resetMHP? boolean
---@param resetATK? boolean
---@param resetDEF? boolean
function Player.ResetStats(resetMHP, resetATK, resetDEF) end

---#DES 'Player.SetAttackAnim'
---@param anim string[]
---@param frequency number
---@param prefix? string
function Player.SetAttackAnim(anim, frequency, prefix) end

---#DES 'Player.ResetAttackAnim'
function Player.ResetAttackAnim() end

---#DES 'Player.ChangeTarget'
---@param targetNumber number
function Player.ChangeTarget(targetNumber) end

---#DES 'Player.ForceAttack'
---@param enemyID integer
---@param damage? number
function Player.ForceAttack(enemyID, damage) end

---#DES 'Player.MultiTargetFull'
---@param targetIDs? integer[]
---@param damage? number[]|number
function Player.MultiTarget(targetIDs, damage) end

---#DES 'Player.MultiTarget'
---@param damage number
function Player.MultiTarget(damage) end

---#DES 'Player.ForceMultiAttackFull'
---@param targetIDs? integer[]
---@param damage? number[]|number
function Player.ForceMultiAttack(targetIDs, damage) end

---#DES 'Player.ForceMultiAttack'
---@param damage number
function Player.ForceMultiAttack(damage) end

---#DES 'Player.CheckDeath'
function Player.CheckDeath() end
