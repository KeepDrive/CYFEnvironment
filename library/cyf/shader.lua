---#if not CYF then DISABLE() end
---@meta cyfShader
---#SETDOC 'cyf-shaders-object'

---#DES 'shader'
---@class shader: userdata
local shader

---#DES 'shader.Set'
---@param bundleName string
---@param shaderName string
function shader.Set(bundleName, shaderName) end

---#DES 'shader.Test'
---@param shaderName string
function shader.Test(shaderName) end

---#DES 'shader.Revert'
function shader.Revert() end

---#DES 'shader.isactive'
---@type boolean
shader.isactive = nil

---@alias wrapMode
---| "clamp" # ---#DESTAIL 'wrapMode.clamp'
---| "repeat" # ---#DESTAIL 'wrapMode.repeat'
---| "mirror" # ---#DESTAIL 'wrapMode.mirror'
---| "mirroronce" # ---#DESTAIL 'wrapMode.mirroronce'
---
---@alias wrapSidesMode
---| 0 # ---#DESTAIL 'wrapSideMode[0]'
---| 1 # ---#DESTAIL 'wrapSideMode[1]'
---| 2 # ---#DESTAIL 'wrapSideMode[2]'

---#DES 'shader.SetWrapMode'
---@param wrapMode wrapMode
---@param sides wrapSidesMode
function shader.SetWrapMode(wrapMode, sides) end

---#DES 'shader.HasProperty'
---@param name boolean
---@return boolean
---@nodiscard
function shader.HasProperty(name) end

---#DES 'shader.EnableKeyword'
---@param name string
function shader.EnableKeyword(name) end

---#DES 'shader.DisableKeyword'
---@param name string
function shader.DisableKeyword(name) end

---#DES 'shader.GetColor'
---@param name string
---@return number[]
---@nodiscard
function shader.GetColor(name) end

---#DES 'shader.SetColor'
---@param name string
---@param color number[]
function shader.SetColor(name, color) end

---#DES 'shader.GetFloat'
---@param name string
---@return number
---@nodiscard
function shader.GetFloat(name) end

---#DES 'shader.SetFloat'
---@param name string
---@param float number
function shader.SetFloat(name, float) end

---#DES 'shader.GetInt'
---@param name string
---@return integer
---@nodiscard
function shader.GetInt(name) end

---#DES 'shader.SetInt'
---@param name string
---@param int integer
function shader.SetInt(name, int) end

---#DES 'shader.SetTexture'
---@param name string
---@param texture string
function shader.SetTexture(name, texture) end

---#DES 'shader.GetVector'
---@param name string
---@return number[]
---@nodiscard
function shader.GetVector(name) end

---#DES 'shader.SetVector'
---@param name string
---@param vector number[]
function shader.SetVector(name, vector) end

---#DES 'shader.GetColorArray'
---@param name string
---@return number[][]
---@nodiscard
function shader.GetColorArray(name) end

---#DES 'shader.SetColorArray'
---@param name string
---@param colorArray number[][]
function shader.SetColorArray(name, colorArray) end

---#DES 'shader.GetFloatArray'
---@param name string
---@return number[]
---@nodiscard
function shader.GetFloatArray(name) end

---#DES 'shader.SetFloatArray'
---@param name string
---@param floatArray number[]
function shader.SetFloatArray(name, floatArray) end

---#DES 'shader.GetVectorArray'
---@param name string
---@return number[][]
---@nodiscard
function shader.GetVectorArray(name) end

---#DES 'shader.SetVectorArray'
---@param name string
---@param vectorArray number[][]
function shader.SetVectorArray(name, vectorArray) end

---#DES 'matrix'
---@class matrix: userdata
local matrix

---#DES 'shader.Matrix'
---@param row1 number[]
---@param row2 number[]
---@param row3 number[]
---@param row4 number[]
---@return matrix
---@nodiscard
function shader.Matrix(row1, row2, row3, row4) end

---#DES 'shader.GetMatrix'
---@param name string
---@return matrix
---@nodiscard
function shader.GetMatrix(name) end

---#DES 'shader.SetMatrix'
---@param name string
---@param matrixObj matrix
function shader.SetMatrix(name, matrixObj) end

---#DES 'shader.GetMatrixArray'
---@param name string
---@return matrix[]
---@nodiscard
function shader.GetMatrixArray(name) end

---#DES 'shader.SetMatrixArray'
---@param name string
---@param matrixArray matrix[]
function shader.SetMatrixArray(name, matrixArray) end
