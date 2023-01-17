-- DISCORD SETTINGS
DiscordId = "Your_Discord_ID" -- Change this to your discord ID
token = "Your_Bots_Token" -- Change this to your discord bot's token
channelid = "ChannelID" -- Change this to the ID of the channel you want server-hop notifications in

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83,3,162)
wait(6)
keypress(0x45)  
wait(2)
keyrelease(0x45)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83,3,167)
game.Players:Chat("/e dance")
Name = game.Players.LocalPlayer.Name
local begs = {
    [1] = "plss donate me only 5",
    [2] = "donate me pls me poor 🥺",
    [3] = "can you donate me plsss",
    [4] = "can someone come to my stand",
    [5] = "dono plzzzzz",
    [6] = "pls donate",
    [7] = "goal 1k saving for avatar",
    [8] = "can someone donate me pls im saving for avatar",
    [9] = "i appreciate my donors a lot thank you for my donos",
    [10] = "help a bacon get a good outfit pls donate :)",
    [11] = "plsss donate me :("
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/illumina0001/ILMA_PlsDonate/main/notifications.lua"))()
repeat task.wait(35)


            local plr = game.Players.LocalPlayer
local ChatMessages = plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
function Cont(frame)
 spawn(function()
        local function check()
            local sq = ''
            for i = 1, #string.gsub(frame.TextLabel.Text, "^%s+", "") do
                sq = sq.. '_'
            end
            if string.gsub(frame.TextLabel.Text, "^%s+", "") == sq then
                return false
                else
                return true
            end
        end

    local info = {string.sub(frame.TextLabel.TextButton.Text,2,#frame.TextLabel.TextButton.Text-2),
        string.gsub(frame.TextLabel.Text, "^%s+", "")
    }
    local ss = info[2]:split(" ")
    print(ss[5])
    if ss[5] == game.Players.LocalPlayer.Name then
        wait(2)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("thank you so much","All")
        end
    end)
end
ChatMessages.ChildAdded:Connect(function(child)
    Cont(child)
end)


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(begs[math.random(1,11)],"All")
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players:Chat("/e dance")
until false


