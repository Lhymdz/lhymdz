if game.PlaceId == 14400545236 then

	--load
	 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
	--main
	local Window = OrionLib:MakeWindow({Name = "Title of the library", IntroEnabled = false, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
	
	--Valores
	_G.AutoClick = true
	_G.AutoRebirth = true
	_G.BasicEgg	= true
	
	function BasicEgg()
	while _G.BasicEgg	== true do
	local args = {
    [1] = "Basic Egg",
    [2] = "Single"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
	wait(.00000000000000000000000000000000000000000000001)
	end
end
	function AutoRebirth()
    while _G.AutoRebirth == true do
       local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer(unpack(args))
        wait(.00000000000000000000000000000000000000000000001)
        end
end
	
	function AutoClick()
    while _G.AutoClick == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
        wait(.00000000000000000000000000000000000000000000001)
        end
end

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
		
		Tab1:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
		print(Value)
	end    

})
	
end
