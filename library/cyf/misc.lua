---#if not CYF then DISABLE() end
---@meta cyfMisc
---#SETDOC 'cyf-api-function-misc'

---#DES 'Misc'
---@class Misc: userdata
Misc = nil

---#DES 'Misc.MachineName'
---@type string
Misc.MachineName = nil

---#DES 'Misc.OSType'
---@type "Windows"|"Mac"|"Linux"
Misc.OSType = nil

---#DES 'Misc.ScreenShader'
---@type shader
Misc.ScreenShader = nil

---#DES 'Misc.ShakeScreen'
---@param durationInFrames number
---@param intensity? number
---@param isIntensityDecreasing? boolean
function Misc.ShakeScreen(durationInFrames, intensity, isIntensityDecreasing) end

---#DES 'Misc.StopShake'
function Misc.StopShake() end

---#DES 'Misc.MoveCamera'
---@param x number
---@param y number
function Misc.MoveCamera(x, y) end

---#DES 'Misc.MoveCameraTo'
---@param x number
---@param y number
function Misc.MoveCameraTo(x, y) end

---#DES 'Misc.ResetCamera'
function Misc.ResetCamera() end

---#DES 'Misc.cameraX'
---@type number
Misc.cameraX = nil

---#DES 'Misc.cameraY'
---@type number
Misc.cameraY = nil

---#DES 'Misc.FullScreen'
---@type boolean
Misc.FullScreen = nil

---#DES 'Misc.ResizeWindow'
---@param width number
---@param height number
---@return boolean success
function Misc.ResizeWindow(width, height) end

---#DES 'Misc.WindowWidth'
---@type number
Misc.WindowWidth = nil

---#DES 'Misc.WindowHeight'
---@type number
Misc.WindowHeight = nil

---#DES 'Misc.ScreenWidth'
---@type number
Misc.ScreenWidth = nil

---#DES 'Misc.ScreenHeight'
---@type number
Misc.ScreenHeight = nil

---#DES 'Misc.MonitorWidth'
---@type number
Misc.MonitorWidth = nil

---#DES 'Misc.MonitorHeight'
---@type number
Misc.MonitorHeight = nil

---#DES 'Misc.SetWideFullscreen'
---@param wide boolean
function Misc.SetWideFullscreen(wide) end

---#DES 'Misc.DestroyWindow'
function Misc.DestroyWindow() end

---#DES 'Misc.debuggerX'
---@type number
Misc.debuggerX = nil

---#DES 'Misc.debuggerY'
---@type number
Misc.debuggerY = nil

---#DES 'Misc.debuggerAbsX'
---@type number
Misc.debuggerAbsX = nil

---#DES 'Misc.debuggerAbsY'
---@type number
Misc.debuggerAbsY = nil

---#DES 'Misc.MoveDebugger'
---@param x number
---@param y number
function Misc.MoveDebugger(x, y) end

---#DES 'Misc.MoveDebuggerTo'
---@param x number
---@param y number
function Misc.MoveDebuggerTo(x, y) end

---#DES 'Misc.MoveDebuggerToAbs'
---@param x number
---@param y number
function Misc.MoveDebuggerToAbs(x, y) end

---#DES 'Misc.isDebuggerAttachedToCamera'
Misc.isDebuggerAttachedToCamera = true

---#DES 'Misc.WindowName'
---@type string
Misc.WindowName = nil

---#DES 'Misc.WindowX'
---@type number
Misc.WindowX = nil

---#DES 'Misc.WindowY'
---@type number
Misc.WindowY = nil

---#DES 'Misc.MoveWindow'
---@param x number
---@param y number
function Misc.MoveWindow(x, y) end

---#DES 'Misc.MoveWindowTo'
---@param x number
---@param y number
function Misc.MoveWindowTo(x, y) end

---#DES 'Misc.FileExists'
---@param path string
---@return boolean exists
---@nodiscard
function Misc.FileExists(path) end

---#DES 'Misc.ListDir'
---@param path string
---@param getFolders? boolean
---@return string[] items
---@nodiscard
function Misc.ListDir(path, getFolders) end

---#DES 'Misc.DirExists'
---@param path string
---@return boolean exists
---@nodiscard
function Misc.DirExists(path) end

---#DES 'Misc.CreateDir'
---@param path string
---@return boolean success
---@nodiscard
function Misc.CreateDir(path) end

---#DES 'Misc.MoveDir'
---@param path string
---@param newPath string
---@return boolean success
---@nodiscard
function Misc.MoveDir(path, newPath) end

---#DES 'Misc.RemoveDir'
---@param path string
---@param force? boolean
---@return boolean success
---@nodiscard
function Misc.RemoveDir(path, force) end

---@alias openFileMode
---| "w" # ---#DESTAIL 'openFileMode.w'
---| "r" # ---#DESTAIL 'openFileMode.r'
---| "rw" # ---#DESTAIL 'openFileMode.rw'
---| "wr" # ---#DESTAIL 'openFileMode.rw'

---#DES 'Misc.OpenFile'
---@param path string
---@param mode? openFileMode
---@return file file
---@nodiscard
function Misc.OpenFile(path, mode) end

---@class file: userdata
local file

---#DES 'File.openMode'
---@type openFileMode
file.openMode = nil

---#DES 'File.lineCount'
---@type number
file.lineCount = nil

---#DES 'File.filePath'
---@type string
file.filePath = nil

---#DES 'file.Move'
---@param new_path string
function file.Move(new_path) end

---#DES 'file.Copy'
---@param new_path string
---@param overwrite? boolean
function file.Copy(new_path, overwrite) end

---#DES 'file.ReadLine'
---@param line integer
---@return string
---@nodiscard
function file.ReadLine(line) end

---#DES 'file.ReadLines'
---@return string[]
---@nodiscard
function file.ReadLines() end

---#DES 'file.ReadBytes'
---@return integer[]
---@nodiscard
function file.ReadBytes() end

---#DES 'file.Write'
---@param data string
---@param append? boolean
function file.Write(data, append) end

---#DES 'file.ReplaceLine'
---@param line number
---@param data string
function file.ReplaceLine(line, data) end

---#DES 'file.DeleteLine'
---@param line number
function file.DeleteLine(line) end

---#DES 'file.WriteBytes'
---@param data integer[]
function file.WriteBytes(data) end

---#DES 'file.Delete'
function file.Delete() end
