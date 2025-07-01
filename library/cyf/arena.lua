---#if not CYF then DISABLE() end
---@meta cyfArena
---#SETDOC 'cyf-api-functions-waves'

---#DES 'Arena'
---@script W
---@class Arena: userdata
Arena = nil

---#DES 'Arena.width'
---@type number
Arena.width = nil

---#DES 'Arena.height'
---@type number
Arena.height = nil

---#DES 'Arena.x'
---@type number
Arena.x = nil

---#DES 'Arena.y'
---@type number
Arena.y = nil

---#DES 'Arena.currentwidth'
---@type number
Arena.currentwidth = nil

---#DES 'Arena.currentheight'
---@type number
Arena.currentheight = nil

---#DES 'Arena.currentx'
---@type number
Arena.currentx = nil

---#DES 'Arena.currenty'
---@type number
Arena.currenty = nil

---#DES 'Arena.innerColor'
---@type number[]
Arena.innerColor = nil

---#DES 'Arena.innerColor32'
---@type integer[]
Arena.innerColor32 = nil

---#DES 'Arena.outerColor'
---@type number[]
Arena.outerColor = nil

---#DES 'Arena.outerColor32'
---@type integer[]
Arena.outerColor32 = nil

---#DES 'Arena.isResizing'
---@type boolean
Arena.isResizing = nil

---#DES 'Arena.isMoving'
---@type boolean
Arena.isMoving = nil

---#DES 'Arena.isModifying'
---@type boolean
Arena.isModifying = nil

---#DES 'Arena.Resize'
---@param width number
---@param height number
function Arena.Resize(width, height) end

---#DES 'Arena.ResizeImmediate'
---@param width number
---@param height number
function Arena.ResizeImmediate(width, height) end

---#DES 'Arena.Move'
---@param x number
---@param y number
---@param movePlayer? boolean
---@param immediate? boolean
function Arena.Move(x, y, movePlayer, immediate) end

---#DES 'Arena.MoveTo'
---@param x number
---@param y number
---@param movePlayer? boolean
---@param immediate? boolean
function Arena.MoveTo(x, y, movePlayer, immediate) end

---#DES 'Arena.MoveAndResize'
---@param x number
---@param y number
---@param width number
---@param height number
---@param movePlayer? boolean
---@param immediate? boolean
function Arena.MoveAndResize(x, y, width, height, movePlayer, immediate) end

---#DES 'Arena.MoveToAndResize'
---@param x number
---@param y number
---@param width number
---@param height number
---@param movePlayer? boolean
---@param immediate? boolean
function Arena.MoveToAndResize(x, y, width, height, movePlayer, immediate) end

---#DES 'Arena.Hide'
function Arena.Hide() end

---#DES 'Arena.Show'
function Arena.Show() end
