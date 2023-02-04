---@meta

---@class Script
---@field scriptname string The file name of the script in question.
local Script = {}

---Gets variable_name from the script. Same as Script[variable_name].
---@param variable_name string
---@return any
---@nodiscard
function Script.GetVar(variable_name) end
---Sets variable_name in the script. Same as Script[variable_name] = value.
---@param variable_name string
---@param value any
function Script.SetVar(variable_name, value) end
---Runs function_name from within the target script.
---@param function_name string
---@param arguments? table|any Can be omitted, be a single argument or table of arguments.
---@return any|nil
function Script.Call(function_name, arguments) end

Encounter = Script
