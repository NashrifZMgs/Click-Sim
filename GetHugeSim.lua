getgenv().liftWeight = true




function AutoLiftWeight()
    if getgenv().liftWeight == true then
        while getgenv().liftWeight == true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer
            wait()
    end
end
AutoLiftWeight()