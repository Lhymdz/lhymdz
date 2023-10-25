if game.PlaceId == 3035114590 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "RaazorExed", HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorExed", IntroEnabled = false,})

--Valores
_G.AutoClick = true



--Funcoes

function AutoClick()
    while _G.AutoClick == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
        wait(.00000000000000000000000000000000000000000000001)
        end
end


--Frame

local Main = Window:MakeTab({
	Name = "Open Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Main:AddSection({
	Name = "PRINCIPAIS"
})
Main:AddToggle({
	Name = "Auto-Click",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
        AutoClick()
	end    
})

elseif game.PlaceId == 3035114590 then

    --FV

    local plr = game.Players.LocalPlayer

    --HUB

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "RaazorExed", HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorExed", IntroEnabled = false,})



    --Valores






    --Funcoes
    function Antikick()
        plr.UserId = 1216025046
        print("Alterado com sucesso")
        end

    function ForceTP()
        plr.Backpack.Antbug:Destroy()
    end


    --Abas
    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Section = PlayerTab:AddSection({
        Name = "Jogador"
    })
    PlayerTab:AddButton({
        Name = "Anti-Kick!",
        Callback = function()
            Antikick()
          end  
    })
    PlayerTab:AddButton({
        Name = "Force TP",
        Callback = function()
            ForceTP()
          end  
    })

end
