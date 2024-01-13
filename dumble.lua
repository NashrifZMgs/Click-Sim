getgenv().dumble = true;

local dumbles = {"1_1","1_2","1_3","1_4","1_5"}

function AutoDumble(dumbles)
    spawn(function()
    while getgenv().dumble == true do
        local args = {
            [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(dumbles)
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Event"):WaitForChild("Game"):WaitForChild("[C-S]PlayerClick"):FireServer(unpack(args))
    end)
end
AutoDumble()