---@meta

---@class NewAudio
NewAudio = {}

---Creates an audio channel.
---Volume is set to 0.75 by default.
---@param name string Audio channel name.
function NewAudio.CreateChannel(name) end
---Destroys an audio channel.
---@param name string Audio channel name.
function NewAudio.DestroyChannel(name) end
---Checks if audio channel exists.
---@param name string Audio channel name.
---@return boolean
---@nodiscard
function NewAudio.Exists(name) end
---Gets the name and type of the audio clip currently playing in the channel as a string.
---If no audio is playing in a channel, this function returns "empty".
---@param name string Audio channel name.
---@param withPrefix? boolean true by default. When true the returned string will begin with "music:", "sound:" or "voice:", depending on the audio being played.
---@return string
---@nodiscard
function NewAudio.GetAudioName(name, withPrefix) end
---Gets the length of time in seconds that an audio channel most recently played audio lasts for.
---@param name string Audio channel name.
---@return number
---@nodiscard
function NewAudio.GetTotalTime(name) end
---Get the current play position of the current audio of the audio channel in seconds.
---Same as NewAudio.GetCurrentTime(name).
---@param name string Audio channel name.
---@return number
---@nodiscard
function NewAudio.GetPlayTime(name) end
---Get the current play position of the current audio of the audio channel in seconds.
---Same as NewAudio.GetTotalTime(name).
---@param name string Audio channel name.
---@return number
---@nodiscard
function NewAudio.GetCurrentTime(name) end
---Plays music on the audio channel.
---@param name string Audio channel name.
---@param music? string Music file name from the Audio folder, .ogg or .wav. Don't include file extension.
---@param loop? boolean false by default. If true the music will loop.
---@param volume? number 1 by default. Volume of the music.
function NewAudio.PlayMusic(name, music, loop, volume) end
---Plays a sound on the audio channel.
---@param name string Audio channel name.
---@param sound? string Sound file name from the Sounds folder, .ogg or .wav. Don't include file extension.
---@param loop? boolean false by default. If true the sound will loop.
---@param volume? number 0.65 by default. Volume of the sound.
function NewAudio.PlaySound(name, sound, loop, volume) end
---Plays a voice on the audio channel.
---@param name string Audio channel name.
---@param voice? string Voice file name from the Sounds/Voices folder, .ogg or .wav. Don't include file extension.
---@param loop? boolean false by default. If true the voice will loop.
---@param volume? number 0.65 by default. Volume of the voice.
function NewAudio.PlayVoice(name, voice, loop, volume) end
---Sets the pitch (and speed) of the audio channel.
---@param name string Audio channel name.
---@param value number Pitch/speed. 1.0 initially.
function NewAudio.SetPitch(name, value) end
---Gets the pitch of the audio channel.
---@param name string Audio channel name.
---@return number
---@nodiscard
function NewAudio.GetPitch(name) end
---Sets the volume of the audio channel.
---@param name string Audio channel name.
---@param value number Volume. 0.75 initially.
function NewAudio.SetVolume(name, value) end
---Gets the volume of the audio channel.
---@param name string Audio channel name.
---@return number
---@nodiscard
function NewAudio.GetVolume(name) end
---Plays the last sound played in the audio channel.
---@param name string Audio channel name.
function NewAudio.Play(name) end
---Stops the audio in the channel.
---@param name string Audio channel name.
function NewAudio.Stop(name) end
---Pauses the audio in the channel.
---@param name string Audio channel name.
function NewAudio.Pause(name) end
---Unpauses the audio in the channel.
---@param name string Audio channel name.
function NewAudio.Unpause(name) end
---Sets the track position of the audio channel's audio.
---@param name string Audio channel name.
---@param value number Track position, in seconds.
function NewAudio.SetPlayTime(name, value) end
---Checks if the audio channel is stopped (or paused).
---@param name string Audio channel name.
---@return boolean
---@nodiscard
function NewAudio.isStopped(name) end
---Stops all audio channels' audio.
function NewAudio.StopAll() end
---Pauses all the audio channels' audio.
function NewAudio.PauseAll() end
---Unpauses all the audio channels' audio.
function NewAudio.UnpauseAll() end
