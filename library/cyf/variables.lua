---@meta

---A value that indicates if you're on CYF. nil if not on CYF.
isCYF = true

---A value which is true whenever CYF's retrocompatibility mode is active and false when it isn't.
---@type boolean
isRetro = nil

---True if CYF's safe mode is enabled, false otherwise.
---@type boolean
safe = nil

---Returns true if the user is on Windows, false otherwise.
---@type boolean
widnows = nil

---Returns a different string based on the version of CYF you are using.
---Pre v0.6: Previous verson's number. (CYF v0.5.5 is "0.5.4")
---v0.6 - v0.6.1.2: always "1.0"
---Post v0.6.1.2: Current version's number. (CYF v0.6.2 is "0.6.2")
---Protip: Use string comparisons: if CYFversion < "0.6.2.2" then.
---@type string
CYFversion = nil

---Returns a different number based on the LTS version of CYF you are using.
---You can compare this number to your own values to make sure the right version of CYF is used to play your mod, if needed.
---You may also want to check if this value exists at all in case older versions of CYF are used to play your mod.
---@type number
LTSversion = nil
