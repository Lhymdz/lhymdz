local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark"
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
        Title = "TP",
        Icon = ""
    }),

    Settings = Window:AddTab({
        Title = "Settings",
        Icon = "settings"
    })
}

local Options = Fluent.Options
local Prioriza_boolaa = {}

local Prioriza_boolaa = false -- Assuming it's a boolean, adjustable elsewhere

local function getNPCC(name_bob)
    local savaclient = nil
    local closestDistance = math.huge
    local largestHitboxSize = -math.huge

    local serverFolders = {
        game:GetService("Workspace").__Main.__Enemies.Server["1"],
        game:GetService("Workspace").__Main.__Enemies.Server["2"],
        game:GetService("Workspace").__Main.__Enemies.Server["3"]
    }

    -- Verificar qual pasta tem conteúdo e definir serverFolder
    local serverFolder = nil
    for _, folder in ipairs(serverFolders) do
        if #folder:GetChildren() > 0 then
            serverFolder = folder
            break
        end
    end

    -- Se nenhuma pasta tiver conteúdo, retornar nil
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
                local hitboxSizeY = v.Hitbox.Size.Y

                if Prioriza_boolaa then
                  if p:GetAttribute("Scale") > 1 then
                    if origin < closestDistance then
                        savaclient = v
                        closestDistance = origin
                    end
                  end
                else
                    -- Find closest NPC matching name_bob
                    if v.HealthBar.Main.Title.Text == name_bob then
                        if origin < closestDistance then
                            savaclient = v
                            closestDistance = origin
                        end
                    end
                end
            end
        end
    end
    return savaclient
end

local processedEnemies = {} -- Tabela para rastrear inimigos já processados
local mobname = {} -- Tabela para rastrear inimigos já processados
local idk = {};
local oldNPC = {} -- Supondo que você já tenha uma referência ao NPC

do

    local Dropdown = Tabs.TPTab:AddDropdown("Mobs", {
        Title = "Mobs",
        Values = processedEnemies,
        Multi = false,
        Default = "<Null>"
    })

    Dropdown:OnChanged(function(Value)
        idk = Value;
    end)

    Tabs.TPTab:AddButton({
        Title = "reload",
        Callback = function()
            processedEnemies = {} -- Limpa a lista de inimigos processados
            mobname = {} -- Limpa a tabela auxiliar
            for _, v in pairs(game:GetService("Workspace").__Main.__Enemies.Client:GetDescendants()) do
                if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                    if v:FindFirstChild("HealthBar") and v.HealthBar:FindFirstChild("Main") then
                        local enemyName = v.HealthBar.Main.Title.Text

                        -- Verifica se o nome já foi adicionado
                        if not mobname[enemyName] then
                            table.insert(processedEnemies, enemyName) -- Adiciona o nome à lista
                            mobname[enemyName] = true -- Marca o nome como já adicionado
                        end
                    end
                end
            end
            Dropdown:SetValues(processedEnemies) -- Atualiza o dropdown com os novos valores
        end
    })

    local tp_bool = Tabs.TPTab:AddToggle("TP1", {
        Title = "TP",
        Default = false
    })

    local lastTpTime = 0
    local lastDestroyTime = 0
    local tpInterval = 1.0 -- Tempo mínimo entre execuções do teleporte
    local destroyInterval = 0.5 -- Tempo mínimo entre execuções da destruição
    local nametest;
    tp_bool:OnChanged(function(value)
        if value then
            print("\n\n\n\n\n\n\n\n")
            oldNPC = getNPCC(idk);

            
            task.spawn(function()
                while tp_bool.Value do
                    local currentTime = tick() -- Obtém o tempo atual do sistema

                    if currentTime - lastTpTime >= tpInterval then

                        lastTpTime = currentTime -- Atualiza o tempo da última execução
                        local npc = getNPCC(idk) -- Suponha que getNPC() retorne o objeto do NPC que você deseja mover.

                        if npc and oldNPC then

                            local serverFolders = {
                                game:GetService("Workspace").__Main.__Enemies.Server["1"],
                                game:GetService("Workspace").__Main.__Enemies.Server["2"],
                                game:GetService("Workspace").__Main.__Enemies.Server["3"]
                            }
                        
                            -- Verificar qual pasta tem conteúdo e definir serverFolder
                            local serverFolder = nil
                            for _, folder in ipairs(serverFolders) do
                                if #folder:GetChildren() > 0 then
                                    serverFolder = folder
                                    break
                                end
                            end
                        
                            -- Se nenhuma pasta tiver conteúdo, retornar nil
                            if serverFolder == nil then
                                return nil
                            end


                            local p = serverFolder:FindFirstChild(
                                oldNPC.Name, true)
                            if p and p:GetAttribute("HP") == 0 then
                                local args = {
                                    [1] = {
                                        [1] = {
                                            ["Event"] = "ShowPets"
                                        },
                                        [2] = "\7"
                                    }
                                }
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))

                            elseif p and p:GetAttribute("HP") > 0 then

                                local newPetPos = {}
                                local counter = 1

                                local players = game:GetService("Players")
                                local player = players.LocalPlayer
                                local inventoryPets = player.leaderstats.Inventory.Pets

                                -- Itera sobre todas as pastas dentro de Inventory.Pets
                                for _, petFolder in pairs(inventoryPets:GetChildren()) do
                                    local newName = petFolder.Name
                                    newPetPos[newName] = npc.HumanoidRootPart.CFrame
                                    counter = counter + 1
                                end

                                -- Itera sobre todas as pastas dentro de Inventory.Pets
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
                                        [2] = "\7"
                                    }
                                }
                                game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))
                                nametest = npc.Name
                            end

                            local currentCFrame = npc.Torso.CFrame
                            local offset = Vector3.new(-1, 0, 0)
                            local newCFrame = currentCFrame + offset

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = newCFrame
                        end

                        oldNPC = npc;
                    end

                    task.wait(0.1) -- Pequena pausa para evitar uso excessivo da CPU
                end
            end)
        end
    end)

    local EnemyDestroy_bool = Tabs.TPTab:AddToggle("EnemyDestroy1", {
        Title = "EnemyDestroy",
        Default = false
    })

    EnemyDestroy_bool:OnChanged(function(value)
        if value then
            task.spawn(function()
                while EnemyDestroy_bool.Value do
                    local currentTime = tick()

                    local args = {
                        [1] = {
                            [1] = {
                                ["Event"] = "EnemyDestroy",
                                ["Enemy"] = nametest
                            },
                            [2] = "\4"
                        }
                    }
                    game:GetService("ReplicatedStorage").BridgeNet2.dataRemoteEvent:FireServer(unpack(args))

                    task.wait(0.1)
                end
            end)
        end
    end)

    local Prioriza_bool = Tabs.TPTab:AddToggle("Prioriza Boos", {
        Title = "Prioriza Boos",
        Default = false
    })

    Prioriza_bool:OnChanged(function(value)
        Prioriza_boolaa = value;
    end)

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

    Tabs.Mounts:AddButton({
        Title = "Ilha 6",
        Callback = function()
            local targetPosition = Vector3.new(-6057.62353515625, 231.60165405273438, 5615.42041015625)

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
