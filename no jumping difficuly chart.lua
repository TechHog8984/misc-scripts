local player = game:GetService'Players'.LocalPlayer
local stages = workspace.Stages
local checkpoints = stages:GetChildren()

for i = 1, #checkpoints do
    local char = player.Character
    local humanoidrootpart = char.HumanoidRootPart
    local stage = stages[tostring(i)]
    
    firetouchinterest(humanoidrootpart, stage, 0)
    wait(.17)
    firetouchinterest(humanoidrootpart, stage, 1)
    
    wait(.17)
end
