getgenv().liftWeight = true




function AutoLiftWeight()
    spawn(function()
    if getgenv().liftWeight == true then
        while getgenv().liftWeight == true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
            wait()
        end
    end)
end
AutoLiftWeight()