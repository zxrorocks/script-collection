local host = "zxrorocks" -- your host name here
local prefix = "/" -- prefix, don't try to do /e it wont work lol

-- WAIT FOR TOOLS --
if not game:IsLoaded() then
    game.Loaded:Wait()
end
    repeat wait() until game.Workspace.Players:FindFirstChild(game.Players.LocalPlayer.Name) -- wait for neccessary stuff
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrorocks/erase/main/autorj"))()
    print("this requires tools with an actual model")
    repeat wait() until game.Players.LocalPlayer.Backpack.DataCost > 4 
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:FindFirstChild("Handle") then
    print('you have handled tools')
    Tool = v.Name
    end
end

-- PRE SETUP --
    if game.Players.LocalPlayer.Name ~= host then 
    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =CFrame.new(-113.54538, -58.7000732, 145.142868, 0.33983025, 5.54401822e-08, -0.940486789, -9.78369457e-08, 1, 2.35965363e-08, 0.940486789 , 8.39955376e-08, 0.33983025) -- auto teleport so your bot doesnt get killed
    else
    end
    local Players = game:GetService("Players") -- local vars/functions
    function find(name)
        for _, Player in ipairs(game.Players:GetPlayers()) do
            if (string.lower(name) == string.sub(string.lower(Player.Name), 1, #name)) or (string.lower(name) == string.sub(string.lower(Player.DisplayName), 1, #name))
             then return Player
            end
        end
    end
    
-- CONTROL PART --
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData) -- detects messages sent from host
            if messageData.FromSpeaker == host and game.Players.LocalPlayer.Name ~= host then
                msg = messageData.Message
                local args = msg:split(" ")
                if args[1] == prefix .. "erase" then -- this can be changed
                    local name = find(args[2])
                    print(name)
                    local LocalPlayer = game.Players.LocalPlayer
                    local newHum = game.Players.LocalPlayer.Character.Humanoid:Clone()
                    newHum.Parent = LocalPlayer.Character
                    newHum:ChangeState(15)
                    LocalPlayer.Character.Humanoid:Destroy()
                    local tool = LocalPlayer.Backpack:FindFirstChild(Tool)
                    tool.Parent = LocalPlayer.Character
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = name.Character.HumanoidRootPart.CFrame
                    wait(.3)
                    firetouchinterest(tool.Handle, name.Character["Head"], 0)
                    tool.AncestryChanged:Wait()
                    wait(.3)
                    if name.Character.Humanoid.Health > 1 then
                        LocalPlayer.Character.Humanoid.Health = 0
                        LocalPlayer.Character = nil
                    end
                    if LocalPlayer.Character then
                        game.Players.LocalPlayer.Character:BreakJoints()
                    end
                     wait(3) -- if the dh anticheat doesnt kick 
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-113.54538, -58.7000732, 145.142868, 0.33983025, 5.54401822e-08, -0.940486789, -9.78369457e-08, 1, 2.35965363e-08, 0.940486789 , 8.39955376e-08, 0.33983025)
            end
        end
    end)
