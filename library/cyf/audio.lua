---@meta

---@class Audio
---@field playtime number The current play position of the current music in seconds.
---@field totaltime number The total length of the current music in seconds.
---@field isPlaying boolean true if the music is playing, or false if the music is stopped or paused.
Audio = {}

---Play the currently loaded music. Done automatically at the beginning of a fight.
function Audio.Play() end
---Stops the music. If you want a battle not to have music, call this in EncounterStarting().
function Audio.Stop() end
---Pause the music.
function Audio.Pause() end
---Unpause the music if you previously paused it.
function Audio.Unpause() end
---Set music to given volume. value should be between 0.0 (muted) and 1.0 (full volume). This is 0.75 by default.
---@param value number
function Audio.Volume(value) end
---Set music pitch to given value. 1.0 is default, 2.0 is twice the regular speed. Negative values play the music backwards. value may be between -3.0 and 3.0.
---@param value number
function Audio.Pitch(value) end
---Load music from the Audio folder titled filename.ogg or filename.wav and play it immediately. If you don't want immediate playback, call Audio.Stop() after this. Don't include the file extension.
---@param filename string
function Audio.LoadFile(filename) end
---Play the sound from the Sounds folder titled filename.ogg or filename.wav. Don't include the file extension.
---@param filename string
---@param volume? number 0.65 by default
function Audio.PlaySound(filename, volume) end
---Stops all playing audio.
function Audio.StopAll() end
---Pauses all the audio sources.
function Audio.PauseAll() end
---Unpauses all the audio sources.
function Audio.UnpauseAll() end
---Adds a sound to the sound dictionary. Doing so allows you to change the name of the sounds played by the engine.
---Setting key to "RESETDICTIONARY" will reset the entire sound dictionary to its original state.
---@param key string
---@param value string
function Audio.SetSoundDictionary(key, value) end
---Returns the index of the sound in the sound dictionary. Returns the key itself if the key isn't in the dictionary. Same as Audio[key].
---@param key string
---@return string
---@nodiscard
function Audio.GetSoundDictionary(key) end
