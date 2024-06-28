if game.PlaceId == 17682006827 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "", HidePremium = false,IntroEnabled = false, SaveConfig = true, ConfigFolder = "Swordburst3", ShowIcon = true})


_G.Click = true
_G.Rebirth = true
_G.Egg1 = true


function Click()
    while _G.Click == true do
        game:GetService("ReplicatedStorage").Click:FireServer()
        wait(0.1)
    end
end

function aRebirth()
    while _G.aRebirth == true do
        game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer()
        wait(5)
    end
end

-------------------------------------------------------------------------------------------------

function Egg1()
    while _G.Egg1 == true do
        local args = {
            [1] = "nil",
            [2] = "Open 1",
            [3] = workspace.Eggs.DragonBallNormal
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.Hatch:FireServer(unpack(args))
        wait(0.2)
    end
end

function Egg2()
    while _G.Egg2 == true do
        local args = {
            [1] = "nil",
            [2] = "Open 1",
            [3] = workspace.Eggs.NarutoNormal
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.Hatch:FireServer(unpack(args))
        wait(0.2)
    end
end

 -------------------------------------------------------------------------------------------------

    -- tabs 1
    local Tab1 = Window:MakeTab({

        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- tabs 2
    local Tab2 = Window:MakeTab({
        Name = "Eggs",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

     -- tabs 4
     local Tab4 = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -------------------------------------------------------------------------------------------------

        -- toggles abba1
        Tab1:AddToggle({
            Name = "AutoClick",
            Default = false,
            Callback = function(Value)
                _G.Click = Value
                Click()
            end
        })

          -- toggles abba1
          Tab1:AddToggle({
            Name = "Auto Rebirth",
            Default = false,
            Callback = function(Value)
                _G.aRebirth = Value
                aRebirth()
            end
        })

        Tab1:AddButton({
            Name = "Teleport Shiny Machine",
            Callback = function()
                OrionLib:MakeNotification({
                    Name = "Notification",
                    Content = "Tp Shiny",
                    Image = "rbxassetid://4483345998",
                    Time = 3
                })
                local targetPosition = Vector3.new(3337.253662109375, -76.3159408569336, -7764.58203125)

                local function teleportToCFrame(cframe)
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
    
                    -- Teleporta o personagem para a posição desejada
                    character:SetPrimaryPartCFrame(cframe)
                end
    
                -- Cria um novo CFrame com base na posição desejada
                local targetCFrame = CFrame.new(targetPosition)
    
                -- Teleporta o jogador para a posição especificada
                teleportToCFrame(targetCFrame)
            end
        })

    -------------------------------------------------------------------------------------------------

         -- toggles aba2
    Tab2:AddToggle({
        Name = "Dragon ball egg",
        Default = false,
        Callback = function(Value)
            _G.Egg1 = Value
            Egg1()
        end
    })

    Tab2:AddToggle({
        Name = "Naruto egg",
        Default = false,
        Callback = function(Value)
            _G.Egg2 = Value
            Egg2()
        end
    })


    -------------------------------------------------------------------------------------------------

    Tab4:AddButton({
        Name = "Speed 16",
        Callback = function()
            OrionLib:MakeNotification({
                Name = "Notification",
                Content = "Speed 16 set",
                Image = "rbxassetid://4483345998",
                Time = 4
            })
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character and character:FindFirstChild("Humanoid") then
                local humanoid = character:WaitForChild("Humanoid")
                humanoid.WalkSpeed = 16
            else
                warn("Player character or humanoid not found.")
            end
        end
    })

    Tab4:AddButton({
        Name = "Speed 25",
        Callback = function()
            OrionLib:MakeNotification({
                Name = "Notification",
                Content = "Speed 25 set",
                Image = "rbxassetid://4483345998",
                Time = 4
            })
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character and character:FindFirstChild("Humanoid") then
                local humanoid = character:WaitForChild("Humanoid")
                humanoid.WalkSpeed = 25
            else
                warn("Player character or humanoid not found.")

            end
        end
    })

    Tab4:AddButton({
        Name = "AntiAFK",
        Callback = function()
            OrionLib:MakeNotification({
                Name = "Notification",
                Content = "AntiAFK",
                Image = "rbxassetid://4483345998",
                Time = 4
            })
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        end
    })

end