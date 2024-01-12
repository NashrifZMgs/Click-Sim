getgenv().click = true;
getgenv().rebirth = true;

local typeRebirth = {"1","5","10","25"}
local indexcountrebirth = 0








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
                [1] = 4
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
            wait()
        end
    end)
end

AutoClick()
AutoRebirth()
