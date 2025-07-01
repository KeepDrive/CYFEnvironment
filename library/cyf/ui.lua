---#if not CYF then DISABLE() end
---@meta cyfUI
---#SETDOC 'cyf-api-functions-ui'

---#DES 'UI'
---@class UI: userdata
UI = nil

---#DES 'UI.background'
---@type sprite
UI.background = nil

---#DES 'UI.namelv'
---@type Text
UI.namelv = nil

---#DES 'UI.hplabel'
---@type sprite
UI.hplabel = nil

---#DES 'UI.hpbar'
---@type bar
UI.hpbar = nil

---#DES 'UI.hptext'
---@type Text
UI.hptext = nil

---#DES 'UI.fightbtn'
---@type sprite
UI.fightbtn = nil

---#DES 'UI.actbtn'
---@type sprite
UI.actbtn = nil

---#DES 'UI.itembtn'
---@type sprite
UI.itembtn = nil

---#DES 'UI.mercybtn'
---@type sprite
UI.mercybtn = nil

---#DES 'UI.StopUpdate'
---@param toggle boolean
function UI.StopUpdate(toggle) end

---#DES 'UI.Hide'
---@param hide boolean
function UI.Hide(hide) end

---#DES 'UI.RepositionHPElements'
function UI.RepositionHPElements() end

---#DES 'UI.Reset'
function UI.Reset() end

---@alias ButtonName "FIGHT"|"ACT"|"ITEM"|"MERCY"

---#DES 'UI.GetCurrentButton'
---@return ButtonName buttonName
---@nodiscard
function UI.GetCurrentButton() end

---#DES 'UI.DisableButton'
---@param button ButtonName
function UI.DisableButton(button) end

---#DES 'UI.EnableButton'
---@param button ButtonName
function UI.EnableButton(button) end

---#DES 'UI.ResetButtonPosition'
---@param button ButtonName
---@param resetX? boolean
---@param resetY? boolean
function UI.ResetButtonPosition(button, resetX, resetY) end

---#DES 'UI.GetPlayerXPosOnButton'
---@param button ButtonName
function UI.GetPlayerXPosOnButton(button) end

---#DES 'UI.GetPlayerYPosOnButton'
---@param button ButtonName
function UI.GetPlayerYPosOnButton(button) end

---#DES 'UI.SetPlayerXPosOnButton'
---@param button ButtonName
---@param newX number
function UI.SetPlayerXPosOnButton(button, newX) end

---#DES 'UI.SetPlayerYPosOnButton'
---@param button ButtonName
---@param newY number
function UI.SetPlayerYPosOnButton(button, newY) end

---#DES 'UI.ResetPlayerPosOnButton'
---@param button ButtonName
---@param resetX? boolean
---@param resetY? boolean
function UI.ResetPlayerPosOnButton(button, resetX, resetY) end

---#DES 'UI.SetButtonActiveSprite'
---@param button ButtonName
---@param sprite string
function UI.SetButtonActiveSprite(button, sprite) end

---#DES 'UI.ResetButtonActiveSprite'
---@param button ButtonName
function UI.ResetButtonActiveSprite(button) end

---#DES 'UI.UpdateButtons'
function UI.UpdateButtons() end

---#DES 'bar'
---@class bar: userdata
local bar

---#DES 'CreateBar'
---@param x number
---@param y number
---@param width number
---@param height? number
function CreateBar(x, y, width, height) end

---#DES 'CreateBarWithSprites'
---@param x number
---@param y number
---@param backgroundSprite string
---@param fillSprite? string
function CreateBar(x, y, backgroundSprite, fillSprite) end

---#DES 'bar.background'
---@type sprite
bar.background = nil

---#DES 'bar.mask'
---@type sprite
bar.mask = nil

---#DES 'bar.fill'
---@type sprite
bar.fill = nil

---#DES 'bar.outline'
---@type sprite
bar.outline = nil

---#DES 'bar.currentFill'
---@type number
bar.currentFill = nil

---#DES 'bar.hasOutline'
---@type boolean
bar.hasOutline = nil

---#DES 'bar.outlineThickness'
---@type number
bar.outlineThickness = nil

---#DES 'bar.SetInstant'
---@param fillValue number
---@param allowNonClamped? boolean
function bar.SetInstant(fillValue, allowNonClamped) end

---#DES 'bar.SetLerp'
---@param fillValue number
---@param time? number
---@param allowNonClamped? boolean
function bar.SetLerp(fillValue, time, allowNonClamped) end

---#DES 'bar.SetLerpOrig'
---@param originalValue number
---@param fillValue number
---@param time? number
---@param allowNonClamped? boolean
function bar.SetLerp(originalValue, fillValue, time, allowNonClamped) end

---#DES 'bar.AddOutline'
---@param thickness number
---@param r? number
---@param g? number
---@param b? number
function bar.AddOutline(thickness, r, g, b) end

---#DES 'bar.RemoveOutline'
function bar.RemoveOutline() end

---#DES 'bar.Resize'
---@param width number
---@param height number
---@param updateOutline? boolean
function bar.Resize(width, height, updateOutline) end

---#DES 'bar.SetSprites'
---@param bgSprite string
---@param fSprite? string
---@param mSprite? string
---@param oSprite? string
function bar.SetSprites(bgSprite, fSprite, mSprite, oSprite) end

---#DES 'bar.SetVisible'
---@param visible boolean
function bar.SetVisible(visible) end

---#DES 'bar.Destroy'
function bar.Destroy() end
