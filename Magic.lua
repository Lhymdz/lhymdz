if game.PlaceId == 13779173886 then

	--load
	 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
	--main
	local Window = OrionLib:MakeWindow({Name = "RaazorEX", IntroEnabled = false, HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorEX"})
	
	
	--Valores
	_G.AutoClick = true
	_G.AutoRebirth = true
	
	--tabs
	local Tab1 = Window:MakeTab({
	Name = "Principal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	
	})
	
	
	
	Tab1:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
        AutoClick()
		print(Value)
	end
})

		function AutoRebirth()
    while _G.AutoRebirth == true do
       local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer(unpack(args))
        wait(.01)
        end
end


		function AutoClick()
    while _G.AutoClick == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
        wait(.01)
        end
end
