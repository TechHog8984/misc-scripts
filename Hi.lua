local AchievementsFrame = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainUI"):WaitForChild("LobbyFrame"):WaitForChild("Achievements");
local Frame = AchievementsFrame:WaitForChild("Frame");
local DescriptionLabel = Frame:WaitForChild("Desc");
local ReasonLabel = Frame:WaitForChild("Reason");

local Achievements = require(game:GetService("ReplicatedStorage"):WaitForChild("Achievements"));

local function getCurrent()
    local name = Frame:GetAttribute("CurrentAchievement");
    return name and Achievements[name];
end;
local function getCurrentDescription()
    local current = getCurrent();
    return current and current.Desc;
end;
local function getCurrentReason()
    local current = getCurrent();
    return current and current.Reason;
end;

local newindex; newindex = hookmetamethod(game, "__newindex", newcclosure(function(...)
    local self, key, value = ...;
    key = tostring(key);
    if key == "Text" then
        if self == DescriptionLabel then
            value = getCurrentDescription() or value;
        elseif self == ReasonLabel then
            value = getCurrentReason() or value;
        end;
        return newindex(self, key, value);
    end;
    return newindex(...);
end));
