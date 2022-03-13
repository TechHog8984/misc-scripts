local Collection = getgc(true);
for I,V in next, Collection do
    if type(V) ~= 'table' then
        rawset(Collection, I, nil);
    end;
end;

local PlayersTable;
for I, Table in next, Collection do
    if rawget(Table, 'GetCharacter') then
        PlayersTable = Table;
        break;
    end;
end;
local PlayerCharacters = getupvalue(PlayersTable.GetCharacter, 1);

local IsA = workspace.IsA;
local FindFirstChild = workspace.FindFirstChild;
local index; index = hookmetamethod(game, '__index', newcclosure(function(...)
    local OLD = index(...);
    local Self, Index = ...;

    if type(Self) == 'userdata' then
        if IsA(Self, 'Player') and Index == 'Character' then
            return PlayerCharacters[Self];
        end;
    end;

    return OLD;
end));

local FakeHumanoidHolders = {};
local FakeHumanoidMT;

local WaitForChild = workspace.WaitForChild;

do 
    FakeHumanoidMT = {
        __tostring = function(Self)
            return 'Humanoid';
        end,
        __index = function(Self, Index)
            local Holder = FakeHumanoidHolders[Self];
            if Index == 'Health' then
                local Suc, Res = pcall(function() return Holder._Character:FindFirstChild'Health'.Value end);
                if Suc and Res then return Res; end;
            end;
            if Index == 'MaxHealth' then
                local Suc, Res = pcall(function() return Holder._Character:FindFirstChild'Health':FindFirstChild'MaxHealth'.Value end);
                if Suc and Res then return Res; end;
            end;
            return Holder[Index];
        end,
        __newindex = function(Self, Index, Value)
            FakeHumanoidHolders[Self][Index] = Value;
        end,
    }
end;

local DefaultHumanoid = Instance.new'Humanoid';
local HumanoidProperties = {
    --data
    'CameraOffset',
    'DisplayDistanceType',
    'DisplayName',
    'HealthDisplayDistance',
    'HealthDisplayType',
    'Name',
    'NameDisplayDistance',
    'NameOcclusion',
    'Parent',
    'RigType',
    --behavior
    'Archivable',
    'BreakJointsOnDeath',
    'RequiresNeck',
    --jump settings
    'AutoJumpEnabled',
    'JumpPower',
    'UseJumpPower',
    --control
    'AutoRotate',
    'Jump',
    'PlatformStand',
    'Sit',
    'TargetPoint',
    'WalkToPart',
    'WalkToPoint',
    --game
    'AutomaticScalingEnabled',
    'Health',
    'HipHeight',
    'MaxHealth',
    'MaxSlopeAngle',
    'WalkSpeed'
};

local FakeHumanoids = {};
local function GetFakeHumanoid(Player, Character)
    local Humanoid = newproxy(true);
    local MT = getmetatable(Humanoid);

    local Holder = {};
    FakeHumanoidHolders[Humanoid] = Holder;

    for I,V in next, FakeHumanoidMT do
        MT[I] = V;
    end;

    Humanoid._Character = Character;
    for I,V in next, HumanoidProperties do
        Humanoid[V] = DefaultHumanoid[V];
    end;
    Humanoid.Parent = Character;
    Humanoid.DisplayName = Player.DisplayName;
    Humanoid.RigType = Enum.HumanoidRigType.R6;
    
    FakeHumanoids[Character] = Humanoid;

    return Humanoid;
end;

local Characters = workspace.Characters;
local index; index = hookmetamethod(Characters, '__index', newcclosure(function(...)
    local Self, Index = ...;
    local Player = type(Self) == 'userdata' and PlayersTable:GetPlayerFromCharacter(Self);
    if Player and type(Index) == 'string' then
        local Body = FindFirstChild(Self, 'Body');
        if type(Body) == 'userdata' then
            if Index == 'Humanoid' then
                local Fake = FakeHumanoids[Self] or GetFakeHumanoid(Player, Self);
                if type(Fake) == 'userdata' then
                    return Fake;
                end;
            end;   

            local NewIndex;
            if Index == 'Head' then
                NewIndex = 'Head';
            elseif Index == 'HumanoidRootPart' or Index == 'Torso' then
                NewIndex = 'Chest';
            
            elseif Index == 'Left Arm' then
                NewIndex = 'LeftArm';
            elseif Index == 'Right Arm' then
                NewIndex = 'RightArm';
            elseif Index == 'LeftUpperArm' then
                NewIndex = 'LeftForeArm';
            elseif Index == 'RightUpperArm' then
                NewIndex = 'RightForeArm';

            elseif Index == 'LeftUpperLeg' then
                NewIndex = 'LeftForeLeg';
            elseif Index == 'RightUpperLeg' then
                NewIndex = 'RightForeLeg';
            elseif Index == 'Left Leg' then
                NewIndex = 'LeftLeg';
            elseif Index == 'Right Leg' then
                NewIndex = 'RightLeg';
            end;

            if NewIndex then
                local Suc, Inst = pcall(FindFirstChild, Body, NewIndex);
                if Suc and type(Inst) == 'userdata' then
                    return Inst;
                end;
            end;
        end;
    end;
    return index(...);
end));

local namecall; namecall = hookmetamethod(game, '__namecall', newcclosure(function(...)
    if getnamecallmethod() == 'FindFirstChild' then
        local Args = {...};
        local Self = Args[1];
        if type(Self) == 'userdata' then
            local Index = Args[2];
            if type(Index) == 'string' then
                local Suc, IsAModel = pcall(IsA, Self, 'Model');
                if Suc and IsAModel == true then
                    local Player = PlayersTable:GetPlayerFromCharacter(Self);
                    if Player then
                        local Suc, Body = pcall(FindFirstChild, Self, 'Body');
                        if Suc and type(Body) == 'userdata' then
                            if Index == 'Humanoid' then
                                local Fake = FakeHumanoids[Self] or GetFakeHumanoid(Player, Self);
                                if type(Fake) == 'userdata' then
                                    return Fake;
                                end;
                            end;   

                            local NewIndex;
                            if Index == 'Head' then
                                NewIndex = 'Head';
                            elseif Index == 'HumanoidRootPart' or Index == 'Torso' then
                                NewIndex = 'Chest';
                            
                            elseif Index == 'Left Arm' then
                                NewIndex = 'LeftArm';
                            elseif Index == 'Right Arm' then
                                NewIndex = 'RightArm';
                            elseif Index == 'LeftUpperArm' then
                                NewIndex = 'LeftForeArm';
                            elseif Index == 'RightUpperArm' then
                                NewIndex = 'RightForeArm';
                
                            elseif Index == 'LeftUpperLeg' then
                                NewIndex = 'LeftForeLeg';
                            elseif Index == 'RightUpperLeg' then
                                NewIndex = 'RightForeLeg';
                            elseif Index == 'Left Leg' then
                                NewIndex = 'LeftLeg';
                            elseif Index == 'Right Leg' then
                                NewIndex = 'RightLeg';
                            end;
                            if NewIndex then
                                local Suc, Inst = pcall(FindFirstChild, Body, NewIndex);
                                if Suc and type(Inst) == 'userdata' then
                                    return Inst;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;

    return namecall(...);
end));
