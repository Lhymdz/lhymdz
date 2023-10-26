if game.PlaceId == 14400545236 then
	--load
	 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	--main
	local Window = OrionLib:MakeWindow({Name = "RaazorEX", IntroEnabled = false, HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorEX"})
	
	--Valores
	_G.AutoClick = true
	_G.AutoRebirth = true
	_G.BasicEgg	= true
	_G.FarmEgg = true
	_G.FantasyEgg = true
	_G.FrostedEgg = true
	_G.WisdomEgg = true
	_G.WingedEgg = true

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

	function FarmEgg()
	while _G.FarmEgg	== true do
	local args = {
    [1] = "Farm Egg",
    [2] = "Single"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
	wait(.00000000000000000000000000000000000000000000001)
	end
end

	function FantasyEgg()
	while _G.FantasyEgg	== true do
	local args = {
    [1] = "Fantasy Egg",
    [2] = "Single"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
	wait(.00000000000000000000000000000000000000000000001)
	end
end

	function FrostedEgg()
	while _G.FrostedEgg	== true do
	local args = {
    [1] = "Frosted Egg",
    [2] = "Single"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
	wait(.00000000000000000000000000000000000000000000001)
	end
end

	function WisdomEgg()
	while _G.WisdomEgg	== true do
	local args = {
    [1] = "Wisdom Egg",
    [2] = "Single"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
	wait(.00000000000000000000000000000000000000000000001)
	end
end

	function WingedEgg()
	while _G.Winged Egg	== true do
	local args = {
    [1] = "Winged Egg",
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
	
	local Tab2 = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	
	})
	
	local Tab3 = Window:MakeTab({
	Name = "Eggs1",
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

	Tab2:AddToggle({
	Name = "Basic Egg 500",
	Default = false,
	Callback = function(Value)
		_G.BasicEgg = Value
        BasicEgg()
		print(Value)
	end
	
})

	Tab2:AddToggle({
	Name = "Farm Egg 2.5K",
	Default = false,
	Callback = function(Value)
		_G.FarmEgg = Value
		FarmEgg()
		print(Value)
	end
	
})

	Tab2:AddToggle({
	Name = "Fantasy Egg 1M",
	Default = false,
	Callback = function(Value)
		_G.FantasyEgg = Value
		FantasyEgg()
		print(Value)
	end
	
})

	Tab2:AddToggle({
	Name = "Frosted Egg 10M",
	Default = false,
	Callback = function(Value)
		_G.FrostedEgg = Value
		FrostedEgg()
		print(Value)
	end
	
})

	Tab2:AddToggle({
	Name = "Wisdom Egg 1B",
	Default = false,
	Callback = function(Value)
		_G.WisdomEgg = Value
		WisdomEgg()
		print(Value)
	end
	
})

	Tab3:AddToggle({
	Name = "Wicked Egg 10B",
	Default = false,
	Callback = function(Value)
		_G.WickedEgg = Value
		WickedEgg()
		print(Value)
	end
	
})

	Tab3:AddToggle({
	Name = "Winged Egg 50B",
	Default = false,
	Callback = function(Value)
		_G.WickedEgg = Value
		WickedEgg()
		print(Value)
	end
	
})
		
end
