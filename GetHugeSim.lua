getgenv().liftWeight = true;
getgenv().saleStrength = false;




function AutoLiftWeight()
    spawn(function()
        while getgenv().liftWeight == true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
            wait(0.1)
        end
    end)
end

