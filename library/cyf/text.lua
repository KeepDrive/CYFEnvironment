---#if not CYF then DISABLE() end
---@meta cyfText
---#SETDOC 'cyf-cyf-text'

---@alias layer
---| '"Bottom"' # ---#DESTAIL 'layer.Bottom'
---| '"BelowUI"' # ---#DESTAIL 'layer.BelowUI'
---| '"BelowArena"' # ---#DESTAIL 'layer.BelowArena'
---| '"BelowPlayer"' # ---#DESTAIL 'layer.BelowPlayer'
---| '"BelowBullet"' # ---#DESTAIL 'layer.BelowBullet'
---| '"Top"' # ---#DESTAIL 'layer.Top'

---#DES 'Text'
---@class Text: userdata
local Text

---#DES 'CreateText'
---@param text string|string[]
---@param position number[]
---@param textMaxWidth number
---@param layer? layer|string
---@param bubbleHeight? integer
---@return Text text
---@nodiscard
function CreateText(text, position, textMaxWidth, layer, bubbleHeight) end

---#DES 'Text.Remove'
function Text.Remove() end

---#DES 'Text.DestroyText'
function Text.DestroyText() end

---#DES 'Text.isactive'
---@type boolean
Text.isactive = nil

---#DES 'Text.progressmode'
---@type "auto"|"manual"|"none"
Text.isactive = nil

---#DES 'Text.deleteWhenFinished'
---@type boolean
Text.deleteWhenFinished = nil

---#DES 'Text.x'
---@type number
Text.x = nil

---#DES 'Text.y'
---@type number
Text.y = nil

---#DES 'Text.absx'
---@type number
Text.absx = nil

---#DES 'Text.absy'
---@type number
Text.absy = nil

---#DES 'Text.textMaxWidth'
---@type number
Text.textMaxWidth = nil

---#DES 'Text.bubbleHeight'
---@type number
Text.bubbleHeight = nil

---#DES 'Text.layer'
---@type layer|string
Text.layer = nil

---#DES 'Text.color'
---@type number[]
Text.color = nil

---#DES 'Text.color32'
---@type number[]
Text.color32 = nil

---#DES 'Text.ResetColor'
---@param resetAlpha boolean
function Text.ResetColor(resetAlpha) end

---#DES 'Text.alpha'
---@type number
Text.alpha = nil

---#DES 'Text.alpha32'
---@type number
Text.alpha32 = nil

---#DES 'Text.ResetAlpha'
function Text.ResetAlpha() end

---#DES 'Text.currentReferenceCharacter'
---@type integer
Text.currentReferenceCharacter = nil

---#DES 'Text.currentLine'
---@type integer
Text.currentLine = nil

---#DES 'Text.GetLetters'
---@return sprite[] letters
---@nodiscard
function Text.GetLetters() end

---#DES 'Text.SkipLine'
function Text.SkipLine() end

---#DES 'Text.lineComplete'
---@type boolean
Text.lineComplete = nil

---#DES 'Text.allLinesComplete'
---@type boolean
Text.allLinesComplete = nil

---#DES 'Text.lineCount'
---@return number lineCount
---@nodiscard
function Text.lineCount() end

---#DES 'Text.NextLine'
function Text.NextLine() end

---#DES 'Text.SetWaitTime'
---@param time number
function Text.SetWaitTime(time) end

---#DES 'Text.SetAutoWaitTimeBetweenTexts'
---@param time number
function Text.SetAutoWaitTimeBetweenTexts(time) end

---#DES 'Text.SetParent'
---@param parent sprite
function Text.SetParent(parent) end

---#DES 'Text.SetAnchor'
---@param x number
---@param y number
function Text.SetAnchor(x, y) end

---#DES 'Text.xscale'
---@type number
Text.xscale = nil

---#DES 'Text.yscale'
---@type number
Text.yscale = nil

---#DES 'Text.Scale'
---@param xscale number
---@param yscale number
function Text.Scale(xscale, yscale) end

---#DES 'Text.MoveBelow'
---@param otherTextObject Text
function Text.MoveBelow(otherTextObject) end

---#DES 'Text.MoveAbove'
---@param otherTextObject Text
function Text.MoveAbove(otherTextObject) end

---#DES 'Text.SendToTop'
function Text.SendToTop() end

---#DES 'Text.SendToBottom'
function Text.SendToBottom() end

---#DES 'Text.AddText'
---@param text string|string[]
function Text.AddText(text) end

---#DES 'Text.SetText'
---@param text string|string[]
function Text.SetText(text) end

---#DES 'Text.SetPause'
---@param pause boolean
function Text.SetPause(pause) end

---#DES 'Text.isPaused'
function Text.isPaused() end

---#DES 'Text.SetVoice'
---@param voiceName string
function Text.SetVoice(voiceName) end

---#DES 'Text.SetFont'
---@param fontName string
function Text.SetFont(fontName) end

---#DES 'Text.SetEffect'
---@param effect string
---@param intensity? number
function Text.SetEffect(effect, intensity) end

---#DES 'Text.ShowBubble'
---@param side? "left"|"right"|"up"|"down"|"none"
---@param position? number|string
function Text.ShowBubble(side, position) end

---#DES 'Text.SetTail'
---@param side "left"|"right"|"up"|"down"|"none"
---@param position? number|string
function Text.SetTail(side, position) end

---#DES 'Text.SetTail'
---@param side "left"|"right"|"up"|"down"|"none"
---@param position? number|string
function Text.SetSpeechThingPositionAndSide(side, position) end

---#DES 'Text.HideBubble'
function Text.HideBubble() end

---#DES 'Text.MoveTo'
---@param x number
---@param y number
function Text.MoveTo(x, y) end

---#DES 'Text.MoveToAbs'
---@param x number
---@param y number
function Text.MoveToAbs(x, y) end

---#DES 'Text.GetTextWidth'
---@return number width
---@nodiscard
function Text.GetTextWidth() end

---#DES 'Text.GetTextHeight'
---@return number height
---@nodiscard
function Text.GetTextHeight() end

---#DES 'Text.SetVar'
---@param yourVariableName string
---@param value any
function Text.SetVar(yourVariableName, value) end

---#DES 'Text.GetVar'
---@param yourVariableName string
---@return any
---@nodiscard
function Text.GetVar(yourVariableName) end
