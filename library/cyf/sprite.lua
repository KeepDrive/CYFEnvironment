---#if not CYF then DISABLE() end
---@meta cyfSprite
---#SETDOC 'cyf-api-animation'

---#DES 'CreateLayer'
---@param name string
---@param position? string
---@param below? boolean
---@return boolean success
---@nodiscard
function CreateLayer(name, position, below) end

---#DES 'CreateSprite'
---@param spritename string
---@param layer? string|"none"
---@param childNumber? number
---@return sprite
---@nodiscard
function CreateSprite(spritename, layer, childNumber) end

---#DES 'CreateSprite'
---@param spritename string
---@param childNumber? number
---@return sprite
---@nodiscard
function CreateSprite(spritename, childNumber) end

---#DES 'sprite'
---@class sprite: userdata
local sprite

---#DES 'sprite.spritename'
---@type string
sprite.spritename = nil

---#DES 'sprite.x'
---@type number
sprite.x = nil

---#DES 'sprite.y'
---@type number
sprite.y = nil

---#DES 'sprite.z'
---@type number
sprite.z = nil

---#DES 'sprite.absx'
---@type number
sprite.x = nil

---#DES 'sprite.absy'
---@type number
sprite.y = nil

---#DES 'sprite.absz'
---@type number
sprite.z = nil

---#DES 'sprite.xscale'
---@type number
sprite.xscale = nil

---#DES 'sprite.yscale'
---@type number
sprite.yscale = nil

---#DES 'sprite.isactive'
---@type boolean
sprite.isactive = nil

---#DES 'sprite.width'
---@type number
sprite.width = nil

---#DES dsprite.height'
---@type number
sprite.height = nil

---#DES 'sprite.xpivot'
---@type number
sprite.xpivot = nil

---#DES 'sprite.ypivot'
---@type number
sprite.ypivot = nil

---#DES 'sprite.animcomplete'
---@type boolean
sprite.animcomplete = nil

---#DES 'sprite.currentframe'
---@type integer
sprite.currentframe = nil

---#DES 'sprite.currenttime'
---@type number
sprite.currenttime = nil

---#DES 'sprite.totaltime'
---@type number
sprite.totaltime = nil

---#DES 'sprite.animationspeed'
---@type number
sprite.animationspeed = nil

---#DES 'sprite.animationpaused'
---@type boolean
sprite.animationpaused = nil

---@alias loopMode
---| "LOOP" # ---#DESTAIL 'loopMode.LOOP'
---| "ONESHOT" # ---#DESTAIL 'loopMode.ONESHOT'
---| "ONESHOTEMPTY" # ---#DESTAIL 'loopMode.ONESHOTEMPTY'

---#DES 'sprite.loopmode'
---@type loopMode
sprite.animationpaused = nil

---#DES 'sprite.color'
---@type number[]
sprite.color = nil

---#DES 'sprite.color32'
---@type integer[]
sprite.color32 = nil

---#DES 'sprite.alpha'
---@type number
sprite.alpha = nil

---#DES 'sprite.alpha32'
---@type integer
sprite.alpha32 = nil

---#DES 'sprite.rotation'
---@type number
sprite.rotation = nil

---#DES 'sprite.layer'
---@type string
sprite.layer = nil

---#DES 'sprite.Set'
---@param newSprite string
function sprite.Set(newSprite) end

---#DES 'sprite.SetParent'
---@param otherSpriteObject sprite
function sprite.SetParent(otherSpriteObject) end

---@alias maskMode
---| "off" # ---#DESTAIL 'maskMode.off'
---| "box" # ---#DESTAIL 'maskMode.box'
---| "sprite" # ---#DESTAIL 'maskMode.sprite'
---| "stencil" # ---#DESTAIL 'maskMode.stencil'
---| "invertedsprite" # ---#DESTAIL 'maskMode.invertedsprite'
---| "invertedstencil" # ---#DESTAIL 'maskMode.invertedstencil'

---#DES 'sprite.Mask'
---@param mode maskMode
function sprite.Mask(mode) end

---#DES 'sprite.shader'
---@type shader
sprite.shader = nil

---#DES 'sprite.SetPivot'
---@param x number
---@param y number
function sprite.SetPivot(x, y) end

---#DES 'sprite.SetAnchor'
---@param x number
---@param y number
function sprite.SetAnchor(x, y) end

---#DES 'sprite.Move'
---@param x number
---@param y number
function sprite.Move(x, y) end

---#DES 'sprite.MoveTo'
---@param x number
---@param y number
function sprite.MoveTo(x, y) end

---#DES 'sprite.MoveToAbs'
---@param x number
---@param y number
function sprite.MoveToAbs(x, y) end

---#DES 'sprite.Scale'
---@param xscale number
---@param yscale number
function sprite.Scale(xscale, yscale) end

---#DES 'sprite.SetAnimation'
---@param spriteTable string[]
---@param timePerFrame? number
---@param prefix? string
function sprite.SetAnimation(spriteTable, timePerFrame, prefix) end

---#DES 'sprite.StopAnimation'
function sprite.StopAnimation() end

---#DES 'sprite.SendToTop'
function sprite.SendToTop() end

---#DES 'sprite.SendToBottom'
function sprite.SendToBottom() end

---#DES 'sprite.MoveBelow'
---@param otherSpriteObject sprite
function sprite.MoveBelow(otherSpriteObject) end

---#DES 'sprite.MoveAbove'
---@param otherSpriteObject sprite
function sprite.MoveAbove(otherSpriteObject) end

---#DES 'sprite.Remove'
function sprite.Remove() end

---#DES 'sprite.GetVar'
---@param yourVariableName string
---@return any
---@nodiscard
function sprite.GetVar(yourVariableName) end

---#DES 'sprite.SetVar'
---@param yourVariableName string
---@param value any
function sprite.SetVar(yourVariableName, value) end

---#DES 'sprite.Dust'
---@param playSound? boolean
---@param removeObject? boolean
function sprite.Dust(playSound, removeObject) end
