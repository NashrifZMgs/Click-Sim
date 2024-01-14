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
	Options = {"None","1", "2","5","25","150","1500","15k","150k","1.5M","15M","150M","1.5B","150B","1.5T","15T","150T"},
	Callback = function(Value)
		if Value == "1" then
            rebirthButton = 0
        elseif Value == "2" then
            rebirthButton = 1
        elseif Value == "5" then
            rebirthButton = 2
        elseif Value == "25" then
            rebirthButton = 3
        elseif Value == "150" then
            rebirthButton = 4
        elseif Value == "1500" then
            rebirthButton = 5
        elseif Value == "15k" then
            rebirthButton = 6
        elseif Value == "150k" then
            rebirthButton = 7
        elseif Value == "1.5M" then
            rebirthButton = 8
        elseif Value == "15M" then
            rebirthButton = 9
        elseif Value == "150M" then
            rebirthButton = 10
        elseif Value == "1.5B" then
            rebirthButton = 11
        elseif Value == "150B" then
            rebirthButton = 12
        elseif Value == "1.5T" then
            rebirthButton = 13
        elseif Value == "15T" then
            rebirthButton = 14
        elseif Value == "150T" then
            rebirthButton = 15
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
            autoHatch(typeEggs)
        end
	end    
})

PetSection:AddDropdown({
	Name = "EggTypes",
	Default = "None",
	Options = {"None","Common","Rare","Prestige","Candy","Ocean","Jungle","Electro","Heaven","Virus Titan","Midnight","500k","Toys","Bauble","Santa","Exclusive","Cube","Gigachad"},
	Callback = function(Value)
        if Value == "None" then
            typeEggs = "None"
        elseif Value == "Common" then
            typeEggs = "Common Egg"
        elseif Value == "Rare" then
            typeEggs = "Rare Egg"
        elseif Value == "Prestige" then
            typeEggs = "Prestige Egg"
        elseif Value == "Candy" then
            typeEggs = "Candy Egg"
        elseif Value == "Ocean" then
            typeEggs = "Ocean Egg"
        elseif Value == "Jungle" then
            typeEggs = "Jungle Egg"
        elseif Value == "Electro" then
            typeEggs = "Electro Egg"
        elseif Value == "Heaven" then
            typeEggs = "Heaven Egg"
        elseif Value == "Virus Titan" then
            typeEggs = "Virus Titan Stock"
        elseif Value == "Midnight" then
            typeEggs = "Midnight Egg"
        elseif Value == "500k" then
            typeEggs = "500k Egg"
        elseif Value == "Toys" then
            typeEggs = "Toys Egg"
        elseif Value == "Bauble" then
            typeEggs = "Bauble Egg"
        elseif Value == "Santa" then
            typeEggs = "Santa Stock"
        elseif Value == "Exclusive" then
            typeEggs = "Exclusive Egg"
        elseif Value == "Cube" then
            typeEggs = "Cube Egg"
        elseif Value == "Gigachad" then
            typeEggs = "Gigachad Egg"
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