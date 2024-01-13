getgenv().win = false;
getgenv().dumble = false;

local dumbles = {"1_1","1_2","1_3","1_4","1_5","1_6","2_1","2_2","2_3","2_4","2_5"}

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
AutoDumble(dumbles)
Autowin()