---@meta
---@class dynamiclib
---TODO: Figure out return values
dynamic = {}

---@alias expression_object userdata

---Evaluates dynamically the expression contained in expr which can be a string or an expression object created with dynamic.prepare
---src: https://www.moonsharp.org/additions.html
---@param expr string | expression_object
---@return any
function dynamic.eval(expr) end

---Creates a prepared expression object which can be passed to dynamic.eval for a faster execution than passing the string itself.
---src: https://www.moonsharp.org/additions.html
---@param expr string
---@return expression_object
function dynamic.prepare(expr) end
