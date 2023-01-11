---@meta
---@class jsonlib
---TODO: Figure out how values are specified
json = {}

---@alias nulltype userdata

---Returns a table with the contents of the specified json string.
---src: https://www.moonsharp.org/additions.html
---@param jsonString string
---@return table table
function json.parse(jsonString) end

---Returns a json string with the contents of the specified table.
---src: https://www.moonsharp.org/additions.html
---@param table any
---@return string jsonString
function json.serialize(table) end

---Returns true if the value specified is a null read from a json
---src: https://www.moonsharp.org/additions.html
---@param val unknown
---@return boolean
function json.isNull(val) end

---Returns a special value which is a representation of a null in a json
---src: https://www.moonsharp.org/additions.html
---@return nulltype
function json.null() end
