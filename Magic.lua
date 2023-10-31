if game.PlaceId == 13779173886 then

	--load
	 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
	--main
	local Window = OrionLib:MakeWindow({Name = "RaazorEX", IntroEnabled = false, HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorEX"})
	
	
	--Values
	_G.AutoClick = true
	_G.AutoRebirth = true
	_G.PotionPower = true
	_G.PotionGems = true
	
	
	-- funcoes aba 1
	function AutoRebirth()
    while _G.AutoRebirth == true do
     local args = {
    [1] = 40
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
        wait(.01)
        end
end

	function AutoClick()
    while _G.AutoClick == true do
       game:GetService("ReplicatedStorage").Remotes.PunchEvent:FireServer()
        wait(0.1)
        end
end
	
	--funcoes aba 2	
	function  PotionPower()
	 while _G.PotionPower == true do
             local args = {
    [1] = "Power Potion",
    [2] = 5
}

game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
        wait(0.1)
        end
end
	
	function  PotionGems()
	 while _G.PotionGems == true do
      local args = {
    [1] = "Gems Potion",
    [2] = 3
}

game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
        wait(0.1)
        end
end

	--tabs 1
	local Tab1 = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	
	})
	
	--tabs 2
	local Tab2 = Window:MakeTab({
	Name = "Spin Rewards",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	
	})
	
	--tob1 toggle
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
	Name = "Auto Rebirth 40x",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
		print(Value)
	end    

})
	
	--Tab2 toggle		
	Tab2:AddToggle({
	Name = "Potion power 5x",
	Default = false,
	Callback = function(Value)
		_G.PotionPower = Value
        PotionPower()
		print(Value)
	end    

})

	Tab2:AddToggle({
	Name = "Potion Gems 3x",
	Default = false,
	Callback = function(Value)
		_G.PotionGems = Value
        PotionGems()
		print(Value)
	end    

})

	Tab2:AddButton({
	Name = "Secret pet OP",
	Callback = function()
      	local args = {
    [1] = "Secret Wheel Pet",
    [2] = 1
}

game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "+1 Secret Pet Gived",
	Image = "rbxassetid://4483345998",
	Time = 2
})
  	end    
})

	Tab2:AddButton({
	Name = "10K Spins",
	Callback = function()
	local args = {
    [1] = "Spins",
    [2] = 10000
}

game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "10K Spin Added",
	Image = "rbxassetid://4483345998",
	Time = 2
})
  	end    
})

end
