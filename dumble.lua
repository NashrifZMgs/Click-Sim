getgenv().win = false;
getgenv().dumble = false;

local dumbles = {"1_1","1_2","1_3","1_4","1_5","1_6","2_1","2_2","2_3","2_4","2_5","2_6","2_7"}
local win
function Autowin()
    spawn(function()
        while getgenv().win == true do
            local args = {
                [1] = true,
                [2] = 1
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Event"):WaitForChild("Game"):WaitForChild("[C-S]PlayerEnd"):FireServer(unpack(args))
            wait()
        end
    end)
end


function AutoDumble(dumbles)
    spawn(function()
        while getgenv().dumble == true do
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(dumbles)
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Event"):WaitForChild("Game"):WaitForChild("[C-S]PlayerClick"):FireServer(unpack(args))
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
    Name = "AutoDumble",
    Default = false,
    Callback = function(Value)
        getgenv().dumble = Value
        if getgenv().dumble == true then
            AutoDumble(dumbles[1])
            AutoDumble(dumbles[2])
            AutoDumble(dumbles[3])
            AutoDumble(dumbles[4])
            AutoDumble(dumbles[5])
            AutoDumble(dumbles[6])
            AutoDumble(dumbles[7])
            AutoDumble(dumbles[8])
            AutoDumble(dumbles[9])
            AutoDumble(dumbles[10])
            AutoDumble(dumbles[11])
            AutoDumble(dumbles[12])
            AutoDumble(dumbles[13])
            AutoDumble(dumbles[14])
            AutoDumble(dumbles[15])
        end
    end
})
MainSection:AddToggle({
    Name = "AutoDumble",
    Default = false,
    Callback = function(Value)
        getgenv().win = Value
        if getgenv().win == true then
            Autowin()
        end
    end
})
--MainTabEnd--





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