setfpscap(20)
local Whitelisted = {
}
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
-- { Misc } --
function Send(baby)
	local data = {
		["embeds"] = {
			{
				["author"] = {
					["name"] = baby.Name,
					["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username=" .. baby.Name
				},
				["description"] = "Pardoned from the nuker",
				["color"] = tonumber(16775930),
				["fields"] = {
					{
						["name"] = "Bot Name",
						["value"] = game.Players.LocalPlayer.Name,
						["inline"] = true
					},
					{
						["name"] = "User ID:",
						["value"] = baby.UserId,
						["inline"] = true
					}
				}
			}
		}
	}
	SynWebHook = {
		Url = "",
		Body = game.HttpService:JSONEncode(data),
		Method = "POST",
		Headers = {
			["content-type"] = "application/json"
		}
	}
	syn.request(SynWebHook)
end

function Teleport()
local highestnumber = 0
local srvs = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			if v.playing > highestnumber then
				highestnumber = v.playing
				srvs[1] = v.id
            end
        end
	end
if #srvs > 0 then
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, srvs[1])
end

if er then
Teleport()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-113.54538, -58.7000732, 145.142868, 0.33983025, 5.54401822e-08, -0.940486789, -9.78369457e-08, 1, 2.35965363e-08, 0.940486789 , 8.39955376e-08, 0.33983025)
-- i love pairs!!
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end
for i,v in pairs(game.Players:GetPlayers()) do -- dont ruin whitelisted users games :pray:
if table.find(Friends, v.UserId) then
    Send(v)
    Teleport()
    return end
end
for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Seat") then
        v:Destroy()
    end
end
-- { Spraycan Grinder } --
itemCount = 0
getgenv().groupid = nil
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
local getGroups = game:GetService("GroupService"):GetGroupsAsync(game.Players.LocalPlayer.UserId)
if unpack(getGroups) == nil then
    warn('no groups'); return
else
    for _, groupInfo in pairs(getGroups) do
        if _ == 1 then
            getgenv().groupid = groupInfo.Id
        end
    end
end
function equipall()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA"Tool" and v.Name == "[SprayCan]" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end
function unequip()
    for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA"Tool" and v.Name == "[SprayCan]" then
            v.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end

repeat
    task.wait()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew", getgenv().groupid)        --// join crew
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild'[SprayCan]'; task.wait()   --// wait for tool to be added
    itemCount = itemCount + 1; print(itemCount)                                                     --// add count
    equipall()
until itemCount >= 100
unequip()
wait(1)
-- { The Kill Itself } --
local Character = game.Players.LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid")
Humanoid:SetStateEnabled(Enum["HumanoidStateType"]["Seated"], false)
Humanoid["Sit"] = true;
local function delete()
	Character["LeftFoot"]:WaitForChild("OriginalSize"):Destroy()
	Character["LeftLowerLeg"]:WaitForChild("OriginalSize"):Destroy()
	Character["LeftUpperLeg"]:WaitForChild("OriginalSize"):Destroy()
end
Character["LeftLowerLeg"]["LeftKneeRigAttachment"]["OriginalPosition"]:Destroy();
Character["LeftUpperLeg"]["LeftKneeRigAttachment"]["OriginalPosition"]:Destroy();
Character["LeftLowerLeg"]:WaitForChild("LeftKneeRigAttachment"):Destroy();
Character["LeftUpperLeg"]:WaitForChild("LeftKneeRigAttachment"):Destroy()
for _, v in next, Humanoid:GetChildren() do
	if v:IsA'NumberValue' then
		delete()
		v:Destroy()
	end
end

local LocalPlayer = game.Players.LocalPlayer
local newHum = LocalPlayer.Character.Humanoid:Clone()
newHum.Parent = LocalPlayer.Character
newHum:ChangeState(15)
LocalPlayer.Character.Humanoid:Destroy()

for i = 1,50 do
for i,v in pairs(game.Players:GetPlayers()) do
if LocalPlayer.Backpack:FindFirstChild("[SprayCan]") then
    local tool = LocalPlayer.Backpack:FindFirstChild("[SprayCan]")
        tool.Parent = LocalPlayer.Character
        firetouchinterest(tool.Handle, v.Character['Head'],0)
        end
    end
end
-- { Teleport to Different Server } --
wait(3)
Teleport()
