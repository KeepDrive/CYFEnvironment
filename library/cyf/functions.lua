---@meta

---Write text to the debug console (toggleable with F9). It will appear automatically the first time you write text to it. You can use this to check values in your code, or make sure some pieces of code are actually running.
---@param text string
function DEBUG(text) end
---Forcefully allows and disallows the showing of the debugger. If you enter false, the debugger will be immediately hidden if it is open, and will no longer show itself for any reason. If you then enter true, the debugger will not appear again immediately, but can be re-opened if the user presses F9.
---The debugger is enabled by default.
---Note: The state of the debugger also applies to the state of the FPS display.
---@param bool boolean
function EnableDebugger(bool) end
---An alternative to setting variables in the Encounter script to be accessed from anywhere.
---Sets a global variable. After setting, you can retrieve it from all your scripts at any time with GetGlobal(variable_name).
---@param your_variable_name string
---@param value any
function SetGlobal(your_variable_name, value) end
---An alternative to setting variables in the Encounter script to be accessed from anywhere.
---Gets a Global Variable that you previously set using SetGlobal().
---@param your_variable_name string
---@return any
---@nodiscard
function GetGlobal(your_variable_name) end
---Sets a Global variable that is accessible even in the overworld. After setting it, you can retrieve it from all of your scripts at any time with GetRealGlobal(variable_name).
---Persists through battles, but not between sessions. These variables can be saved using the overworld save system.
---Note: as Real and AlMighty Globals persist across mods, it is possible for mods to read each others' globals. Be careful when choosing global names.
---Can be used in the overworld.
---@param your_variable_name string
---@param value nil|boolean|string|number|integer
function SetRealGlobal(your_variable_name, value) end
---Gets a Global that you previously set using SetRealGlobal().
---Can be used in the overworld.
---@param your_variable_name string
---@return any
---@nodiscard
function GetRealGlobal(your_variable_name) end
---AlMighty Globals are globals that are instantly saved into a file when set: these globals persist through sessions.
---However, you can use the Remove AlMighty Globals button in modDev to remove them.
---Note: as Real and AlMighty Globals persist across mods, it is possible for mods to read each others' globals. Be careful when choosing global names.
---Can be used in the overworld.
---@param your_variable_name string
---@param value nil|boolean|string|number|integer
function SetAlmightyGlobal(your_variable_name, value) end
---Gets an AlMighty Global that you previously set using SetAlMightyGlobal().
---Can be used in the overworld.
---@param your_variable_name string
---@return any
---@nodiscard
function GetAlmightyGlobal(your_variable_name) end
---Set to true if you want frame-based player movement (2px/frame) instead of time based player movement (120px/s).
---False by default.
---Note that this function only controls the player's movement with the default control scheme (see Player.SetControlOverride).
---@param bool boolean
function SetFrameBasedMovement(bool) end
---Used alongside State("ENEMYSELECT") (or EnteringState when entering the same state) to force the player to choose FIGHT or ACT. This controls whether you'll see the enemy's health bar in the menu and whether the next state upon pressing Z is ATTACKING or ACTMENU.
---If used in the state ACTIONSELECT, this function will move the player over the specified button.
---@param action "FIGHT"|"ACT"|"ITEM"|"MERCY"
function SetAction(action) end
---If true, all damage that the player will take will be reduced - like in Undertale - by 1 point for each 5 defense, with the player's defense at LV1 not affecting the damage.
---Damage taken can not be fully blocked and will always be at least 1.
---False by default.
---@param bool boolean
function AllowPlayerDef(bool) end
---Setting this to true will force all bullets that don't have a specified collision type to use the Pixel-Perfect collision system.
---False by default.
---@param bool boolean
function SetPPCollision(bool) end
---This makes the list of strings you give to the function appear in the UI dialog box. After skipping through them, you will automatically go to the monster dialogue step by default.
---As of CYF v0.6.4, if you end up with 4 or more lines of battle dialog displayed at once, the text will move up (9 pixels, one time) to compensate and try to fit your text inside the box.
---@param list_of_strings string[]
function BattleDialogue(list_of_strings) end
---This makes the list of strings you give to the function appear in the UI dialog box. After skipping through them, you will automatically go to the monster dialogue step by default.
---As of CYF v0.6.4, if you end up with 4 or more lines of battle dialog displayed at once, the text will move up (9 pixels, one time) to compensate and try to fit your text inside the box.
---@param list_of_strings string[]
function BattleDialog(list_of_strings) end
---This function creates a custom state with the name name, which will function like the NONE state. You cannot have two states with the same name.
---@param name string
function CreateState(name) end
---This function removes the sprite loaded through path from CYF's internal cache, allowing you to load it from your folder again.
---Usually, CYF keeps all sprites it loads in an encounter in memory so the engine does not have to load it again. If the sprite is changed during the mod, the file will not be reloaded, and only its first version will be kept until the encounter is over, or the mod is unloaded in the overworld.
---@param path string
function UnloadSprite(path) end
---Immediately skips the battle to the specified state, rather than following the default conventions. The states you pass to it are case-invariant, but uppercase is recommended for readability.
---Can be used in conjunction with the text command [func] to change the state from within your dialogue.
---@param state_to_go_to stateType
function State(state_to_go_to) end
---Returns the name of the current state.
---@return stateType
---@nodiscard
function GetCurrentState() end
---This function runs the fleeing sequence.
function Flee() end
