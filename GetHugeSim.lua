--main--
getgenv().liftWeight = false;
getgenv().sellStrength = false;

--Pet-- 
local EV = {"1500","7500","20,000","50,000","90,000",}
local currentEggIndex = nil
getgenv().pets = false;


--Shop--


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
        end
	end    
})

--MainEnd--

--PetTab--

local PetTab = Window:MakeTab({
	Name = "Pet",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PetSection = PetTab:AddSection({
	Name = "Eggs"
})

PetSection:AddToggle({
	Name = "AutoBuy",
	Default = false,
	Callback = function(Value)
        getgenv().pets = Value
	end    
})

PetSection:AddDropdown({
    Name = "Islands",
    Default = {},
    Options = {"1500","7500","20,000","50,000","90,000",},  -- Eggs
    Callback = function(Eggs)
        currentEgg = EV[currentEggIndex]
        if getgenv().pets == true then
            AutoBuyEggs(currentEgg)
        if Eggs == "1500" then
            currentEggIndex = 1
        elseif Eggs == "7500" then
            currentEggIndex = 2
        elseif Eggs == "20,000" then
            currentEggIndex = 3
        elseif Eggs == "50,000" then
            currentEggIndex = 4
        elseif Eggs == "90,000" then
            currentEggIndex = 5
        end
    end
})

--PetTab--

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

--Pet--

function AutoBuyEggs()
    spawn(function()
        while getgenv().pets == true do 
            if EV[1] == "1500" then local args = {
                [1] = 1,
                [2] = 1,
                [3] = "Islands"
            } game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
            if EV[2] == "7500" then local args = {
                [1] = 2,
                [2] = 1,
                [3] = "Islands"} game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
            if EV[3] == "20,000" then local args = {
                [1] = 3,
                [2] = 1,
                [3] = "Islands"} game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
            if EV[4] == "50,000" then local args = {
                [1] = 4,
                [2] = 1,
                [3] = "Islands"} game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
            if EV[5] == "90,000" then local args = {
                [1] = 5,
                [2] = 1,
                [3] = "Islands"} game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
            if EV[6] == "250,000" then local args = {
                [1] = 1,
                [2] = 1,
                [3] = "Christmas"} game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args)) wait(0.1) end
        end
    end)
end

--PetEnd--