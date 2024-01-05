getgenv().liftWeight = true




function AutoLiftWeight()
    if getgenv().liftWeight == true then
        while true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer
            wait()
    end
end

AutoLiftWeight()