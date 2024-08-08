local victim = "123"
local helper = "123" -- person disguised as victim
local recorder = "123" -- this is the account youre using to record, i cant make it LocalPlayer.UserId because the alt is gonna check to see if the recorder's originalsize has been deleted
local korblox = false
local headless = false
local emoji = "star" -- star/check/none pls dont frame emojis unless you wanna take huge risks
-- discord.gg/iku ~ src below do not modify if you dont know what youre doing



































-- checks n stuff --
local fren = game.Players:GetNameFromUserIdAsync(helper)
local rec = game.Players:GetNameFromUserIdAsync(recorder)
if not syn then print("poor") return end
if fren then 
    if game.Players:FindFirstChild(fren)  then else
    print("friend not in game")
    return
end
end
wait(2)

if game.Players.LocalPlayer.Name == fren then
local appear = game.Players:GetCharacterAppearanceAsync(victim)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
    
wait(1)
    for i,v in pairs(appear:GetDescendants()) do
        if v:IsA("Animation") then
            if game.Players.LocalPlayer.Character.Animate:FindFirstChild(v.Parent.Name):FindFirstChild(v.Name) ~= nil then
                if game.Players.LocalPlayer.Character.Animate:FindFirstChild(v.Parent.Name):FindFirstChild(v.Name).AnimationId then
                    game.Players.LocalPlayer.Character.Animate:FindFirstChild(v.Parent.Name):FindFirstChild(v.Name).AnimationId = v.AnimationId
                end
            end
        end
    end
repeat wait() until not game.Players:FindFirstChild(rec).Character.UpperTorso:FindFirstChild("OriginalSize")
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
return end 
-- api owo --

local friend = game.Players:FindFirstChild(fren)
local UserData = game:HttpGet("https://users.roblox.com/v1/users/" .. victim, true)
local decodedData = game:GetService("HttpService"):JSONDecode(UserData)
friend.Name = decodedData.name
friend.UserId = decodedData.id
friend.DisplayName = decodedData.displayName
friend.Character.Name = decodedData.name
friend.Character.Humanoid.DisplayName = decodedData.displayName

function Char(id)
    local appearance = game.Players:GetCharacterAppearanceAsync(id)
    local plr = game.Players:FindFirstChild(decodedData.name)
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
            v:Destroy()
        end
    end
    if plr.Character.Head:FindFirstChild("face") then
        plr.Character.Head.face:Destroy()
    end
    for i,v in pairs(appearance:GetChildren()) do
        if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
            v.Parent = plr.Character
        elseif v:IsA("Accessory") then
            plr.Character.Humanoid:AddAccessory(v)
        elseif v.Name == "R6" then
            if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                v:plr("CharacterMesh").Parent = plr.Character
            end
        elseif v.Name == "R15" then
            if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                v:FindFirstChildOfClass("CharacterMesh").Parent = plr.Character
            end
        end
    end
    if appearance:FindFirstChild("face") then
        appearance.face.Parent = plr.Character.Head
    else
        local face = Instance.new("Decal")
        face.Face = "Front"
        face.Name = "face"
        face.Texture = "rbxasset://textures/face.png"
        face.Transparency = 0
        face.Parent = plr.Character.Head
    end
    local parent = plr.Character.Parent
    plr.Character.Parent = nil
    plr.Character.Parent = parent
end

Char(victim)
wait(2)
local vict = game.Players:FindFirstChild(game.Players:GetNameFromUserIdAsync(victim))
-- headless and korblox giver OMG --
if headless == true then
    vict.Character.Head.MeshId = 0
    vict.Character.Head.face:Destroy()
end
if korblox == true then
	vict.Character.RightLowerLeg.MeshId = "902942093"
	vict.Character.RightLowerLeg.Transparency = "1"
	vict.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	vict.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	vict.Character.RightFoot.MeshId = "902942089"
	vict.Character.RightFoot.Transparency = "1"
end

-- extra misc stuff --
if emoji == "none" then 
    elseif emoji == "star" then
    vict.Character.Humanoid.DisplayName = ('[⭐]'.. decodedData.displayName)
    elseif emoji == "check" then
    vict.Character.Humanoid.DisplayName = ('[☑️]'.. decodedData.displayName)
end
local appear = game.Players:GetCharacterAppearanceAsync(victim)
if appear:FindFirstChild("Mesh") and headless == false then
    vict.Character.Head.MeshId = appear.Mesh.MeshId 
end
game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild("OriginalSize"):Destroy()
