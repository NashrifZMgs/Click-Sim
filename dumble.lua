getgenv().win = true;


function Autowin()
    spawn(function()
    while getgenv().win == true do
        local args = {
            [1] = true,
            [2] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Event"):WaitForChild("Game"):WaitForChild("[C-S]PlayerEnd"):FireServer(unpack(args))
    end)
end
AutoWin()