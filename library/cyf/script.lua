---#if not CYF then DISABLE() end
---@meta cyfScript
---#SETDOC 'cyf-api-functions-script'

---@class script: userdata
local script

---#DES 'script.GetVar'
---@param variable_name string
---@return any
---@nodiscard
function script.GetVar(variable_name) end

---#DES 'script.SetVar'
---@param variable_name string
---@param value any
function script.SetVar(variable_name, value) end

---#DES 'script.Call'
---@param function_name string
function script.Call(function_name) end

---#DES 'script.CallArg'
---@param function_name string
---@param argument any
function script.Call(function_name, argument) end

---#DES 'script.CallArgs'
---@param function_name string
---@param arguments any[]
function script.Call(function_name, arguments) end

---#DES 'script.scriptname'
---@type string
script.scriptname = nil

---#DES 'Encounter'
---@script MW
---@type script
Encounter = nil
