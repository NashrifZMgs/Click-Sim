getgenv().click = false;
getgenv().rebirth = false;

local typeRebirth

--Pets--
getgenv().egg = false;
local typeEggs
getgenv().craft = false;


--Upgrades-- 
getgenv().clickMultiplier = false;
getgenv().rebirthButton = false;
getgenv().gemMultiplier = false;
getgenv().luckMultiplier = false;



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

--Pets--
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
function AutoCraft()
    spawn(function()
        while getgenv().craft == true do
            local args = {
                [1] = "CraftAll",
                [2] = {}
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Request"):InvokeServer(unpack(args))
            wait()
        end
    end)
end
--Upgrades--
function AutoUpClick()
    spawn(function()
        while getgenv().clickMultiplier == true do
            local args = {
                [1] = "ClickMultiplier"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))
            wait()
        end
    end)
end
function AutoUpGem()
    spawn(function()
        while getgenv().gemMultiplier == true do
            local args = {
                [1] = "GemsMultiplier"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))
            wait()
        end
    end)
end
function AutoUpRebirth()
    spawn(function()
        while getgenv().rebirthButton == true do
            local args = {
                [1] = "RebirthButtons"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))
            wait()
        end
    end)
end
function AutoUpLuck()
    spawn(function()
        while getgenv().luckMultiplier == true do
            local args = {
                [1] = "LuckMultiplier"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))
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
	Options = {"1","5","10","25","100","500","2.5k","5k","10k","50k","250k","1M","25M","100M","500M","1B","2.5B","10B","50B","250B"},
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
            elseif Value == "5k" then
                typeRebirth = 8
            elseif Value == "10k" then
                typeRebirth = 9
            elseif Value == "50k" then
                typeRebirth = 10
            elseif Value == "250k" then
                typeRebirth = 11
            elseif Value == "1M" then
                typeRebirth = 12
            elseif Value == "25M" then
                typeRebirth = 13
            elseif Value == "100M" then
                typeRebirth = 14
            elseif Value == "500M" then
                typeRebirth = 15
            elseif Value == "1B" then
                typeRebirth = 16
            elseif Value == "2.5B" then
                typeRebirth = 17
            elseif Value == "10B" then
                typeRebirth = 18
            elseif Value == "50B" then
                typeRebirth = 19
            elseif Value == "250B" then
                typeRebirth = 20
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
    Options = {"Basic","Mythic","Forest","Beach","Atlantis","Desert","Winter","Volcano","Moon","Cyber","Magic","Heaven","Nuclear","Void","Spooky","Cave","Steampunk","Hell"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Basic" then
                typeEggs = "Basic"
            elseif Value == "Mythic" then
                typeEggs = "Mythic"
            elseif Value == "Forest" then
                typeEggs = "Forest"
            elseif Value == "Beach" then
                typeEggs = "Beach"
            elseif Value == "Atlantis" then
                typeEggs = "Atlantis"
            elseif Value == "Desert" then
                typeEggs = "Desert"
            elseif Value == "Winter" then
                typeEggs = "Winter"
            elseif Value == "Volcano" then
                typeEggs = "Volcano"
            elseif Value == "Moon" then
                typeEggs = "Moon"
            elseif Value == "Cyber" then
                typeEggs = "Cyber"
            elseif Value == "Magic" then
                typeEggs = "Magic"
            elseif Value == "Heaven" then
                typeEggs = "Heaven"
            elseif Value == "Nuclear" then
                typeEggs = "Nuclear"
            elseif Value == "Void" then
                typeEggs = "Void"
            elseif Value == "Spooky" then
                typeEggs = "Spooky"
            elseif Value == "Cave" then
                typeEggs = "Cave"
            elseif Value == "Steampunk" then
                typeEggs = "Steampunk"
            elseif Value == "Hell" then
                typeEggs = "Hell"
            end
        end
    end
})

PetSection:AddToggle({
    Name = "AutoCraft",
    Default = false,
    Callback = function(Value)
        getgenv().craft = Value
        if getgenv().craft == true then
            AutoCraft()
        end
    end
})

--PetTabEnd--
--UpgradesTab--

local UpgradeTab = Window:MakeTab({
    Name = "Upgrade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local UpgradeSection = UpgradeTab:AddSection({
    Name = "AutoUpgrade"
})
UpgradeSection:AddToggle({
    Name = "AutoUpClick",
    Default = false,
    Callback = function(Value)
        getgenv().clickMultiplier = Value
        if getgenv().clickMultiplier == true then
            AutoUpClick()
        end
    end
})
UpgradeSection:AddToggle({
    Name = "AutoUpRebirth",
    Default = false,
    Callback = function(Value)
        getgenv().rebirthButton = Value
        if getgenv().rebirthButton == true then
            AutoUpRebirth()
        end
    end
})
UpgradeSection:AddToggle({
    Name = "AutoUpGem",
    Default = false,
    Callback = function(Value)
        getgenv().gemMultiplier = Value
        if getgenv().gemMultiplier == true then
            AutoUpGem()
        end
    end
})
UpgradeSection:AddToggle({
    Name = "AutoUpLuck",
    Default = false,
    Callback = function(Value)
        getgenv().luckMultiplier = Value
        if getgenv().luckMultiplier == true then
            AutoUpLuck()
        end
    end
})

--UpgradesTabEnd--

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
