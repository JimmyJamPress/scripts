local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Anime Fruit Simulator")

--------------------- Game Passes ------------------

local GP = UI:addPage("Game Passes",2,false,6)

GP:addLabel("Game Passes")

GP:addToggle('Teleport Anywhere',function(value)
    if value == true then
        game.Players.LocalPlayer.PassBools.Teleport_Anywhere.Value = true
    else
        game.Players.LocalPlayer.PassBools.Teleport_Anywhere.Value = false
    end
end)

GP:addToggle('Auto Attack',function(value)
    if value == true then
        game.Players.LocalPlayer.PassBools.Auto_Attack.Value = true
    else
        game.Players.LocalPlayer.PassBools.Auto_Attack.Value = false
    end
end)


--------------------- Local ------------------------

local LC = UI:addPage("Local",3,false,6)

LC:addLabel("Local")

LC:addToggle('Anti-AFK',function(value)
    if value == true then
        game:GetService("Players").LocalPlayer.Idled:connect(function()--Anti AFK script made by Wyv#0001

        game:GetService("VirtualUser"):ClickButton2(Vector2.new()) 
        end)
    end
end)

--Created By JamezTheSavage#6382