---#if not CYF then DISABLE() end
---@meta cyfInput
---#SETDOC 'cyf-api-functions-input'

---@alias pressedState
---| 0 # ---#DESTAIL 'pressedState[0]'
---| 1 # ---#DESTAIL 'pressedState[1]'
---| 2 # ---#DESTAIL 'pressedState[2]'
---| -1 # ---#DESTAIL 'pressedState[-1]'

---@alias keyName
---#DES 'keyName.alphabet'
---#DES 'keyName.numbers'
---#DES 'keyName.functionKeys'
---#DES 'keyName.keyPad'
---#DES 'keyName.arrows'
---#DES 'keyName.special'
---#DES 'keyName.misc'
---#DES 'keyName.mouse'
--[=[
keyName.alphabet = [[
| '"A"'
| '"B"'
| '"C"'
| '"D"'
| '"E"'
| '"F"'
| '"G"'
| '"H"'
| '"I"'
| '"J"'
| '"K"'
| '"L"'
| '"M"'
| '"N"'
| '"O"'
| '"P"'
| '"Q"'
| '"R"'
| '"S"'
| '"T"'
| '"U"'
| '"V"'
| '"W"'
| '"X"'
| '"Y"'
| '"Z"'
]]
keyName.numbers = [[
| '"Alpha1"'
| '"Alpha2"'
| '"Alpha3"'
| '"Alpha4"'
| '"Alpha5"'
| '"Alpha6"'
| '"Alpha7"'
| '"Alpha8"'
| '"Alpha9"'
| '"Alpha0"'
]]
keyName.functionKeys = [[
| '"F1"'
| '"F2"'
| '"F3"'
| '"F4"'
| '"F5"'
| '"F6"'
| '"F7"'
| '"F8"'
| '"F9"'
| '"F10"'
| '"F11"'
| '"F12"'
| '"F13"'
| '"F14"'
| '"F15"'
]]
keyName.keyPad = [[
| '"Keypad1"'
| '"Keypad2"'
| '"Keypad3"'
| '"Keypad4"'
| '"Keypad5"'
| '"Keypad6"'
| '"Keypad7"'
| '"Keypad8"'
| '"Keypad9"'
| '"Keypad0"'
| '"KeypadPeriod"'
| '"KeypadDivide"'
| '"KeypadMultiply"'
| '"KeypadMinus"'
| '"KeypadPlus"'
| '"KeypadEnter"'
| '"KeypadEquals"'
]]
keyName.arrows = [[
| '"UpArrow"'
| '"DownArrow"'
| '"RightArrow"'
| '"LeftArrow"'
]]
keyName.special = [[
| '"Backspace"'
| '"Tab"'
| '"Return"'
| '"Pause"'
| '"Space"'
| '"Escape"'
| '"Exclaim"'
| '"At"'
| '"Hash"'
| '"Dollar"'
| '"Caret"'
| '"Ampersand"'
| '"Asterisk"'
| '"LeftParen"'
| '"RightParen"'
| '"Minus"'
| '"Plus"'
| '"Underscore"'
| '"Equals"'
| '"Colon"'
| '"Semicolon"'
| '"DoubleQuote"'
| '"Quote"'
| '"Comma"'
| '"Period"'
| '"Backslash"'
| '"Slash"'
| '"Question"'
| '"Less"'
| '"Greater"'
| '"LeftBracket"'
| '"RightBracket"'
| '"BackQuote"'
]]
keyName.misc = [[
| '"Insert"'
| '"Home"'
| '"Delete"'
| '"End"'
| '"PageUp"'
| '"PageDown"'
| '"Numlock"'
| '"CapsLock"'
| '"ScrollLock"'
| '"RightShift"'
| '"LeftShift"'
| '"RightControl"'
| '"LeftControl"'
| '"RightAlt"'
| '"LeftAlt"'
| '"RightCommand"'
| '"LeftCommand"'
| '"RightApple"'
| '"LeftApple"'
| '"RightWindows"'
| '"LeftWindows"'
| '"AltGr"'
| '"SysReq"'
| '"Break"'
| '"Menu"'
]]
keyName.mouse = [[
| '"Mouse0"'
| '"Mouse1"'
| '"Mouse2"'
| '"Mouse3"'
| '"Mouse4"'
| '"Mouse5"'
| '"Mouse6"'
]]
]=]--

---#DES 'Input'
---@class Input: userdata
Input = nil

---#DES 'Input.Confirm'
---@type pressedState
Input.Confirm = nil

---#DES 'Input.Cancel'
---@type pressedState
Input.Cancel = nil

---#DES 'Input.Menu'
---@type pressedState
Input.Menu = nil

---#DES 'Input.Up'
---@type pressedState
Input.Up = nil

---#DES 'Input.Down'
---@type pressedState
Input.Down = nil

---#DES 'Input.Left'
---@type pressedState
Input.Left = nil

---#DES 'Input.Right'
---@type pressedState
Input.Right = nil

---#DES 'Input.Right'
---@type pressedState
Input.Right = nil

---#DES 'Input.GetKey'
---@param keyname keyName
---@return pressedState state
---@nodiscard
function Input.GetKey(keyname) end

---#DES 'Input.MousePosX'
---@type number
Input.MousePosX = nil

---#DES 'Input.MousePosY'
---@type number
Input.MousePosY = nil

---#DES 'Input.IsMouseInWindow'
---@type boolean
Input.IsMouseInWindow = nil

---#DES 'Input.MouseScroll'
---@type number
Input.MouseScroll = nil
