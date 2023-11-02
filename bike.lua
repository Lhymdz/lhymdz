if game.PlaceId == 15084364495 then

	--load
	 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
	--main
	local Window = OrionLib:MakeWindow({Name = "RaazorEX", IntroEnabled = false, HidePremium = false, SaveConfig = true, ConfigFolder = "RaazorEX"})
	
	
	--Loopers
	_G.AutoClick = true
	_G.AutoRebirth = true
	_G.Autowin1 = true
	_G.Autowin2 = true
	_G.Autowin3 = true
	_G.Autowin4 = true
	_G.Autowin5 = true
	_G.Autowin6 = true
	_G.Egg1 = true
	_G.Egg2 = true
	_G.Egg3 = true
	_G.Egg4 = true

	--functions aba 1
	function AutoClick()
	while _G.AutoClick == true do
	game:GetService("ReplicatedStorage").Train.Remote.TrainSelf:InvokeServer()
	wait(0.1)
        end
end
	
	function AutoRebirth()
	while _G.AutoRebirth == true do
	game:GetService("ReplicatedStorage").Rebirth.Remote.TryRebirth:InvokeServer()
	wait(0.1)
        end
end	

	--functions aba 2
	function Autowin1()
	while _G.Autowin1 == true do
	local args = {
    [1] = 1
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end
	
	function Autowin2()
	while _G.Autowin2 == true do
	local args = {
    [1] = 2
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end
	
	function Autowin3()
	while _G.Autowin3 == true do
	local args = {
    [1] = 3
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end
	
	function Autowin4()
	while _G.Autowin4 == true do
	local args = {
    [1] = 4
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end
	
	function Autowin5()
	while _G.Autowin5 == true do
	local args = {
    [1] = 5
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end
	
	function Autowin6()
	while _G.Autowin6 == true do
	local args = {
    [1] = 6
}
game:GetService("ReplicatedStorage").Swim.Remote.ApplyPVEMatch:InvokeServer(unpack(args))
	local args = {
    [1] = {
        ["maxManification"] = 0.0,
        ["avgManification"] = 0,
        ["rank"] = 1
    }
}
game:GetService("ReplicatedStorage").Swim.Remote.SubmitPVEMatchResult:InvokeServer(unpack(args))
	wait(0.1)
        end
end

	--functions aba 6
	function Egg1()
	while _G.Egg1 == true do
	local args = {
    [1] = "egg_6",
    [2] = 1,
    [3] = {}
}
game:GetService("ReplicatedStorage").LotteryFolder.Remote.ApplyLottery:InvokeServer(unpack(args))
	wait(0.1)
        end
end

	function Egg2()
	while _G.Egg2 == true do
	local args = {
    [1] = "egg_12",
    [2] = 1,
    [3] = {}
}
game:GetService("ReplicatedStorage").LotteryFolder.Remote.ApplyLottery:InvokeServer(unpack(args))
	wait(0.1)
        end
end

	function Egg3()
	while _G.Egg3 == true do
	local args = {
    [1] = "egg_18",
    [2] = 1,
    [3] = {}
}
game:GetService("ReplicatedStorage").LotteryFolder.Remote.ApplyLottery:InvokeServer(unpack(args))
	wait(0.1)
        end
end

	function Egg4()
	while _G.Egg4 == true do
	local args = {
    [1] = "egg_24",
    [2] = 1,
    [3] = {}
}
game:GetService("ReplicatedStorage").LotteryFolder.Remote.ApplyLottery:InvokeServer(unpack(args))
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
	Name = "Autowin Worlds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

	--tabs 3
	local Tab3 = Window:MakeTab({
	Name = "World 1 Ramps",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

	--tabs 4
	local Tab4 = Window:MakeTab({
	Name = "World 2 Ramps",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

	--tabs 5
	local Tab5 = Window:MakeTab({
	Name = "World 3 Ramps",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

	--tabs 6
	local Tab6 = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

	--toggles abba1
	Tab1:AddToggle({
	Name = "AutoClick",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
        AutoClick()
		print(Value)
	end    

})

	Tab1:AddToggle({
	Name = "AutoRebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
		print(Value)
	end    

})

	--toggles abba2
	Tab2:AddToggle({
	Name = "World 1",
	Default = false,
	Callback = function(Value)
		_G.Autowin1 = Value
        Autowin1()
		print(Value)
	end    
})

	Tab2:AddToggle({
	Name = "World 2",
	Default = false,
	Callback = function(Value)
		_G.Autowin2 = Value
        Autowin2()
		print(Value)
	end    
})

	Tab2:AddToggle({
	Name = "World 3",
	Default = false,
	Callback = function(Value)
		_G.Autowin3 = Value
        Autowin3()
		print(Value)
	end    
})

	Tab2:AddToggle({
	Name = "World 4",
	Default = false,
	Callback = function(Value)
		_G.Autowin4 = Value
        Autowin4()
		print(Value)
	end    
})

	Tab2:AddToggle({
	Name = "World 5",
	Default = false,
	Callback = function(Value)
		_G.Autowin5 = Value
        Autowin5()
		print(Value)
	end    
})

	Tab2:AddToggle({
	Name = "World 6",
	Default = false,
	Callback = function(Value)
		_G.Autowin6 = Value
        Autowin6()
		print(Value)
	end    
})
	
	--toogles abba3
	Tab3:AddButton({
	Name = "Train Ramp 1",
	Callback = function()
	local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 0 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})
	
	Tab3:AddButton({
	Name = "Train Ramp 2",
	Callback = function()
	local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 2 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 3",
	Callback = function()
	local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 3 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 4",
	Callback = function()
	local args = {
    [1] = 4
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 4 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 5",
	Callback = function()
	local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 5 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 6",
	Callback = function()
	local args = {
    [1] = 6
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 6 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 7",
	Callback = function()
	local args = {
    [1] = 7
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 7 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 8",
	Callback = function()
	local args = {
    [1] = 8
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 8 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 9",
	Callback = function()
	local args = {
    [1] = 9
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 9 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 10",
	Callback = function()
	local args = {
    [1] = 10
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 10 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 11",
	Callback = function()
	local args = {
    [1] = 11
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 11 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab3:AddButton({
	Name = "Train Ramp 12",
	Callback = function()
	local args = {
    [1] = 12
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 12 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	--toogles abba4
	Tab4:AddButton({
	Name = "Train Ramp 13",
	Callback = function()
	local args = {
    [1] = 13
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 13 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})
	
	Tab4:AddButton({
	Name = "Train Ramp 14",
	Callback = function()
	local args = {
    [1] = 14
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 14 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 15",
	Callback = function()
	local args = {
    [1] = 15
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 15 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 16",
	Callback = function()
	local args = {
    [1] = 16
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 16 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 17",
	Callback = function()
	local args = {
    [1] = 17
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 17 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 18",
	Callback = function()
	local args = {
    [1] = 18
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 18 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 19",
	Callback = function()
	local args = {
    [1] = 19
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 19 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 20",
	Callback = function()
	local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 20 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 21",
	Callback = function()
	local args = {
    [1] = 21
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 21 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 22",
	Callback = function()
	local args = {
    [1] = 22
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 22 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 23",
	Callback = function()
	local args = {
    [1] = 23
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 23 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab4:AddButton({
	Name = "Train Ramp 24",
	Callback = function()
	local args = {
    [1] = 24
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 24 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	--toogles abba5
	Tab5:AddButton({
	Name = "Train Ramp 25",
	Callback = function()
	local args = {
    [1] = 25
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 25 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})
	
	Tab5:AddButton({
	Name = "Train Ramp 26",
	Callback = function()
	local args = {
    [1] = 26
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 26 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 27",
	Callback = function()
	local args = {
    [1] = 27
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 27 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 28",
	Callback = function()
	local args = {
    [1] = 28
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 28 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 29",
	Callback = function()
	local args = {
    [1] = 29
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 29 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 30",
	Callback = function()
	local args = {
    [1] = 30
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 30 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 31",
	Callback = function()
	local args = {
    [1] = 31
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 31 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 32",
	Callback = function()
	local args = {
    [1] = 32
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 32 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 33",
	Callback = function()
	local args = {
    [1] = 33
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 33 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 34",
	Callback = function()
	local args = {
    [1] = 34
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 34 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 35",
	Callback = function()
	local args = {
    [1] = 35
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 35 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	Tab5:AddButton({
	Name = "Train Ramp 36",
	Callback = function()
	local args = {
    [1] = 36
}

game:GetService("ReplicatedStorage").Train.Remote.SetTrainTool:InvokeServer(unpack(args))
	OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Train 36 Actived \n need active autoclick",
	Image = "rbxassetid://4483345998",
	Time = 4
})
  	end    
})

	--toogles abba6
	Tab6:AddToggle({
	Name = "Egg 759K",
	Default = false,
	Callback = function(Value)
		_G.Egg1 = Value
        Egg1()
		print(Value)
	end    

})

	Tab6:AddToggle({
	Name = "Egg 403B",
	Default = false,
	Callback = function(Value)
		_G.Egg2 = Value
        Egg2()
		print(Value)
	end    

})

	Tab6:AddToggle({
	Name = "Third World",
	Default = false,
	Callback = function(Value)
		_G.Egg3 = Value
        Egg3()
		print(Value)
	end    

})

	Tab6:AddToggle({
	Name = "Fourth world",
	Default = false,
	Callback = function(Value)
		_G.Egg4 = Value
        Egg4()
		print(Value)
	end    

})


end
