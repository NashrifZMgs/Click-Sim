--MAIN
getgenv().clicker = false;
getgenv().rebirth = false;
getgenv().redeemClickRewards = false;

--MISC
getgenv().requestRedeemGift = false;

--eggs
getgenv().Eggy = false;

--Teleport
getgenv().islandss = false;

--##
local remotePath = game:GetService("ReplicatedStorage").Aero.AreoRemoteServices;


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Click Simulator") -- Creates the window
local s = library:CreateWindow("Pet")
--Folder 1
local c = w:CreateFolder("Farming") -- Creates the folder(U will put here your buttons,etc)
local a = w:CreateFolder("Teleport")
local b = w:CreateFolder("Other")
-- Folder 2
local d = s:CreateFolder("EarthEgg")

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

d:Button("True", function()
    buyEggs("Basic Egg")
end)

--Teleport
a:Button("Forest Island",function()
    teleportWorld("Forest Island")
end)
a:Button("Snow Island",function()
    teleportWorld("Snow Island")
end)
a:Button("Fall Island",function()
    teleportWorld("Fall Island")
end)
a:Button("Flower Island",function()
    teleportWorld("Flower Island")
end)
a:Button("Beach Island",function()
    teleportWorld("Beach Island")
end)
a:Button("Crystal Island",function()
    teleportWorld("Crystal Island")
end)
a:Button("Mushroom Island",function()
    teleportWorld("Mushroom Island")
end)
a:Button("Desert Island",function()
    teleportWorld("Desert Island")
end)
a:Button("Candy Island",function()
    teleportWorld("Candy Island")
end)
a:Button("Lava Island",function()
    teleportWorld("Lava Island")
end)


--Main
c:Toggle("AutoTap",function(bool)
    getgenv().clicker = bool
    if bool then
        autoClick();
    end
end)

c:Toggle("AutoRebirth",function()
    getgenv().rebirth = bool
    if bool then
        autoRebirth();
    end
end)

c:Toggle("AutoClaimCoin",function()
    getgenv().redeemClickRewards = bool
    if bool then
        clickRewards();
    end
end)




--types of eggs
d:Toggle("Basic Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Basic Egg");
    end
end)
d:Toggle("Farm Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Farm Egg");
    end
end)
d:Toggle("Fantasy Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Fantasy Egg");
    end
end)
d:Toggle("Wisdom Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Wisdom Egg");
    end
end)
d:Toggle("Wisdom Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Wicked Egg");
    end
end)
d:Toggle("Winged Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Winged Egg");
    end
end)
d:Toggle("Buzz Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Buzz Egg");
    end
end)
d:Toggle("Sunny Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Sunny Egg");
    end
end)
d:Toggle("Industry Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Industry Egg");
    end
end)
d:Toggle("Crystalized Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Crystalized");
    end
end)
d:Toggle("Swamp Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Swamp Egg");
    end
end)
d:Toggle("Mystical Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Mystical Egg");
    end
end)
d:Toggle("Sand Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Sand Egg");
    end
end)
d:Toggle("Carnival Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Carnival Egg");
    end
end)
d:Toggle("Candy Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Candy Egg");
    end
end)
d:Toggle("Devil Egg",function()
    getgenv().Eggy = bool
    if bool then
        buyEggs("Devil Egg");
    end
end)






--Main
function autoClick()
    spawn(function()
        while clicker == true do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
            wait()
        end
    end)
end

function autoRebirth()
    spawn(function()
        while rebirth == true do
            local args = {[1] = game:GetService("Players").LocalPlayer}
            game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.RequestRebirth:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function clickRewards()
    spawn(function()
        while redeemClickRewards == true do 
            game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.RedeemClickReward:InvokeServer()
            wait()
        end
    end)
end


--MISC
function timeRewards(requestgift)
    spawn(function()
        while requestRedeemGift == true do
            if requestRedeemGift == true then
                local i = 1
                local args = {}
                while i <= 12 do
                    args[1] = i
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.GiftsService.RF.RequestRedeemGift:InvokeServer(unpack(args))
                    i = i + 1
                end
            end
        end
    end)
end


--##
--Eggs
function buyEggs(eggType)
    spawn(function()
        while getgenv().Eggy == true do
            local args = {[1] = eggType,[2] = "Single"}
            game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.OpenEgg:InvokeServer(unpack(args))
            wait()
        end
    end)
end



--If player not on the map the script deactivate.
function getCurrentplyrPOS()
    local plyr = game.Players.LocalPlayer;
    if Plyr.Character then
        return plyr.Character.HumanoidRootPart.Position;
    end
    return false;
end

function teleportTO(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end
function teleportWorld(world)
    if game:GetService("Workspace").Islands:FindFirstChild(world) then
        teleportTO(game:GetService("Workspace").Islands[world].Top.Top.CFrame)
        wait(1)
        teleportTO(game:GetService("Workspace").Islands[world].Enter.CFrame)
    end
end







b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)


b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGui()


