local AlreadySent = false
repeat task.wait()
local plrcount = #game.Players:GetPlayers()
if plrcount < 20 and AlreadySent = false then
Name = game.Players.LocalPlayer.Name
request = http_request or request or HttpPost or syn.request
local HttpS = game:GetService("HttpService")
local message = "Hey <@"..DiscordId..">, "..Name.." needs to server-hop!"
request({
    Url = ("https://discord.com/api/v9/channels/"..channelid.."/messages"),
    Method = "POST",
    Headers = {
        ["Authorization"] = "Bot "..token,
        ["Content-Type"] = "application/json",
    },
    Body = HttpS:JSONEncode({["content"] = message})
})
        AlreadySent = True
        end
    until false
