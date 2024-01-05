getgenv().liftWeight = false;
getgenv().sellStrength = false;


--main--
function AutoLiftWeight()
    spawn(function()
        while getgenv().liftWeight == true do
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
            wait()
        end
    end)
end

function AutoSellStrength()
    spawn(function()
        while getgenv().sellStrength == true do 
            game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
            wait()
        end
    end)
end
--mainEnd