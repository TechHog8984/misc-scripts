local IsPartVisible = assert(loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/TechHub-V3/main/script/misc/ispartvisible.lua'))(), 'failed to get ispartvisible function')
local EventManager = assert(loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/TechHub-V3/main/script/misc/events.lua'))(), 'failed to get event manager')

local Camera = workspace.CurrentCamera
local PlayerService = game:GetService'Players'
local RunService = game:GetService'RunService'
local UserInputService = game:GetService'UserInputService'
local LocalPlayer = PlayerService.LocalPlayer
local LocalCharacter = nil
local Mouse = LocalPlayer:GetMouse()
local Connections = {}

local TeamCheck = false

local function Vector3ToVector2(Vector)
	return Vector2.new(Vector.X, Vector.Y)
end

local wait = function(t)if t then return wait(t) end;return RunService.Heartbeat:Wait()end

local Players = {} do --player handler
	--local Connections = Players.Connections

	local function PlayerAdded(Player)
		if Player then
			local Table = {}

			Table.CharacterAdded = EventManager:CreateEvent(Player.Name .. ' - CharacterAdded')
			Table.CharacterRemoved = EventManager:CreateEvent(Player.name .. ' - CharacterRemoved')
			Table.HumanoidAdded = EventManager:CreateEvent(Player.Name .. ' - HumanoidAdded')
			Table.HumanoidRemoved = EventManager:CreateEvent(Player.Name .. ' - HumanoidRemoved')
			Table.HumanoidRootPartAdded = EventManager:CreateEvent(Player.Name .. ' - HumanoidRootPartAdded')
			Table.HumanoidRootPartRemoved = EventManager:CreateEvent(Player.Name .. ' - HumanoidRootPartRemoved')

			function PartRemoved(Part)
				if Part then
					local Name = Part.Name or Part
					if Name == 'Humanoid' then
						Table.HumanoidRemoved:Fire()
					elseif Name == 'HumanoidRootPart' then
						Table.HumanoidRootPartRemoved:Fire()
					end
				end
			end

			function PartAdded(Part)
				if Part then
					local Name = Part.Name or Part
					if Name == 'Humanoid' then
						Table.HumanoidAdded:Fire()
					elseif Name == 'HumanoidRootPart' then
						Table.HumanoidRootPartAdded:Fire()
					end
				end
			end

			function CharacterRemoved()
				PartRemoved('Humanoid')
				PartRemoved('HumanoidRootPart')
				Table.CharacterRemoved:Fire()
				Table.Character = nil
				Table.CharacterRemovedConnection:Disconnect()
				Table.PartAddedConnection:Disconnect()
				Table.PartRemovedConnection:Disconnect()
			end

			function CharacterAdded(Character)
				if Character then
					Table.Character = Character
					Table.CharacterAdded:Fire(Character)

					CharacterRemovedConnection = Character:WaitForChild'Humanoid'.Died:Connect(CharacterRemoved)
					PartAddedConnection = Character.ChildAdded:Connect(PartAdded)
					PartRemovedConnection = Character.ChildRemoved:Connect(PartRemoved)

					Table.CharacterRemovedConnection = CharacterRemovedConnection
					Table.PartAddedConnection = PartAddedConnection
					Table.PartRemovedConnection = PartRemovedConnection

					PartAdded( (Character:FindFirstChild'Humanoid' or nil) )
					PartAdded( (Character:FindFirstChild'HumanoidRootPart' or nil) )


					table.insert(Connections, CharacterRemovedConnection)
					table.insert(Connections, PartAddedConnection)
					table.insert(Connections, PartRemovedConnection)
				end
			end

			function Table.GetCharacter()
				return Table.Character or Player.Character or Player.CharacterAdded:Wait()
			end

			function Table.GetPart(part)
				local Character = Table.GetCharacter()
				return Character:FindFirstChild(part) or nil
			end

			CharacterAdded(Table.GetCharacter())

			local CharacterAddedConnection = Player.CharacterAdded:connect(CharacterAdded)
			CharacterAddedConnection = CharacterAddedConnection

			table.insert(Connections, CharacterAddedConnection)

			Players[Player] = Table

			Table.Loaded = true
		end
	end
	local function PlayerRemoved(Player)
		if Player and Player ~= LocalPlayer and Players[Player] then
			local Table = Players[Player]

			Players[Player] = nil
			Table = nil
		end
	end

	for Index, Player in next, PlayerService:GetPlayers() do
		PlayerAdded(Player)
	end

	table.insert(Connections, PlayerService.PlayerAdded:Connect(PlayerAdded))
	table.insert(Connections, PlayerService.PlayerRemoving:Connect(PlayerRemoved))
end

repeat wait() until LocalPlayer and Players[LocalPlayer]
local LocalHandle = Players[LocalPlayer]

--[[
local function GetClosestPlayer()
	local ClosestPlayer = nil

	local MaxDist = math.huge

	for Player, Handle in next, Players do
		LocalCharacter = LocalCharacter or LocalHandle.GetCharacter()
		local LocalHumanoidRootPart = LocalHandle.GetPart('HumanoidRootPart')

		if LocalHumanoidRootPart then
			local Character = Handle.GetCharacter()
			local HumanoidRootPart = Handle.GetPart('HumanoidRootPart')

			if HumanoidRootPart and IsPartVisible(HumanoidRootPart, Character) then
				if MaxDist then
					local Distance = (LocalHumanoidRootPart.Position - HumanoidRootPart.Position).magnitude
					if Distance < MaxDist then
						MaxDist = Distance
						ClosestPlayer = Player
					end
				else
					ClosestPlayer = Player
				end
			end
		end
	end

	return ClosestPlayer
end]]

local function AllowedTeam(Player)
	if TeamCheck then
		if Player.Team and LocalPlayer.Team then
			return Player.Team ~= LocalPlayer.Team
		elseif Player.TeamColor and LocalPlayer.TeamColor then
			return Player.TeamColor ~= LocalPlayer.TeamColor
		end
	end
	return true
end

local function GetPlayerFromPart(Part)
	for Player, Handle in next, Players do
		if Player and Player ~= LocalPlayer then
			local Character = Handle.GetCharacter()
			if Character and Part:IsDescendantOf(Character) then
				return Player
			end
		end
	end
end

local function GetClosestPlayerToCursor()
	if Mouse.Target then
		local Player = GetPlayerFromPart(Mouse.Target)
		if Player and AllowedTeam(Player) then return Player end
	end

	local ClosestPlayer = nil

	local MaxDist = math.huge

	for Player, Handle in next, Players do
		if Player and Player ~= LocalPlayer and AllowedTeam(Player) then
			LocalCharacter = LocalCharacter or LocalHandle.GetCharacter()
			local LocalHumanoidRootPart = LocalHandle.GetPart('HumanoidRootPart')

			if LocalHumanoidRootPart then
				local Character = Handle.GetCharacter()
				local HumanoidRootPart = Handle.GetPart('HumanoidRootPart')

				if HumanoidRootPart and IsPartVisible(HumanoidRootPart, Character) then
					if MaxDist then
						local MousePos = Vector2.new(Mouse.X, Mouse.Y)
						local ScreenPos, Onscreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)

						if Onscreen then
							local Distance = (MousePos - Vector3ToVector2(ScreenPos)).Magnitude
							if Distance < MaxDist then
								MaxDist = Distance
								ClosestPlayer = Player
							end
						end
					else
						ClosestPlayer = Player
					end
				end
			end
		end
	end


	return ClosestPlayer
end

HeartbeatConnection = RunService.Heartbeat:Connect(function()
	if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
		LocalCharacter = LocalCharacter or LocalHandle.GetCharacter()
		local ClosestPlayer = GetClosestPlayerToCursor()
			if ClosestPlayer then
			local ClosestHandle = Players[ClosestPlayer]
			local ClosestCharacter = ClosestHandle.GetCharacter()

			local ClosestPlayerHumanoidRootPart = ClosestHandle.GetPart('HumanoidRootPart')
			local ClosestPlayerHead = ClosestHandle.GetPart('Head')

			if ClosestPlayerHumanoidRootPart and ClosestPlayerHead and IsPartVisible(ClosestPlayerHumanoidRootPart, ClosestCharacter) then
				Camera.CFrame = CFrame.new(Camera.CFrame.Position, ClosestPlayerHead.Position)
			end
		end
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.RightControl) then
		for I, Connection in next, Connections do
			Connection:Disconnect()
		end
		HeartbeatConnection:Disconnect()
	end
end)
