-- Simple Hoopz aimbot starter script
print("Aimbot loaded!")

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Example: Aim at nearest player’s torso every frame (very basic)

RunService.RenderStepped:Connect(function()
    local closestDist = math.huge
    local closestTarget = nil
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if dist < closestDist then
                closestDist = dist
                closestTarget = player
            end
        end
    end

    if closestTarget and closestTarget.Character and closestTarget.Character:FindFirstChild("HumanoidRootPart") then
        -- Aim your mouse to target (replace with your aiming method)
        -- This is just a print placeholder
        print("Aiming at " .. closestTarget.Name)
    end
end)
