local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Dasora Arthur Gays",
    TabWidth = 160, Size = UDim2.fromOffset(580, 460), Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Mounts = Window:AddTab({ Title = "Mounts", Icon = "" }),
    Speed = Window:AddTab({ Title = "Speed", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

    Tabs.Main:AddButton({
        Title = "Solo leveling",
        Callback = function()
-- Solo Leveling
local targetPosition = Vector3.new(577.4893798828125, 34.19390869140625, 256.23919677734375)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)

        end
    })

    Tabs.Main:AddButton({
        Title = "Naruto",
        Callback = function()
            local targetPosition = Vector3.new(-3364.57177734375, 36.236228942871094, 2245.145751953125)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })

    Tabs.Main:AddButton({
        Title = "One Piece",
        Callback = function()
          -- One piece
local targetPosition = Vector3.new(-2887.18505859375, 92.73556518554688, -2063.69580078125)

local function teleportToCFrame(cframe)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    character:SetPrimaryPartCFrame(cframe)
end

local targetCFrame = CFrame.new(targetPosition)

teleportToCFrame(targetCFrame)

        end
    })
-------------------------------------------------------------------------------------------------------------------
    Tabs.Mounts:AddButton({
        Title = "Ilha 1",
        Callback = function()
-- Ilha 1
local targetPosition = Vector3.new(-5410.353515625, 157.34368896484375, -5461.8056640625)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 2",
        Callback = function()
            local targetPosition = Vector3.new(-5904.60400390625, 170.0807002929668, 327.17608642578125)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 3",
        Callback = function()
            local targetPosition = Vector3.new(-677.2373046875, 191.221862792296875, -3611.33154296875)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 4",
        Callback = function()
            local targetPosition = Vector3.new(3302.84716796875, 194.38848876953125, 54.81018829345703)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 5",
        Callback = function()
            local targetPosition = Vector3.new(428.27166748046875, 241.1793670654297, 3357.661865234375)

            local function teleportToCFrame(cframe)
                local player = game.Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()

                character:SetPrimaryPartCFrame(cframe)
            end

            local targetCFrame = CFrame.new(targetPosition)

            teleportToCFrame(targetCFrame)
        end
    })
----------------------------------------------------------------------------------------------------------
    Tabs.Speed:AddButton({
        Title = "Speed 500",
        Callback = function()
            while task.wait() do
                local player = game.Players.LocalPlayer
                local character = player.Character
                
                if character and character:FindFirstChild("Humanoid") then
                character.Humanoid.WalkSpeed = 500
                else
                warn("Player character or humanoid not found.")
                wait(0.1)
                end
                end

        end
    })

    Tabs.Speed:AddButton({
        Title = "Speed 300",
        Callback = function()
            while task.wait() do
                local player = game.Players.LocalPlayer
                local character = player.Character
                
                if character and character:FindFirstChild("Humanoid") then
                character.Humanoid.WalkSpeed = 300
                else
                warn("Player character or humanoid not found.")
                wait(0.1)
                end
                end

        end
    })

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    
    SaveManager:IgnoreThemeSettings()
    
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("FluentScriptHub")
    SaveManager:SetFolder("FluentScriptHub/specific-game")
    
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
    
    Window:SelectTab(1)

    SaveManager:LoadAutoloadConfig()
end
