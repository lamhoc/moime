-- Speed Script for Roblox

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local b = w:CreateFolder("Speed")
b:Box("Speed","number",function(val) S = val end)

-- Set the desired speed
local speedMultiplier = 2 -- Change this value to increase or decrease speed
humanoid.WalkSpeed = humanoid.WalkSpeed * speedMultiplier

-- Optional: Reset speed when the player respawns
player.CharacterAdded:Connect(function(newCharacter)
    humanoid = newCharacter:WaitForChild("Humanoid")
    humanoid.WalkSpeed = humanoid.WalkSpeed * speedMultiplier
end)