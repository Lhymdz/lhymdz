-- load
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- main
local Window = OrionLib:MakeWindow({
    Name = "",
    IntroEnabled = false,
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "DarknessCFW"
})

--------------------------------------------------------------------------------------------------

-- loopers
_G.Mine = true
_G.CollectRuby = true
_G.TpOres = true
_G.KillPathos = true
_G.WhideSlash = true
_G.Flurry = true
_G.SlashingFlurry = true
_G.AutoCollect = true

--------------------------------------------------------------------------------------------------

function KillPathos()
    while _G.KillPathos == true do
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Yeti")
            }
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerAttack:FireServer(unpack(args))
        wait(0.3)
    end
end

function WhideSlash()
    while _G.WhideSlash == true do
            local args = {
                [1] = "WideSlash"
            }
            
            game:GetService("ReplicatedStorage").Systems.Skills.UseSkill:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 1
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 2
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 3
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 4
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 5
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 6
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            local args = {
                [1] = {
                    [1] = workspace.Mobs:FindFirstChild("Yeti")
                },
                [2] = "WideSlash",
                [3] = 7
            }
            
            game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
            wait(7)
    end
end

function Flurry()
    while _G.Flurry == true do
        local args = {
            [1] = "Flurry"
        }
        
        game:GetService("ReplicatedStorage").Systems.Skills.UseSkill:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "Flurry",
            [3] = 1
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "Flurry",
            [3] = 2
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "Flurry",
            [3] = 3
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "Flurry",
            [3] = 4
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        wait(7)
    end
end

function SlashingFlurry()
    while _G.SlashingFlurry == true do
        local args = {
            [1] = "KatanaWhirl"
        }
        
        game:GetService("ReplicatedStorage").Systems.Skills.UseSkill:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 1
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 2
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 3
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 4
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 5
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 6
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 7
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 8
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 9
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 10
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 11
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 12
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 13
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 14
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 15
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 16
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 17
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 18
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        local args = {
            [1] = {
                [1] = workspace.Mobs:FindFirstChild("Pathos The Fire Lord")
            },
            [2] = "KatanaWhirl",
            [3] = 19
        }
        
        game:GetService("ReplicatedStorage").Systems.Combat.PlayerSkillAttack:FireServer(unpack(args))
        wait(8)
    end
end


function AutoCollect()
    while _G.AutoCollect == true do
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.PureRuby
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.InfernalArmor
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.Ruby
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.JadeKatana
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.InfernalEdge
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.InfernalClaymore
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.DivineInferno
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.RoyalEdge
        }
        
        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        wait(3)
    end
end

function Mine()
    while _G.Mine == true do
        game:GetService("ReplicatedStorage").Systems.Mining.Mine:FireServer()
        wait(0.3)
    end
end

function CollectRuby()
    while _G.CollectRuby == true do
        local args = {
            [1] = game:GetService("ReplicatedStorage").Drops.Ruby
        }

        game:GetService("ReplicatedStorage").Systems.Drops.Pickup:FireServer(unpack(args))
        wait(0.4)
    end
end

function TpOres()
    while _G.TpOres == true do
        local targetPosition = Vector3.new(-817.3263549804688, 384.0478515625, -2286.007080078125) -- posiçao boss comum

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
        wait(3)
        local targetPosition = Vector3.new(-931.1636352539062, 383.21337890625, -2794.3349609375) -- kaido

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
        wait(3)
        local targetPosition = Vector3.new(-1402.854736328125, 511.7661437988281, -1245.6971435546875) -- posiçao boss comum

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
        wait(3)
        local targetPosition = Vector3.new(-164.4613494873047, -286.8214111328125, -2727.1826171875) -- kaido

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
        wait(3)
        local targetPosition = Vector3.new(-642.919921875, -285.30413818359375, -2514.05419921875) -- kaido

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
        wait(3)
        local targetPosition = Vector3.new(-1060.2364501953125, 408.5428466796875, -2554.979736328125) -- kaido

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
        wait(4)
    end
end

--------------------------------------------------------------------------------------------------

local Tab2 = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab4 = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--------------------------------------------------------------------------------------------------

Tab2:AddToggle({
    Name = "Hit Yeti",
    Default = false,
    Callback = function(Value)
        _G.KillPathos = Value
        KillPathos()
    end
})

Tab2:AddToggle({
    Name = "GreatSword Skill Yeti",
    Default = false,
    Callback = function(Value)
        _G.WhideSlash = Value
        WhideSlash()
    end
})

Tab2:AddToggle({
    Name = "Katana Skill Pathos",
    Default = false,
    Callback = function(Value)
        _G.Flurry = Value
        Flurry()
    end
})

Tab2:AddToggle({
    Name = "Katana Skill 2 Pathos",
    Default = false,
    Callback = function(Value)
        _G.SlashingFlurry = Value
        SlashingFlurry()
    end
})

Tab2:AddToggle({
    Name = "AutoCollect Pathos",
    Default = false,
    Callback = function(Value)
        _G.AutoCollect = Value
        AutoCollect()
    end
})


--Tab2:AddToggle({
  ---  Name = "Tp For Ores",
 --   Default = false,
 --   Callback = function(Value)
   --     _G.TpOres = Value
 --       TpOres()
--    end
--})

--Tab2:AddToggle({
   -- Name = "Mine Rubys",
 --   Default = false,
--    Callback = function(Value)
        --_G.Mine = Value
  --      Mine()
    --end
--})

--Tab2:AddToggle({
--Name = "Collect Ruby",
  ----  Default = false,
 --   Callback = function(Value)
    --    _G.CollectRuby = Value
    --    CollectRuby()
  --  end
--})

--------------------------------------------------------------------------------------------------

Tab4:AddButton({
    Name = "Speed 36",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Lh né vida",
            Content = "Speed 36 set",
            Image = "rbxassetid://4483345998",
            Time = 4
        })
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = 36
        else
            warn("Player character or humanoid not found.")
        end
    end
})

Tab4:AddButton({
    Name = "Speed 70",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Lh né vida",
            Content = "Speed 70 set",
            Image = "rbxassetid://4483345998",
            Time = 4
        })
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = 70
        else
            warn("Player character or humanoid not found.")
        end
    end
})

Tab4:AddButton({
    Name = "AntiAFK",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Lh né vida",
            Content = "AntiAFK",
            Image = "rbxassetid://4483345998",
            Time = 4
        })
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end
})
