---#if not CYF then DISABLE() end
---@meta cyfAudio
---#SETDOC 'cyf-api-functions-audio'

---#DES 'Audio'
---@class Audio: userdata
Audio = nil

---#DES 'Audio.playtime'
---@type number
Audio.playtime = nil

---#DES 'Audio.totaltime'
---@type number
Audio.totaltime = nil

---#DES 'Audio.Play'
function Audio.Play() end

---#DES 'Audio.Stop'
function Audio.Stop() end

---#DES 'Audio.Pause'
function Audio.Pause() end

---#DES 'Audio.Unpause'
function Audio.Unpause() end

---#DES 'Audio.Volume'
---@param value number
function Audio.Volume(value) end

---#DES 'Audio.Pitch'
---@param value number
function Audio.Pitch(value) end

---#DES 'Audio.LoadFile'
---@param filename string
function Audio.LoadFile(filename) end

---#DES 'Audio.PlaySound'
---@param filename string
---@param volume? number
function Audio.PlaySound(filename, volume) end

---#DES 'Audio.isPlaying'
---@type boolean
Audio.isPlaying = nil

---#DES 'Audio.StopAll'
function Audio.StopAll() end

---#DES 'Audio.PauseAll'
function Audio.PauseAll() end

---#DES 'Audio.UnpauseAll'
function Audio.UnpauseAll() end

---#DES 'Audio.SetSoundDictionary'
---@param key string|"RESETDICTIONARY"
---@param value string
function Audio.SetSoundDictionary(key, value) end

---#DES 'Audio.GetSoundDictionary'
---@param key string
---@return integer|string indexOrKey
---@nodiscard
function Audio.GetSoundDictionary(key) end
