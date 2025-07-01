---#if not CYF then DISABLE() end
---@meta cyfDiscord
---#SETDOC 'cyf-api-functions-discord'

---#DES 'Discord'
---@class Discord: userdata
Discord = nil

---#DES 'Discord.SetName'
---@param name string
function Discord.SetName(name) end

---#DES 'Discord.ClearName'
---@param reset? boolean
function Discord.ClearName(reset) end

---#DES 'Discord.SetDetails'
---@param details string
function Discord.SetDetails(details) end

---#DES 'Discord.ClearDetails'
---@param reset? boolean
function Discord.ClearDetails(reset) end

---#DES 'Discord.SetTime'
---@param time number
---@param countdown? boolean
function Discord.SetTime(time, countdown) end

---#DES 'Discord.ClearTime'
---@param reset? boolean
function Discord.ClearTime(reset) end
