---#if not CYF then DISABLE() end
---@meta cyfInventory
---#SETDOC 'cyf-cyf-inventory'

---#DES 'Inventory'
---@class Inventory: userdata
Inventory = nil

---#DES 'Inventory.AddItem'
---@param name string
---@param index? number
function Inventory.AddItem(name, index) end

---#DES 'Inventory.RemoveItem'
---@param index number
function Inventory.RemoveItem(index) end

---#DES 'Inventory.GetItem'
---@param index number
---@return string item
---@nodiscard
function Inventory.RemoveItem(index) end

---#DES 'Inventory.GetType'
---@param index number
---@return 0|1|2|3 type
---@nodiscard
function Inventory.GetType(index) end

---#DES 'Inventory.SetItem'
---@param index number
---@param name string
function Inventory.SetItem(index, name) end

---#DES 'Inventory.UseItem'
---@param index number
function Inventory.UseItem(index) end

---#DES 'Inventory.AddCustomItems'
---@param names string[]
---@param types (0|1|2|3)[]
function Inventory.AddCustomItems(names, types) end

---#DES 'Inventory.SetInventory'
---@param names string[]
function Inventory.SetInventory(names) end

---#DES 'Inventory.ItemCount'
---@type number
Inventory.ItemCount = nil

---#DES 'Inventory.NoDelete'
---@type boolean
Inventory.NoDelete = nil

---#DES 'Inventory.SetAmount'
---@param amount number
function Inventory.SetAmount(amount) end
