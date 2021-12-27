local waitforchild = game.WaitForChild

local function GetFinish()
    local Finishes = waitforchild(waitforchild(workspace, 'tower', math.huge), 'finishes', math.huge)
    local Finish = nil

    for I, V in next, Finishes:GetChildren() do
        local Parts = V:GetTouchingParts()
        if #Parts > 4 then
            Finish = V
            break
        end
    end
    return Finish
end

shared._TOH_WALKSPEED_X11_J = 16
shared._TOH_JUMPPOWER_X11_J = 50

local Player = game:GetService'Players'.LocalPlayer
local oldnewindex = nil

oldnewindex = hookmetamethod(game, '__newindex', newcclosure(function(...)
    local Self, Key, Value = ...
    
    if shared._TOH_GODMODE_X11_J then
        local Character = Player.Character
        local Humanoid = nil
        if Character then Humanoid = Character:FindFirstChild'Humanoid' end
        if Humanoid and Self == Humanoid and tostring(Key) == 'Health' and tonumber(Value) == 0 then
            return
        end
    end
    return oldnewindex(...)
end))
game:GetService'RunService'.Heartbeat:Connect(function()
    local Character = Player.Character
    if Character then 
        local Humanoid = Character:FindFirstChild'Humanoid' 
        if Humanoid then
            local WS = shared._TOH_WALKSPEED_X11_J or 16
            local JP = shared._TOH_JUMPPOWER_X11_J or 50
            
            Humanoid.WalkSpeed = WS
            Humanoid.JumpPower = JP
        end
    end
end)
coroutine.wrap(function()
    while wait(1) do
        if shared._TOH_AUTOWIN_X11_J then
            local Character = Player.Character
            if Character then
                local HumanoidRootPart = Character:FindFirstChild'HumanoidRootPart'
                if HumanoidRootPart then
                    HumanoidRootPart.CFrame = GetFinish().CFrame
                end
            end
        end
    end
end)()

local UIL = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local Window = UIL:Window('Tower Of Hell', nil, Enum.KeyCode.RightControl)

local MainTab = Window:Tab'Main'
MainTab:Toggle('God Mode', shared._TOH_GODMODE_X11_J == true, function(status)
    shared._TOH_GODMODE_X11_J = status
end)

local FarmingTab = Window:Tab'Farming'
FarmingTab:Toggle('Auto Win', shared._TOH_AUTOWIN_X11_J == true, function(status)
    shared._TOH_AUTOWIN_X11_J = status
end)

local LocalPlayerTab = Window:Tab'LocalPlayer'
LocalPlayerTab:Slider('Walkspeed', 16, 200, 0, function(amount)
    shared._TOH_WALKSPEED_X11_J = amount
end)
LocalPlayerTab:Slider('Jumppower', 50, 200, 0, function(amount)
    shared._TOH_JUMPPOWER_X11_J = amount
end)

local SettingsTab = Window:Tab'Settings'
SettingsTab:Colorpicker('UI Color', Color3.fromRGB(44, 120, 224), function(color)
    UIL:ChangePresetColor(color)
end)

local CreditsTab = Window:Tab'Credits'
CreditsTab:Button('Copied off of: Nicuse#6163 (Copy Discord)', function()
    setclipboard('Nicuse#6163')
    UIL:Notification('Copied\nNicuse#6163', '', 'Ok')
end)
CreditsTab:Button('Scripter: TechHog#8984 (Copy Discord)', function()
    setclipboard('TechHog#8984')
    UIL:Notification('Copied\nTechHog#8984', '', 'Ok')
end)
CreditsTab:Button('Copy UI Library Thread (V3rm)', function()
    setclipboard('https://v3rmillion.net/showthread.php?tid=1098651')
    UIL:Notification('Copied\nV3rm\nthread link.', '', 'Ok')
end)
CreditsTab:Button('Copy UI Library GitHub', function()
    setclipboard('https://github.com/dawid-scripts/UI-Libs/blob/main/Vape.txt') 
    UIL:Notification('Copied\nGitHub link.', '', 'Ok')
end)