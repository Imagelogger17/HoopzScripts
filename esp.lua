-- Simple Hoopz ESP starter script
print("ESP loaded!")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local espFolder = Instance.new("Folder")
espFolder.Name = "HoopzESP"
espFolder.Parent = game:GetService("CoreGui")

local function createEsp(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "NameEsp"
        billboard.Adornee = player.Character.Head
        billboard.Size = UDim2.new(0, 100, 0, 50)
        billboard.AlwaysOnTop = true
        billboard.Parent = espFolder

        local label = Instance.new("TextLabel", billboard)
        label.Text = player.Name
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(1, 0, 1, 0)
        label.TextColor3 = Color3.new(1, 0, 0)
        label.TextStrokeTransparency = 0
        label.Font = Enum.Font.GothamBold
        label.TextSize = 14
    end
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        wait(1)
        createEsp(player)
    end)
end

for _, player in pairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)
