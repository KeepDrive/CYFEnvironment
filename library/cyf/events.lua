---@meta
---@module "aliases"
---@module "bullet"
---@module "text"

--Encounter

---Encounter: Happens once when everything's done initializing but before any encounter actions start. You should do things like stopping the music here, or using State() if you want to start the fight off with some dialogue.
function EncounterStarting() end
---Encounter: Happens when you go to the monster dialogue state. You're still free to modify monster dialogue here.
function EnemyDialogueStaring() end
---Encounter: Happens when you go from the monster dialogue state to the defending state.
function EnemyDialogueEnding() end
---Encounter: Happens when you go from the defending state of the game to any other state.
function DefenseEnding() end
---Encounter: Happens when you select the Spare option from the Mercy menu, regardless of whether a monster is spareable or not. This event fires after the sparing of monsters is completed. If you spare the last enemy in the encounter, this function will not happen.
function HandleSpare() end
---Encounter: Happens when you select the Flee option from the Mercy menu. If you implement HandleFlee(), the fleeing sequence will not run automatically, and you will have to do it manually with the Flee() function.
---@param success boolean Whether the fleeing condition is true.
function HandleFlee(success) end
---Encounter: Happens when you select an item from the item menu.
---@param item_ID string The name of the item used, IN ALL CAPS. Similar to HandleCustomCommand in monster scripts.
---@param position number The position of the item used in the player's inventory. The first item is number 1.
function HandleItem(item_ID, position) end
---Encounter: When you enter a new state, this function will fire with newstate containing the new state's name, and oldstate containing the previous state's name. You can use State() here to interrupt state changes initiated by the engine itself.
---@param newstate stateType
---@param oldstate stateType
function EnteringState(newstate, oldstate) end
---Encounter: This function runs the moment the Player takes mortal damage, just before activating the Game Over sequence.
---If you use Player.hp or Player.Heal here to bring the Player's hp back to greater than 0, they will live and the Game Over sequence will be cancelled.
function BeforeDeath() end

--Monster

---Monster: Happens the moment the player's attack has applied damage - this is when you hear the hitting sound after the slash animation.
---@param damage number -1 if the player pressed Fight, but didn't press any buttons and let it end by itself. The monster's hp variable will have updated at this time, too.
---Don't call BattleDialog() here, it's a bit buggy right now.
function HandleAttack(damage) end
---Monster: Happens after your attack's shaking animation has completed and the monster's HP is 0. If you implement OnDeath(), your monster will not die automatically, and you will have to do it manually with the Kill() function.
---OnDeath() will only happen through monster kills that happened with the FIGHT command; scripted Kill() calls will not trigger it.
---Calling BattleDialog() here will probably screw up the battle UI.
function OnDeath() end
---Monster: Happens after you successfully spared a monster. If you implement OnSpare(), your monster will not be spared automatically, and you will have to do it manually with the Spare() function.
---OnSpare() will only happen through a monster spare that happened with the SPARE command; scripted Spare() calls will not trigger it.
function OnSpare() end
---Monster: Happens before the damage calculation the moment you press Z when attacking. You can easily use SetDamage() in this function. This is also the best place to initiate a dodge animation, if you want such a thing.
function BeforeDamageCalculation() end
---Monster: Happens before the damage UI is displayed on the monster (the life bar and the damage number) and before the hp changing. You can still change the target with Player.ChangeTarget(targetNumber) in this function, but you can not use SetDamage here.
---@param damage number is equal to the incoming damage the enemy is about to take. This damage has not been applied yet, unlike in HandleAttack.
function BeforeDamageValues(damage) end
---Monster: Happens when you select an Act command on this monster.
---@param command string same as defined in the commands list, except IN ALL CAPS.
function HandleCustomCommand(command) end

--Wave

---Wave: This function is called just before the wave ends. It allows you to easily reset some variables and other such things.
function EndingWave() end

--Repeating

---Encounter: This function runs for every frame for all of the encounter, even during waves. The only exception is the game over state - if the player dies, no code from within this function will be run.
---Wave: This function is called every frame while monsters are attacking (the defense step). Update your bullets here.
function Update() end

---All-script

---Every time a bullet collides with a player, this function gets called from the script that created the projectile. The bullet object in this function can be modified if you feel like it.
---If you implement this function in your script, you have to manually define what should happen after bullet collision. This is what allows you to create orange, cyan and green projectiles, and much much more. If you don't implement this function in your script, it'll stick to the default of dealing 3 damage on hit.
---@param bullet Bullet
function OnHit(bullet) end
---Every time a Text Object automatically advances to the next line of text (that's by any means except Text.NextLine()), this function gets called in the script that created the text object. This function is the best place to manipulate the letters from Text.GetLetters.
---@param text Text text object in question.
---@param final boolean true only if the text object just advanced past its last line and deleted itself now that it's finished.
---Text objects have a one-frame delay by default - see CreateText. If the text object is using this delay, then this function will additionally be called on the first frame it starts to type (so one frame after it gets created). But if you disable the one-frame delay, this function will not be called for the first line of text.
function OnTextAdvance(text, final) end
