---@meta
---TODO: Figure out some of these values
---src: https://www.moonsharp.org/additions.html
_MOONSHARP = {}
_MOONSHARP.version = nil
_MOONSHARP.luacompat = "5.2"
_MOONSHARP.platform = nil
_MOONSHARP.is_aot = false
_MOONSHARP.is_unity = true
_MOONSHARP.is_mono = false
_MOONSHARP.is_clr4 = false
_MOONSHARP.is_pcl = false
_MOONSHARP.banner = nil

---Works similarly to load, except env defaults to the current environment
---src: https://www.moonsharp.org/additions.html
---@param ld string|function
---@param source? string
---@param mode? loadmode
---@param env? table
---@return function?
---@return string? error_message
---@nodiscard
function loadsafe(ld, source, mode, env) end

---Works similarly to loadfile, except env defaults to the current environment
---src: https://www.moonsharp.org/additions.html
---@param filename? string
---@param mode? loadmode
---@param env? table
---@return function?
---@return string? error_message
---@nodiscard
function loadfilesafe(filename, mode, env) end

---Same as table.pack
---src: https://www.moonsharp.org/additions.html
---@param ... any
---@return table
---@nodiscard
function pack(...) end

---Same as table.unpack
---TODO: Figure out how to undeprecate this
---src: https://www.moonsharp.org/additions.html
---@generic T
---@param list T[]
---@param i?   integer
---@param j?   integer
---@return T   ...
---@nodiscard
function unpack(list, i, j) end
