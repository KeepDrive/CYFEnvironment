---@meta
---@module "sprite"

---@class playerClass
---@field x number Readonly. X position of the player's center relative to the arena's center.
---@field y number Readonly. Y position of the player's center relative to the arena's center.
---@field absx number Readonly. X position of the player's center relative to the bottom left corner of the screen.
---@field absy number Readonly. Y position of the player's center relative to the bottom left corner of the screen.
---@field sprite spriteType the Player's soul sprite component.
---@field maxhp integer The player's MaxHP value. Not a float unlike regular hp.
---@field maxhpshift integer Readonly. The difference between the player's current Max HP and their normal, unmodified Max HP.
---@field weapon string Readonly. Name of the player's current weapon.
---@field weaponatk number Readonly. Attack value of the player's current weapon.
---@field def number base Defense of the player. Depends on the player's level. Changing Player.lv or ending the battle will reset this to its intended value.
---@field armor string Readonly. Name of the player's current armor.
---@field armordef number Readonly. Defense value of the player's current armor.
---@field lastenemychosen number Readonly. The id of the last chosen enemy in the ACT/FIGHT menus. -1 at the beginning of a fight. NOTE: This is NOT the same as the enemy's position in the enemies table. This is the position of the enemies in the menu in-game.
---@field lasthitmultiplier number Readonly. The accuracy value from the last time the player was in ATTACKING. Normally, it will be between 0 and 2. It will be -1 if the player missed the attack (and at the beginning of the battle) and 2.2 if the attack was perfectly precise.
---@field ishurting boolean Readonly. True if the player's currently blinking due to being hurt, false otherwise.
---@field ismoving boolean Readonly. True if the player is currently moving in battle, false otherwise. Will always be false while not in a wave script. NOTE: This only will change with the default control scheme (see Player.SetControlOverride).
Player = {}

---Player's speed in pixels per second.
Player.speed = 120
---Player's current name. 9 letters max.
Player.name = "Rhenao"
---Player's current level. Between 1 and 99. Player starts with 20 HP / 10 ATK and gains 4 HP / 2 ATK per level. Leveling up the player through code doesn't automatically heal them; you'll have to do this manually.
Player.lv = 1
---The player's current HP. Can't exceed max HP. If set to 0, game over triggers.
Player.hp = 20
---Base attack of the player. Depends on the player's level. Changing Player.lv or ending the battle will reset this to its intended value.
Player.atk = 2

---Deals damage to the player, and makes them invincible for invul_time seconds.
---Can not hurt the player again if they are already hurting (flashing).
---Set ignoreDef to true, and if the encounter variable allowPlayerDef is true, the damage dealt here will ignore the player's defense.
---Call Player.Hurt(0, 0) to stop the player's invincibility frames without making a sound.
---Set playSound to false, and no sound will be played whatsoever.
---@param damage number
---@param invul_time? number 1.7 by default
---@param ignoreDef? boolean false by default
---@param playSound? boolean true by default
function Player.Hurt(damage, invul_time, ignoreDef, playSound) end
---Heals the player for this amount. This is exactly the same as Player.Hurt(-value, 0). It also plays the healing sound.
---@param value number
function Player.Heal(value) end
---Only useable in waves. If true, this will prevent the player soul from doing its regular movement/keyboard control for the rest of the wave (in other words, it disables the red soul functionality).
---Use this if you want to implement your own controls in a wave (i.e. a custom soul mode, like the blue or purple soul).
---@param boolean boolean
function Player.SetControlOverride(boolean) end
---Moves the player soul based on its last position. If ignoreWalls is false, it will make sure the player doesn't go outside of the arena; otherwise, it ignores the arena's boundaries. If you want to move the player out of bounds in a wave, you'll have to call Player.SetControlOverride(true), as the player's default movement keeps the soul inside the arena otherwise.
---@param x number X offset
---@param y number Y offset
---@param ignoreWalls? boolean false by default
function Player.Move(x, y, ignoreWalls) end
---Moves the player soul to this position relative to the arena's center. If ignoreWalls is false, it will make sure the player doesn't go outside of the arena; otherwise, it ignores the arena's boundaries. If you want to move the player out of bounds in a wave, you'll have to call Player.SetControlOverride(true) as the player's default movement keeps the soul inside the arena.
---@param x number
---@param y number
---@param ignoreWalls? boolean false by default
function Player.MoveTo(x, y, ignoreWalls) end
---Moves the player soul to this position relative to the bottom left of the screen. If ignoreWalls is false, it will make sure the player doesn't go outside of the arena; otherwise, it ignores the arena's boundaries. If you want to move the player out of bounds in a wave, you'll have to call Player.SetControlOverride(true) as the player's default movement keeps the soul inside the arena.
---@param x number
---@param y number
---@param ignoreWalls? boolean false by default
function Player.MoveToAbs(x, y, ignoreWalls) end
---Lets you set the player's HP to a number above the player's Max HP.  The REAL maximum is 999.
---@param amount number
function Player.ForceHP(amount) end
---Lets you set the Player's MaxHP, relative to their normal MaxHP. If the total MaxHP is negative or nil, it causes a GameOver. The max value for the Player's MaxHP is 999.
---Formula: Player's MaxHP = Basis MaxHP + MaxHP Shift
---@param shift number The value that will be added to the Max HP. If set is true, this will be the player's new Max HP.
---@param invulnerabilitySeconds? number 1.7 by default. The time for which the player will be invulnerable after this operation.
---@param set? boolean false by default. Set to true if you want to set the Player's MaxHP directly.
---@param canHeal? boolean false by default. If true the player will automatically gain any health added by this function as normal (yellow) health. Does not apply for losing health.
---@param playSound? boolean true by default. Set to false if you don't want to play the heal/hurt sound when the operation is done.
function Player.SetMaxHPShift(shift, invulnerabilitySeconds, set, canHeal, playSound) end
---Resets the player's Max HP, ATK and/or DEF to their original values based on the player's LV.
---@param resetMHP? boolean true by default. If true, the player's Max HP will be set back to what it should be based on the player's LV.
---@param resetATK? boolean true by default. If true, the player's ATK will be set back to what it should be based on the player's LV.
---@param resetDEF? boolean true by default. If true, the player's DEF will be set back to what it should be based on the player's LV.
function Player.ResetStats(resetMHP, resetATK, resetDEF) end
---Sets the animation used when attacking an enemy. Use it like sprite.SetAnimation().
---@param anim <string>[]
---@param frequency number
---@param prefix? string
function Player.SetAttackAnim(anim, frequency, prefix) end
---Resets the animation of the player's attack to the default slashing animation.
function Player.ResetAttackAnim() end
---Changes the target of the Player's attack while in ATTACKING. Does nothing outside of the state ATTACKING. It should be used in BeforeDamageCalculation() or BeforeDamageValues().
---@param targetNumber number
function Player.ChangeTarget(targetNumber) end
---Forces an attack towards the enemy number enemyID. If you want to, you can choose the attack's damage, too - but otherwise, damage will be calculated normally.
---If you want enemies to be able to die this way, you MUST check with Player.CheckDeath!
---@param enemyID integer
---@param damage? number
function Player.ForceAttack(enemyID, damage) end
---The next attack the player executes will attack the enemies contained in targetIDs and deal damage damage. If you put nothing as a parameter, this will attack all enemies with the normal damage calculations.
---Each target needs to have one damage value if you use a table of numbers for the damage value, or all targets can share the same damage value if the damage value is a simple number.
---@param targetIDs? <integer>[] can be omitted if damage is a number. Contains all IDs by default.
---@param damage? <number>[]|number equals regular damage by default
function Player.MultiTarget(targetIDs, damage) end
---Forces an attack towards the enemies contained in targetIDs and deals damage damage. If you put nothing as a parameter, this will attack all enemies with the normal damage calculations.
---Each target needs to have one damage value if you use a table of numbers for the damage value, or all targets can share the same damage value if the damage value is a simple number.
---If you want enemies to be able to die this way, you MUST check with Player.CheckDeath!
---@param targetIDs? <integer>[] can be omitted if damage is a number. Contains all IDs by default
---@param damage? <number>[]|number regular damage by default
function Player.ForceMultiAttack(targetIDs, damage) end
---Checks if the enemies are dead after a forced attack.
function Player.CheckDeath() end
