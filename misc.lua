-- Simple Hoopz Misc script starter
print("Misc script loaded!")

-- Example: Auto jump every 5 seconds

local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

while wait(5) do
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.Jump = true
        print("Jumped!")
    end
end
