getgenv().tap = false;
getgenv().rebirth = false;
local rebirthButton

--Pets--
getgenv().eggs = false;
local typeEggs

--Main Function--
function autoTap()
    spawn(function()
        while getgenv().tap == true do
            local args = {
                [1] = "Click"
            }
            game:GetService("ReplicatedStorage").Events.Tap:FireServer(unpack(args))
            wait()
        end
    end)
end

function autoRebirth(rebirthButton)
    spawn(function()
        while getgenv().rebirth == true do
            local args = {
                [1] = rebirthButton
            }
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
            wait()
        end
    end)
end

--Pet Function--
function autoHatch(typeEggs)
    spawn(function()
        while getgenv().eggs == true do
            local args = {
                [1] = typeEggs,
                [2] = "Three"
            }
            game:GetService("ReplicatedStorage").Events.HatchEgg:FireServer(unpack(args))
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


--Main Tab--

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MainSection = MainTab:AddSection({
	Name = "Farming"
})


MainSection:AddToggle({
	Name = "AutoTap",
	Default = false,
	Callback = function(Value)
		getgenv().tap = Value
        if getgenv().tap == true then
            autoTap()
        end
	end    
})

MainSection:AddToggle({
	Name = "AutoRebirth",
	Default = false,
	Callback = function(Value)
		getgenv().rebirth = Value
        if getgenv().rebirth == true then
            autoRebirth(rebirthButton)
        end
	end    
})

MainSection:AddDropdown({
	Name = "RebirthType",
	Default = "None",
	Options = {"None","1", "2","5"},
	Callback = function(Value)
		if Value == "1" then
            rebirthButton = 0
        elseif Value == "2" then
            rebirthButton = 1
        elseif Value == "5" then
            rebirthButton = 2
        end
	end    
})

--Main Tab End--

--Pet Tab--

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
		getgenv().eggs = Value
        if getgenv().eggs == true then
            autoHatch()
        end
	end    
})

PetSection:AddDropdown({
	Name = "EggTypes",
	Default = "None",
	Options = {"None","Common","Rare"},
	Callback = function(Value)
        if Value == "None" then
            typeEggs = "None"
        elseif Value == "Common" then
            typeEggs = "Common Egg"
        elseif Value == "Rare" then
            typeEggs = "Rare Egg"
        end
    end
})

--Pet Tab End--


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