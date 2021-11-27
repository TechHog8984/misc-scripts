local _getservice = game.GetService
local UIS = _getservice(game, 'UserInputService')
local CAS = _getservice(game, 'ContextActionService')
local TweenService = _getservice(game, 'TweenService')

local Library = {
	Selected = nil,
	EnterCallBacks = {},
}
local Connections = {}

function GetGui()
	--GuiToLua V3

	--objects
	local Aimbot_RUI_V1_0 = Instance.new'ScreenGui'

	local MainFrame = Instance.new'Frame'
	local Container = Instance.new'Frame'
	local template = Instance.new'TextLabel'
	local UICorner = Instance.new'UICorner'
	local SelectedIndicator = Instance.new'TextLabel'
	local UnderLine = Instance.new'TextLabel'

	--properties
	Aimbot_RUI_V1_0.DisplayOrder = 100
	Aimbot_RUI_V1_0.IgnoreGuiInset = true
	Aimbot_RUI_V1_0.Name = 'Aimbot RUI V1.0'
	Aimbot_RUI_V1_0.Parent = game:GetService'Players'.LocalPlayer:WaitForChild('PlayerGui', math.huge)
	Aimbot_RUI_V1_0.ResetOnSpawn = false

	MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	MainFrame.BackgroundTransparency = 0.30000001192093
	MainFrame.BorderSizePixel = 0
	MainFrame.Name = 'MainFrame'
	MainFrame.Parent = Aimbot_RUI_V1_0
	MainFrame.Position = UDim2.new(0.77387917041779, 0, 0, 0)
	MainFrame.Size = UDim2.new(0, 232, 0, 31)

	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1
	Container.BorderSizePixel = 0
	Container.Name = 'Container'
	Container.Parent = MainFrame
	Container.Size = UDim2.new(0, 232, 0, 411)

	template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	template.BackgroundTransparency = 1
	template.BorderSizePixel = 0
	template.Name = 'template'
	template.Parent = Container
	template.Size = UDim2.new(0, 232, 0, 31)
	template.Visible = false
	template.Font = Enum.Font.Ubuntu
	template.Text = 'template'
	template.TextColor3 = Color3.fromRGB(255, 255, 255)
	template.TextSize = 17

	UICorner.Parent = MainFrame

	SelectedIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SelectedIndicator.BackgroundTransparency = 1
	SelectedIndicator.BorderSizePixel = 0
	SelectedIndicator.Name = 'SelectedIndicator'
	SelectedIndicator.Parent = MainFrame
	SelectedIndicator.Position = UDim2.new(7.4505805969238e-09, 0, 0, 0)
	SelectedIndicator.Size = UDim2.new(0, 33, 0, 31)
	SelectedIndicator.Font = Enum.Font.Ubuntu
	SelectedIndicator.Text = '>'
	SelectedIndicator.TextColor3 = Color3.fromRGB(255, 255, 255)
	SelectedIndicator.TextSize = 17
	SelectedIndicator.TextWrapped = true

	UnderLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UnderLine.BorderSizePixel = 0
	UnderLine.Name = 'UnderLine'
	UnderLine.Parent = SelectedIndicator
	UnderLine.Position = UDim2.new(0, 0, 1, 0)
	UnderLine.Size = UDim2.new(0, 0, 0, 1)
	UnderLine.Font = Enum.Font.Ubuntu
	UnderLine.Text = ''
	UnderLine.TextColor3 = Color3.fromRGB(255, 255, 255)
	UnderLine.TextSize = 17

	pcall(function()
		syn.protect_gui(Aimbot_RUI_V1_0)
		Aimbot_RUI_V1_0.Parent = game:GetService'CoreGui'
	end)

	return Aimbot_RUI_V1_0, MainFrame, SelectedIndicator, Container, template
end

local Gui, MainFrame, SelectedIndicator, Container, Template = GetGui()

coroutine.wrap(function() --ContainerHandler
	local Children = {}

	table.insert(Connections, Container.ChildAdded:Connect(function(Child)
		if Child:IsA'TextLabel' and Child.Visible == true and Child.Name ~= 'template' then
			Child.Position = UDim2.new(0, 0, 0, #Children * Child.Size.Y.Offset)
			
			table.insert(Children, Child)
			
			TweenService:Create(MainFrame, TweenInfo.new(.15, 10), {Size = UDim2.new(0, 232, 0, #Children * Child.Size.Y.Offset)}):Play()
			
			if #Children == 1 then
				Library.Selected = Child
				TweenService:Create(SelectedIndicator.UnderLine, TweenInfo.new(.35, 10), {Size = UDim2.new(0, 232, 0, 1)}):Play()
			end
		end
	end))

	table.insert(Connections, Container.ChildRemoved:Connect(function(Removed)
		if Removed:IsA'TextLabel' and Removed.Visible == true and Removed.Name ~= 'template' and table.find(Children, Removed) then
			local RemovedIndex = table.find(Children, Removed)
			
			TweenService:Create(MainFrame, TweenInfo.new(.15, 10), {Size = UDim2.new(0, 232, 0, #Children * Child.Size.Y.Offset)}):Play()
			
			for I, Child in next, Children do
				if Child and Child ~= Removed and Child:IsA'TextLabel' and Child.Visible == true and Child.Name ~= 'template' and I > RemovedIndex then
					local Old = Child.Position
					
					Child.Position = UDim2.new(0, 0, 0, Old.Y.Offset - Child.Size.Y.Offset)
				end
			end
			
			table.remove(Children, RemovedIndex)
		end
	end))

	local function HandleAction(Name, InputState, Input)
		if InputState == Enum.UserInputState.End then
			local Selected = Library.Selected
			if Selected and Name == 'Aimbot RUI V1.0 - UP' or Name == 'Aimbot RUI V1.0 - DOWN' then
				local SelectedIndex = table.find(Children, Selected)
				if SelectedIndex then
					local OldSelected = Library.Selected

					Library.Selected = (
						Name == 'Aimbot RUI V1.0 - UP' and Children[SelectedIndex - 1]
					) or (
						Name == 'Aimbot RUI V1.0 - DOWN' and Children[SelectedIndex + 1]
					) or Library.Selected
					
					if Library.Selected and OldSelected ~= Library.Selected then
						TweenService:Create(SelectedIndicator.UnderLine, TweenInfo.new(.15, 10), {Size = UDim2.new(0, 0, 0, 1)}):Play()
						TweenService:Create(SelectedIndicator, TweenInfo.new(.35, 10), {Position = UDim2.new(0, 0, 0, Library.Selected.Position.Y.Offset)}):Play()
						wait(.15)
						TweenService:Create(SelectedIndicator.UnderLine, TweenInfo.new(.15, 10), {Size = UDim2.new(0, 232, 0, 1)}):Play()
					end
				end
			end
		end
	end

	table.insert(Connections, UIS.InputBegan:Connect(function(Input, GPE)
		local XD = false
		if GPE then return end
		Input.Changed:Connect(function()
			if XD then return end
			if Input.UserInputState == Enum.UserInputState.End then
				if Input.KeyCode == Enum.KeyCode.Return then
					local Selected = Library.Selected
					if Selected then
						local EnterCallBack = Library.EnterCallBacks[Selected]
						if EnterCallBack then
							coroutine.wrap(EnterCallBack)()
							XD = true
						end
					end
				end
			end
		end)
	end))
	CAS:BindAction('Aimbot RUI V1.0 - UP', HandleAction, false, Enum.KeyCode.Up)
	CAS:BindAction('Aimbot RUI V1.0 - DOWN', HandleAction, false, Enum.KeyCode.Down)
end)()

function Library:AddOption(Info)
	local Name = Info.Name

	local Object = Template:Clone()
	Object.Visible = true
	Object.Text = Name
	Object.Name = Name
	Object.Parent = Container

	Library.EnterCallBacks[Object] = Info.EnterCallBack

	return Object
end

function Library:Close()
	CAS:UnbindAction('Aimbot RUI V1.0 - UP')
	CAS:UnbindAction('Aimbot RUI V1.0 - DOWN')

	for I, Con in next, Connections do
		Con:Disconnect()
	end

	Gui:Destroy()
end

return Library
