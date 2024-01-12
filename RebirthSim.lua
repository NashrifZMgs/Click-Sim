getgenv().click = false;
getgenv().rebirth = false;

local typeRebirth

--Eggs--
getgenv().egg = false;
local typeEggs







function AutoClick()
    spawn(function()
        while getgenv().click == true do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
            wait()
        end
    end)
end

function AutoRebirth()
    spawn(function()
        while getgenv().rebirth == true do
            local args = {
                [1] = typeRebirth
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
            wait()
        end
    end)
end

function AutoEggs()
    spawn(function()
        while getgenv().egg == true do
            local args = {
                [1] = typeEggs,
                [2] = "Triple"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Unbox"):InvokeServer(unpack(args))
            wait()
        end
    end)
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Orion Example",
	Content = "Orion Example",
	Image = "rbxassetid://4483345998",
	Time = 5
})



local Window = OrionLib:MakeWindow({Name = "Orion Example", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})


--MainTab--

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainSection = MainTab:AddSection({
    Name = "Main"
})
MainSection:AddToggle({
    Name = "AutoClick",
    Default = false,
    Callback = function(Value)
        getgenv().click = Value
        if getgenv().click == true then
            AutoClick()
        end
    end
})
MainSection:AddToggle({
    Name = "AutoRebirth",
    Default = false,
    Callback = function(Value)
        getgenv().rebirth = Value
    end
})
MainSection:AddDropdown({
	Name = "RebirthType",
	Default = {},
	Options = {"1","5","10","25","100","500","2.5k"},
	Callback = function(Value)
		if getgenv().rebirth == true then
            AutoRebirth()
            if Value == "1" then
                typeRebirth = 1
            elseif Value == "5" then
                typeRebirth = 2
            elseif Value == "10" then
                typeRebirth = 3
            elseif Value == "25" then
                typeRebirth = 4
            elseif Value == "100" then
                typeRebirth = 5
            elseif Value == "500" then
                typeRebirth = 6
            elseif Value == "2.5k" then
                typeRebirth = 7
            end
        end
	end    
})

--MainTabEnd--
--PetTab--

local PetTab = Window:MakeTab({
    Name = "Pets",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local PetSection = PetTab:AddSection({
    Name = "Eggs"
})
PetSection:AddToggle({
    Name = "AutoEggs",
    Default = false,
    Callback = function(Value)
        getgenv().egg = Value
    end
})
PetSection:AddDropdown({
    Name = "TypeEggs",
    Default = {},
    Options = {"Basic","Mythic"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Basic" then
                typeEggs = "Basic"
            elseif Value == "Mythic" then
                typeEggs = "Mythic"
            end
        end
    end
})
--PetTabEnd--


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

SettingsSection:AddDropdown({
	Name = "Dropdown",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})


--Settings End--

OrionLib:Init() --UI Lib End
