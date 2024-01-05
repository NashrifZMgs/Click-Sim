getgenv().liftWeight = true
getgenv().lift = game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()



function AutoLiftWeight()
    spawn(function()
    if getgenv().liftWeight == true then
        while getgenv().liftWeight == true do
            getgenv.lift
            wait()
        end
    end)
end
AutoLiftWeight()
print("working?", AutoLiftWeight())