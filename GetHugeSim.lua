getgenv().liftWeight = false;
getgenv().sellStrength = false;


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "KiokenZHub",
	Content = "Welcome to KiokenZHub",
	Image = "rbxassetid://4483345998",
	Time = 5
})



local Window = OrionLib:MakeWindow({Name = "Get Huge Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

--MainTab--

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FarmingSection = MainTab:AddSection({
	Name = "Farming"
})

FarmingSection:AddToggle({
	Name = "AutoLift",
	Default = false,
	Callback = function(Value)
		getgenv().liftWeight = Value
        if getgenv().liftWeight == true then
            AutoLiftWeight()
        end
	end    
})

FarmingSection:AddToggle({
	Name = "AutoSell",
	Default = false,
	Callback = function(Value)
		getgenv().sellStrength = Value
        if getgenv().sellStrength == true then
            AutoLiftWeight()
        end
	end    
})

--MainEnd--

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

--Player Tab End--

--Settings Tab--

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

SettingsSection:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--Settings End--

OrionLib:Init() --UI Lib End


--main--
function AutoLiftWeight()
    spawn(function()
        while getgenv().liftWeight == true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
            wait()
        end
    end)
end

function AutoSellStrength()
    spawn(function()
        while getgenv().sellStrength == true do 
            game:GetService("ReplicatedStorage").Remotes.SellStrengthRequest:FireServer()
            wait()
        end
    end)
end
--mainEnd

