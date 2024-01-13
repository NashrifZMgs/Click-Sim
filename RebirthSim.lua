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
	Name = "KiokenZHub",
	Content = "Orion Example",
	Image = "rbxassetid://4483345998",
	Time = 5
})



local Window = OrionLib:MakeWindow({Name = "Rebirth Champions X", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})


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
	Name = "Rebirth",
	Default = {},
	Options = {"1","5","10","25","100","500","2.5k","5k","10k","50k","250k","1M","25M","100M","500M","1B","2.5B","10B","50B","250B","1T","10T","25T","100T","250T","1Qd","2.5Qd","10Qd","50Qd","250Qd","1Qn","5Qn","50Qn","100Qn","500Qn","1Sx","5Sx","10Sx","25Sx","100Sx","500Sx","1Sp","2.5Sp","10Sp","25Sp","100Sp","250Sp","1O","2.5O","10O","25O","100O","250O","1N","2.5N","10N","25N","100N","250N","1de","2.5de","10de","25de","100de","250de","1Ud","2.5Ud","10Ud","25Ud","100Ud","250Ud","1DD","2.5DD","10DD","25DD","100DD","250DD","1tdD","2.5tdD","10tdD","25tdD","100tdD","250tdD","1qdD","2.5qdD","10qdD","25qdD","100qdD","250qdD","1QnD","2.5QnD","10QnD","25QnD","100Qnd","250QnD","1sxD","2.5sxD","10sxD","25sxD","100sxD","250sxD","1SpD","2.5SpD","10SpD","25SpD","100SpD","250SpD","1OcD","2.5OcD","10OcD","25OcD","100OcD","250OcD","1NvD","2.5NvD","10NvD","25NvD","100NvD","250NvD","1Vgn","2.5Vgn","10Vgn","25Vgn","100Vgn","250Vgn"},
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
            elseif Value == "250B" then
                typeRebirth = 19
            elseif Value == "1T" then
                typeRebirth = 20
            elseif Value == "10T" then
                typeRebirth = 21
            elseif Value == "25T" then
                typeRebirth = 22
            elseif Value == "100T" then
                typeRebirth = 23
            elseif Value == "250T" then
                typeRebirth = 24
            elseif Value == "1Qd" then
                typeRebirth = 25
            elseif Value == "10Qd" then
                typeRebirth = 26
            elseif Value == "50Qd" then
                typeRebirth = 27
            elseif Value == "250Qd" then
                typeRebirth = 28
            elseif Value == "1Qn" then
                typeRebirth = 29
            elseif Value == "5Qn" then
                typeRebirth = 30
            elseif Value == "50Qn" then
                typeRebirth = 31
            elseif Value == "100Qn" then
                typeRebirth = 32
            elseif Value == "500Qn" then
                typeRebirth = 33
            elseif Value == "1Sx" then
                typeRebirth = 34
            elseif Value == "5Sx" then
                typeRebirth = 35
            elseif Value == "10Sx" then
                typeRebirth = 36
            elseif Value == "25Sx" then
                typeRebirth = 37
            elseif Value == "100Sx" then
                typeRebirth = 38
            elseif Value == "500Sx" then
                typeRebirth = 39
            elseif Value == "1Sp" then
                typeRebirth = 40
            elseif Value == "2.5Sp" then
                typeRebirth = 41
            elseif Value == "10Sp" then
                typeRebirth = 42
            elseif Value == "25Sp" then
                typeRebirth = 43
            elseif Value == "100Sp" then
                typeRebirth = 44
            elseif Value == "250Sp" then
                typeRebirth = 45
            elseif Value == "1O" then
                typeRebirth = 46
            elseif Value == "2.5O" then
                typeRebirth = 47
            elseif Value == "10O" then
                typeRebirth = 48
            elseif Value == "25O" then
                typeRebirth = 49
            elseif Value == "100O" then
                typeRebirth = 50
            elseif Value == "250O" then
                typeRebirth = 51
            elseif Value == "1N" then
                typeRebirth = 52
            elseif Value == "2.5N" then
                typeRebirth = 53
            elseif Value == "10N" then
                typeRebirth = 54
            elseif Value == "25N" then
                typeRebirth = 55
            elseif Value == "100N" then
                typeRebirth = 56
            elseif Value == "250N" then
                typeRebirth = 57
            elseif Value == "1de" then
                typeRebirth = 58
            elseif Value == "2.5de" then
                typeRebirth = 59
            elseif Value == "10de" then
                typeRebirth = 60
            elseif Value == "25de" then
                typeRebirth = 61
            elseif Value == "100de" then
                typeRebirth = 62
            elseif Value == "250de" then
                typeRebirth = 63
            elseif Value == "1Ud" then
                typeRebirth = 64
            elseif Value == "2.5Ud" then
                typeRebirth = 65
            elseif Value == "10Ud" then
                typeRebirth = 66
            elseif Value == "25Ud" then
                typeRebirth = 67
            elseif Value == "100Ud" then
                typeRebirth = 68
            elseif Value == "250Ud" then
                typeRebirth = 69
            elseif Value == "1DD" then
                typeRebirth = 70
            elseif Value == "2.5DD" then
                typeRebirth = 71
            elseif Value == "10DD" then
                typeRebirth = 72
            elseif Value == "25DD" then
                typeRebirth = 73
            elseif Value == "100DD" then
                typeRebirth = 74
            elseif Value == "250DD" then
                typeRebirth = 75
            elseif Value == "1tdD" then
                typeRebirth = 76
            elseif Value == "2.5tdD" then
                typeRebirth = 77
            elseif Value == "10tdD" then
                typeRebirth = 78
            elseif Value == "25tdD" then
                typeRebirth = 79
            elseif Value == "100tdD" then
                typeRebirth = 80
            elseif Value == "250tdD" then
                typeRebirth = 81
            elseif Value == "1qdD" then
                typeRebirth = 82
            elseif Value == "2.5qdD" then
                typeRebirth = 83
            elseif Value == "10qdD" then
                typeRebirth = 84
            elseif Value == "25qdD" then
                typeRebirth = 85
            elseif Value == "100qdD" then
                typeRebirth = 86
            elseif Value == "250qdD" then
                typeRebirth = 87
            elseif Value == "1QnD" then
                typeRebirth = 88
            elseif Value == "2.5QnD" then
                typeRebirth = 89
            elseif Value == "10QnD" then
                typeRebirth = 90
            elseif Value == "25QnD" then
                typeRebirth = 91
            elseif Value == "100QnD" then
                typeRebirth = 92
            elseif Value == "250QnD" then
                typeRebirth = 93
            elseif Value == "1sxD" then
                typeRebirth = 94
            elseif Value == "2.5sxD" then
                typeRebirth = 95
            elseif Value == "10sxD" then
                typeRebirth = 96
            elseif Value == "25sxD" then
                typeRebirth = 97
            elseif Value == "100sxD" then
                typeRebirth = 98
            elseif Value == "250sxD" then
                typeRebirth = 99
            elseif Value == "1SpD" then
                typeRebirth = 100
            elseif Value == "2.5Spd" then
                typeRebirth = 101
            elseif Value == "10Spd" then
                typeRebirth = 102
            elseif Value == "25Spd" then
                typeRebirth = 103
            elseif Value == "100Spd" then
                typeRebirth = 104
            elseif Value == "250Spd" then
                typeRebirth = 105
            elseif Value == "1OcD" then
                typeRebirth = 106
            elseif Value == "2.5OcD" then
                typeRebirth = 108
            elseif Value == "10OcD" then
                typeRebirth = 109
            elseif Value == "25OcD" then
                typeRebirth = 110
            elseif Value == "100OcD" then
                typeRebirth = 111
            elseif Value == "250OcD" then
                typeRebirth = 112
            elseif Value == "1NvD" then
                typeRebirth = 113
            elseif Value == "2.5NvD" then
                typeRebirth = 114
            elseif Value == "10NvD" then
                typeRebirth = 115
            elseif Value == "25NvD" then
                typeRebirth = 116
            elseif Value == "100NvD" then
                typeRebirth = 117
            elseif Value == "250NvD" then
                typeRebirth = 118
            elseif Value == "1Vgn" then
                typeRebirth = 119
            elseif Value == "2.5Vgn" then
                typeRebirth = 120
            elseif Value == "10Vgn" then
                typeRebirth = 121
            elseif Value == "25Vgn" then
                typeRebirth = 122
            elseif Value == "100Vgn" then
                typeRebirth = 123
            elseif Value == "250Vgn" then
                typeRebirth = 124
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
    Name = "Pets"
})
PetSection:AddToggle({
    Name = "AutoEggs",
    Default = false,
    Callback = function(Value)
        getgenv().egg = Value
    end
})
PetSection:AddDropdown({
    Name = "SpawnEgg",
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
PetSection:AddDropdown({
    Name = "SpaceEgg",
    Default = {},
    Options = {"Space","Mars","Alien","Galaxy Forest","Space Lab","Space Fantasy","Neon","Shadow","Destruction","Sun","Saturn","Hacker","Black Hole"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Space" then
                typeEggs = "Space"
            elseif Value == "Mars" then
                typeEggs = "Mars"
            elseif Value == "Alien" then
                typeEggs = "Alien"
            elseif Value == "Galaxy Forest" then
                typeEggs = "Galaxy Forest"
            elseif Value == "Space Lab" then
                typeEggs = "SpaceLab"
            elseif Value == "Space Fantasy" then
                typeEggs = "Fantasy"
            elseif Value == "Neon" then
                typeEggs = "Neon"
            elseif Value == "Shadow" then
                typeEggs = "Shadow"
            elseif Value == "Destruction" then
                typeEggs = "Destruction"
            elseif Value == "Sun" then
                typeEggs = "Sun"
            elseif Value == "Saturn" then
                typeEggs = "Saturn"
            elseif Value == "Hacker" then
                typeEggs = "Hacker"
            elseif Value == "Black Hole" then
                typeEggs = "Black Hole"
            end
        end
    end
})
PetSection:AddDropdown({
    Name = "AquaEgg",
    Default = {},
    Options = {"Aqua","Axolotls","Underwater Lab","Pixel","Sea Cave","Ancient","Pirate","Exotic Island","Fishing Village","Ocean","Underwater Volcano",},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Aqua" then
                typeEggs = "Aqua"
            elseif Value == "Axolotls" then
                typeEggs = "Axolotls"
            elseif Value == "Underwater Lab" then
                typeEggs = "Underwater Lab"
            elseif Value == "Pixel" then
                typeEggs = "Pixel"
            elseif Value == "Sea Cave" then
                typeEggs = "Sea Cave"
            elseif Value == "Ancient" then
                typeEggs = "Ancient"
            elseif Value == "Pirate" then
                typeEggs = "Pirate"
            elseif Value == "Exotic Island" then
                typeEggs = "Exotic Island"
            elseif Value == "Fishing Village" then
                typeEggs = "Fishing Village"
            elseif Value == "Ocean" then
                typeEggs = "Ocean"
            elseif Value == "Underwater Volcano" then
                typeEggs = "Underwater Volcano"
            end
        end
    end
})
PetSection:AddDropdown({
    Name = "FantasyEgg",
    Default = {},
    Options = {"Fantasy Spawn","Fantasy Jungle","Dragon World","Fairy Island","Fantasy Glacier","Mystic Swamp","Haunted Castle","Rainbow World","Bee World"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Fantasy Spawn" then
                typeEggs = "Fantasy Spawn"
            elseif Value == "Fantasy Jungle" then
                typeEggs = "Fantasy Jungle"
            elseif Value == "Dragon World" then
                typeEggs = "Dragon World"
            elseif Value == "Fairy Island" then
                typeEggs = "Fairy Island"
            elseif Value == "Fantasy Glacier" then
                typeEggs = "Fantasy Glacier"
            elseif Value == "Mystic Swamp" then
                typeEggs = "Mystic Swamp"
            elseif Value == "Haunted Castle" then
                typeEggs = "Haunted Castle"
            elseif Value == "Rainbow World" then
                typeEggs = "Rainbow World"
            elseif Value == "Bee World" then
                typeEggs = "Bee World"
            end
        end
    end
})
PetSection:AddDropdown({
    Name = "TimeSpawnEgg",
    Default = {},
    Options = {"Time Spawn","Prehistory","Ancient Egypt","Mediaval Castle","Wild West","Viking","Military","Futuristic City"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Time Spawn" then
                typeEggs = "Time Spawn"
            elseif Value == "Prehistory" then
                typeEggs = "Prehistory"
            elseif Value == "Ancient Egypt" then
                typeEggs = "Ancient Egypt"
            elseif Value == "Mediaval Castle" then
                typeEggs = "Mediaval Castle"
            elseif Value == "Wild West" then
                typeEggs = "Wild West"
            elseif Value == "Viking" then
                typeEggs = "Viking"
            elseif Value == "Military" then
                typeEggs = "Military"
            elseif Value == "Futuristic City" then
                typeEggs = "Futuristic"
            end
        end
    end
})
PetSection:AddDropdown({
    Name = "FireEgg",
    Default = {},
    Options = {"Fire","Burning Forest","Volcano Realm","Hell Mine","Magma Temple","Fire Forge","Fire City"},
    Callback = function(Value)
        if getgenv().egg == true then
            AutoEggs(typeEggs)
            if Value == "Fire" then
                typeEggs = "Fire"
            elseif Value == "Burning Forest" then
                typeEggs = "Burning Forest"
            elseif Value == "Volcano Realm" then
                typeEggs = "Volcano Realm"
            elseif Value == "Hell Mine" then
                typeEggs = "Hell Mine"
            elseif Value == "Magma Temple" then
                typeEggs = "Magma Temple"
            elseif Value == "Fire Forge" then
                typeEggs = "Fire Forge"
            elseif Value == "Fire City" then
                typeEggs = "Fire City"
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
