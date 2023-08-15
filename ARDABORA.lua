-- Arda Script

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "ARDA-BORA HUB", HidePremium = false, IntroEnabled = true, IntroText = "ARDA ve BORA", SaveConfig = true, ConfigFolder = "OrionTest"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = PlayerTab:AddSection({
	Name = "Movement"
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 350,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		print(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 350,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Bananas",
	Callback = function(Value)
		print(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local Section = MainTab:AddSection({
	Name = "Starving Artists"
})

MainTab:AddButton({
	Name = "Starving Artists 1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/StarvingArtist.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Starving Artists 2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jeux45/Starving-Artist-script/main/Script", true))()
  	end    
})

local Section = MainTab:AddSection({
	Name = "Other"
})

MainTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

local Section = MainTab:AddSection({
	Name = "Prison Life"
})

MainTab:AddButton({
	Name = "Prison Life Delete Doors",
	Callback = function()
        game.Workspace.Doors:Destroy()
  	end    
})

MainTab:AddButton({
	Name = "Prison Life Script",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GwnStefano/NexusHub/main/Main", true))()
  	end    
})

local Section = MainTab:AddSection({
	Name = "VG HUB"
})

MainTab:AddButton({
	Name = "VG HUB Script",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
  	end    
})

OrionLib:Init()
