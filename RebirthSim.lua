getgenv().click = true;







function AutoClick()
    spawn(function()
        while getgenv().click == true do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
            wait()
        end
    end)
end
AutoClick()
