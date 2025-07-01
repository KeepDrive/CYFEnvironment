---#if not CYF then DISABLE() end
---@meta cyfProjectile
---#SETDOC 'cyf-api-projectile'

---#DES 'CreateProjectileLayer'
---@script EW
---@param name string
---@param position? string
---@param below? boolean
function CreateProjectileLayer(name, position, below) end

---#DES 'CreateProjectile'
---@script EW
---@param spritename string
---@param initial_x number
---@param initial_y number
---@param layer? string
---@return bullet
---@nodiscard
function CreateProjectile(spritename, initial_x, initial_y, layer) end

---#DES 'CreateProjectileAbs'
---@script EW
---@param spritename string
---@param initial_x number
---@param initial_y number
---@param layer? string
---@return bullet
---@nodiscard
function CreateProjectileAbs(spritename, initial_x, initial_y, layer) end

---#DES 'bullet'
---@class bullet: userdata
local bullet

---#DES 'bullet.sprite'
---@type sprite
bullet.sprite = nil

---#DES 'bullet.x'
---@type number
bullet.x = nil

---#DES 'bullet.y'
---@type number
bullet.y = nil

---#DES 'bullet.absx'
---@type number
bullet.absx = nil

---#DES 'bullet.absy'
---@type number
bullet.absy = nil

---#DES 'bullet.ppcollision'
---@type boolean
bullet.ppcollision = nil

---#DES 'bullet.ppchanged'
---@type boolean
bullet.ppchanged = nil

---#DES 'bullet.ResetCollisionSystem'
function bullet.ResetCollisionSystem() end

---#DES 'bullet.layer'
---@type string
bullet.layer = nil

---#DES 'bullet.isactive'
---@type boolean
bullet.isactive = nil

---#DES 'bullet.Move'
---@param x number
---@param y number
function bullet.Move(x, y) end

---#DES 'bullet.MoveTo'
---@param x number
---@param y number
function bullet.MoveTo(x, y) end

---#DES 'bullet.MoveToAbs'
---@param x number
---@param y number
function bullet.MoveToAbs(x, y) end

---#DES 'bullet.Remove'
function bullet.Remove() end

---#DES 'bullet.GetVar'
---@param yourVariableName string
---@return any
---@nodiscard
function bullet.GetVar(yourVariableName) end

---#DES 'bullet.SetVar'
---@param yourVariableName string
---@param value any
function bullet.SetVar(yourVariableName, value) end

---#DES 'bullet.SendToTop'
function bullet.SendToTop() end

---#DES 'bullet.SendToBottom'
function bullet.SendToBottom() end

---#DES 'bullet.isColliding'
---@return boolean colliding
---@nodiscard
function bullet.isColliding() end

---#DES 'bullet.OnHit'
---@param bulletObj bullet
function bullet.OnHit(bulletObj) end

---#DES 'bullet.isPersistent'
bullet.isPersistent = false
