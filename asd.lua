local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Window = Fluent:CreateWindow({
    Title = "Lhy / Bryan - Hub",
    TabWidth = 160,
    Size = UDim2.fromOffset(430, 400),
    Theme = "Darker"
})

local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = ""
    }),
    Mounts = Window:AddTab({
        Title = "Mounts",
        Icon = ""
    }),
    Speed = Window:AddTab({
        Title = "Speed",
        Icon = ""
    }),
    TPTab = Window:AddTab({
        Title = "Auto Farm",
        Icon = ""
    }),
    TPTab1 = Window:AddTab({
        Title = "Teleport Island",
        Icon = ""
    }),
    AutoDungeon = Window:AddTab({
        Title = "Auto Dungeon",
        Icon = ""
    }),
    Settings = Window:AddTab({
        Title = "Settings",
        Icon = "settings"
    })
}

local Options = Fluent.Options
local Prioriza_boolaa = false
local Prioriza_boolaa2 = false
local TWEEN_SPEED = 300
local EnemyCapture = false;
local AutoAttackbool = false;

local function getNPCC(name_bob)
    local savaclient = nil
    local closestDistance = math.huge
    local serverFolders = {game:GetService("Workspace").__Main.__Enemies.Server["1"],
                           game:GetService("Workspace").__Main.__Enemies.Server["2"],
                           game:GetService("Workspace").__Main.__Enemies.Server["3"],
                           game:GetService("Workspace").__Main.__Enemies.Server["4"],
                           game:GetService("Workspace").__Main.__Enemies.Server["5"],
                           game:GetService("Workspace").__Main.__Enemies.Server["6"],
                           game:GetService("Workspace").__Main.__Enemies.Server["7"]}

    local serverFolder = nil
    for _, folder in ipairs(serverFolders) do
        if #folder:GetChildren() > 0 then
            serverFolder = folder
            break
        end
    end

    if serverFolder == nil then
        return nil
    end

    for _, v in pairs(game:GetService("Workspace").__Main.__Enemies.Client:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
            local p = serverFolder:FindFirstChild(v.Name, true)
            if p and p:GetAttribute("HP") > 0 then
                local npc = v
                local player = game.Players.LocalPlayer
                local npc_origin = npc.Torso.Position
                local me_origin = player.Character.HumanoidRootPart.Position
                local origin = (npc_origin - me_origin).Magnitude

                if Prioriza_boolaa then
                    if p:GetAttribute("Scale") > 1 then
                        if origin < closestDistance then
                            savaclient = v
                            closestDistance = origin
                        end
                    end
                else
                    if v.HealthBar.Main.Title.Text == name_bob then
                        if p:GetAttribute("Scale") > 1 and Prioriza_boolaa2 then
                            return v
                        else
                            if origin < closestDistance then
                                savaclient = v
                                closestDistance = origin
                            end
                        end
                    end
                end
            end
        end
    end
    return savaclient
end

local function setNoclip(enabled)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not enabled
            end
        end
    end
end

local function getNearestEnemy()
    local savaclient = nil
    local closestDistance = math.huge

    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return nil
    end

    for _, v in pairs(game:GetService("Workspace").__Main.__Enemies.Server:GetDescendants()) do
        local distance = (character.HumanoidRootPart.Position - v.Position).Magnitude
        if not v:GetAttribute("Dead") then
            if distance < closestDistance then
                closestDistance = distance
                savaclient = v
            end
        end
    end
    return savaclient
end

local processedEnemies = {}
local mobname = {}
local idk = {}
local oldNPC = {}
local savesawfawfw = {}

do
    local Dropdown = Tabs.TPTab:AddDropdown("Mobs", {
        Title = "Mobs",
        Values = processedEnemies,
        Multi = false,
        Default = "<Null>"
    })

    Dropdown:OnChanged(function(Value)
        idk = Value
    end)

    Tabs.TPTab:AddButton({
        Title = "Refresh list",
        Callback = function()
            processedEnemies = {}
            mobname = {}
            for _, v in pairs(game:GetService("Workspace").__Main.__Enemies.Client:GetDescendants()) do
                if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                    if v:FindFirstChild("HealthBar") and v.HealthBar:FindFirstChild("Main") then
                        local enemyName = v.HealthBar.Main.Title.Text
                        if not mobname[enemyName] then
                            table.insert(processedEnemies, enemyName)
                            mobname[enemyName] = true
                        end
                    end
                end
            end
            Dropdown:SetValues(processedEnemies)
        end
    })

    local tp_bool = Tabs.TPTab:AddToggle("TP1", {
        Title = "Auto Farm",
        Default = false
    })

    local lastTpTime = 0
    local tpInterval = 0.1
    local nametest

    tp_bool:OnChanged(function(value)
        if value then
            oldNPC = getNPCC(idk)
            local lastAttackedNPC = nil
            local isDestroying = false

            task.spawn(function()
                while tp_bool.Value do
                    local currentTime = tick()
                    if not isDestroying and currentTime - lastTpTime >= tpInterval then
                        lastTpTime = currentTime
                        local npc = getNPCC(idk)

                        if npc and oldNPC then
                            local serverFolders = {game:GetService("Workspace").__Main.__Enemies.Server["1"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["2"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["3"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["4"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["5"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["6"],
                                                   game:GetService("Workspace").__Main.__Enemies.Server["7"]}

                            local serverFolder = nil
                            for _, folder in ipairs(serverFolders) do
                                if #folder:GetChildren() > 0 then
                                    serverFolder = folder
                                    break
                                end
                            end

                            if serverFolder == nil then
                                return nil
                            end

                            local p = serverFolder:FindFirstChild(oldNPC.Name, true)
                            if p and p:GetAttribute("HP") == 0 then
                                isDestroying = true
                                for i = 1, 4 do
                                    local args = {
                                        [1] = {
                                            [1] = {
                                                ["Event"] = "EnemyDestroy",
                                                ["Enemy"] = oldNPC.Name
                                            },
                                            [2] = "\4"
                                        }
                                    }
                                    if savesawfawfw then
                                        game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(
                                            unpack(args))
                                    end
                                    task.wait(0.25)
                                end

                                oldNPC = getNPCC(idk)
                                npc = oldNPC
                                lastAttackedNPC = nil

                                local showPetsArgs = {
                                    [1] = {
                                        [1] = {
                                            ["Event"] = "ShowPets"
                                        },
                                        [2] = "\7"
                                    }
                                }
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                    showPetsArgs))

                                showPetsArgs[1][2] = "\8"
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                    showPetsArgs))

                                showPetsArgs[1][2] = "\t"
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                    showPetsArgs))
                                isDestroying = false

                            elseif p and p:GetAttribute("HP") > 0 then
                                if lastAttackedNPC ~= npc.Name then
                                    local newPetPos = {}
                                    local counter = 1
                                    local inventoryPets = game.Players.LocalPlayer.leaderstats.Inventory.Pets
                                    for _, petFolder in pairs(inventoryPets:GetChildren()) do
                                        local newName = petFolder.Name
                                        newPetPos[newName] = npc.HumanoidRootPart.CFrame
                                        counter = counter + 1
                                    end

                                    local args = {
                                        [1] = {
                                            [1] = {
                                                ["PetPos"] = newPetPos,
                                                ["AttackType"] = "All",
                                                ["Event"] = "Attack",
                                                ["Enemy"] = npc.Name
                                            },
                                            [2] = "\t"
                                        }
                                    }

                                    game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                        args))

                                    args[1][2] = "\8"
                                    game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                        args))
                                    nametest = npc.Name
                                    lastAttackedNPC = npc.Name
                                end
                            end

                            if not isDestroying then
                                local currentCFrame = npc.Torso.CFrame
                                local offset = Vector3.new(-1, 0, 0)
                                local newCFrame = currentCFrame + offset
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = newCFrame
                            end
                        end
                        oldNPC = npc
                    end
                    task.wait(0.1)
                end
            end)
        end
    end)

    local EnemyDestroy_bool = Tabs.TPTab:AddToggle("EnemyDestroy1", {
        Title = "EnemyDestroy Manual",
        Default = false
    })

    EnemyDestroy_bool:OnChanged(function(value)
        savesawfawfw = EnemyDestroy_bool.Value
    end)

    local AutoAttackt = Tabs.TPTab:AddToggle("Auto Attack", { -- Auto click
        Title = "Auto Click",
        Default = false
    })

    AutoAttackt:OnChanged(function(value)
        task.spawn(function()
            while AutoAttackt.Value do
                local savaclient = nil
                local closestDistance = math.huge
                local serverFolders = {game:GetService("Workspace").__Main.__Enemies.Server["1"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["2"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["3"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["4"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["5"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["6"],
                                       game:GetService("Workspace").__Main.__Enemies.Server["7"]}

                local serverFolder = nil
                for _, folder in ipairs(serverFolders) do
                    if #folder:GetChildren() > 0 then
                        serverFolder = folder
                        break
                    end
                end

                if serverFolder == nil then
                    return nil
                end

                for _, v in pairs(game:GetService("Workspace").__Main.__Enemies.Client:GetDescendants()) do
                    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                        local p = serverFolder:FindFirstChild(v.Name, true)
                        if p and p:GetAttribute("HP") > 0 then
                            local npc = v
                            local player = game.Players.LocalPlayer
                            local npc_origin = npc.Torso.Position
                            local me_origin = player.Character.HumanoidRootPart.Position
                            local origin = (npc_origin - me_origin).Magnitude

                            if origin < closestDistance then
                                savaclient = v
                                closestDistance = origin
                            end
                        end
                    end
                end

                if savaclient then
                    local args = {
                        [1] = {
                            [1] = {
                                ["Event"] = "PunchAttack",
                                ["Enemy"] = savaclient.Name
                            },
                            [2] = "\4"
                        }
                    }
                    game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))

                end
                wait(0.1)
            end
        end)
    end)

    local Prioriza_bool = Tabs.TPTab:AddToggle("Prioriza All Boss", {
        Title = "Prioriza Boss",
        Default = false
    })

    local Prioriza_bool2 = Tabs.TPTab:AddToggle("Prioriza Boos ", { -- ele Prioriza o boss do Mobs selecionado
        Title = "Prioriza Boss2",
        Default = false
    })

    Prioriza_bool2:OnChanged(function(value)
        Prioriza_boolaa2 = value
    end)

    Prioriza_bool:OnChanged(function(value)
        Prioriza_boolaa = value
    end)

    local AutoDungeonToggle = Tabs.AutoDungeon:AddToggle("AutoDungeonToggle", {
        Title = "Auto Dungeon",
        Default = false
    })

    local EnemyCapture = Tabs.AutoDungeon:AddToggle("Capture", { -- Arise dungeons do Mobs selecionado
        Title = "Arise Dungeon",
        Default = false
    })

    EnemyCapture:OnChanged(function(value)
        EnemyCapture = value
    end)

    local AutoAttack = Tabs.AutoDungeon:AddToggle("Auto Attack", { -- ele Prioriza o boss do Mobs selecionado
        Title = "Auto Attack",
        Default = false
    })

    AutoAttack:OnChanged(function(value)
        AutoAttackbool = value
    end)

    AutoDungeonToggle:OnChanged(function(value)
        if value then
            oldNPC = getNearestEnemy()
            local lastAttackedNPC = nil
            task.spawn(function()
                local tweenService = game:GetService("TweenService")
                local player = game.Players.LocalPlayer
                local character = player.Character

                if not character or not character:FindFirstChild("HumanoidRootPart") then
                    character = player.CharacterAdded:Wait()
                end

                setNoclip(true)

                while AutoDungeonToggle.Value do
                    if not character or not character:FindFirstChild("HumanoidRootPart") then
                        character = player.Character or player.CharacterAdded:Wait()
                    end

                    local nearestEnemy = getNearestEnemy()

                    if nearestEnemy and AutoAttackbool then
                        local args = {
                            [1] = {
                                [1] = {
                                    ["Event"] = "PunchAttack",
                                    ["Enemy"] = nearestEnemy.Name
                                },
                                [2] = "\4"
                            }
                        }
                        game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))

                    end

                    if oldNPC and oldNPC:GetAttribute("Dead") then
                        local args = {
                            [1] = {
                                [1] = {
                                    ["Event"] = "ShowPets"
                                },
                                [2] = "\t"
                            }
                        }
                        game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))
                        if EnemyCapture then
                            for i = 1, 3 do
                                local captureArgs = {
                                    [1] = {
                                        [1] = {
                                            ["Event"] = "EnemyCapture",
                                            ["Enemy"] = oldNPC.Name
                                        },
                                        [2] = "\4"
                                    }
                                }
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(
                                    captureArgs))
                                task.wait(0.35)
                            end

                        end

                    end

                    if oldNPC and oldNPC:GetAttribute("HP") > 0 then
                        if lastAttackedNPC ~= nearestEnemy.Name then
                            local newPetPos = {}
                            local counter = 1
                            local inventoryPets = game.Players.LocalPlayer.leaderstats.Inventory.Pets
                            for _, petFolder in pairs(inventoryPets:GetChildren()) do
                                local newName = petFolder.Name
                                newPetPos[newName] = nearestEnemy.CFrame
                                counter = counter + 1
                            end

                            local args = {
                                [1] = {
                                    [1] = {
                                        ["PetPos"] = newPetPos,
                                        ["AttackType"] = "All",
                                        ["Event"] = "Attack",
                                        ["Enemy"] = nearestEnemy.Name
                                    },
                                    [2] = "\t"
                                }
                            }

                            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))

                            args[1][2] = "\8"
                            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))
                            -- nametest = nearestEnemy.Name
                            lastAttackedNPC = nearestEnemy.Name
                        end
                    end

                    oldNPC = nearestEnemy

                    if nearestEnemy then
                        local targetPosition = nearestEnemy.Position + Vector3.new(-2, 0, 0)
                        local currentPosition = character.HumanoidRootPart.Position
                        local distance = (targetPosition - currentPosition).Magnitude
                        local tweenTime = distance / TWEEN_SPEED

                        local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0,
                            false, 0)

                        local tween = tweenService:Create(character.HumanoidRootPart, tweenInfo, {
                            CFrame = CFrame.new(targetPosition)
                        })

                        tween:Play()
                        local success, err = pcall(function()
                            tween.Completed:Wait()
                        end)
                    end

                    task.wait(0.1)
                end
                setNoclip(false)
            end)
        end
    end)
    -------------------------------------------------------------------------------------------
    Tabs.TPTab1:AddButton({
        Title = "Solo Leveling",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="SoloWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "Naruto",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="NarutoWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "One Piece",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="OPWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "Bleach",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="BleachWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "Black Clover",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="BCWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "Jojo",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="JojoWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    Tabs.TPTab1:AddButton({
        Title = "Chainsaw man",
        Callback = function()
            game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack({[1]={{["Event"]="ChangeSpawn",["Spawn"]="ChainsawWorld"},[2]="\n"}}))
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:TakeDamage(humanoid.MaxHealth)
            end
        end
    })

    ---------------------------------------------------------------------------------------------------------

    local Toggle = Tabs.Main:AddToggle("ToggleSequence", {
        Title = "Multi spots 12",
        Default = false
    })
    
    Toggle:OnChanged(function(Value)
        local TweenService = game:GetService("TweenService")
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local part = character:WaitForChild("HumanoidRootPart")
    
        local function tweenToCFrame(part, targetCFrame, speed)
            local currentPos = part.Position
            local targetPos = targetCFrame.Position
            local distance = (targetPos - currentPos).Magnitude
            local duration = distance / speed
            
            local tweenInfo = TweenInfo.new(
                duration,
                Enum.EasingStyle.Linear,
                Enum.EasingDirection.Out,
                0,
                false,
                0
            )
            
            local tween = TweenService:Create(part, tweenInfo, {
                CFrame = targetCFrame
            })
            
            tween:Play()
            tween.Completed:Wait()
        end
    

        task.spawn(function()
            while task.wait(0.1) do
                if Toggle.Value then
                    local cframe1 = CFrame.new(5726.61962890625, 45.88169860839844, -132.29281616210938)
                    local cframe2 = CFrame.new(5475.6845703125, 44.85205078125, 389.8147277832031)
                    local cframe3 = CFrame.new(5507.95458984375, 45881622314453125, -135.23118591308594)
                    local speed = 1500
                    
                    tweenToCFrame(part, cframe1, speed)
                    wait(1.5)
                    
                    tweenToCFrame(part, cframe2, speed)
                    wait(1.5)
                    
                    tweenToCFrame(part, cframe3, speed)
                    wait(1.6)
                    
                end
            end
        end)
    end)

    Tabs.Main:AddButton({
        Title = "Beru Island",
        Callback = function()
            local targetPosition = Vector3.new(3843.13916015625, 65.78564453125, 3052.32275390625)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Main:AddButton({
        Title = "Beru Crystal",
        Callback = function()
            local targetPosition = Vector3.new(3785.13037109375, 64.1470947265625, 2989.497314453125)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Main:AddButton({
        Title = "Beru Air",
        Callback = function()
            local targetPosition = Vector3.new(3719.08056640625, 1086.12841796875, 2983.7158203125)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    --------------------------------------------------------------------------------------------------------------

    Tabs.Mounts:AddButton({
        Title = "Ilha 1",
        Callback = function()
            local targetPosition = Vector3.new(-5410.353515625, 157.34368896484375, -5461.8056640625)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 2",
        Callback = function()
            local targetPosition = Vector3.new(-5904.60400390625, 170.0807002929668, 327.17608642578125)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 3",
        Callback = function()
            local targetPosition = Vector3.new(-677.2373046875, 191.221862792296875, -3611.33154296875)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 4",
        Callback = function()
            local targetPosition = Vector3.new(3302.84716796875, 194.38848876953125, 54.81018829345703)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 5",
        Callback = function()
            local targetPosition = Vector3.new(428.27166748046875, 241.1793670654297, 3357.661865234375)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 6",
        Callback = function()
            local targetPosition = Vector3.new(-6057.62353515625, 231.60165405273438, 5615.42041015625)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

    Tabs.Mounts:AddButton({
        Title = "Ilha 7",
        Callback = function()
            local targetPosition = Vector3.new(4341.9541015625, 158.47039794921875, -4734.70458984375)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end
    })

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
        Title = "Speed 1000",
        Callback = function()
            while task.wait() do
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character and character:FindFirstChild("Humanoid") then
                    character.Humanoid.WalkSpeed = 1000
                else
                    warn("Player character or humanoid not found.")
                    wait(0.1)
                end
            end
        end
    })

    Tabs.Speed:AddButton({
        Title = "Speed 9000",
        Callback = function()
            Fluent:Notify({
                Title = "Flash Mode",
                Duration = 2
            })
            while task.wait() do
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character and character:FindFirstChild("Humanoid") then
                    character.Humanoid.WalkSpeed = 9000
                else
                    warn("Player character or humanoid not found.")
                    task.wait(0.1)
                end
            end
        end
    })

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false

    local FloatingButton = Instance.new("TextButton")
    FloatingButton.Size = UDim2.new(0, 70, 0, 55)
    FloatingButton.Position = UDim2.new(0.05, 0, 0.05, 0)
    FloatingButton.Text = "Lhy / Bryan \n Hub"
    FloatingButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    FloatingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FloatingButton.BorderSizePixel = 2
    FloatingButton.BorderColor3 = Color3.fromRGB(162, 0, 255)
    FloatingButton.Parent = ScreenGui
    FloatingButton.Draggable = true

    local function simulateCtrlPress()
        local VirtualInputManager = game:GetService("VirtualInputManager")
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
        wait(0.1) -- Pequena pausa para simular pressionamento
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
    end

    FloatingButton.MouseButton1Click:Connect(function()
        simulateCtrlPress()
    end)

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = FloatingButton

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
-- 01/04/25 6:20
