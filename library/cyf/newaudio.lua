---#if not CYF then DISABLE() end
---@meta cyfNewAudio
---#SETDOC 'cyf-api-functions-newaudio'

---#DES 'NewAudio'
---@class NewAudio: userdata
NewAudio = nil

---#DES 'NewAudio.CreateChannel'
---@param name string
function NewAudio.CreateChannel(name) end

---#DES 'NewAudio.DestroyChannel'
---@param name string
function NewAudio.DestroyChannel(name) end

---#DES 'NewAudio.Exists'
---@param name string
---@return boolean exists
---@nodiscard
function NewAudio.Exists(name) end

---#DES 'NewAudio.GetAudioName'
---@param name string
---@param withPrefix boolean
---@return string audioName
---@nodiscard
function NewAudio.GetAudioName(name, withPrefix) end

---#DES 'NewAudio.GetTotalTime'
---@param name string
---@return number totalTime
---@nodiscard
function NewAudio.GetTotalTime(name) end

---#DES 'NewAudio.GetPlayTime'
---@param name string
---@return number playTime
---@nodiscard
function NewAudio.GetPlayTime(name) end

---#DES 'NewAudio.GetPlayTime'
---@param name string
---@return number currentTime
---@nodiscard
function NewAudio.GetCurrentTime(name) end

---#DES 'NewAudio.PlayMusic'
---@param name string
---@param music string
---@param loop boolean
---@param volume number
function NewAudio.PlayMusic(name, music, loop, volume) end

---#DES 'NewAudio.PlaySound'
---@param name string
---@param music string
---@param loop boolean
---@param volume number
function NewAudio.PlaySound(name, music, loop, volume) end

---#DES 'NewAudio.PlayVoice'
---@param name string
---@param music string
---@param loop boolean
---@param volume number
function NewAudio.PlayVoice(name, music, loop, volume) end

---#DES 'NewAudio.SetPitch'
---@param name string
---@param value number
function NewAudio.SetPitch(name, value) end

---#DES 'NewAudio.GetPitch'
---@param name string
---@return number pitch
---@nodiscard
function NewAudio.GetPitch(name) end

---#DES 'NewAudio.SetVolume'
---@param name string
---@param value number
function NewAudio.SetVolume(name, value) end

---#DES 'NewAudio.GetVolume'
---@param name string
---@return boolean volume
---@nodiscard
function NewAudio.GetVolume(name) end

---#DES 'NewAudio.Play'
---@param name string
function NewAudio.Play(name) end

---#DES 'NewAudio.Stop'
---@param name string
function NewAudio.Stop(name) end

---#DES 'NewAudio.Pause'
---@param name string
function NewAudio.Pause(name) end

---#DES 'NewAudio.Unpause'
---@param name string
function NewAudio.Unpause(name) end

---#DES 'NewAudio.SetPlayTime'
---@param name string
---@param value number
function NewAudio.SetPlayTime(name, value) end

---#DES 'NewAudio.isStopped'
---@param name string
---@return boolean
---@nodiscard
function NewAudio.isStopped(name) end

---#DES 'NewAudio.StopAll'
function NewAudio.StopAll() end

---#DES 'NewAudio.PauseAll'
function NewAudio.PauseAll() end

---#DES 'NewAudio.UnpauseAll'
function NewAudio.UnpauseAll() end
