---@meta

---Every time a bullet collides with a player, this function gets called from the script that created the projectile. The bullet object in this function can be modified if you feel like it.
---If you implement this function in your script, you have to manually define what should happen after bullet collision. This is what allows you to create orange, cyan and green projectiles, and much much more. If you don't implement this function in your script, it'll stick to the default of dealing 3 damage on hit.
---@param bullet Bullet
function OnHit(bullet) end
---Every time a Text Object automatically advances to the next line of text (that's by any means except Text.NextLine()), this function gets called in the script that created the text object. This function is the best place to manipulate the letters from Text.GetLetters.
---@param text Text text object in question.
---@param final boolean true only if the text object just advanced past its last line and deleted itself now that it's finished.
---Text objects have a one-frame delay by default - see CreateText. If the text object is using this delay, then this function will additionally be called on the first frame it starts to type (so one frame after it gets created). But if you disable the one-frame delay, this function will not be called for the first line of text.
function OnTextAdvance(text, final) end
