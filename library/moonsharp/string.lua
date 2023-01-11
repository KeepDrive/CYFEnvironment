---@meta

---Works similarly to string.byte()
---Returns the unicode code-points of the characters s[i], s[i+1], ..., s[j].
---src: https://www.moonsharp.org/additions.html
---@param s string
---@param i? integer
---@param j? integer
---@return integer ...
---@nodiscard
function string.unicode(s, i, j) end

---Retruns true if str2 is contained inside str1
---src: https://www.moonsharp.org/additions.html
---@param str1 string
---@param str2 string
---@return boolean
---@nodiscard
function string.contains(str1, str2) end

---Returns true if str2 is contained at the very start of str1
---src: https://www.moonsharp.org/additions.html
---@param str1 string
---@param str2 string
---@return boolean
---@nodiscard
function string.startsWith(str1, str2) end

---Returns true if str2 is contained at the very end of str1
---src: https://www.moonsharp.org/additions.html
---@param str1 string
---@param str2 string
---@return boolean
---@nodiscard
function string.endsWith(str1, str2) end
