--[=[
	Made with ObjectToCode v1.3 by TechHog8984
	Report any bugs to the user above.
]=]
local _Modules_ = {};
local function _New_(a)local b=a[1];table.remove(a,1);local c=Instance.new(b);local d=a[1];if d then c.Parent=d;table.remove(a,1);end;for K,V in next,a do c[K]=V;end;return c;end;

--objects
local TeXplorer = _New_{"ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"),
	Name = "TeXplorer",
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
};

local Main = _New_{"Frame", TeXplorer,
	BackgroundColor3 = Color3.fromRGB(60.00000022351742, 60.00000022351742, 60.00000022351742),
	BorderSizePixel = 0,
	Name = "Main",
	Position = UDim2.new(1, -300, 0, 0),
	Size = UDim2.new(0, 300, 1, 0),
};

local Explorer = _New_{"Frame", Main,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Explorer",
	Size = UDim2.new(1, 0, 1, -280),
};

local ObjectContainer = _New_{"ScrollingFrame", Explorer,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "ObjectContainer",
	Position = UDim2.new(0, 0, 0, 24),
	Size = UDim2.new(1, 0, 1, -24),
	CanvasSize = UDim2.new(0, 0, 0, 0),
	ScrollBarImageColor3 = Color3.fromRGB(100.00000923871994, 100.00000923871994, 100.00000923871994),
	ScrollBarThickness = 4,
};

local UIListLayout = _New_{"UIListLayout", ObjectContainer,
	SortOrder = Enum.SortOrder.LayoutOrder,
};

local Object = _New_{"Frame", ObjectContainer,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Object",
	Selectable = true,
	Size = UDim2.new(1, 0, 0, 20),
};

local Children = _New_{"Frame", Object,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Children",
	Position = UDim2.new(0, 0, 0, 20),
	Size = UDim2.new(0, 10000, 1, -20),
	ClipsDescendants = true,
};

local UIListLayout_0 = _New_{"UIListLayout", Children,
	SortOrder = Enum.SortOrder.LayoutOrder,
};

local Top = _New_{"TextButton", Object,
	Active = false,
	AutoButtonColor = false,
	BackgroundColor3 = Color3.fromRGB(60.00000022351742, 60.00000022351742, 60.00000022351742),
	BorderSizePixel = 0,
	Name = "Top",
	Selectable = false,
	Size = UDim2.new(1, 0, 0, 20),
	Text = "",
	TextTransparency = 1,
};

local Content = _New_{"Frame", Top,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Content",
	Size = UDim2.new(1, 0, 0, 20),
};

local MinimizeButton = _New_{"ImageButton", Content,
	BackgroundTransparency = 1,
	Name = "MinimizeButton",
	Position = UDim2.new(0, 0, 0, 2),
	Size = UDim2.new(0, 20, 0, 16),
	ZIndex = 2,
	Image = "rbxassetid://3926305904",
	ImageRectOffset = Vector2.new(924, 884),
	ImageRectSize = Vector2.new(36, 36),
};

local IconLabel = _New_{"ImageLabel", Content,
	Active = true,
	BackgroundTransparency = 1,
	Name = "IconLabel",
	Position = UDim2.new(0, 26, 0, 0),
	Selectable = true,
	Size = UDim2.new(0, 20, 0, 20),
	ZIndex = 2,
	Image = "rbxassetid://3926305904",
	ImageRectOffset = Vector2.new(84, 244),
	ImageRectSize = Vector2.new(36, 36),
};

local NameLabel = _New_{"TextLabel", Content,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "NameLabel",
	Position = UDim2.new(0, 54, 0, 0),
	Size = UDim2.new(1, -54, 0, 20),
	Font = Enum.Font.Unknown,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
	Text = "Object",
	TextColor3 = Color3.fromRGB(222.00000196695328, 222.00000196695328, 222.00000196695328),
	TextSize = 14,
	TextXAlignment = Enum.TextXAlignment.Left,
};

local Properties = _New_{"Frame", Main,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Properties",
	Position = UDim2.new(0, 0, 1, -280),
	Size = UDim2.new(1, 0, 0, 280),
};

local TopBar = _New_{"Frame", Properties,
	BackgroundColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707),
	BorderSizePixel = 0,
	Name = "TopBar",
	Size = UDim2.new(1, 0, 0, 24),
};

local Minimize = _New_{"TextButton", TopBar,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Minimize",
	Position = UDim2.new(1, -42, 0, 3),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = false,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "-",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Close = _New_{"TextButton", TopBar,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Close",
	Position = UDim2.new(1, -21, 0, 3),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = false,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Label = _New_{"TextLabel", Close,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Label",
	Selectable = true,
	Size = UDim2.new(1, 0, 1, -4),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "x",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Title = _New_{"TextLabel", TopBar,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Title",
	Position = UDim2.new(0, 48, 0, 0),
	Size = UDim2.new(1, -96, 1, 0),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Properties",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 15,
	TextWrapped = true,
};

local PropertyContainer = _New_{"ScrollingFrame", Properties,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.fromRGB(27.000000290572643, 42.000001296401024, 53.00000064074993),
	BorderSizePixel = 0,
	Name = "PropertyContainer",
	Position = UDim2.new(0, 0, 0, 24),
	Selectable = false,
	Size = UDim2.new(1, 0, 1, -24),
	AutomaticCanvasSize = Enum.AutomaticSize.XY,
	CanvasSize = UDim2.new(0, 0, 0, 0),
	ScrollBarThickness = 6,
	ScrollingDirection = Enum.ScrollingDirection.Y,
	VerticalScrollBarInset = Enum.ScrollBarInset.Always,
};

local UIListLayout_1 = _New_{"UIListLayout", PropertyContainer,
};

local Property = _New_{"Frame", PropertyContainer,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Property",
	Size = UDim2.new(1, 0, 0, 22),
};

local Left = _New_{"Frame", Property,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Left",
	Position = UDim2.new(0, 1, 0, 1),
	Selectable = true,
	Size = UDim2.new(0.5, -2, 1, -2),
};

local TextButton = _New_{"TextButton", Left,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0, 30, 0, 0),
	Size = UDim2.new(1, -30, 1, 0),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Property",
	TextColor3 = Color3.fromRGB(210.00001788139343, 210.00001788139343, 210.00001788139343),
	TextSize = 14,
	TextTruncate = Enum.TextTruncate.AtEnd,
	TextXAlignment = Enum.TextXAlignment.Left,
};

local UIStroke = _New_{"UIStroke", Left,
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	LineJoinMode = Enum.LineJoinMode.Miter,
};

local DropdownArrow = _New_{"ImageLabel", Left,
	Active = true,
	BackgroundTransparency = 1,
	Name = "DropdownArrow",
	Position = UDim2.new(0, 4, 0, 2),
	Rotation = 90,
	Selectable = true,
	Size = UDim2.new(0, 18, 0, 18),
	ZIndex = 2,
	Image = "rbxassetid://3926307971",
	ImageRectOffset = Vector2.new(164, 484),
	ImageRectSize = Vector2.new(36, 36),
};

local Right = _New_{"Frame", Property,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Right",
	Position = UDim2.new(0.5, 0, 0, 1),
	Selectable = true,
	Size = UDim2.new(0.5, -2, 1, -2),
};

local UIStroke_0 = _New_{"UIStroke", Right,
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	LineJoinMode = Enum.LineJoinMode.Miter,
};

local TextBox = _New_{"TextBox", Right,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ClearTextOnFocus = false,
	Position = UDim2.new(0, 6, 0, 0),
	Size = UDim2.new(1, -6, 1, 0),
	Visible = false,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	PlaceholderColor3 = Color3.fromRGB(0, 0, 0),
	Text = "Value",
	TextColor3 = Color3.fromRGB(210.00001788139343, 210.00001788139343, 210.00001788139343),
	TextSize = 14,
	TextTruncate = Enum.TextTruncate.AtEnd,
	TextXAlignment = Enum.TextXAlignment.Left,
};

local CheckBox = _New_{"TextButton", Right,
	AutoButtonColor = false,
	BackgroundColor3 = Color3.fromRGB(44.000001177191734, 178.00000458955765, 255),
	BorderSizePixel = 0,
	Name = "CheckBox",
	Position = UDim2.new(0, 8, 0, 4),
	Size = UDim2.new(0, 12, 0, 12),
	Visible = false,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "",
	TextColor3 = Color3.fromRGB(210.00001788139343, 210.00001788139343, 210.00001788139343),
	TextSize = 14,
};

local UIStroke_1 = _New_{"UIStroke", CheckBox,
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.fromRGB(255, 255, 255),
	Thickness = 1.2999999523162842,
};

local UICorner = _New_{"UICorner", CheckBox,
	CornerRadius = UDim.new(0, 4),
};

local Icon = _New_{"ImageLabel", CheckBox,
	Active = true,
	BackgroundTransparency = 1,
	LayoutOrder = 5,
	Name = "Icon",
	Selectable = true,
	Size = UDim2.new(1, 0, 1, 0),
	ZIndex = 2,
	Image = "rbxassetid://3926305904",
	ImageRectOffset = Vector2.new(644, 204),
	ImageRectSize = Vector2.new(36, 36),
};

local Dropdown = _New_{"Frame", Property,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Dropdown",
	Position = UDim2.new(0, 0, 1, 0),
	Size = UDim2.new(1, 0, 0, 0),
	Visible = false,
};

local UIListLayout_2 = _New_{"UIListLayout", Dropdown,
	SortOrder = Enum.SortOrder.LayoutOrder,
};

local TopBar_0 = _New_{"Frame", Main,
	BackgroundColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707),
	BorderSizePixel = 0,
	Name = "TopBar",
	Size = UDim2.new(1, 0, 0, 24),
};

local Minimize_0 = _New_{"TextButton", TopBar_0,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Minimize",
	Position = UDim2.new(1, -42, 0, 3),
	Size = UDim2.new(0, 18, 0, 18),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "-",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Close_0 = _New_{"TextButton", TopBar_0,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Close",
	Position = UDim2.new(1, -21, 0, 3),
	Size = UDim2.new(0, 18, 0, 18),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Label_0 = _New_{"TextLabel", Close_0,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Label",
	Selectable = true,
	Size = UDim2.new(1, 0, 1, -4),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "x",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Title_0 = _New_{"TextLabel", TopBar_0,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Title",
	Position = UDim2.new(0, 48, 0, 0),
	Size = UDim2.new(1, -96, 1, 0),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Explorer",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 15,
	TextWrapped = true,
};

local LocalScript = _New_{"LocalScript", TeXplorer,
};

local InstanceList = _New_{"ModuleScript", LocalScript,
	Name = "InstanceList",
};

local ListItem = _New_{"ModuleScript", InstanceList,
	Name = "ListItem",
};

local Properties_0 = _New_{"ModuleScript", InstanceList,
	Name = "Properties",
};

local PropertyObject = _New_{"ModuleScript", Properties_0,
	Name = "PropertyObject",
};

local Conversion = _New_{"ModuleScript", PropertyObject,
	Name = "Conversion",
};

local Api = _New_{"ModuleScript", Properties_0,
	Name = "Api",
};

local Tween = _New_{"ModuleScript", LocalScript,
	Name = "Tween",
};

local DefaultSettings = _New_{"ModuleScript", LocalScript,
	Name = "DefaultSettings",
};

local Notification = _New_{"ModuleScript", LocalScript,
	Name = "Notification",
};

local NotificationList = _New_{"Frame", TeXplorer,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "NotificationList",
	Position = UDim2.new(0.5, -10, 0, 10),
	Size = UDim2.new(0.5, 0, 1, -20),
};

local UIListLayout_3 = _New_{"UIListLayout", NotificationList,
	Padding = UDim.new(0, 10),
	HorizontalAlignment = Enum.HorizontalAlignment.Right,
	SortOrder = Enum.SortOrder.LayoutOrder,
	VerticalAlignment = Enum.VerticalAlignment.Bottom,
};

local Notification_0 = _New_{"Frame", NotificationList,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Notification",
	Position = UDim2.new(1, -250, 1, -60),
	Size = UDim2.new(0, 240, 0, 70),
};

local Notification_1 = _New_{"Frame", Notification_0,
	BackgroundColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707),
	BorderSizePixel = 0,
	Name = "Notification",
	Size = UDim2.new(1, 0, 1, 0),
};

local Close_1 = _New_{"TextButton", Notification_1,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Close",
	Position = UDim2.new(1, -21, 0, 3),
	Size = UDim2.new(0, 18, 0, 18),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Label_1 = _New_{"TextLabel", Close_1,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Label",
	Selectable = true,
	Size = UDim2.new(1, 0, 1, -4),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "x",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 20,
	TextWrapped = true,
};

local Title_1 = _New_{"TextLabel", Notification_1,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Name = "Title",
	Position = UDim2.new(0, 8, 0.5, -15),
	Size = UDim2.new(1, -16, 0, 30),
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Notification",
	TextColor3 = Color3.fromRGB(222.0000171661377, 222.0000171661377, 222.0000171661377),
	TextSize = 15,
	TextStrokeColor3 = Color3.fromRGB(255, 255, 255),
	TextWrapped = true,
};

local Status = _New_{"Frame", Notification_1,
	BackgroundColor3 = Color3.fromRGB(90.00000223517418, 90.00000223517418, 90.00000223517418),
	BorderSizePixel = 0,
	Name = "Status",
	Position = UDim2.new(0, 2, 1, -8),
	Size = UDim2.new(1, -6, 0, 6),
};

--ModuleScripts
_Modules_[InstanceList] = function()--[[InstanceList]] 
	local script = InstanceList;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local ListItem = require(script.ListItem);
	local Properties = require(script.Properties);
	
	local InstanceList = {};InstanceList.__index = InstanceList;
	
	local blacklist;
	function InstanceList.new(MainFrame, ObjectTemplate, PropertyTemplate)
		
		local ObjectContainer = MainFrame.Explorer.ObjectContainer;
		local ObjectListLayout = ObjectContainer.UIListLayout;
		local instancelist = setmetatable({
			_type = "InstanceList",
			List = {
				[game] = {
					listobject = {
						Children = ObjectContainer,
					},
					ContentPosition = UDim2.new()
				}
			},
			Settings = require(script.Parent.DefaultSettings),
			MainFrame = MainFrame,
			ObjectContainer = ObjectContainer,
			ObjectListLayout = ObjectListLayout,
			ObjectTemplate = ObjectTemplate
		}, InstanceList);
		instancelist.Properties = Properties.new(instancelist, PropertyTemplate);
		
		local function updateCanvasSize()
			local AbsoluteContentSize = ObjectListLayout.AbsoluteContentSize; 
			ObjectContainer.CanvasSize = UDim2.fromOffset(AbsoluteContentSize.X, AbsoluteContentSize.Y);
		end;
		ObjectListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize);
		updateCanvasSize();
		
		return instancelist;
	
	end;
	function InstanceList.add(self, listitem)
	
		assert(type(self) == "table" and getmetatable(self) == InstanceList, "Use colon notation on an InstanceList");
	
		assert(type(listitem) == "table", "Expected 'table' for listitem, got " .. type(listitem));
		assert(getmetatable(listitem) == ListItem, "Expected a ListItem for listitem");
		
		if listitem.Instance:IsDescendantOf(self.MainFrame) then
			return;
		end;
		
		--task.wait();
		
		local listobject = listitem:createObject();
		
		--print("adding ", listitem.Instance, " to list");
		self.List[listitem.Instance] = listitem;
		listitem:addChildrenToList();
	
		return listitem;
	
	end;
	function InstanceList.addFromInstance(self, instance)
	
		assert(type(self) == "table" and getmetatable(self) == InstanceList, "Use colon notation on an InstanceList");
		assert(typeof(instance) == "Instance", "Expected 'Instance' for instance, got " .. typeof(instance));
	
		return self:add(ListItem.new(self, instance));
	
	end;
	
	function InstanceList.getParent(self, listitem)
	
		assert(type(self) == "table" and getmetatable(self) == InstanceList, "Use colon notation on an InstanceList");
	
		assert(type(listitem) == "table", "Expected 'table' for listitem, got " .. type(listitem));
		assert(getmetatable(listitem) == ListItem, "Expected a ListItem for listitem");
		
		if listitem.Instance.Parent then
			return assert(self.List[listitem.Instance.Parent], "Failed to get parent");
		end;
	
	end;
	
	return InstanceList
end;

_Modules_[ListItem] = function()--[[ListItem]] 
	local script = ListItem;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local Tween = require(script.Parent.Parent.Tween);
	local Notification = require(script.Parent.Parent.Notification);
	
	local BaseDragSize;
	local ListItem = {};ListItem.__index = ListItem;
	
	function ListItem.new(instancelist, instance)
	
		assert(type(instancelist) == "table", "Expected 'table' for instancelist, got " .. type(instancelist));
		assert(type(rawget(instancelist, "_type")) == "string" and rawget(instancelist, "_type") == "InstanceList", "Expected an InstanceList for instancelist");
		assert(typeof(instance) == "Instance", "Expected 'Instance' for instance, got " .. typeof(instance));
	
		do
			local a = instancelist.ObjectTemplate.Top.Content;
			BaseDragSize = UDim2.new(0, a.IconLabel.Position.X.Offset + a.IconLabel.Size.X.Offset + 6, 0, 20);
		end;
		return setmetatable({
			_type = "ListItem",
			InstanceList = instancelist,
			Instance = instance,
	
			minimized = true,
			children = {},
			connections = {}
		}, ListItem);
	
	end;
	
	function ListItem.createObject(self)
	
		assert(type(self) == "table" and getmetatable(self) == ListItem, "Use colon notation on a ListItem");
	
		local Object = self.InstanceList.ObjectTemplate:Clone();
		local Parent = self.InstanceList:getParent(self);
		Object.Parent = Parent.listobject.Children;
	
		local Top = Object.Top;
		local Content = Top.Content;
		Content.NameLabel.Text = self.Instance.Name;
		Content.Position = UDim2.fromOffset(Parent.ContentPosition.X.Offset + 26, 0);
	
		self.listobject = Object;
		self.ContentPosition = Content.Position;
	
		Content.MinimizeButton.MouseButton1Click:Connect(function()
			self:toggleMinimized();
		end);
	
		local IsButton1Down = false;
		local Drag : Instance;
		local DragConnection : RBXScriptConnection;
	
		Top.InputBegan:Connect(function(Input)
			if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return;
			end;
			IsButton1Down = true;
			self:select(true);
			--Drag = self:createDrag();
			local c; c = Input.Changed:Connect(function()
				if Input.UserInputState ~= Enum.UserInputState.Change and Input.UserInputState ~= Enum.UserInputState.Begin then
					IsButton1Down = false;
					c:Disconnect();
					--self:moveToDrag(Drag); -- crashes
	
					if not DragConnection then
						return;
					end;
					local Position = Drag.AbsolutePosition.Y;
					local Closest : Instance, ClosestDistance : number = self.InstanceList.Hovering, nil;
					if not Closest then
						for Inst, Object in next, self.InstanceList.List do
							if Inst == game or not Object:canBeVisible() then
								continue;
							end;
							local Distance = math.abs(Object.listobject.AbsolutePosition.Y - Position);
							if (not Closest) or (Closest and Distance < ClosestDistance) then
								Closest = Object;
								ClosestDistance = Distance;
							end;
						end;
					end;
					--if self.Instance.Parent ~= game then
					--	self.InstanceList.List[self.Instance.Parent]:removeChild(self);
					--	Closest:addChild(self);
					--end;
					DragConnection:Disconnect();
					DragConnection = nil;
	
					Drag:Destroy()
					Drag=nil;
	
					local Inst = self.Instance;
					local NewParent = Closest.Instance;
					if NewParent ~= Inst and NewParent ~= Inst.Parent then
						xpcall(function()
							self.Instance.Parent = Closest.Instance;
							Closest:minimize(false);
							self:showInCanvas();
							
							
							self.ContentPosition = UDim2.fromOffset(Closest.ContentPosition.X.Offset + 26, 0);
							self.listobject.Top.Content.Position = self.ContentPosition;
						end, function(err)
							err = tostring(err);
							if err:find("would result in circular reference") then
								err = "Cannot parent an object to one of its descendants.";
							end;
							Notification.Error(err);
						end);
					end;
				end;
			end);
		end);
		game:GetService("UserInputService").InputChanged:Connect(function(Input)
			if self.Instance.Parent == game then
				return;
			end;
			if not Drag and IsButton1Down and Input.UserInputType == Enum.UserInputType.MouseMovement then
				--print(Input.Position);
				Drag = self:createDrag();
				DragConnection = game:GetService("UserInputService").InputChanged:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement then
						Drag.Position = UDim2.fromOffset(Input.Position.X - Drag.Parent.AbsolutePosition.X - 26, Input.Position.Y);
					end;
				end);
			end;
		end);
	
		Top.MouseEnter:Connect(function()
			self.InstanceList.Hovering = self;
			if not self.selected then
				Tween.PlayNew(Top, Tween.TweenInfo(0.35, 8), {BackgroundColor3 = Color3.fromRGB(76, 76, 76)});
			end;
		end);
		Top.MouseLeave:Connect(function()
			if not self.selected then
				Tween.PlayNew(Top, Tween.TweenInfo(0.35, 8), {BackgroundColor3 = Color3.fromRGB(60, 60, 60)});
			end;
			if self.InstanceList.Hovering ~= self then
				return;
			end;
			self.InstanceList.Hovering = nil;
		end);
	
		self:update();
	
		table.insert(self.connections, self.Instance.ChildAdded:Connect(function(Child)
			local childitem = self.InstanceList.List[Child] or self.InstanceList:addFromInstance(Child);
			if not childitem then
				return;
			end;
			self:addChild(childitem);
		end));
		table.insert(self.connections, self.Instance.ChildRemoved:Connect(function(Child)
			local childitem = self.InstanceList.List[Child];
			if not childitem then
				return;
			end;
			self:removeChild(childitem);
		end));
		table.insert(self.connections, self.Instance:GetPropertyChangedSignal("Name"):Connect(function()
			Content.NameLabel.Text = self.Instance.Name;
		end));	
	
		return Object;
	
	end;
	function ListItem.toggleMinimized(self)
		self:minimize(not self.minimized);
	end;
	function ListItem.minimize(self, minimized)
	
		-- if we can't be visible, but we are trying to be visible, make not visible 
		if not minimized and not self:canBeVisible() then
			minimized = true;
		end;
		self.minimized = minimized;
		local Size = UDim2.new(
			self.listobject.Size.X.Scale,
			self.listobject.Size.X.Offset,
			self.listobject.Size.Y.Scale,
			minimized and 20 or (20 + (#self:getVisibleDescendants() * 20))
		);
		if self.InstanceList.Settings.TweenList then
			Tween.PlayNew(self.listobject, Tween.TweenInfo(0.5, 8), {Size = Size});
		else
			self.listobject.Size = Size;
		end;
	
		local Rotation = (minimized and 0) or 90;
		if self.InstanceList.Settings.TweenListObjects then
			Tween.PlayNew(self.listobject.Top.Content.MinimizeButton, Tween.TweenInfo(0.7, 8), {Rotation = Rotation});
		else
			self.listobject.Top.Content.MinimizeButton.Rotation = Rotation;
		end;
	
		if self.parent then
			self.parent:update();
		end;
	
	end;
	function ListItem.update(self)
	
		self:minimize(self.minimized);
		self.listobject.Top.Content.MinimizeButton.Visible = #self.children > 0;
		self:updateContentPosition();
	
		return self;
	
	end;
	function ListItem.updateContentPosition(self)
		if self.parent then
			self.ContentPosition = UDim2.fromOffset(self.parent.ContentPosition.X.Offset + 26, 0);
			--self.listobject.Top.Content.Position = self.ContentPosition;
			Tween.PlayNew(self.listobject.Top.Content, Tween.TweenInfo(0.5, 8), {Position = self.ContentPosition});
		end;
		
		for _, child in next, self.children do
			child:updateContentPosition();
		end
	end;
	
	function ListItem.select(self, selected)
		local oldselectedobject = self.InstanceList.selectedobject;
		if oldselectedobject and oldselectedobject ~= self then
			oldselectedobject:select(false);
		end;
		if selected then
			self.InstanceList.selectedobject = self;
			self.InstanceList.Properties:showProperties(self);
		else
			self.InstanceList.Properties:clearAll();
		end;
	
		self.selected = selected;
		local Color = (selected and Color3.fromRGB(35, 70, 180)) or Color3.fromRGB(60, 60, 60);
		if self.InstanceList.Settings.TweenListObjects then
			Tween.PlayNew(self.listobject.Top, Tween.TweenInfo(0.5, 8), {BackgroundColor3 = Color});
		else
			self.listobject.Top.BackgroundColor3 = Color;
		end;
	end;
	function ListItem.toggleSelected(self)
		self:select(not self.selected);
	end;
	
	function ListItem.showInCanvas(self)
		local explorer = self.InstanceList.MainFrame.Explorer
		local middle = explorer.AbsolutePosition.Y + explorer.AbsoluteSize.Y / 2;
		local pos = self.listobject.AbsolutePosition.Y;
		local difference = (pos - middle);
		Tween.PlayNew(self.InstanceList.ObjectContainer, Tween.TweenInfo(0.6, 8), {CanvasPosition = Vector2.new(
			0,
			self.InstanceList.ObjectContainer.CanvasPosition.Y + difference
		)});
	end;
	
	function ListItem.addChildrenToList(self)
	
		assert(type(self) == "table" and getmetatable(self) == ListItem, "Use colon notation on a ListItem");
	
		for _, Child in next, self.Instance:GetChildren() do
			local childitem = self.InstanceList:addFromInstance(Child);
			if not childitem then
				continue;
			end;
			self:addChild(childitem);
		end;
	
	end
	function ListItem.addChild(self, childitem)
	
		assert(type(self) == "table" and getmetatable(self) == ListItem, "Use colon notation on a ListItem");
	
		assert(type(childitem) == "table", "Expected 'table' for childitem, got " .. type(childitem));
		assert(type(rawget(childitem, "_type")) == "string" and rawget(childitem, "_type") == "ListItem", "Expected a ListItem for childitem");
	
		table.insert(self.children, childitem);
		childitem.parent = self;
		childitem.listobject.Parent = self.listobject.Children;
	
		--childitem:updateContentPosition();
	
		self:update();
	
	end;
	function ListItem.removeChild(self, childitem)
	
		assert(type(self) == "table" and getmetatable(self) == ListItem, "Use colon notation on a ListItem");
	
		assert(type(childitem) == "table", "Expected 'table' for childitem, got " .. type(childitem));
		assert(type(rawget(childitem, "_type")) == "string" and rawget(childitem, "_type") == "ListItem", "Expected a ListItem for childitem");
	
		table.remove(self.children, table.find(self.children, childitem));
		childitem:destroy();
		self:update();
	
	end;
	
	function ListItem.destroy(self)
	
		self.parent = nil;
		self.listobject.Parent = nil;
	
		for _, connection in next, self.connections do
			connection:Disconnect();
		end;
		self.connections = {};
	
	end;
	
	function ListItem.getAncestors(self)
	
		local ancestors = {};
		local obj = self;
		while true do
			obj = obj.parent;
			if not obj then
				break;
			end;
			table.insert(ancestors, obj);
		end;
		return ancestors;
	
	end;
	function ListItem.isDescendantOf(self, query)
	
		--local obj = self;
		--while true do
		--	obj = obj.parent;
		--	if not obj then
		--		break;
		--	end;
		--	if obj == query then
		--		return true;
		--	end;
		--end;
		--return obj == query;
		return (table.find(self:getAncestors(), query) and true);
	
	end;
	function ListItem.getDescendants(self)
	
		local descendants = {};
		for _, Item in next, self.InstanceList.List do
			if Item ~= self and Item.isDescendantOf and Item:isDescendantOf(self) then
				table.insert(descendants, Item);
			end;
		end;
	
		return descendants
	
	end;
	
	function ListItem.getVisibleDescendants(self)
	
		local visibledescendants = {};
	
		for _, Descendant in next, self:getDescendants() do
			--if (Descendant.parent == self) or (Descendant.parent and not Descendant.parent.minimized) then
			if (Descendant.parent == self) or Descendant:canBeVisible() then
				table.insert(visibledescendants, Descendant);
			end;
		end;
	
		return visibledescendants;
	
	end;
	function ListItem.canBeVisible(self)
		for _, Ancestor in next, self:getAncestors() do
			if Ancestor.minimized then
				return false;
			end;
		end;
		return true;
	end;
	
	function ListItem.createDrag(self)
	
		local Drag = self.listobject:Clone();
		Drag.Parent = self.InstanceList.MainFrame.Explorer;
		-- maybe make the offset of 10 down there to 0 and then make the Drag.Top have the offset
		Drag.Position = UDim2.fromOffset(26 * (#self:getAncestors() - 1), self.listobject.AbsolutePosition.Y);
		Drag.ZIndex += 1;
		Drag.Children:Destroy();
		Drag.Size = BaseDragSize + UDim2.fromOffset(0, Drag.Top.Content.NameLabel.TextBounds.X + 6);
	
		return Drag;
	
	end;
	function ListItem.moveToDrag(self, Drag)
	
		print(self.InstanceList.Hovering);
		--task.wait(1);
		--Drag:Destroy();
	
	end;
	
	return ListItem;
end;

_Modules_[Properties_0] = function()--[[Properties_0]] 
	local script = Properties_0;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local PropertyObject = require(script.PropertyObject);
	
	local PropertyList, SuperClasses = {},{};do
		
		local Text = require(script.Api);
		local API = game:GetService("HttpService"):JSONDecode(Text);
		
		for _, v in next, API do
			if v.type and v.type == "Class" then
				PropertyList[v.Name] = {};
				SuperClasses[v.Name] = v.Superclass;
			end;
		end;
		for _, v in next, API do
			if v.type and v.type == "Property" then
				v.ValueType = (v.ValueType:gsub("Class:", ""));
				PropertyList[v.Class][v.Name] = v;
			end;
		end;
	
	end;
	
	local Properties = {};Properties.__index = Properties;
	
	function Properties.new(instancelist, PropertyTemplate)
		
		assert(type(instancelist) == "table", "Expected 'table' for instancelist, got " .. type(instancelist));
		assert(type(rawget(instancelist, "_type")) == "string" and rawget(instancelist, "_type") == "InstanceList", "Expected an InstanceList for instancelist");
		
		assert(typeof(PropertyTemplate) == "Instance", "Expected 'Instance' for PropertyTemplate, got " .. typeof(PropertyTemplate));
		
		local TextBox = PropertyTemplate.Right.TextBox;
		local CheckBox = PropertyTemplate.Right.CheckBox;
		
		TextBox.Parent = nil;
		CheckBox.Parent = nil;
		
		return setmetatable({
			_type = "Properties",
			InstanceList = instancelist,
	
			PropertyContainer = instancelist.MainFrame.Properties.PropertyContainer,
			PropertyTemplate = PropertyTemplate,
	
			TextBox = TextBox,
			CheckBox = CheckBox,
			
			PropertyObjects = {}
		}, Properties);
		
	end;
	function Properties.showProperties(self, listitem)
		
		assert(type(self) == "table" and getmetatable(self) == Properties, "Use colon notation on a Properties");
		
		assert(type(listitem) == "table", "Expected 'table' for listitem, got " .. type(listitem));
		assert(type(rawget(listitem, "_type")) == "string" and rawget(listitem, "_type") == "ListItem", "Expected a ListItem for listitem");
		
		self:clearAll();
		self:addProperties(listitem, PropertyList.Instance);
		-- inheritance :troll:
		local ClassName = listitem.Instance.ClassName;
		while ClassName do
			self:addProperties(listitem, PropertyList[ClassName]);
			ClassName = SuperClasses[ClassName];
		end;
		
	end;
	--function Properties.clearAll(self)
		
	--	local children = self.PropertyContainer:GetChildren();
	--	table.remove(children, 1) -- UIListLayout
		
	--	for _, Child in next, children do
	--		Child:Destroy();
	--	end;
		
	--end;
	function Properties.clearAll(self)
		
		for _, obj in next, self.PropertyObjects do
			obj:destroy();
		end;
		self.PropertyObjects = {};
		
	end;
	
	--function Properties.addProperties(self, Properties)
	--	for Name, Property in next, Properties do
	--		self:addProperty(Name, Property);
	--	end;
	--end;
	--function Properties.addProperty(self, Name, Property)
		
	--	assert(type(self) == "table" and getmetatable(self) == Properties, "Use colon notation on a Properties");
		
	--	assert(type(Name) == "string", "Expected 'string' for Name, got " .. type(Name));
	--	assert(type(Property) == "table", "Expected 'table' for Properties, got " .. type(Property));
		
	--	local tags = Property.tags;
	--	if Property.type == "property" or table.find(tags, "deprecated") --[[or table.find(Property.tags, "readonly")]] then
	--		return;
	--	end;
		
	--	local Object = self.PropertyTemplate:Clone();
	--	Object.Parent = self.PropertyContainer;
	--	Object.Left.TextButton.Text = Name;
	--	Object.Name = Name;
		
	--	local Box = ((Property.ValueType == "bool" and self.CheckBox) or self.TextBox):Clone();
	--	Box.Parent = Object.Right;
	--	Box.Visible = true;
		
	--end;
	function Properties.addProperties(self, listitem, Properties)
		
		for Name, Property in next, Properties do
			if self.PropertyObjects[Name] then
				continue;
			end;
			local propertyobject = PropertyObject.new(self, listitem, Name, Property);
			if not propertyobject then
				continue; -- this exists because the line a couple down originally was a table.insert and second param can't be nil :(
			end;
			self.PropertyObjects[Name] = propertyobject;
		end;
		
	end;
	--function Properties.addPropertyObject(self, listitem, Name, Property)
		
	--	local propertyobject = PropertyObject.new(self, listitem, Name, Property);
	--	table.insert(self.PropertyObjects, propertyobject);	
		
	--end;
	
	return Properties;
end;

_Modules_[PropertyObject] = function()--[[PropertyObject]] 
	local script = PropertyObject;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local Conversion = require(script.Conversion);
	
	local ConvertPattern1 = "[%w_]+%(?([^%)]+)%)?";
	local ConvertPattern2 = "[%w_]+%{?([^%}]+)%}?";
	local function Convert(Value)
		local converted, info = Conversion.ToString(Value);
		return converted, info;
	end;
	
	local PropertyObject = {};PropertyObject.__index = PropertyObject;
	
	function PropertyObject.new(Properties, listitem, PropertyName, Property)
	
		assert(type(Properties) == "table", "Expected 'table' for properties, got " .. type(Properties));
		assert(type(rawget(Properties, "_type")) == "string" and rawget(Properties, "_type") == "Properties", "Expected a Properties for properties");
	
		assert(type(listitem) == "table", "Expected 'table' for listitem, got " .. type(listitem));
		assert(type(rawget(listitem, "_type")) == "string" and rawget(listitem, "_type") == "ListItem", "Expected a ListItem for listitem");
	
		assert(type(PropertyName) == "string", "Expected 'string' for PropertyName, got " .. type(PropertyName));
		assert(type(Property) == "table", "Expected 'table' for Properties, got " .. type(Property));
	
		local tags = Property.tags;
		if Property.type == "property" or table.find(tags, "deprecated") --[[or table.find(Property.tags, "readonly")]] then
			return;
		end;
	
		if not (pcall(function() return listitem.Instance[PropertyName] end)) then
			return;
		end;
	
		local readonly = table.find(tags, "readonly");
		if --[[listitem.Instance.Parent == game and]] PropertyName == "Parent" then
			readonly = true;
		end;
	
		local Object = Properties.PropertyTemplate:Clone();
		Object.Parent = Properties.PropertyContainer;
		Object.Left.TextButton.Text = PropertyName;
		Object.Name = PropertyName;
	
		Object.Left.DropdownArrow.Visible = false;
	
		local IsBool = Property.ValueType == "bool";
		local Box = ((IsBool and Properties.CheckBox) or Properties.TextBox):Clone();
		Box.Parent = Object.Right;
		Box.Visible = true;
	
		local propertyobject = setmetatable({
			Properties = Properties,
			listitem = listitem,
	
			PropertyName = PropertyName,
			Property = Property,		
	
			Object = Object,
			Box = Box,
			
			DropdownObjects = {}
		}, PropertyObject);
		propertyobject:updateValue();
		propertyobject.Connection = listitem.Instance:GetPropertyChangedSignal(PropertyName):Connect(function()
			propertyobject:updateValue();
		end);
	
		if readonly then
			if not IsBool then
				Box.TextEditable = false;
			end;
		else
			if IsBool then
				Box.MouseButton1Click:Connect(function()
					propertyobject:setValue(not listitem.Instance[PropertyName]);
				end);
			else
				Box.FocusLost:Connect(function(EnterPressed)
					if EnterPressed then
						propertyobject:setValue(Box.Text);
					end;
					propertyobject:updateValue();
				end);
			end;
		end;
	
		return propertyobject;
	
	end;
	function PropertyObject.destroy(self)
	
		self.Connection:Disconnect();
		self.Object:Destroy();
	
	end;
	function PropertyObject.updateValue(self)
	
		local Box = self.Box;
		local Value = self.listitem.Instance[self.PropertyName];
		if self.Property.ValueType == "bool" then
			Box.BackgroundTransparency = (Value and 0) or 1;
			Box.Icon.Visible = Value;
			return;
		end;
		local Text, Info = Convert(Value);
		Box.Text = Text;
	
		--if Info then
		--	self:updateDropdownInfo(Info);
		--end;
	
	end;
	function PropertyObject.setValue(self, Value)
		xpcall(function()
			self.listitem.Instance[self.PropertyName] = Value;
		end, function(err)
			warn("[TeXplorer|PropertyObject.setValue] Failed to set value: " .. tostring(err));
		end);
	end;
	
	return PropertyObject;
end;

_Modules_[Conversion] = function()--[[Conversion]] 
	local script = Conversion;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local Conversion = {};
	
	local typeof = typeof;
	local type = type;
	local select = select;
	local tostring = tostring;
	local string = string;
	local sformat = string.format;
	local sgsub = string.gsub;
	local smatch = string.match;
	local ssub = string.sub;
	
	local math = math;
	local math_huge = math.huge;
	local negmath_huge = -math_huge;
	
	local NormalIdItems = Enum.NormalId:GetEnumItems();
	local Axis = Enum.Axis;
	local AxisX = Axis.X;
	local AxisY = Axis.Y;
	local AxisZ = Axis.Z;
	local AxisItems = {AxisX,AxisY,AxisZ};for k,v in next, NormalIdItems do table.insert(AxisItems,v);end;
	
	local LocalPlayer = game:GetService("Players").LocalPlayer;
	
	local ToString, ToValue = {},{};
	do
		local function needsEscaping(str)
			return (smatch(str, "[^%w_]") or smatch(ssub(str, 1,1), "%d") and true) or false;
		end;
		local Escapes = {
			["\a"] = "a",
			["\b"] = "b",
			["\f"] = "f",
			["\n"] = "n",
			["\r"] = "r",
			["\t"] = "t",
			["\v"] = "v",
			["\\"] = "\\",
			['"'] = '"',
		};
		local EscapesPattern = "([";do
			for K in next, Escapes do
				EscapesPattern ..= K;
			end;
			EscapesPattern = EscapesPattern .. "])";
		end;
		ToString.types = {
			string = function(value)
				return '"' .. sgsub(value, EscapesPattern, function(a)
					return "\\" .. Escapes[a];
				end) .. '"';
			end,
			number = function(value)
				if value == math_huge then
					return "(math.huge)";
				end;
				if value == negmath_huge then
					return "(-math.huge)";
				end;
				value = tostring(value);
				-- scientific notation
				local first, second = smatch(value, "([^%D0]+)(00000+)");
				if first and second and value == first..second then
					return first .. "e" .. #second;
				end;
			end,
			table = function(value)
				local Index = 0;
				local Result = "";
	
				for Key, Item in next, value do
					Index = Index + 1;
					Item = ToString(Item);
					if type(Key) == "number" and Key == Index then
						Result ..= Item .. ", ";
					else
						if needsEscaping(Key) then
							Result ..= sformat("[%s] = %s,\n", ToString(Key), Item);
						else
							Result ..= sformat("%s = %s,\n", Key, Item);
						end;
					end;
				end;
	
				return "{" .. ssub(Result, 1, -3) .. "}";
			end,
			tuple = function(...)
				local Args = {};
				if select('#', ...) == 1 and type((...)) == 'table' then
					Args = (...);
				else
					Args = {...};
				end;
	
				return "(" .. ssub(ToString(Args), 2, -2) .. ")";
			end
		};
		local tuple = ToString.types.tuple;
		ToString.datatypes = {
			Axes = function(Value)
				local Items = {};
	
				for _, V in next, AxisItems do
					if Value[V.Name] then
						table.insert(Items, V);
					end;
				end;
	
				-- return sformat("Axes.new%s", tuple(Items));
				return tuple(Items);
			end,
			BrickColor = function(Value)
				-- return sformat("BrickColor.new(%s)", ToString(Value.Name));
				return ToString(Value.Name);
			end,
			CFrame = function(Value) 
				-- return sformat("CFrame.new(%s)", tostring(Value));
				return tostring(Value);
			end,
			Color3 = function(Value)
				local R, G, B = Value.R, Value.G, Value.B;
				if (R == 0 or R == 1) and (G == 0 or G == 1) and (B == 0 or B == 1) then
					-- return sformat("Color3.new%s", tuple(R, G, B));
					return tuple(R, G, B);
				end;
				-- return sformat("Color3.fromRGB%s", tuple(R * 255, G * 255, B * 255));
				return tuple(R * 255, G * 255, B * 255);
			end,
			ColorSequence = function(Value)
				-- return sformat("ColorSequence.new%s", ToString(Value.Keypoints));
				return ToString(Value.Keypoints), {
					Keypoints = "table",
				};
			end,
			ColorSequenceKeypoint = function(Value)
				-- return sformat("ColorSequenceKeypoint.new%s", tuple(Value.Time, Value.Value));
				return tuple(Value.Time, Value.Value), {
					Time="number",Value="number",
				};
			end,
			EnumItem = function(Value)
				-- return sformat("Enum.%s.%s", tostring(Value.EnumType), Value.Name);
				return Value.Name;
			end,
			Faces = function(Value)
				local Items = {};
	
				for _, V in next, NormalIdItems do
					if Value[V.Name] then
						table.insert(Items, V);
					end;
				end;
	
				-- return sformat("Faces.new%s", tuple(Items));
				return tuple(Items);
			end,
			FloatCurveKey = function(Value)
				-- return sformat("FloatCurveKey.new%s",  tuple(Value.Time, Value.Value, Value.Interpolation));
				return tuple(Value.Time, Value.Value, Value.Interpolation), {
					Time="number",Value="number",Interpolation="EnumItem"
				};
			end,
			Instance = function(Value)
				--local Result = "";
	
				--while Value do
				--	local Current = Value;
				--	local Name = Value.Name;
				--	local Parent = Value.Parent;
				--	Value = Parent;
	
				--	if Current == game then
				--		Result = "game" .. Result;
				--		break;
				--	end;
				--	if Current == workspace then
				--		Result = "workspace" .. Result;
				--		break;
				--	end;
				--	if Parent == game then
				--		Result = "game:GetService(" .. ToString(Current.ClassName) .. ")" .. Result;
				--		break;
				--	end;
	
				--	if LocalPlayer and Current == LocalPlayer then
				--		Name = "LocalPlayer";
				--	end;
				--	if LocalPlayer and LocalPlayer.Character and Current == LocalPlayer.Character then
				--		Value = LocalPlayer;
				--		Name = "Character";
				--	end;
	
				--	if needsEscaping(Name) then
				--		Result = "[" .. ToString(Name) .. "]" .. Result;
				--	else
				--		Result = "." .. Name .. Result;
				--	end;
	
				--	if not Parent then
				--		Result = "--[==[PARENTED TO NIL]==]" .. ssub(Result, 2, -1);
				--	end;
				--end;
				--return Result;
	
				if Value == game then
					return "game";
				end;
				if Value == workspace then
					return "workspace";
				end;
	
				return Value.Name;
			end,
			NumberRange = function(Value)
				-- return sformat("NumberRange.new%s", tuple(Value.Min, Value.Max));
				return tuple(Value.Min, Value.Max), {
					Min="number",Max="number",
				};
			end,
			NumberSequence = function(Value)
				-- return sformat("NumberSequence.new%s", ToString(Value.Keypoints));
				return ToString(Value.Keypoints), {
					Keypoints="table"
				};
			end,
			NumberSequenceKeypoint = function(Value)
				-- return sformat("NumberSequenceKeypoint.new%s", tuple(Value.Time, Value.Value, Value.Envelope));
				return tuple(Value.Time, Value.Value, Value.Envelope), {
					Time="number",Value="number",Envelope="number"
				};
			end,
			PathWaypoint = function(Value)
				-- return sformat("PathWaypoint.new%s", tuple(Value.Position, Value.Action));
				return tuple(Value.Position, Value.Action), {
					Position="Vector3",Action="EnumItem",
				};
			end,
			PhysicalProperties = function(Value)
				-- return sformat("PhysicalProperties.new%s", tuple(Value.Density, Value.Friction, Value.Elasticity, Value.FrictionWeight, Value.ElasticityWeight));
				return tuple(Value.Density, Value.Friction, Value.Elasticity, Value.FrictionWeight, Value.ElasticityWeight), {
					Density="number",Max="number",Elasticity="number",FrictionWeight="number",ElasticityWeight="number"
				};
			end,
			Ray = function(Value)
				-- return sformat("Ray.new%s", tuple(Value.Origin, Value.Direction));
				return tuple(Value.Origin, Value.Direction), {
					Origin="number",Direction="number",
				};
			end,
			Rect = function(Value)
				-- return sformat("Rect.new%s", tuple(Value.Min, Value.Max));
				return tuple(Value.Min, Value.Max), {
					Min="number",Max="number",
				};
			end,
			Region3int16 = function(Value)
				-- return sformat("Region3int16.new%s", tuple(Value.Min, Value.Max));
				return tuple(Value.Min, Value.Max), {
					Min="number",Max="number",
				};
			end,
			TweenInfo = function(Value)
				-- return sformat("TweenInfo.new%s", tuple(Value.Time, Value.EasingStyle, Value.EasingDirection, Value.RepeatCount, Value.Reverses, Value.DelayTime));
				return tuple(Value.Time, Value.EasingStyle, Value.EasingDirection, Value.RepeatCount, Value.Reverses, Value.DelayTime), {
					Time="number",EasingStyle="EnumItem",EasingDirection="EnumItem",RepeatCount="number",Reverses="boolean",DelayTime="number"
				};
			end,
			UDim = function(Value)
				-- return sformat("UDim.new%s", tuple(Value.Scale, Value.Offset));
				return tuple(Value.Scale, Value.Offset), {
					Scale="number",Offset="number"
				};
			end,
			UDim2 = function(Value)
				local X = Value.X;
				local Y = Value.Y;
				-- return sformat("UDim2.new%s", tuple(X.Scale, X.Offset, Y.Scale, Y.Offset));
				return tuple({X.Scale, X.Offset}, {Y.Scale, Y.Offset}), {
					X="UDim",Y="UDim"
				};
			end,
			Vector2 = function(Value)
				-- return sformat("Vector2.new%s", tuple(Value.X, Value.Y));
				return tuple(Value.X, Value.Y), {
					X="number",Y="number"
				};
			end,
			Vector2int16 = function(Value)
				-- return sformat("Vector2int16.new%s", tuple(Value.X, Value.Y));
				return tuple(Value.X, Value.Y), {
					X="number",Y="number"
				};
			end,
			Vector3 = function(Value)
				-- return sformat("Vector3.new%s", tuple(Value.X, Value.Y, Value.Z));
				return tuple(Value.X, Value.Y, Value.Z), {
					X="number",Y="number",Z="number"
				};
			end,
			Vector3int16 = function(Value)
				-- return sformat("Vector3int16.new%s", tuple(Value.X, Value.Y, Value.Z));
				return tuple(Value.X, Value.Y, Value.Z), {
					X="number",Y="number",Z="number"
				};
			end
		};
	
		setmetatable(ToString, {__call = function(self, Value)
			local Type = typeof(Value);
			if self.types[Type] then
				local res = self.types[Type](Value);
				if res then
					return res;
				end;
			elseif self.datatypes[Type] then
				local res = self.datatypes[Type](Value);
				if res then
					return res;
				end;
			end;
	
			return tostring(Value);
		end});
		Conversion.ToString = ToString;
	end;
	do
		Conversion.ToValue = ToValue;
	end;
	
	--do --Showcase
	--	local Showcase = {
	--		Axes = Axes.new(Enum.NormalId.Left, Enum.Axis.Top),
	--		BrickColor = BrickColor.new("Really red"),
	--		CFrame = CFrame.new(1, 4, 2, .42, .004, .002, .003),
	--		Color3 = Color3.fromHSV(.24, 1, 1),
	--		ColorSequence = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0,1,1)), ColorSequenceKeypoint.new(.5, Color3.new(1,0,1)), ColorSequenceKeypoint.new(1, Color3.new(1,1,0))},
	--		EnumItem = Enum.KeyCode.X,
	--		Faces = Faces.new(Enum.NormalId.Left, Enum.NormalId.Right, Enum.NormalId.Top),
	--		FloatCurveKey = FloatCurveKey.new(.5, 1, Enum.KeyInterpolationMode.Constant),
	--		Instance = game,
	--		Instance2 = workspace,
	--		Instance3 = workspace.kaliprogrammer,
	--		NumberRange = NumberRange.new(5),
	--		NumberRange2 = NumberRange.new(1, 10),
	--		NumberSequence = NumberSequence.new{
	--			NumberSequenceKeypoint.new(0, 0),
	--			NumberSequenceKeypoint.new(.5, .5, .25),
	--			NumberSequenceKeypoint.new(1, 1),
	--		},
	--		NumberSequenceKeypoint = NumberSequenceKeypoint.new(.5, .5, .3),
	--		PathWaypoint = PathWaypoint.new(Vector3.new(10, 10, 10), Enum.PathWaypointAction.Walk),
	--		PhysicalProperties = PhysicalProperties.new(1, 2, 3, 4, 5),
	--		Ray = Ray.new(Vector3.new(1, 1, 1), Vector3.new(10, 40, 70)),
	--		Rect = Rect.new(Vector2.new(5, 20), Vector2.new(20, 50)),
	--		Region3int16 = Region3int16.new(Vector3int16.new(1, 2, 3), Vector3int16.new(3, 2, 1)),
	--		TweenInfo = TweenInfo.new(1, 8),
	--		UDim = UDim.new(1, 5),
	--		UDim2 = UDim2.new(1, 5, 2, 0),
	--		Vector2 = Vector2.new(1, 1),
	--		Vector2int16 = Vector2int16.new(2, 2),
	--		Vector3 = Vector3.new(3, 3, 3),
	--	Vector3int16 = Vector3int16.new(4, 4, 4),
	--	Number = 10e10,
	--	Number2 = 10e5,
	--	Number3 = 10
	--};
	
	--print(ToString(Showcase));
	--end;
	
	return Conversion;
end;

_Modules_[Api] = function()--[[Api]] 
	local script = Api;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	return [=[[
	  {
	    "Superclass": null,
	    "type": "Class",
	    "Name": "Instance",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Archivable",
	    "tags": [],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ClassName",
	    "tags": ["readonly"],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DataCost",
	    "tags": ["LocalUserSecurity", "readonly"],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Name",
	    "tags": [],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Parent",
	    "tags": [],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RobloxLocked",
	    "tags": ["PluginSecurity"],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "archivable",
	    "tags": ["deprecated", "hidden"],
	    "Class": "Instance"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "className",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Instance"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearAllChildren",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "Clone",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Destroy",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "FindFirstAncestor",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "FindFirstAncestorOfClass",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "FindFirstAncestorWhichIsA",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "bool", "Name": "recursive", "Default": "false" }
	    ],
	    "Name": "FindFirstChild",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "FindFirstChildOfClass",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "className", "Default": null },
	      { "Type": "bool", "Name": "recursive", "Default": "false" }
	    ],
	    "Name": "FindFirstChildWhichIsA",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetChildren",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int", "Name": "scopeLength", "Default": "4" }],
	    "Name": "GetDebugId",
	    "tags": ["PluginSecurity", "notbrowsable"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetDescendants",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetFullName",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "EventInstance",
	    "Arguments": [{ "Type": "string", "Name": "property", "Default": null }],
	    "Name": "GetPropertyChangedSignal",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "IsA",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Instance", "Name": "descendant", "Default": null }
	    ],
	    "Name": "IsAncestorOf",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Instance", "Name": "ancestor", "Default": null }],
	    "Name": "IsDescendantOf",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Remove",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "childName", "Default": null },
	      { "Type": "double", "Name": "timeOut", "Default": null }
	    ],
	    "Name": "WaitForChild",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "children",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "clone",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "destroy",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "bool", "Name": "recursive", "Default": "false" }
	    ],
	    "Name": "findFirstChild",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "getChildren",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "isA",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Instance", "Name": "ancestor", "Default": null }],
	    "Name": "isDescendantOf",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "remove",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "child", "Type": "Instance" },
	      { "Name": "parent", "Type": "Instance" }
	    ],
	    "Name": "AncestryChanged",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "property", "Type": "Property" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "child", "Type": "Instance" }],
	    "Name": "ChildAdded",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "child", "Type": "Instance" }],
	    "Name": "ChildRemoved",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "descendant", "Type": "Instance" }],
	    "Name": "DescendantAdded",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "descendant", "Type": "Instance" }],
	    "Name": "DescendantRemoving",
	    "tags": [],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "child", "Type": "Instance" }],
	    "Name": "childAdded",
	    "tags": ["deprecated"],
	    "Class": "Instance",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Accoutrement",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "AttachmentForward",
	    "tags": [],
	    "Class": "Accoutrement"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "AttachmentPoint",
	    "tags": [],
	    "Class": "Accoutrement"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "AttachmentPos",
	    "tags": [],
	    "Class": "Accoutrement"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "AttachmentRight",
	    "tags": [],
	    "Class": "Accoutrement"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "AttachmentUp",
	    "tags": [],
	    "Class": "Accoutrement"
	  },
	  {
	    "Superclass": "Accoutrement",
	    "type": "Class",
	    "Name": "Accessory",
	    "tags": []
	  },
	  {
	    "Superclass": "Accoutrement",
	    "type": "Class",
	    "Name": "Hat",
	    "tags": ["deprecated"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AdService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ShowVideoAd",
	    "tags": ["deprecated"],
	    "Class": "AdService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "adShown", "Type": "bool" }],
	    "Name": "VideoAdClosed",
	    "tags": ["deprecated"],
	    "Class": "AdService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AdvancedDragger",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AnalyticsService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "target", "Default": null }],
	    "Name": "ReleaseRBXEventStream",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "counterName", "Default": null },
	      { "Type": "int", "Name": "amount", "Default": "1" }
	    ],
	    "Name": "ReportCounter",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "seriesName", "Default": null },
	      { "Type": "Dictionary", "Name": "points", "Default": null },
	      { "Type": "int", "Name": "throttlingPercentage", "Default": null }
	    ],
	    "Name": "ReportInfluxSeries",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "category", "Default": null },
	      { "Type": "float", "Name": "value", "Default": null }
	    ],
	    "Name": "ReportStats",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "target", "Default": null },
	      { "Type": "string", "Name": "eventContext", "Default": null },
	      { "Type": "string", "Name": "eventName", "Default": null },
	      { "Type": "Dictionary", "Name": "additionalArgs", "Default": null }
	    ],
	    "Name": "SendEventDeferred",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "target", "Default": null },
	      { "Type": "string", "Name": "eventContext", "Default": null },
	      { "Type": "string", "Name": "eventName", "Default": null },
	      { "Type": "Dictionary", "Name": "additionalArgs", "Default": null }
	    ],
	    "Name": "SendEventImmediately",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "target", "Default": null },
	      { "Type": "string", "Name": "eventContext", "Default": null },
	      { "Type": "string", "Name": "eventName", "Default": null },
	      { "Type": "Dictionary", "Name": "additionalArgs", "Default": null }
	    ],
	    "Name": "SetRBXEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "target", "Default": null },
	      { "Type": "string", "Name": "eventContext", "Default": null },
	      { "Type": "string", "Name": "eventName", "Default": null },
	      { "Type": "Dictionary", "Name": "additionalArgs", "Default": null }
	    ],
	    "Name": "SetRBXEventStream",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "category", "Default": null },
	      { "Type": "string", "Name": "action", "Default": null },
	      { "Type": "string", "Name": "label", "Default": null },
	      { "Type": "int64", "Name": "value", "Default": "0" }
	    ],
	    "Name": "TrackEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Dictionary", "Name": "args", "Default": null }],
	    "Name": "UpdateHeartbeatObject",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AnalyticsService",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Animation",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "AnimationId",
	    "tags": [],
	    "Class": "Animation"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AnimationController",
	    "tags": []
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetPlayingAnimationTracks",
	    "tags": [],
	    "Class": "AnimationController",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "animation", "Default": null }],
	    "Name": "LoadAnimation",
	    "tags": [],
	    "Class": "AnimationController",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "animationTrack", "Type": "Instance" }],
	    "Name": "AnimationPlayed",
	    "tags": [],
	    "Class": "AnimationController",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AnimationTrack",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:Animation",
	    "type": "Property",
	    "Name": "Animation",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsPlaying",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Length",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Looped",
	    "tags": [],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "AnimationPriority",
	    "type": "Property",
	    "Name": "Priority",
	    "tags": [],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Speed",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TimePosition",
	    "tags": [],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WeightCurrent",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WeightTarget",
	    "tags": ["readonly"],
	    "Class": "AnimationTrack"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "speed", "Default": "1" }],
	    "Name": "AdjustSpeed",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "weight", "Default": "1" },
	      { "Type": "float", "Name": "fadeTime", "Default": "0.100000001" }
	    ],
	    "Name": "AdjustWeight",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [
	      { "Type": "string", "Name": "keyframeName", "Default": null }
	    ],
	    "Name": "GetTimeOfKeyframe",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "fadeTime", "Default": "0.100000001" },
	      { "Type": "float", "Name": "weight", "Default": "1" },
	      { "Type": "float", "Name": "speed", "Default": "1" }
	    ],
	    "Name": "Play",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "fadeTime", "Default": "0.100000001" }
	    ],
	    "Name": "Stop",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "DidLoop",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "keyframeName", "Type": "string" }],
	    "Name": "KeyframeReached",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Stopped",
	    "tags": [],
	    "Class": "AnimationTrack",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Animator", "tags": [] },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "animation", "Default": null }],
	    "Name": "LoadAnimation",
	    "tags": [],
	    "Class": "Animator",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "deltaTime", "Default": null }],
	    "Name": "StepAnimations",
	    "tags": ["PluginSecurity"],
	    "Class": "Animator",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "AssetService",
	    "tags": []
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [
	      { "Type": "string", "Name": "placeName", "Default": null },
	      { "Type": "int64", "Name": "templatePlaceID", "Default": null },
	      { "Type": "string", "Name": "description", "Default": "" }
	    ],
	    "Name": "CreatePlaceAsync",
	    "tags": [],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "string", "Name": "placeName", "Default": null },
	      { "Type": "int64", "Name": "templatePlaceID", "Default": null },
	      { "Type": "string", "Name": "description", "Default": "" }
	    ],
	    "Name": "CreatePlaceInPlayerInventoryAsync",
	    "tags": [],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [
	      { "Type": "int64", "Name": "packageAssetId", "Default": null }
	    ],
	    "Name": "GetAssetIdsForPackage",
	    "tags": [],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "int64", "Name": "assetId", "Default": null },
	      { "Type": "Vector2", "Name": "thumbnailSize", "Default": null },
	      { "Type": "int", "Name": "assetType", "Default": "0" }
	    ],
	    "Name": "GetAssetThumbnailAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [{ "Type": "int64", "Name": "creationID", "Default": null }],
	    "Name": "GetCreatorAssetID",
	    "tags": ["deprecated"],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetGamePlacesAsync",
	    "tags": [],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SavePlaceAsync",
	    "tags": [],
	    "Class": "AssetService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Attachment",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Axis",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Orientation",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Rotation",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "SecondaryAxis",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldAxis",
	    "tags": ["readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "WorldCFrame",
	    "tags": ["readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldOrientation",
	    "tags": ["readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldPosition",
	    "tags": ["readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldRotation",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldSecondaryAxis",
	    "tags": ["readonly"],
	    "Class": "Attachment"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetAxis",
	    "tags": [],
	    "Class": "Attachment",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetSecondaryAxis",
	    "tags": [],
	    "Class": "Attachment",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "axis", "Default": null }],
	    "Name": "SetAxis",
	    "tags": [],
	    "Class": "Attachment",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "axis", "Default": null }],
	    "Name": "SetSecondaryAxis",
	    "tags": [],
	    "Class": "Attachment",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "BadgeService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int64", "Name": "badgeId", "Default": null }
	    ],
	    "Name": "AwardBadge",
	    "tags": [],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [{ "Type": "int64", "Name": "badgeId", "Default": null }],
	    "Name": "GetBadgeInfoAsync",
	    "tags": [],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "badgeId", "Default": null }],
	    "Name": "IsDisabled",
	    "tags": [],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "badgeId", "Default": null }],
	    "Name": "IsLegal",
	    "tags": [],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int64", "Name": "badgeId", "Default": null }
	    ],
	    "Name": "UserHasBadge",
	    "tags": ["deprecated"],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int64", "Name": "badgeId", "Default": null }
	    ],
	    "Name": "UserHasBadgeAsync",
	    "tags": [],
	    "Class": "BadgeService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "message", "Type": "string" },
	      { "Name": "userId", "Type": "int64" },
	      { "Name": "badgeId", "Type": "int64" }
	    ],
	    "Name": "BadgeAwarded",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "BadgeService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "BasePlayerGui",
	    "tags": []
	  },
	  {
	    "Superclass": "BasePlayerGui",
	    "type": "Class",
	    "Name": "CoreGui",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "SelectionImageObject",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "CoreGui"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Version",
	    "tags": ["readonly"],
	    "Class": "CoreGui"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "enabled", "Default": null },
	      { "Type": "Instance", "Name": "guiAdornee", "Default": null },
	      { "Type": "NormalId", "Name": "faceId", "Default": null }
	    ],
	    "Name": "SetUserGuiRendering",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "CoreGui",
	    "type": "Function"
	  },
	  {
	    "Superclass": "BasePlayerGui",
	    "type": "Class",
	    "Name": "PlayerGui",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "ScreenOrientation",
	    "type": "Property",
	    "Name": "CurrentScreenOrientation",
	    "tags": ["readonly"],
	    "Class": "PlayerGui"
	  },
	  {
	    "ValueType": "ScreenOrientation",
	    "type": "Property",
	    "Name": "ScreenOrientation",
	    "tags": [],
	    "Class": "PlayerGui"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "SelectionImageObject",
	    "tags": [],
	    "Class": "PlayerGui"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetTopbarTransparency",
	    "tags": [],
	    "Class": "PlayerGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "transparency", "Default": null }],
	    "Name": "SetTopbarTransparency",
	    "tags": [],
	    "Class": "PlayerGui",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "transparency", "Type": "float" }],
	    "Name": "TopbarTransparencyChangedSignal",
	    "tags": [],
	    "Class": "PlayerGui",
	    "type": "Event"
	  },
	  {
	    "Superclass": "BasePlayerGui",
	    "type": "Class",
	    "Name": "StarterGui",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ProcessUserInput",
	    "tags": ["PluginSecurity", "hidden"],
	    "Class": "StarterGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ResetPlayerGuiOnSpawn",
	    "tags": ["deprecated"],
	    "Class": "StarterGui"
	  },
	  {
	    "ValueType": "ScreenOrientation",
	    "type": "Property",
	    "Name": "ScreenOrientation",
	    "tags": [],
	    "Class": "StarterGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShowDevelopmentGui",
	    "tags": [],
	    "Class": "StarterGui"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "CoreGuiType", "Name": "coreGuiType", "Default": null }
	    ],
	    "Name": "GetCoreGuiEnabled",
	    "tags": [],
	    "Class": "StarterGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "parameterName", "Default": null },
	      { "Type": "Function", "Name": "getFunction", "Default": null }
	    ],
	    "Name": "RegisterGetCore",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "StarterGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "parameterName", "Default": null },
	      { "Type": "Function", "Name": "setFunction", "Default": null }
	    ],
	    "Name": "RegisterSetCore",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "StarterGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "parameterName", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null }
	    ],
	    "Name": "SetCore",
	    "tags": [],
	    "Class": "StarterGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CoreGuiType", "Name": "coreGuiType", "Default": null },
	      { "Type": "bool", "Name": "enabled", "Default": null }
	    ],
	    "Name": "SetCoreGuiEnabled",
	    "tags": [],
	    "Class": "StarterGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [
	      { "Type": "string", "Name": "parameterName", "Default": null }
	    ],
	    "Name": "GetCore",
	    "tags": [],
	    "Class": "StarterGui",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "coreGuiType", "Type": "CoreGuiType" },
	      { "Name": "enabled", "Type": "bool" }
	    ],
	    "Name": "CoreGuiChangedSignal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "StarterGui",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Beam", "tags": [] },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment0",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment1",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "ColorSequence",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurveSize0",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurveSize1",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "FaceCamera",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightEmission",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightInfluence",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Segments",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Texture",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextureLength",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "TextureMode",
	    "type": "Property",
	    "Name": "TextureMode",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextureSpeed",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "NumberSequence",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Width0",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Width1",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ZOffset",
	    "tags": [],
	    "Class": "Beam"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "offset", "Default": "0" }],
	    "Name": "SetTextureOffset",
	    "tags": [],
	    "Class": "Beam",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "BindableEvent",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Tuple", "Name": "arguments", "Default": null }],
	    "Name": "Fire",
	    "tags": [],
	    "Class": "BindableEvent",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "arguments", "Type": "Tuple" }],
	    "Name": "Event",
	    "tags": [],
	    "Class": "BindableEvent",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "BindableFunction",
	    "tags": []
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "Tuple", "Name": "arguments", "Default": null }],
	    "Name": "Invoke",
	    "tags": [],
	    "Class": "BindableFunction",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Name": "arguments", "Type": "Tuple" }],
	    "Name": "OnInvoke",
	    "tags": [],
	    "Class": "BindableFunction",
	    "type": "Callback"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "BodyMover",
	    "tags": []
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyAngularVelocity",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "AngularVelocity",
	    "tags": [],
	    "Class": "BodyAngularVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MaxTorque",
	    "tags": [],
	    "Class": "BodyAngularVelocity"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "P",
	    "tags": [],
	    "Class": "BodyAngularVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "angularvelocity",
	    "tags": ["deprecated"],
	    "Class": "BodyAngularVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "maxTorque",
	    "tags": ["deprecated"],
	    "Class": "BodyAngularVelocity"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyForce",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Force",
	    "tags": [],
	    "Class": "BodyForce"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "force",
	    "tags": ["deprecated"],
	    "Class": "BodyForce"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyGyro",
	    "tags": []
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "BodyGyro"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "D",
	    "tags": [],
	    "Class": "BodyGyro"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MaxTorque",
	    "tags": [],
	    "Class": "BodyGyro"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "P",
	    "tags": [],
	    "Class": "BodyGyro"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "cframe",
	    "tags": ["deprecated"],
	    "Class": "BodyGyro"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "maxTorque",
	    "tags": ["deprecated"],
	    "Class": "BodyGyro"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyPosition",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "D",
	    "tags": [],
	    "Class": "BodyPosition"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MaxForce",
	    "tags": [],
	    "Class": "BodyPosition"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "P",
	    "tags": [],
	    "Class": "BodyPosition"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "BodyPosition"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "maxForce",
	    "tags": ["deprecated"],
	    "Class": "BodyPosition"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "position",
	    "tags": ["deprecated"],
	    "Class": "BodyPosition"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetLastForce",
	    "tags": [],
	    "Class": "BodyPosition",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "lastForce",
	    "tags": ["deprecated"],
	    "Class": "BodyPosition",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "ReachedTarget",
	    "tags": [],
	    "Class": "BodyPosition",
	    "type": "Event"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyThrust",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Force",
	    "tags": [],
	    "Class": "BodyThrust"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Location",
	    "tags": [],
	    "Class": "BodyThrust"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "force",
	    "tags": ["deprecated"],
	    "Class": "BodyThrust"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "location",
	    "tags": ["deprecated"],
	    "Class": "BodyThrust"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "BodyVelocity",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MaxForce",
	    "tags": [],
	    "Class": "BodyVelocity"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "P",
	    "tags": [],
	    "Class": "BodyVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Velocity",
	    "tags": [],
	    "Class": "BodyVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "maxForce",
	    "tags": ["deprecated"],
	    "Class": "BodyVelocity"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "velocity",
	    "tags": ["deprecated"],
	    "Class": "BodyVelocity"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetLastForce",
	    "tags": [],
	    "Class": "BodyVelocity",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "lastForce",
	    "tags": [],
	    "Class": "BodyVelocity",
	    "type": "Function"
	  },
	  {
	    "Superclass": "BodyMover",
	    "type": "Class",
	    "Name": "RocketPropulsion",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CartoonFactor",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxSpeed",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxThrust",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MaxTorque",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Target",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "TargetOffset",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TargetRadius",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ThrustD",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ThrustP",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TurnD",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TurnP",
	    "tags": [],
	    "Class": "RocketPropulsion"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Abort",
	    "tags": [],
	    "Class": "RocketPropulsion",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Fire",
	    "tags": [],
	    "Class": "RocketPropulsion",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "fire",
	    "tags": ["deprecated"],
	    "Class": "RocketPropulsion",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "ReachedTarget",
	    "tags": [],
	    "Class": "RocketPropulsion",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Button", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClickableWhenViewportHidden",
	    "tags": [],
	    "Class": "Button"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Button"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Icon",
	    "tags": [],
	    "Class": "Button"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "active", "Default": null }],
	    "Name": "SetActive",
	    "tags": ["PluginSecurity"],
	    "Class": "Button",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "Click",
	    "tags": ["PluginSecurity"],
	    "Class": "Button",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CacheableContentProvider",
	    "tags": []
	  },
	  {
	    "Superclass": "CacheableContentProvider",
	    "type": "Class",
	    "Name": "MeshContentProvider",
	    "tags": []
	  },
	  {
	    "Superclass": "CacheableContentProvider",
	    "type": "Class",
	    "Name": "SolidModelContentProvider",
	    "tags": []
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Camera", "tags": [] },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "CameraSubject",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "CameraType",
	    "type": "Property",
	    "Name": "CameraType",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CoordinateFrame",
	    "tags": ["deprecated", "hidden"],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FieldOfView",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Focus",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HeadLocked",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HeadScale",
	    "tags": [],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "NearPlaneZ",
	    "tags": ["readonly"],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "ViewportSize",
	    "tags": ["readonly"],
	    "Class": "Camera"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "focus",
	    "tags": ["deprecated"],
	    "Class": "Camera"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [{ "Type": "Objects", "Name": "ignoreList", "Default": null }],
	    "Name": "GetLargestCutoffDistance",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetPanSpeed",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [
	      { "Type": "Array", "Name": "castPoints", "Default": null },
	      { "Type": "Objects", "Name": "ignoreList", "Default": null }
	    ],
	    "Name": "GetPartsObscuringTarget",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [],
	    "Name": "GetRenderCFrame",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetRoll",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetTiltSpeed",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CoordinateFrame", "Name": "endPos", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "endFocus", "Default": null },
	      { "Type": "float", "Name": "duration", "Default": null }
	    ],
	    "Name": "Interpolate",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "units", "Default": null }],
	    "Name": "PanUnits",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Ray",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "float", "Name": "depth", "Default": "0" }
	    ],
	    "Name": "ScreenPointToRay",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CameraPanMode", "Name": "mode", "Default": "Classic" }
	    ],
	    "Name": "SetCameraPanMode",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "rollAngle", "Default": null }],
	    "Name": "SetRoll",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int", "Name": "units", "Default": null }],
	    "Name": "TiltUnits",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Ray",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "float", "Name": "depth", "Default": "0" }
	    ],
	    "Name": "ViewportPointToRay",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "Vector3", "Name": "worldPoint", "Default": null }],
	    "Name": "WorldToScreenPoint",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "Vector3", "Name": "worldPoint", "Default": null }],
	    "Name": "WorldToViewportPoint",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "float", "Name": "distance", "Default": null }],
	    "Name": "Zoom",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Camera",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "entering", "Type": "bool" }],
	    "Name": "FirstPersonTransition",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Camera",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "InterpolationFinished",
	    "tags": [],
	    "Class": "Camera",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ChangeHistoryService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "GetCanRedo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "GetCanUndo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Redo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ResetWaypoints",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "state", "Default": null }],
	    "Name": "SetEnabled",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "SetWaypoint",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Undo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "waypoint", "Type": "string" }],
	    "Name": "OnRedo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "waypoint", "Type": "string" }],
	    "Name": "OnUndo",
	    "tags": ["PluginSecurity"],
	    "Class": "ChangeHistoryService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CharacterAppearance",
	    "tags": []
	  },
	  {
	    "Superclass": "CharacterAppearance",
	    "type": "Class",
	    "Name": "BodyColors",
	    "tags": []
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "HeadColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "HeadColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "LeftArmColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "LeftArmColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "LeftLegColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "LeftLegColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "RightArmColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "RightArmColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "RightLegColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "RightLegColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TorsoColor",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TorsoColor3",
	    "tags": [],
	    "Class": "BodyColors"
	  },
	  {
	    "Superclass": "CharacterAppearance",
	    "type": "Class",
	    "Name": "CharacterMesh",
	    "tags": []
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "BaseTextureId",
	    "tags": [],
	    "Class": "CharacterMesh"
	  },
	  {
	    "ValueType": "BodyPart",
	    "type": "Property",
	    "Name": "BodyPart",
	    "tags": [],
	    "Class": "CharacterMesh"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "MeshId",
	    "tags": [],
	    "Class": "CharacterMesh"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "OverlayTextureId",
	    "tags": [],
	    "Class": "CharacterMesh"
	  },
	  {
	    "Superclass": "CharacterAppearance",
	    "type": "Class",
	    "Name": "Clothing",
	    "tags": []
	  },
	  { "Superclass": "Clothing", "type": "Class", "Name": "Pants", "tags": [] },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "PantsTemplate",
	    "tags": [],
	    "Class": "Pants"
	  },
	  { "Superclass": "Clothing", "type": "Class", "Name": "Shirt", "tags": [] },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "ShirtTemplate",
	    "tags": [],
	    "Class": "Shirt"
	  },
	  {
	    "Superclass": "CharacterAppearance",
	    "type": "Class",
	    "Name": "ShirtGraphic",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Graphic",
	    "tags": [],
	    "Class": "ShirtGraphic"
	  },
	  {
	    "Superclass": "CharacterAppearance",
	    "type": "Class",
	    "Name": "Skin",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "SkinColor",
	    "tags": [],
	    "Class": "Skin"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Chat",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LoadDefaultChat",
	    "tags": ["ScriptWriteRestricted: [NotAccessibleSecurity]"],
	    "Class": "Chat"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "partOrCharacter", "Default": null },
	      { "Type": "string", "Name": "message", "Default": null },
	      { "Type": "ChatColor", "Name": "color", "Default": "Blue" }
	    ],
	    "Name": "Chat",
	    "tags": [],
	    "Class": "Chat",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "partOrCharacter", "Default": null },
	      { "Type": "string", "Name": "message", "Default": null },
	      { "Type": "ChatColor", "Name": "color", "Default": "Blue" }
	    ],
	    "Name": "ChatLocal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Chat",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetShouldUseLuaChat",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Chat",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "ChatCallbackType", "Name": "callbackType", "Default": null },
	      { "Type": "Tuple", "Name": "callbackArguments", "Default": null }
	    ],
	    "Name": "InvokeChatCallback",
	    "tags": [],
	    "Class": "Chat",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "ChatCallbackType", "Name": "callbackType", "Default": null },
	      { "Type": "Function", "Name": "callbackFunction", "Default": null }
	    ],
	    "Name": "RegisterChatCallback",
	    "tags": [],
	    "Class": "Chat",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "CanUserChatAsync",
	    "tags": [],
	    "Class": "Chat",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int64", "Name": "userIdFrom", "Default": null },
	      { "Type": "int64", "Name": "userIdTo", "Default": null }
	    ],
	    "Name": "CanUsersChatAsync",
	    "tags": [],
	    "Class": "Chat",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "stringToFilter", "Default": null },
	      { "Type": "Instance", "Name": "playerFrom", "Default": null },
	      { "Type": "Instance", "Name": "playerTo", "Default": null }
	    ],
	    "Name": "FilterStringAsync",
	    "tags": [],
	    "Class": "Chat",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "stringToFilter", "Default": null },
	      { "Type": "Instance", "Name": "playerFrom", "Default": null }
	    ],
	    "Name": "FilterStringForBroadcast",
	    "tags": [],
	    "Class": "Chat",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "stringToFilter", "Default": null },
	      { "Type": "Instance", "Name": "playerToFilterFor", "Default": null }
	    ],
	    "Name": "FilterStringForPlayerAsync",
	    "tags": ["deprecated"],
	    "Class": "Chat",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "part", "Type": "Instance" },
	      { "Name": "message", "Type": "string" },
	      { "Name": "color", "Type": "ChatColor" }
	    ],
	    "Name": "Chatted",
	    "tags": [],
	    "Class": "Chat",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ClickDetector",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "CursorIcon",
	    "tags": [],
	    "Class": "ClickDetector"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxActivationDistance",
	    "tags": [],
	    "Class": "ClickDetector"
	  },
	  {
	    "Arguments": [{ "Name": "playerWhoClicked", "Type": "Instance" }],
	    "Name": "MouseClick",
	    "tags": [],
	    "Class": "ClickDetector",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "playerWhoHovered", "Type": "Instance" }],
	    "Name": "MouseHoverEnter",
	    "tags": [],
	    "Class": "ClickDetector",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "playerWhoHovered", "Type": "Instance" }],
	    "Name": "MouseHoverLeave",
	    "tags": [],
	    "Class": "ClickDetector",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "playerWhoClicked", "Type": "Instance" }],
	    "Name": "RightMouseClick",
	    "tags": [],
	    "Class": "ClickDetector",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "playerWhoClicked", "Type": "Instance" }],
	    "Name": "mouseClick",
	    "tags": ["deprecated"],
	    "Class": "ClickDetector",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ClusterPacketCache",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CollectionService",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "instance", "Default": null },
	      { "Type": "string", "Name": "tag", "Default": null }
	    ],
	    "Name": "AddTag",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "string", "Name": "class", "Default": null }],
	    "Name": "GetCollection",
	    "tags": ["deprecated"],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "EventInstance",
	    "Arguments": [{ "Type": "string", "Name": "tag", "Default": null }],
	    "Name": "GetInstanceAddedSignal",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "EventInstance",
	    "Arguments": [{ "Type": "string", "Name": "tag", "Default": null }],
	    "Name": "GetInstanceRemovedSignal",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "string", "Name": "tag", "Default": null }],
	    "Name": "GetTagged",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "Instance", "Name": "instance", "Default": null }],
	    "Name": "GetTags",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Instance", "Name": "instance", "Default": null },
	      { "Type": "string", "Name": "tag", "Default": null }
	    ],
	    "Name": "HasTag",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "instance", "Default": null },
	      { "Type": "string", "Name": "tag", "Default": null }
	    ],
	    "Name": "RemoveTag",
	    "tags": [],
	    "Class": "CollectionService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "instance", "Type": "Instance" }],
	    "Name": "ItemAdded",
	    "tags": ["deprecated"],
	    "Class": "CollectionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "instance", "Type": "Instance" }],
	    "Name": "ItemRemoved",
	    "tags": ["deprecated"],
	    "Class": "CollectionService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Configuration",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Constraint",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment0",
	    "tags": [],
	    "Class": "Constraint"
	  },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment1",
	    "tags": [],
	    "Class": "Constraint"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Constraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Constraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "Constraint"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "AlignOrientation",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxAngularVelocity",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxTorque",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrimaryAxisOnly",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ReactionTorqueEnabled",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Responsiveness",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RigidityEnabled",
	    "tags": [],
	    "Class": "AlignOrientation"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "AlignPosition",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ApplyAtCenterOfMass",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxForce",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxVelocity",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ReactionForceEnabled",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Responsiveness",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RigidityEnabled",
	    "tags": [],
	    "Class": "AlignPosition"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "BallSocketConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LimitsEnabled",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Restitution",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TwistLimitsEnabled",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TwistLowerAngle",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TwistUpperAngle",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "UpperAngle",
	    "tags": [],
	    "Class": "BallSocketConstraint"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "HingeConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "ActuatorType",
	    "type": "Property",
	    "Name": "ActuatorType",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AngularSpeed",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AngularVelocity",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentAngle",
	    "tags": ["readonly"],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LimitsEnabled",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LowerAngle",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxAcceleration",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxTorque",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Restitution",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ServoMaxTorque",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TargetAngle",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "UpperAngle",
	    "tags": [],
	    "Class": "HingeConstraint"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "LineForce",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ApplyAtCenterOfMass",
	    "tags": [],
	    "Class": "LineForce"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "InverseSquareLaw",
	    "tags": [],
	    "Class": "LineForce"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Magnitude",
	    "tags": [],
	    "Class": "LineForce"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxForce",
	    "tags": [],
	    "Class": "LineForce"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ReactionForceEnabled",
	    "tags": [],
	    "Class": "LineForce"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "RodConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentDistance",
	    "tags": ["readonly"],
	    "Class": "RodConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Length",
	    "tags": [],
	    "Class": "RodConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Thickness",
	    "tags": [],
	    "Class": "RodConstraint"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "RopeConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentDistance",
	    "tags": ["readonly"],
	    "Class": "RopeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Length",
	    "tags": [],
	    "Class": "RopeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Restitution",
	    "tags": [],
	    "Class": "RopeConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Thickness",
	    "tags": [],
	    "Class": "RopeConstraint"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "SlidingBallConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "ActuatorType",
	    "type": "Property",
	    "Name": "ActuatorType",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentPosition",
	    "tags": ["readonly"],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LimitsEnabled",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LowerLimit",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxAcceleration",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxForce",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Restitution",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ServoMaxForce",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Speed",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TargetPosition",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "UpperLimit",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Velocity",
	    "tags": [],
	    "Class": "SlidingBallConstraint"
	  },
	  {
	    "Superclass": "SlidingBallConstraint",
	    "type": "Class",
	    "Name": "CylindricalConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "ActuatorType",
	    "type": "Property",
	    "Name": "AngularActuatorType",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AngularLimitsEnabled",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AngularRestitution",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AngularSpeed",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AngularVelocity",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentAngle",
	    "tags": ["readonly"],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "InclinationAngle",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LowerAngle",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxAngularAcceleration",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MotorMaxTorque",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RotationAxisVisible",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ServoMaxTorque",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TargetAngle",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "UpperAngle",
	    "tags": [],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WorldRotationAxis",
	    "tags": ["readonly"],
	    "Class": "CylindricalConstraint"
	  },
	  {
	    "Superclass": "SlidingBallConstraint",
	    "type": "Class",
	    "Name": "PrismaticConstraint",
	    "tags": []
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "SpringConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Coils",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentLength",
	    "tags": ["readonly"],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Damping",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FreeLength",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LimitsEnabled",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxForce",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxLength",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MinLength",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Stiffness",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Thickness",
	    "tags": [],
	    "Class": "SpringConstraint"
	  },
	  { "Superclass": "Constraint", "type": "Class", "Name": "Torque", "tags": [] },
	  {
	    "ValueType": "ActuatorRelativeTo",
	    "type": "Property",
	    "Name": "RelativeTo",
	    "tags": [],
	    "Class": "Torque"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Torque",
	    "tags": [],
	    "Class": "Torque"
	  },
	  {
	    "Superclass": "Constraint",
	    "type": "Class",
	    "Name": "VectorForce",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ApplyAtCenterOfMass",
	    "tags": [],
	    "Class": "VectorForce"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Force",
	    "tags": [],
	    "Class": "VectorForce"
	  },
	  {
	    "ValueType": "ActuatorRelativeTo",
	    "type": "Property",
	    "Name": "RelativeTo",
	    "tags": [],
	    "Class": "VectorForce"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ContentProvider",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "BaseUrl",
	    "tags": ["readonly"],
	    "Class": "ContentProvider"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "RequestQueueSize",
	    "tags": ["readonly"],
	    "Class": "ContentProvider"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Content", "Name": "contentId", "Default": null }],
	    "Name": "Preload",
	    "tags": ["deprecated"],
	    "Class": "ContentProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "url", "Default": null }],
	    "Name": "SetBaseUrl",
	    "tags": ["LocalUserSecurity"],
	    "Class": "ContentProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Array", "Name": "contentIdList", "Default": null }
	    ],
	    "Name": "PreloadAsync",
	    "tags": [],
	    "Class": "ContentProvider",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ContextActionService",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Function", "Name": "functionToBind", "Default": null },
	      { "Type": "bool", "Name": "createTouchButton", "Default": null },
	      { "Type": "Tuple", "Name": "inputTypes", "Default": null }
	    ],
	    "Name": "BindAction",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Function", "Name": "functionToBind", "Default": null },
	      { "Type": "bool", "Name": "createTouchButton", "Default": null },
	      { "Type": "int", "Name": "priorityLevel", "Default": null },
	      { "Type": "Tuple", "Name": "inputTypes", "Default": null }
	    ],
	    "Name": "BindActionAtPriority",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Function", "Name": "functionToBind", "Default": null },
	      { "Type": "bool", "Name": "createTouchButton", "Default": null },
	      { "Type": "Tuple", "Name": "inputTypes", "Default": null }
	    ],
	    "Name": "BindActionToInputTypes",
	    "tags": ["deprecated"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      {
	        "Type": "UserInputType",
	        "Name": "userInputTypeForActivation",
	        "Default": null
	      },
	      {
	        "Type": "KeyCode",
	        "Name": "keyCodeForActivation",
	        "Default": "Unknown"
	      }
	    ],
	    "Name": "BindActivate",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Function", "Name": "functionToBind", "Default": null },
	      { "Type": "bool", "Name": "createTouchButton", "Default": null },
	      { "Type": "Tuple", "Name": "inputTypes", "Default": null }
	    ],
	    "Name": "BindCoreAction",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Function", "Name": "functionToBind", "Default": null },
	      { "Type": "bool", "Name": "createTouchButton", "Default": null },
	      { "Type": "int", "Name": "priorityLevel", "Default": null },
	      { "Type": "Tuple", "Name": "inputTypes", "Default": null }
	    ],
	    "Name": "BindCoreActionAtPriority",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "UserInputState", "Name": "state", "Default": null },
	      { "Type": "Instance", "Name": "inputObject", "Default": null }
	    ],
	    "Name": "CallFunction",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "Instance", "Name": "actionButton", "Default": null }
	    ],
	    "Name": "FireActionButtonFoundSignal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetAllBoundActionInfo",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetAllBoundCoreActionInfo",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [{ "Type": "string", "Name": "actionName", "Default": null }],
	    "Name": "GetBoundActionInfo",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [{ "Type": "string", "Name": "actionName", "Default": null }],
	    "Name": "GetBoundCoreActionInfo",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetCurrentLocalToolIcon",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "string", "Name": "description", "Default": null }
	    ],
	    "Name": "SetDescription",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "string", "Name": "image", "Default": null }
	    ],
	    "Name": "SetImage",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "UDim2", "Name": "position", "Default": null }
	    ],
	    "Name": "SetPosition",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "actionName", "Default": null },
	      { "Type": "string", "Name": "title", "Default": null }
	    ],
	    "Name": "SetTitle",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "actionName", "Default": null }],
	    "Name": "UnbindAction",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      {
	        "Type": "UserInputType",
	        "Name": "userInputTypeForActivation",
	        "Default": null
	      },
	      {
	        "Type": "KeyCode",
	        "Name": "keyCodeForActivation",
	        "Default": "Unknown"
	      }
	    ],
	    "Name": "UnbindActivate",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "UnbindAllActions",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "actionName", "Default": null }],
	    "Name": "UnbindCoreAction",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "actionName", "Default": null }],
	    "Name": "GetButton",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "actionAdded", "Type": "string" },
	      { "Name": "createTouchButton", "Type": "bool" },
	      { "Name": "functionInfoTable", "Type": "Dictionary" },
	      { "Name": "isCore", "Type": "bool" }
	    ],
	    "Name": "BoundActionAdded",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "actionChanged", "Type": "string" },
	      { "Name": "changeName", "Type": "string" },
	      { "Name": "changeTable", "Type": "Dictionary" }
	    ],
	    "Name": "BoundActionChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "actionRemoved", "Type": "string" },
	      { "Name": "functionInfoTable", "Type": "Dictionary" },
	      { "Name": "isCore", "Type": "bool" }
	    ],
	    "Name": "BoundActionRemoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "actionName", "Type": "string" }],
	    "Name": "GetActionButtonEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "toolEquipped", "Type": "Instance" }],
	    "Name": "LocalToolEquipped",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "toolUnequipped", "Type": "Instance" }],
	    "Name": "LocalToolUnequipped",
	    "tags": [],
	    "Class": "ContextActionService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Controller",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Button", "Name": "button", "Default": null },
	      { "Type": "string", "Name": "caption", "Default": null }
	    ],
	    "Name": "BindButton",
	    "tags": [],
	    "Class": "Controller",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Button", "Name": "button", "Default": null }],
	    "Name": "GetButton",
	    "tags": [],
	    "Class": "Controller",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Button", "Name": "button", "Default": null }],
	    "Name": "UnbindButton",
	    "tags": [],
	    "Class": "Controller",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Button", "Name": "button", "Default": null },
	      { "Type": "string", "Name": "caption", "Default": null }
	    ],
	    "Name": "bindButton",
	    "tags": ["deprecated"],
	    "Class": "Controller",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Button", "Name": "button", "Default": null }],
	    "Name": "getButton",
	    "tags": ["deprecated"],
	    "Class": "Controller",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "button", "Type": "Button" }],
	    "Name": "ButtonChanged",
	    "tags": [],
	    "Class": "Controller",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Controller",
	    "type": "Class",
	    "Name": "HumanoidController",
	    "tags": []
	  },
	  {
	    "Superclass": "Controller",
	    "type": "Class",
	    "Name": "SkateboardController",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Steer",
	    "tags": ["readonly"],
	    "Class": "SkateboardController"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Throttle",
	    "tags": ["readonly"],
	    "Class": "SkateboardController"
	  },
	  {
	    "Arguments": [{ "Name": "axis", "Type": "string" }],
	    "Name": "AxisChanged",
	    "tags": [],
	    "Class": "SkateboardController",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Controller",
	    "type": "Class",
	    "Name": "VehicleController",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ControllerService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CookiesService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CorePackages",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CustomEvent",
	    "tags": ["deprecated"]
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetAttachedReceivers",
	    "tags": [],
	    "Class": "CustomEvent",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "newValue", "Default": null }],
	    "Name": "SetValue",
	    "tags": [],
	    "Class": "CustomEvent",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "receiver", "Type": "Instance" }],
	    "Name": "ReceiverConnected",
	    "tags": [],
	    "Class": "CustomEvent",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "receiver", "Type": "Instance" }],
	    "Name": "ReceiverDisconnected",
	    "tags": [],
	    "Class": "CustomEvent",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "CustomEventReceiver",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Source",
	    "tags": [],
	    "Class": "CustomEventReceiver"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetCurrentValue",
	    "tags": [],
	    "Class": "CustomEventReceiver",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "event", "Type": "Instance" }],
	    "Name": "EventConnected",
	    "tags": [],
	    "Class": "CustomEventReceiver",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "event", "Type": "Instance" }],
	    "Name": "EventDisconnected",
	    "tags": [],
	    "Class": "CustomEventReceiver",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "newValue", "Type": "float" }],
	    "Name": "SourceValueChanged",
	    "tags": [],
	    "Class": "CustomEventReceiver",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DataModelMesh",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Offset",
	    "tags": [],
	    "Class": "DataModelMesh"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Scale",
	    "tags": [],
	    "Class": "DataModelMesh"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "VertexColor",
	    "tags": [],
	    "Class": "DataModelMesh"
	  },
	  {
	    "Superclass": "DataModelMesh",
	    "type": "Class",
	    "Name": "BevelMesh",
	    "tags": ["deprecated", "notbrowsable"]
	  },
	  {
	    "Superclass": "BevelMesh",
	    "type": "Class",
	    "Name": "BlockMesh",
	    "tags": []
	  },
	  {
	    "Superclass": "BevelMesh",
	    "type": "Class",
	    "Name": "CylinderMesh",
	    "tags": ["deprecated"]
	  },
	  {
	    "Superclass": "DataModelMesh",
	    "type": "Class",
	    "Name": "FileMesh",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "MeshId",
	    "tags": [],
	    "Class": "FileMesh"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "TextureId",
	    "tags": [],
	    "Class": "FileMesh"
	  },
	  {
	    "Superclass": "FileMesh",
	    "type": "Class",
	    "Name": "SpecialMesh",
	    "tags": []
	  },
	  {
	    "ValueType": "MeshType",
	    "type": "Property",
	    "Name": "MeshType",
	    "tags": [],
	    "Class": "SpecialMesh"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DataStoreService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutomaticRetry",
	    "tags": ["LocalUserSecurity"],
	    "Class": "DataStoreService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LegacyNamingScheme",
	    "tags": ["LocalUserSecurity", "deprecated"],
	    "Class": "DataStoreService"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "string", "Name": "scope", "Default": "global" }
	    ],
	    "Name": "GetDataStore",
	    "tags": [],
	    "Class": "DataStoreService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetGlobalDataStore",
	    "tags": [],
	    "Class": "DataStoreService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "string", "Name": "scope", "Default": "global" }
	    ],
	    "Name": "GetOrderedDataStore",
	    "tags": [],
	    "Class": "DataStoreService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [
	      { "Type": "DataStoreRequestType", "Name": "requestType", "Default": null }
	    ],
	    "Name": "GetRequestBudgetForRequestType",
	    "tags": [],
	    "Class": "DataStoreService",
	    "type": "Function"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Debris", "tags": [] },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MaxItems",
	    "tags": ["deprecated"],
	    "Class": "Debris"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "item", "Default": null },
	      { "Type": "double", "Name": "lifetime", "Default": "10" }
	    ],
	    "Name": "AddItem",
	    "tags": [],
	    "Class": "Debris",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enabled", "Default": null }],
	    "Name": "SetLegacyMaxItems",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Debris",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "item", "Default": null },
	      { "Type": "double", "Name": "lifetime", "Default": "10" }
	    ],
	    "Name": "addItem",
	    "tags": ["deprecated"],
	    "Class": "Debris",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DebugSettings",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DataModel",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "ErrorReporting",
	    "type": "Property",
	    "Name": "ErrorReporting",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "GfxCard",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "InstanceCount",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsFmodProfilingEnabled",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsScriptStackTracingEnabled",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "JobCount",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "LuaRamLimit",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "OsIs64Bit",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "OsPlatform",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "OsPlatformId",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "OsVer",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PlayerCount",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ReportSoundWarnings",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "RobloxProductName",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "RobloxVersion",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "SIMD",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "SystemProductName",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "TickCountSampleMethod",
	    "type": "Property",
	    "Name": "TickCountPreciseOverride",
	    "tags": [],
	    "Class": "DebugSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "VideoMemory",
	    "tags": ["readonly"],
	    "Class": "DebugSettings"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DebuggerBreakpoint",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Condition",
	    "tags": [],
	    "Class": "DebuggerBreakpoint"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsEnabled",
	    "tags": [],
	    "Class": "DebuggerBreakpoint"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Line",
	    "tags": ["readonly"],
	    "Class": "DebuggerBreakpoint"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DebuggerManager",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "DebuggingEnabled",
	    "tags": ["readonly"],
	    "Class": "DebuggerManager"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "script", "Default": null }],
	    "Name": "AddDebugger",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "EnableDebugging",
	    "tags": ["LocalUserSecurity"],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetDebuggers",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Resume",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepIn",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepOut",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepOver",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "debugger", "Type": "Instance" }],
	    "Name": "DebuggerAdded",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "debugger", "Type": "Instance" }],
	    "Name": "DebuggerRemoved",
	    "tags": [],
	    "Class": "DebuggerManager",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DebuggerWatch",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Expression",
	    "tags": [],
	    "Class": "DebuggerWatch"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "CheckSyntax",
	    "tags": [],
	    "Class": "DebuggerWatch",
	    "type": "Function"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Dialog", "tags": [] },
	  {
	    "ValueType": "DialogBehaviorType",
	    "type": "Property",
	    "Name": "BehaviorType",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ConversationDistance",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GoodbyeChoiceActive",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "GoodbyeDialog",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "InUse",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "InitialPrompt",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "DialogPurpose",
	    "type": "Property",
	    "Name": "Purpose",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "DialogTone",
	    "type": "Property",
	    "Name": "Tone",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TriggerDistance",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "TriggerOffset",
	    "tags": [],
	    "Class": "Dialog"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetCurrentPlayers",
	    "tags": [],
	    "Class": "Dialog",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "bool", "Name": "isUsing", "Default": null }
	    ],
	    "Name": "SetPlayerIsUsing",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Dialog",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "Instance", "Name": "dialogChoice", "Default": null }
	    ],
	    "Name": "SignalDialogChoiceSelected",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Dialog",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "dialogChoice", "Type": "Instance" }
	    ],
	    "Name": "DialogChoiceSelected",
	    "tags": [],
	    "Class": "Dialog",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "DialogChoice",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GoodbyeChoiceActive",
	    "tags": [],
	    "Class": "DialogChoice"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "GoodbyeDialog",
	    "tags": [],
	    "Class": "DialogChoice"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ResponseDialog",
	    "tags": [],
	    "Class": "DialogChoice"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "UserDialog",
	    "tags": [],
	    "Class": "DialogChoice"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Dragger", "tags": [] },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Axis", "Name": "axis", "Default": "X" }],
	    "Name": "AxisRotate",
	    "tags": [],
	    "Class": "Dragger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "mousePart", "Default": null },
	      { "Type": "Vector3", "Name": "pointOnMousePart", "Default": null },
	      { "Type": "Objects", "Name": "parts", "Default": null }
	    ],
	    "Name": "MouseDown",
	    "tags": [],
	    "Class": "Dragger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Ray", "Name": "mouseRay", "Default": null }],
	    "Name": "MouseMove",
	    "tags": [],
	    "Class": "Dragger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "MouseUp",
	    "tags": [],
	    "Class": "Dragger",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Explosion",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BlastPressure",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BlastRadius",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DestroyJointRadiusPercent",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "ValueType": "ExplosionType",
	    "type": "Property",
	    "Name": "ExplosionType",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "Explosion"
	  },
	  {
	    "Arguments": [
	      { "Name": "part", "Type": "Instance" },
	      { "Name": "distance", "Type": "float" }
	    ],
	    "Name": "Hit",
	    "tags": [],
	    "Class": "Explosion",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "FaceInstance",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "Face",
	    "tags": [],
	    "Class": "FaceInstance"
	  },
	  {
	    "Superclass": "FaceInstance",
	    "type": "Class",
	    "Name": "Decal",
	    "tags": []
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color3",
	    "tags": [],
	    "Class": "Decal"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LocalTransparencyModifier",
	    "tags": ["hidden"],
	    "Class": "Decal"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Shiny",
	    "tags": ["deprecated"],
	    "Class": "Decal"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Specular",
	    "tags": ["deprecated"],
	    "Class": "Decal"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Texture",
	    "tags": [],
	    "Class": "Decal"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "Decal"
	  },
	  { "Superclass": "Decal", "type": "Class", "Name": "Texture", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "StudsPerTileU",
	    "tags": [],
	    "Class": "Texture"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "StudsPerTileV",
	    "tags": [],
	    "Class": "Texture"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Feature", "tags": [] },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "FaceId",
	    "tags": [],
	    "Class": "Feature"
	  },
	  {
	    "ValueType": "InOut",
	    "type": "Property",
	    "Name": "InOut",
	    "tags": [],
	    "Class": "Feature"
	  },
	  {
	    "ValueType": "LeftRight",
	    "type": "Property",
	    "Name": "LeftRight",
	    "tags": [],
	    "Class": "Feature"
	  },
	  {
	    "ValueType": "TopBottom",
	    "type": "Property",
	    "Name": "TopBottom",
	    "tags": [],
	    "Class": "Feature"
	  },
	  {
	    "Superclass": "Feature",
	    "type": "Class",
	    "Name": "Hole",
	    "tags": ["deprecated"]
	  },
	  {
	    "Superclass": "Feature",
	    "type": "Class",
	    "Name": "MotorFeature",
	    "tags": ["deprecated"]
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Fire", "tags": [] },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Fire"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Fire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Heat",
	    "tags": [],
	    "Class": "Fire"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "SecondaryColor",
	    "tags": [],
	    "Class": "Fire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "Fire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "size",
	    "tags": ["deprecated"],
	    "Class": "Fire"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "FlagStandService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "FlyweightService",
	    "tags": []
	  },
	  {
	    "Superclass": "FlyweightService",
	    "type": "Class",
	    "Name": "CSGDictionaryService",
	    "tags": []
	  },
	  {
	    "Superclass": "FlyweightService",
	    "type": "Class",
	    "Name": "NonReplicatedCSGDictionaryService",
	    "tags": []
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Folder", "tags": [] },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ForceField",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "ForceField"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "FriendService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetPlatformFriends",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "FriendService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [{ "Name": "friendData", "Type": "Array" }],
	    "Name": "FriendsUpdated",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "FriendService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "FunctionalTest",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Description",
	    "tags": [],
	    "Class": "FunctionalTest"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Error",
	    "tags": [],
	    "Class": "FunctionalTest",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Failed",
	    "tags": [],
	    "Class": "FunctionalTest",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Pass",
	    "tags": [],
	    "Class": "FunctionalTest",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Passed",
	    "tags": [],
	    "Class": "FunctionalTest",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Warn",
	    "tags": [],
	    "Class": "FunctionalTest",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GamePassService",
	    "tags": []
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "gamePassId", "Default": null }
	    ],
	    "Name": "PlayerHasPass",
	    "tags": [],
	    "Class": "GamePassService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GameSettings",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "AdditionalCoreIncludeDirs",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BubbleChatLifetime",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "BubbleChatMaxBubbles",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ChatHistory",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ChatScrollLength",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CollisionSoundEnabled",
	    "tags": ["deprecated"],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CollisionSoundVolume",
	    "tags": ["deprecated"],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HardwareMouse",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MaxCollisionSounds",
	    "tags": ["deprecated"],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "OverrideStarterScript",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ReportAbuseChatHistory",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "SoftwareSound",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "VideoCaptureEnabled",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "ValueType": "VideoQualitySettings",
	    "type": "Property",
	    "Name": "VideoQuality",
	    "tags": [],
	    "Class": "GameSettings"
	  },
	  {
	    "Arguments": [{ "Name": "recording", "Type": "bool" }],
	    "Name": "VideoRecordingChangeRequest",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GameSettings",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GamepadService",
	    "tags": []
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Geometry", "tags": [] },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GlobalDataStore",
	    "tags": []
	  },
	  {
	    "ReturnType": "Connection",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Function", "Name": "callback", "Default": null }
	    ],
	    "Name": "OnUpdate",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "GetAsync",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "int", "Name": "delta", "Default": "1" }
	    ],
	    "Name": "IncrementAsync",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "RemoveAsync",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null }
	    ],
	    "Name": "SetAsync",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Function", "Name": "transformFunction", "Default": null }
	    ],
	    "Name": "UpdateAsync",
	    "tags": [],
	    "Class": "GlobalDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "GlobalDataStore",
	    "type": "Class",
	    "Name": "OrderedDataStore",
	    "tags": []
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "bool", "Name": "ascending", "Default": null },
	      { "Type": "int", "Name": "pagesize", "Default": null },
	      { "Type": "Variant", "Name": "minValue", "Default": null },
	      { "Type": "Variant", "Name": "maxValue", "Default": null }
	    ],
	    "Name": "GetSortedAsync",
	    "tags": [],
	    "Class": "OrderedDataStore",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GoogleAnalyticsConfiguration",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GroupService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "GetAlliesAsync",
	    "tags": [],
	    "Class": "GroupService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "GetEnemiesAsync",
	    "tags": [],
	    "Class": "GroupService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "GetGroupInfoAsync",
	    "tags": [],
	    "Class": "GroupService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetGroupsAsync",
	    "tags": [],
	    "Class": "GroupService",
	    "type": "YieldFunction"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "GuiBase", "tags": [] },
	  {
	    "Superclass": "GuiBase",
	    "type": "Class",
	    "Name": "GuiBase2d",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "AbsolutePosition",
	    "tags": ["readonly"],
	    "Class": "GuiBase2d"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AbsoluteRotation",
	    "tags": ["readonly"],
	    "Class": "GuiBase2d"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "AbsoluteSize",
	    "tags": ["readonly"],
	    "Class": "GuiBase2d"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoLocalize",
	    "tags": [],
	    "Class": "GuiBase2d"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Localize",
	    "tags": ["deprecated", "hidden"],
	    "Class": "GuiBase2d"
	  },
	  {
	    "ValueType": "Class:LocalizationTable",
	    "type": "Property",
	    "Name": "RootLocalizationTable",
	    "tags": [],
	    "Class": "GuiBase2d"
	  },
	  {
	    "Superclass": "GuiBase2d",
	    "type": "Class",
	    "Name": "GuiObject",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Active",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "AnchorPoint",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "BackgroundColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "BackgroundColor3",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BackgroundTransparency",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "BorderColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "BorderColor3",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "BorderSizePixel",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClipsDescendants",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Draggable",
	    "tags": ["deprecated"],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "LayoutOrder",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "NextSelectionDown",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "NextSelectionLeft",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "NextSelectionRight",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "NextSelectionUp",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Rotation",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Selectable",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "SelectionImageObject",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "SizeConstraint",
	    "type": "Property",
	    "Name": "SizeConstraint",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": ["hidden"],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ZIndex",
	    "tags": [],
	    "Class": "GuiObject"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UDim2", "Name": "endPosition", "Default": null },
	      {
	        "Type": "EasingDirection",
	        "Name": "easingDirection",
	        "Default": "Out"
	      },
	      { "Type": "EasingStyle", "Name": "easingStyle", "Default": "Quad" },
	      { "Type": "float", "Name": "time", "Default": "1" },
	      { "Type": "bool", "Name": "override", "Default": "false" },
	      { "Type": "Function", "Name": "callback", "Default": "nil" }
	    ],
	    "Name": "TweenPosition",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UDim2", "Name": "endSize", "Default": null },
	      {
	        "Type": "EasingDirection",
	        "Name": "easingDirection",
	        "Default": "Out"
	      },
	      { "Type": "EasingStyle", "Name": "easingStyle", "Default": "Quad" },
	      { "Type": "float", "Name": "time", "Default": "1" },
	      { "Type": "bool", "Name": "override", "Default": "false" },
	      { "Type": "Function", "Name": "callback", "Default": "nil" }
	    ],
	    "Name": "TweenSize",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UDim2", "Name": "endSize", "Default": null },
	      { "Type": "UDim2", "Name": "endPosition", "Default": null },
	      {
	        "Type": "EasingDirection",
	        "Name": "easingDirection",
	        "Default": "Out"
	      },
	      { "Type": "EasingStyle", "Name": "easingStyle", "Default": "Quad" },
	      { "Type": "float", "Name": "time", "Default": "1" },
	      { "Type": "bool", "Name": "override", "Default": "false" },
	      { "Type": "Function", "Name": "callback", "Default": "nil" }
	    ],
	    "Name": "TweenSizeAndPosition",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "initialPosition", "Type": "UDim2" }],
	    "Name": "DragBegin",
	    "tags": ["deprecated"],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "DragStopped",
	    "tags": ["deprecated"],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "input", "Type": "Instance" }],
	    "Name": "InputBegan",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "input", "Type": "Instance" }],
	    "Name": "InputChanged",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "input", "Type": "Instance" }],
	    "Name": "InputEnded",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseEnter",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseLeave",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseMoved",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseWheelBackward",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseWheelForward",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "SelectionGained",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "SelectionLost",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "state", "Type": "UserInputState" }
	    ],
	    "Name": "TouchLongPress",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "totalTranslation", "Type": "Vector2" },
	      { "Name": "velocity", "Type": "Vector2" },
	      { "Name": "state", "Type": "UserInputState" }
	    ],
	    "Name": "TouchPan",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "scale", "Type": "float" },
	      { "Name": "velocity", "Type": "float" },
	      { "Name": "state", "Type": "UserInputState" }
	    ],
	    "Name": "TouchPinch",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "rotation", "Type": "float" },
	      { "Name": "velocity", "Type": "float" },
	      { "Name": "state", "Type": "UserInputState" }
	    ],
	    "Name": "TouchRotate",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "swipeDirection", "Type": "SwipeDirection" },
	      { "Name": "numberOfTouches", "Type": "int" }
	    ],
	    "Name": "TouchSwipe",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "touchPositions", "Type": "Array" }],
	    "Name": "TouchTap",
	    "tags": [],
	    "Class": "GuiObject",
	    "type": "Event"
	  },
	  { "Superclass": "GuiObject", "type": "Class", "Name": "Frame", "tags": [] },
	  {
	    "ValueType": "FrameStyle",
	    "type": "Property",
	    "Name": "Style",
	    "tags": [],
	    "Class": "Frame"
	  },
	  {
	    "Superclass": "GuiObject",
	    "type": "Class",
	    "Name": "GuiButton",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoButtonColor",
	    "tags": [],
	    "Class": "GuiButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Modal",
	    "tags": [],
	    "Class": "GuiButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Selected",
	    "tags": [],
	    "Class": "GuiButton"
	  },
	  {
	    "ValueType": "ButtonStyle",
	    "type": "Property",
	    "Name": "Style",
	    "tags": [],
	    "Class": "GuiButton"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "verb", "Default": null }],
	    "Name": "SetVerb",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiButton",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "inputObject", "Type": "Instance" }],
	    "Name": "Activated",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseButton1Click",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseButton1Down",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseButton1Up",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseButton2Click",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseButton2Down",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "x", "Type": "int" },
	      { "Name": "y", "Type": "int" }
	    ],
	    "Name": "MouseButton2Up",
	    "tags": [],
	    "Class": "GuiButton",
	    "type": "Event"
	  },
	  {
	    "Superclass": "GuiButton",
	    "type": "Class",
	    "Name": "ImageButton",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "HoverImage",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Image",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ImageColor3",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "ImageRectOffset",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "ImageRectSize",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ImageTransparency",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLoaded",
	    "tags": ["readonly"],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "PressedImage",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "ScaleType",
	    "type": "Property",
	    "Name": "ScaleType",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "Rect2D",
	    "type": "Property",
	    "Name": "SliceCenter",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SliceScale",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "TileSize",
	    "tags": [],
	    "Class": "ImageButton"
	  },
	  {
	    "Superclass": "GuiButton",
	    "type": "Class",
	    "Name": "TextButton",
	    "tags": []
	  },
	  {
	    "ValueType": "Font",
	    "type": "Property",
	    "Name": "Font",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "FontSize",
	    "type": "Property",
	    "Name": "FontSize",
	    "tags": ["deprecated"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LineHeight",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "LocalizedText",
	    "tags": ["hidden", "readonly"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Text",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "TextBounds",
	    "tags": ["readonly"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TextColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextColor3",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextFits",
	    "tags": ["readonly"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextScaled",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextSize",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextStrokeColor3",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextStrokeTransparency",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextTransparency",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "TextTruncate",
	    "type": "Property",
	    "Name": "TextTruncate",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrap",
	    "tags": ["deprecated"],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrapped",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "TextXAlignment",
	    "type": "Property",
	    "Name": "TextXAlignment",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ValueType": "TextYAlignment",
	    "type": "Property",
	    "Name": "TextYAlignment",
	    "tags": [],
	    "Class": "TextButton"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "text", "Default": null }],
	    "Name": "SetTextFromInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextButton",
	    "type": "Function"
	  },
	  {
	    "Superclass": "GuiObject",
	    "type": "Class",
	    "Name": "GuiLabel",
	    "tags": []
	  },
	  {
	    "Superclass": "GuiLabel",
	    "type": "Class",
	    "Name": "ImageLabel",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Image",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ImageColor3",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "ImageRectOffset",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "ImageRectSize",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ImageTransparency",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLoaded",
	    "tags": ["readonly"],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "ScaleType",
	    "type": "Property",
	    "Name": "ScaleType",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "Rect2D",
	    "type": "Property",
	    "Name": "SliceCenter",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SliceScale",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "TileSize",
	    "tags": [],
	    "Class": "ImageLabel"
	  },
	  {
	    "Superclass": "GuiLabel",
	    "type": "Class",
	    "Name": "TextLabel",
	    "tags": []
	  },
	  {
	    "ValueType": "Font",
	    "type": "Property",
	    "Name": "Font",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "FontSize",
	    "type": "Property",
	    "Name": "FontSize",
	    "tags": ["deprecated"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LineHeight",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "LocalizedText",
	    "tags": ["hidden", "readonly"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Text",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "TextBounds",
	    "tags": ["readonly"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TextColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextColor3",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextFits",
	    "tags": ["readonly"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextScaled",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextSize",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextStrokeColor3",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextStrokeTransparency",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextTransparency",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "TextTruncate",
	    "type": "Property",
	    "Name": "TextTruncate",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrap",
	    "tags": ["deprecated"],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrapped",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "TextXAlignment",
	    "type": "Property",
	    "Name": "TextXAlignment",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ValueType": "TextYAlignment",
	    "type": "Property",
	    "Name": "TextYAlignment",
	    "tags": [],
	    "Class": "TextLabel"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "text", "Default": null }],
	    "Name": "SetTextFromInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextLabel",
	    "type": "Function"
	  },
	  {
	    "Superclass": "GuiObject",
	    "type": "Class",
	    "Name": "ScrollingFrame",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "AbsoluteWindowSize",
	    "tags": ["readonly"],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "BottomImage",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "CanvasPosition",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "CanvasSize",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "ElasticBehavior",
	    "type": "Property",
	    "Name": "ElasticBehavior",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "ScrollBarInset",
	    "type": "Property",
	    "Name": "HorizontalScrollBarInset",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "MidImage",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ScrollBarImageColor3",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ScrollBarImageTransparency",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ScrollBarThickness",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "ScrollingDirection",
	    "type": "Property",
	    "Name": "ScrollingDirection",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ScrollingEnabled",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "TopImage",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "ScrollBarInset",
	    "type": "Property",
	    "Name": "VerticalScrollBarInset",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ValueType": "VerticalScrollBarPosition",
	    "type": "Property",
	    "Name": "VerticalScrollBarPosition",
	    "tags": [],
	    "Class": "ScrollingFrame"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ScrollToTop",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ScrollingFrame",
	    "type": "Function"
	  },
	  { "Superclass": "GuiObject", "type": "Class", "Name": "TextBox", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClearTextOnFocus",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "Font",
	    "type": "Property",
	    "Name": "Font",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "FontSize",
	    "type": "Property",
	    "Name": "FontSize",
	    "tags": ["deprecated"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LineHeight",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ManualFocusRelease",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "MultiLine",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "OverlayNativeInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "PlaceholderColor3",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "PlaceholderText",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShowNativeInput",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Text",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "TextBounds",
	    "tags": ["readonly"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TextColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextColor3",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextFits",
	    "tags": ["readonly"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextScaled",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextSize",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TextStrokeColor3",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextStrokeTransparency",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextTransparency",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "TextTruncate",
	    "type": "Property",
	    "Name": "TextTruncate",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrap",
	    "tags": ["deprecated"],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TextWrapped",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "TextXAlignment",
	    "type": "Property",
	    "Name": "TextXAlignment",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ValueType": "TextYAlignment",
	    "type": "Property",
	    "Name": "TextYAlignment",
	    "tags": [],
	    "Class": "TextBox"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "CaptureFocus",
	    "tags": [],
	    "Class": "TextBox",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsFocused",
	    "tags": [],
	    "Class": "TextBox",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "submitted", "Default": "false" }],
	    "Name": "ReleaseFocus",
	    "tags": [],
	    "Class": "TextBox",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ResetKeyboardMode",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextBox",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "text", "Default": null }],
	    "Name": "SetTextFromInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TextBox",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "enterPressed", "Type": "bool" },
	      { "Name": "inputThatCausedFocusLoss", "Type": "Instance" }
	    ],
	    "Name": "FocusLost",
	    "tags": [],
	    "Class": "TextBox",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Focused",
	    "tags": [],
	    "Class": "TextBox",
	    "type": "Event"
	  },
	  {
	    "Superclass": "GuiBase2d",
	    "type": "Class",
	    "Name": "LayerCollector",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "LayerCollector"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ResetOnSpawn",
	    "tags": [],
	    "Class": "LayerCollector"
	  },
	  {
	    "ValueType": "ZIndexBehavior",
	    "type": "Property",
	    "Name": "ZIndexBehavior",
	    "tags": [],
	    "Class": "LayerCollector"
	  },
	  {
	    "Superclass": "LayerCollector",
	    "type": "Class",
	    "Name": "BillboardGui",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Active",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Adornee",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AlwaysOnTop",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClipsDescendants",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "ExtentsOffset",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "ExtentsOffsetWorldSpace",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightInfluence",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxDistance",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "PlayerToHideFrom",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "SizeOffset",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "StudsOffset",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "StudsOffsetWorldSpace",
	    "tags": [],
	    "Class": "BillboardGui"
	  },
	  {
	    "Superclass": "LayerCollector",
	    "type": "Class",
	    "Name": "PluginGui",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Title",
	    "tags": [],
	    "Class": "PluginGui"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Function", "Name": "function", "Default": "nil" }],
	    "Name": "BindToClose",
	    "tags": [],
	    "Class": "PluginGui",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector2",
	    "Arguments": [],
	    "Name": "GetRelativeMousePosition",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginGui",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "pluginDragEvent", "Type": "Instance" }],
	    "Name": "PluginDragDropped",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "pluginDragEvent", "Type": "Instance" }],
	    "Name": "PluginDragEntered",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "pluginDragEvent", "Type": "Instance" }],
	    "Name": "PluginDragLeft",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "pluginDragEvent", "Type": "Instance" }],
	    "Name": "PluginDragMoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WindowFocusReleased",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WindowFocused",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginGui",
	    "type": "Event"
	  },
	  {
	    "Superclass": "PluginGui",
	    "type": "Class",
	    "Name": "DockWidgetPluginGui",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HostWidgetWasRestored",
	    "tags": ["readonly"],
	    "Class": "DockWidgetPluginGui"
	  },
	  {
	    "Superclass": "PluginGui",
	    "type": "Class",
	    "Name": "QWidgetPluginGui",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "LayerCollector",
	    "type": "Class",
	    "Name": "ScreenGui",
	    "tags": []
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DisplayOrder",
	    "tags": [],
	    "Class": "ScreenGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IgnoreGuiInset",
	    "tags": [],
	    "Class": "ScreenGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "ScreenGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "OnTopOfCoreBlur",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "ScreenGui"
	  },
	  {
	    "Superclass": "ScreenGui",
	    "type": "Class",
	    "Name": "GuiMain",
	    "tags": ["deprecated"]
	  },
	  {
	    "Superclass": "LayerCollector",
	    "type": "Class",
	    "Name": "SurfaceGui",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Active",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Adornee",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AlwaysOnTop",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "CanvasSize",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClipsDescendants",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "Face",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightInfluence",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ToolPunchThroughDistance",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ZOffset",
	    "tags": [],
	    "Class": "SurfaceGui"
	  },
	  { "Superclass": "GuiBase", "type": "Class", "Name": "GuiBase3d", "tags": [] },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "Color",
	    "tags": ["deprecated", "hidden"],
	    "Class": "GuiBase3d"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color3",
	    "tags": [],
	    "Class": "GuiBase3d"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "GuiBase3d"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Visible",
	    "tags": [],
	    "Class": "GuiBase3d"
	  },
	  {
	    "Superclass": "GuiBase3d",
	    "type": "Class",
	    "Name": "FloorWire",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CycleOffset",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "From",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "StudsBetweenTextures",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Texture",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "TextureSize",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "To",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Velocity",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WireRadius",
	    "tags": [],
	    "Class": "FloorWire"
	  },
	  {
	    "Superclass": "GuiBase3d",
	    "type": "Class",
	    "Name": "PVAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:PVInstance",
	    "type": "Property",
	    "Name": "Adornee",
	    "tags": [],
	    "Class": "PVAdornment"
	  },
	  {
	    "Superclass": "PVAdornment",
	    "type": "Class",
	    "Name": "HandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AlwaysOnTop",
	    "tags": [],
	    "Class": "HandleAdornment"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "HandleAdornment"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "SizeRelativeOffset",
	    "tags": [],
	    "Class": "HandleAdornment"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ZIndex",
	    "tags": [],
	    "Class": "HandleAdornment"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseButton1Down",
	    "tags": [],
	    "Class": "HandleAdornment",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseButton1Up",
	    "tags": [],
	    "Class": "HandleAdornment",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseEnter",
	    "tags": [],
	    "Class": "HandleAdornment",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MouseLeave",
	    "tags": [],
	    "Class": "HandleAdornment",
	    "type": "Event"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "BoxHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "BoxHandleAdornment"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "ConeHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Height",
	    "tags": [],
	    "Class": "ConeHandleAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "ConeHandleAdornment"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "CylinderHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Height",
	    "tags": [],
	    "Class": "CylinderHandleAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "CylinderHandleAdornment"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "ImageHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Image",
	    "tags": [],
	    "Class": "ImageHandleAdornment"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "ImageHandleAdornment"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "LineHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Length",
	    "tags": [],
	    "Class": "LineHandleAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Thickness",
	    "tags": [],
	    "Class": "LineHandleAdornment"
	  },
	  {
	    "Superclass": "HandleAdornment",
	    "type": "Class",
	    "Name": "SphereHandleAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Radius",
	    "tags": [],
	    "Class": "SphereHandleAdornment"
	  },
	  {
	    "Superclass": "PVAdornment",
	    "type": "Class",
	    "Name": "ParabolaAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "A",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "B",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "C",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Range",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Thickness",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Objects", "Name": "ignoreDescendentsTable", "Default": null }
	    ],
	    "Name": "FindPartOnParabola",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ParabolaAdornment",
	    "type": "Function"
	  },
	  {
	    "Superclass": "PVAdornment",
	    "type": "Class",
	    "Name": "SelectionBox",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LineThickness",
	    "tags": [],
	    "Class": "SelectionBox"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "SurfaceColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "SelectionBox"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "SurfaceColor3",
	    "tags": [],
	    "Class": "SelectionBox"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SurfaceTransparency",
	    "tags": [],
	    "Class": "SelectionBox"
	  },
	  {
	    "Superclass": "PVAdornment",
	    "type": "Class",
	    "Name": "SelectionSphere",
	    "tags": []
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "SurfaceColor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "SelectionSphere"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "SurfaceColor3",
	    "tags": [],
	    "Class": "SelectionSphere"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SurfaceTransparency",
	    "tags": [],
	    "Class": "SelectionSphere"
	  },
	  {
	    "Superclass": "GuiBase3d",
	    "type": "Class",
	    "Name": "PartAdornment",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Adornee",
	    "tags": [],
	    "Class": "PartAdornment"
	  },
	  {
	    "Superclass": "PartAdornment",
	    "type": "Class",
	    "Name": "HandlesBase",
	    "tags": []
	  },
	  {
	    "Superclass": "HandlesBase",
	    "type": "Class",
	    "Name": "ArcHandles",
	    "tags": []
	  },
	  {
	    "ValueType": "Axes",
	    "type": "Property",
	    "Name": "Axes",
	    "tags": [],
	    "Class": "ArcHandles"
	  },
	  {
	    "Arguments": [{ "Name": "axis", "Type": "Axis" }],
	    "Name": "MouseButton1Down",
	    "tags": [],
	    "Class": "ArcHandles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "axis", "Type": "Axis" }],
	    "Name": "MouseButton1Up",
	    "tags": [],
	    "Class": "ArcHandles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "axis", "Type": "Axis" },
	      { "Name": "relativeAngle", "Type": "float" },
	      { "Name": "deltaRadius", "Type": "float" }
	    ],
	    "Name": "MouseDrag",
	    "tags": [],
	    "Class": "ArcHandles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "axis", "Type": "Axis" }],
	    "Name": "MouseEnter",
	    "tags": [],
	    "Class": "ArcHandles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "axis", "Type": "Axis" }],
	    "Name": "MouseLeave",
	    "tags": [],
	    "Class": "ArcHandles",
	    "type": "Event"
	  },
	  {
	    "Superclass": "HandlesBase",
	    "type": "Class",
	    "Name": "Handles",
	    "tags": []
	  },
	  {
	    "ValueType": "Faces",
	    "type": "Property",
	    "Name": "Faces",
	    "tags": [],
	    "Class": "Handles"
	  },
	  {
	    "ValueType": "HandlesStyle",
	    "type": "Property",
	    "Name": "Style",
	    "tags": [],
	    "Class": "Handles"
	  },
	  {
	    "Arguments": [{ "Name": "face", "Type": "NormalId" }],
	    "Name": "MouseButton1Down",
	    "tags": [],
	    "Class": "Handles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "face", "Type": "NormalId" }],
	    "Name": "MouseButton1Up",
	    "tags": [],
	    "Class": "Handles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "face", "Type": "NormalId" },
	      { "Name": "distance", "Type": "float" }
	    ],
	    "Name": "MouseDrag",
	    "tags": [],
	    "Class": "Handles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "face", "Type": "NormalId" }],
	    "Name": "MouseEnter",
	    "tags": [],
	    "Class": "Handles",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "face", "Type": "NormalId" }],
	    "Name": "MouseLeave",
	    "tags": [],
	    "Class": "Handles",
	    "type": "Event"
	  },
	  {
	    "Superclass": "PartAdornment",
	    "type": "Class",
	    "Name": "SurfaceSelection",
	    "tags": []
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "TargetSurface",
	    "tags": [],
	    "Class": "SurfaceSelection"
	  },
	  {
	    "Superclass": "GuiBase3d",
	    "type": "Class",
	    "Name": "SelectionLasso",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:Humanoid",
	    "type": "Property",
	    "Name": "Humanoid",
	    "tags": [],
	    "Class": "SelectionLasso"
	  },
	  {
	    "Superclass": "SelectionLasso",
	    "type": "Class",
	    "Name": "SelectionPartLasso",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Part",
	    "tags": [],
	    "Class": "SelectionPartLasso"
	  },
	  {
	    "Superclass": "SelectionLasso",
	    "type": "Class",
	    "Name": "SelectionPointLasso",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Point",
	    "tags": [],
	    "Class": "SelectionPointLasso"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "GuiItem", "tags": [] },
	  { "Superclass": "GuiItem", "type": "Class", "Name": "Backpack", "tags": [] },
	  {
	    "Superclass": "GuiItem",
	    "type": "Class",
	    "Name": "BackpackItem",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "TextureId",
	    "tags": [],
	    "Class": "BackpackItem"
	  },
	  {
	    "Superclass": "BackpackItem",
	    "type": "Class",
	    "Name": "HopperBin",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Active",
	    "tags": [],
	    "Class": "HopperBin"
	  },
	  {
	    "ValueType": "BinType",
	    "type": "Property",
	    "Name": "BinType",
	    "tags": [],
	    "Class": "HopperBin"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Disable",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HopperBin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ToggleSelect",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HopperBin",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "Deselected",
	    "tags": [],
	    "Class": "HopperBin",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "mouse", "Type": "Instance" }],
	    "Name": "Selected",
	    "tags": [],
	    "Class": "HopperBin",
	    "type": "Event"
	  },
	  { "Superclass": "BackpackItem", "type": "Class", "Name": "Tool", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CanBeDropped",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Grip",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "GripForward",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "GripPos",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "GripRight",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "GripUp",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ManualActivationOnly",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RequiresHandle",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ToolTip",
	    "tags": [],
	    "Class": "Tool"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Activate",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Deactivate",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "Activated",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Deactivated",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "mouse", "Type": "Instance" }],
	    "Name": "Equipped",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Unequipped",
	    "tags": [],
	    "Class": "Tool",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Tool",
	    "type": "Class",
	    "Name": "Flag",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TeamColor",
	    "tags": [],
	    "Class": "Flag"
	  },
	  {
	    "Superclass": "GuiItem",
	    "type": "Class",
	    "Name": "ButtonBindingWidget",
	    "tags": []
	  },
	  {
	    "Superclass": "GuiItem",
	    "type": "Class",
	    "Name": "GuiRoot",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "GuiItem",
	    "type": "Class",
	    "Name": "Hopper",
	    "tags": ["deprecated"]
	  },
	  {
	    "Superclass": "GuiItem",
	    "type": "Class",
	    "Name": "StarterPack",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GuiService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoSelectGuiEnabled",
	    "tags": [],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "Class:Folder",
	    "type": "Property",
	    "Name": "CoreEffectFolder",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "Class:Folder",
	    "type": "Property",
	    "Name": "CoreGuiFolder",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CoreGuiNavigationEnabled",
	    "tags": [],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GuiNavigationEnabled",
	    "tags": [],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsModalDialog",
	    "tags": ["deprecated", "readonly"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsWindows",
	    "tags": ["deprecated", "readonly"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "MenuIsOpen",
	    "tags": ["readonly"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "SelectedCoreObject",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "SelectedObject",
	    "tags": [],
	    "Class": "GuiService"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "dialog", "Default": null },
	      {
	        "Type": "CenterDialogType",
	        "Name": "centerDialogType",
	        "Default": null
	      },
	      { "Type": "Function", "Name": "showFunction", "Default": null },
	      { "Type": "Function", "Name": "hideFunction", "Default": null }
	    ],
	    "Name": "AddCenterDialog",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "AddKey",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "selectionName", "Default": null },
	      { "Type": "Instance", "Name": "selectionParent", "Default": null }
	    ],
	    "Name": "AddSelectionParent",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "selectionName", "Default": null },
	      { "Type": "Tuple", "Name": "selections", "Default": null }
	    ],
	    "Name": "AddSelectionTuple",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "SpecialKey", "Name": "key", "Default": null }],
	    "Name": "AddSpecialKey",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "data", "Default": null },
	      { "Type": "int", "Name": "notificationType", "Default": null }
	    ],
	    "Name": "BroadcastNotification",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearError",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "input", "Default": null }],
	    "Name": "CloseStatsBasedOnInputString",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetBrickCount",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Vector3", "Name": "position", "Default": null }],
	    "Name": "GetClosestDialogToPosition",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "ConnectionError",
	    "Arguments": [],
	    "Name": "GetErrorCode",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetErrorMessage",
	    "tags": ["RobloxScriptSecurity", "deprecated"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "ConnectionError",
	    "Arguments": [],
	    "Name": "GetErrorType",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "GetGuiInset",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetNotificationTypeList",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetResolutionScale",
	    "tags": ["LocalUserSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetSafeZoneOffsets",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetUiMessage",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsMemoryTrackerEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsTenFootInterface",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "url", "Default": null }],
	    "Name": "OpenBrowserWindow",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "title", "Default": null },
	      { "Type": "string", "Name": "url", "Default": null }
	    ],
	    "Name": "OpenNativeOverlay",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "dialog", "Default": null }],
	    "Name": "RemoveCenterDialog",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "RemoveKey",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "selectionName", "Default": null }
	    ],
	    "Name": "RemoveSelectionGroup",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "SpecialKey", "Name": "key", "Default": null }],
	    "Name": "RemoveSpecialKey",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "x1", "Default": null },
	      { "Type": "int", "Name": "y1", "Default": null },
	      { "Type": "int", "Name": "x2", "Default": null },
	      { "Type": "int", "Name": "y2", "Default": null }
	    ],
	    "Name": "SetGlobalGuiInset",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "open", "Default": null }],
	    "Name": "SetMenuIsOpen",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "top", "Default": null },
	      { "Type": "float", "Name": "bottom", "Default": null },
	      { "Type": "float", "Name": "left", "Default": null },
	      { "Type": "float", "Name": "right", "Default": null }
	    ],
	    "Name": "SetSafeZoneOffsets",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "UiMessageType", "Name": "msgType", "Default": null },
	      { "Type": "string", "Name": "uiMessage", "Default": "errorCode" }
	    ],
	    "Name": "SetUiMessage",
	    "tags": ["LocalUserSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "input", "Default": null }],
	    "Name": "ShowStatsBasedOnInputString",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ToggleFullscreen",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector2",
	    "Arguments": [],
	    "Name": "GetScreenResolution",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [],
	    "Name": "BrowserWindowClosed",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "newErrorMessage", "Type": "string" }],
	    "Name": "ErrorMessageChanged",
	    "tags": ["RobloxScriptSecurity", "deprecated"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "key", "Type": "string" },
	      { "Name": "modifiers", "Type": "string" }
	    ],
	    "Name": "KeyPressed",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MenuClosed",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "MenuOpened",
	    "tags": [],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "SafeZoneOffsetsChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "ShowLeaveConfirmation",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "key", "Type": "SpecialKey" },
	      { "Name": "modifiers", "Type": "string" }
	    ],
	    "Name": "SpecialKeyPressed",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "msgType", "Type": "UiMessageType" },
	      { "Name": "newUiMessage", "Type": "string" }
	    ],
	    "Name": "UiMessageChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Event"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Name": "title", "Type": "string" },
	      { "Name": "text", "Type": "string" }
	    ],
	    "Name": "SendCoreUiNotification",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "GuiService",
	    "type": "Callback"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "GuidRegistryService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "HapticService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "inputType", "Default": null },
	      { "Type": "VibrationMotor", "Name": "vibrationMotor", "Default": null }
	    ],
	    "Name": "GetMotor",
	    "tags": [],
	    "Class": "HapticService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "inputType", "Default": null },
	      { "Type": "VibrationMotor", "Name": "vibrationMotor", "Default": null }
	    ],
	    "Name": "IsMotorSupported",
	    "tags": [],
	    "Class": "HapticService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "inputType", "Default": null }
	    ],
	    "Name": "IsVibrationSupported",
	    "tags": [],
	    "Class": "HapticService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "inputType", "Default": null },
	      { "Type": "VibrationMotor", "Name": "vibrationMotor", "Default": null },
	      { "Type": "Tuple", "Name": "vibrationValues", "Default": null }
	    ],
	    "Name": "SetMotor",
	    "tags": [],
	    "Class": "HapticService",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "HttpRbxApiService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "apiUrlPath", "Default": null },
	      {
	        "Type": "ThrottlingPriority",
	        "Name": "priority",
	        "Default": "Default"
	      },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "GetAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRbxApiService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "apiUrl", "Default": null },
	      {
	        "Type": "ThrottlingPriority",
	        "Name": "priority",
	        "Default": "Default"
	      },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "GetAsyncFullUrl",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRbxApiService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "apiUrlPath", "Default": null },
	      { "Type": "string", "Name": "data", "Default": null },
	      {
	        "Type": "ThrottlingPriority",
	        "Name": "priority",
	        "Default": "Default"
	      },
	      {
	        "Type": "HttpContentType",
	        "Name": "content_type",
	        "Default": "ApplicationJson"
	      },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "PostAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRbxApiService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "apiUrl", "Default": null },
	      { "Type": "string", "Name": "data", "Default": null },
	      {
	        "Type": "ThrottlingPriority",
	        "Name": "priority",
	        "Default": "Default"
	      },
	      {
	        "Type": "HttpContentType",
	        "Name": "content_type",
	        "Default": "ApplicationJson"
	      },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "PostAsyncFullUrl",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRbxApiService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "Dictionary", "Name": "requestOptions", "Default": null },
	      {
	        "Type": "ThrottlingPriority",
	        "Name": "priority",
	        "Default": "Default"
	      },
	      {
	        "Type": "HttpContentType",
	        "Name": "content_type",
	        "Default": "ApplicationJson"
	      },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "RequestAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRbxApiService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "HttpRequest",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Cancel",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRequest",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Function", "Name": "callback", "Default": null }],
	    "Name": "Start",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpRequest",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "HttpService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HttpEnabled",
	    "tags": ["LocalUserSecurity"],
	    "Class": "HttpService"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "bool", "Name": "wrapInCurlyBraces", "Default": "true" }
	    ],
	    "Name": "GenerateGUID",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetHttpEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "string", "Name": "input", "Default": null }],
	    "Name": "JSONDecode",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "Variant", "Name": "input", "Default": null }],
	    "Name": "JSONEncode",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Dictionary", "Name": "options", "Default": null }],
	    "Name": "RequestInternal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enabled", "Default": null }],
	    "Name": "SetHttpEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "string", "Name": "input", "Default": null }],
	    "Name": "UrlEncode",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "url", "Default": null },
	      { "Type": "bool", "Name": "nocache", "Default": "false" },
	      { "Type": "Variant", "Name": "headers", "Default": null }
	    ],
	    "Name": "GetAsync",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "url", "Default": null },
	      { "Type": "string", "Name": "data", "Default": null },
	      {
	        "Type": "HttpContentType",
	        "Name": "content_type",
	        "Default": "ApplicationJson"
	      },
	      { "Type": "bool", "Name": "compress", "Default": "false" },
	      { "Type": "Variant", "Name": "headers", "Default": null }
	    ],
	    "Name": "PostAsync",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [
	      { "Type": "Dictionary", "Name": "requestOptions", "Default": null }
	    ],
	    "Name": "RequestAsync",
	    "tags": [],
	    "Class": "HttpService",
	    "type": "YieldFunction"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Humanoid", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoJumpEnabled",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoRotate",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutomaticScalingEnabled",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "CameraOffset",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "HumanoidDisplayDistanceType",
	    "type": "Property",
	    "Name": "DisplayDistanceType",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Material",
	    "type": "Property",
	    "Name": "FloorMaterial",
	    "tags": ["readonly"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Health",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HealthDisplayDistance",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "HumanoidHealthDisplayType",
	    "type": "Property",
	    "Name": "HealthDisplayType",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HipHeight",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Jump",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "JumpPower",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "LeftLeg",
	    "tags": ["deprecated", "hidden"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxHealth",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxSlopeAngle",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "MoveDirection",
	    "tags": ["readonly"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "NameDisplayDistance",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "NameOcclusion",
	    "type": "Property",
	    "Name": "NameOcclusion",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PlatformStand",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "HumanoidRigType",
	    "type": "Property",
	    "Name": "RigType",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "RightLeg",
	    "tags": ["deprecated", "hidden"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "RootPart",
	    "tags": ["readonly"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "SeatPart",
	    "tags": ["readonly"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Sit",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "TargetPoint",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Torso",
	    "tags": ["deprecated", "hidden"],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WalkSpeed",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "WalkToPart",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "WalkToPoint",
	    "tags": [],
	    "Class": "Humanoid"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "maxHealth",
	    "tags": ["deprecated"],
	    "Class": "Humanoid"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "accessory", "Default": null }],
	    "Name": "AddAccessory",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "status", "Default": null }],
	    "Name": "AddCustomStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Status", "Name": "status", "Default": "Poison" }],
	    "Name": "AddStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "BuildRigFromAttachments",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "HumanoidStateType", "Name": "state", "Default": "None" }
	    ],
	    "Name": "ChangeState",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "tool", "Default": null }],
	    "Name": "EquipTool",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetAccessories",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "BodyPartR15",
	    "Arguments": [{ "Type": "Instance", "Name": "part", "Default": null }],
	    "Name": "GetBodyPartR15",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Limb",
	    "Arguments": [{ "Type": "Instance", "Name": "part", "Default": null }],
	    "Name": "GetLimb",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetPlayingAnimationTracks",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "HumanoidStateType",
	    "Arguments": [],
	    "Name": "GetState",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "HumanoidStateType", "Name": "state", "Default": null }
	    ],
	    "Name": "GetStateEnabled",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetStatuses",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "status", "Default": null }],
	    "Name": "HasCustomStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Status", "Name": "status", "Default": "Poison" }],
	    "Name": "HasStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "animation", "Default": null }],
	    "Name": "LoadAnimation",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "moveDirection", "Default": null },
	      { "Type": "bool", "Name": "relativeToCamera", "Default": "false" }
	    ],
	    "Name": "Move",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "location", "Default": null },
	      { "Type": "Instance", "Name": "part", "Default": "nil" }
	    ],
	    "Name": "MoveTo",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RemoveAccessories",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "status", "Default": null }],
	    "Name": "RemoveCustomStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Status", "Name": "status", "Default": "Poison" }],
	    "Name": "RemoveStatus",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "BodyPartR15", "Name": "bodyPart", "Default": null },
	      { "Type": "Instance", "Name": "part", "Default": null }
	    ],
	    "Name": "ReplaceBodyPartR15",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enabled", "Default": null }],
	    "Name": "SetClickToWalkEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "HumanoidStateType", "Name": "state", "Default": null },
	      { "Type": "bool", "Name": "enabled", "Default": null }
	    ],
	    "Name": "SetStateEnabled",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "amount", "Default": null }],
	    "Name": "TakeDamage",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "UnequipTools",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "animation", "Default": null }],
	    "Name": "loadAnimation",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "amount", "Default": null }],
	    "Name": "takeDamage",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "animationTrack", "Type": "Instance" }],
	    "Name": "AnimationPlayed",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "speed", "Type": "float" }],
	    "Name": "Climbing",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "status", "Type": "string" }],
	    "Name": "CustomStatusAdded",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "status", "Type": "string" }],
	    "Name": "CustomStatusRemoved",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Died",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "FallingDown",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "FreeFalling",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "GettingUp",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "health", "Type": "float" }],
	    "Name": "HealthChanged",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "Jumping",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "reached", "Type": "bool" }],
	    "Name": "MoveToFinished",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "PlatformStanding",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "Ragdoll",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "speed", "Type": "float" }],
	    "Name": "Running",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "active", "Type": "bool" },
	      { "Name": "currentSeatPart", "Type": "Instance" }
	    ],
	    "Name": "Seated",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "old", "Type": "HumanoidStateType" },
	      { "Name": "new", "Type": "HumanoidStateType" }
	    ],
	    "Name": "StateChanged",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "state", "Type": "HumanoidStateType" },
	      { "Name": "isEnabled", "Type": "bool" }
	    ],
	    "Name": "StateEnabledChanged",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "status", "Type": "Status" }],
	    "Name": "StatusAdded",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "status", "Type": "Status" }],
	    "Name": "StatusRemoved",
	    "tags": ["deprecated"],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "active", "Type": "bool" }],
	    "Name": "Strafing",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "speed", "Type": "float" }],
	    "Name": "Swimming",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchingPart", "Type": "Instance" },
	      { "Name": "humanoidPart", "Type": "Instance" }
	    ],
	    "Name": "Touched",
	    "tags": [],
	    "Class": "Humanoid",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "InputObject",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Delta",
	    "tags": [],
	    "Class": "InputObject"
	  },
	  {
	    "ValueType": "KeyCode",
	    "type": "Property",
	    "Name": "KeyCode",
	    "tags": [],
	    "Class": "InputObject"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "InputObject"
	  },
	  {
	    "ValueType": "UserInputState",
	    "type": "Property",
	    "Name": "UserInputState",
	    "tags": [],
	    "Class": "InputObject"
	  },
	  {
	    "ValueType": "UserInputType",
	    "type": "Property",
	    "Name": "UserInputType",
	    "tags": [],
	    "Class": "InputObject"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "InsertService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllowInsertFreeModels",
	    "tags": ["deprecated", "notbrowsable"],
	    "Class": "InsertService"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int64", "Name": "assetId", "Default": null }],
	    "Name": "ApproveAssetId",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "assetVersionId", "Default": null }
	    ],
	    "Name": "ApproveAssetVersionId",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "instance", "Default": null }],
	    "Name": "Insert",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "assetPath", "Default": null }],
	    "Name": "LoadLocalAsset",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "InsertService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetBaseCategories",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetBaseSets",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int64", "Name": "categoryId", "Default": null }],
	    "Name": "GetCollection",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [
	      { "Type": "string", "Name": "searchText", "Default": null },
	      { "Type": "int", "Name": "pageNum", "Default": null }
	    ],
	    "Name": "GetFreeDecals",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [
	      { "Type": "string", "Name": "searchText", "Default": null },
	      { "Type": "int", "Name": "pageNum", "Default": null }
	    ],
	    "Name": "GetFreeModels",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [{ "Type": "int64", "Name": "assetId", "Default": null }],
	    "Name": "GetLatestAssetVersionAsync",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetUserCategories",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetUserSets",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "assetId", "Default": null }],
	    "Name": "LoadAsset",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "int64", "Name": "assetVersionId", "Default": null }
	    ],
	    "Name": "LoadAssetVersion",
	    "tags": [],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "assetId", "Default": null }],
	    "Name": "loadAsset",
	    "tags": ["deprecated"],
	    "Class": "InsertService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "InstancePacketCache",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "JointInstance",
	    "tags": []
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "C0",
	    "tags": [],
	    "Class": "JointInstance"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "C1",
	    "tags": [],
	    "Class": "JointInstance"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Part0",
	    "tags": [],
	    "Class": "JointInstance"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Part1",
	    "tags": [],
	    "Class": "JointInstance"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "part1",
	    "tags": ["deprecated", "hidden"],
	    "Class": "JointInstance"
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "DynamicRotate",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BaseAngle",
	    "tags": [],
	    "Class": "DynamicRotate"
	  },
	  {
	    "Superclass": "DynamicRotate",
	    "type": "Class",
	    "Name": "RotateP",
	    "tags": []
	  },
	  {
	    "Superclass": "DynamicRotate",
	    "type": "Class",
	    "Name": "RotateV",
	    "tags": []
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "Glue",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "F0",
	    "tags": [],
	    "Class": "Glue"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "F1",
	    "tags": [],
	    "Class": "Glue"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "F2",
	    "tags": [],
	    "Class": "Glue"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "F3",
	    "tags": [],
	    "Class": "Glue"
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "ManualSurfaceJointInstance",
	    "tags": []
	  },
	  {
	    "Superclass": "ManualSurfaceJointInstance",
	    "type": "Class",
	    "Name": "ManualGlue",
	    "tags": []
	  },
	  {
	    "Superclass": "ManualSurfaceJointInstance",
	    "type": "Class",
	    "Name": "ManualWeld",
	    "tags": []
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "Motor",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentAngle",
	    "tags": [],
	    "Class": "Motor"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DesiredAngle",
	    "tags": [],
	    "Class": "Motor"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxVelocity",
	    "tags": [],
	    "Class": "Motor"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "float", "Name": "value", "Default": null }],
	    "Name": "SetDesiredAngle",
	    "tags": [],
	    "Class": "Motor",
	    "type": "Function"
	  },
	  { "Superclass": "Motor", "type": "Class", "Name": "Motor6D", "tags": [] },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Transform",
	    "tags": ["hidden"],
	    "Class": "Motor6D"
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "Rotate",
	    "tags": []
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "Snap",
	    "tags": []
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "VelocityMotor",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CurrentAngle",
	    "tags": [],
	    "Class": "VelocityMotor"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DesiredAngle",
	    "tags": [],
	    "Class": "VelocityMotor"
	  },
	  {
	    "ValueType": "Class:Hole",
	    "type": "Property",
	    "Name": "Hole",
	    "tags": [],
	    "Class": "VelocityMotor"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxVelocity",
	    "tags": [],
	    "Class": "VelocityMotor"
	  },
	  {
	    "Superclass": "JointInstance",
	    "type": "Class",
	    "Name": "Weld",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "JointsService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearJoinAfterMoveJoints",
	    "tags": [],
	    "Class": "JointsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "CreateJoinAfterMoveJoints",
	    "tags": [],
	    "Class": "JointsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "joinInstance", "Default": null }
	    ],
	    "Name": "SetJoinAfterMoveInstance",
	    "tags": [],
	    "Class": "JointsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "joinTarget", "Default": null }
	    ],
	    "Name": "SetJoinAfterMoveTarget",
	    "tags": [],
	    "Class": "JointsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ShowPermissibleJoints",
	    "tags": [],
	    "Class": "JointsService",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "KeyboardService",
	    "tags": []
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Keyframe", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Time",
	    "tags": [],
	    "Class": "Keyframe"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "pose", "Default": null }],
	    "Name": "AddPose",
	    "tags": [],
	    "Class": "Keyframe",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetPoses",
	    "tags": [],
	    "Class": "Keyframe",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "pose", "Default": null }],
	    "Name": "RemovePose",
	    "tags": [],
	    "Class": "Keyframe",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "KeyframeSequence",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Loop",
	    "tags": [],
	    "Class": "KeyframeSequence"
	  },
	  {
	    "ValueType": "AnimationPriority",
	    "type": "Property",
	    "Name": "Priority",
	    "tags": [],
	    "Class": "KeyframeSequence"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "keyframe", "Default": null }],
	    "Name": "AddKeyframe",
	    "tags": [],
	    "Class": "KeyframeSequence",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetKeyframes",
	    "tags": [],
	    "Class": "KeyframeSequence",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "keyframe", "Default": null }],
	    "Name": "RemoveKeyframe",
	    "tags": [],
	    "Class": "KeyframeSequence",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "KeyframeSequenceProvider",
	    "tags": []
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Content", "Name": "assetId", "Default": null }],
	    "Name": "GetKeyframeSequence",
	    "tags": ["PluginSecurity", "deprecated"],
	    "Class": "KeyframeSequenceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "int64", "Name": "assetId", "Default": null },
	      { "Type": "bool", "Name": "useCache", "Default": null }
	    ],
	    "Name": "GetKeyframeSequenceById",
	    "tags": ["PluginSecurity", "deprecated"],
	    "Class": "KeyframeSequenceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Content",
	    "Arguments": [
	      { "Type": "Instance", "Name": "keyframeSequence", "Default": null }
	    ],
	    "Name": "RegisterActiveKeyframeSequence",
	    "tags": [],
	    "Class": "KeyframeSequenceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Content",
	    "Arguments": [
	      { "Type": "Instance", "Name": "keyframeSequence", "Default": null }
	    ],
	    "Name": "RegisterKeyframeSequence",
	    "tags": [],
	    "Class": "KeyframeSequenceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetAnimations",
	    "tags": [],
	    "Class": "KeyframeSequenceProvider",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Content", "Name": "assetId", "Default": null }],
	    "Name": "GetKeyframeSequenceAsync",
	    "tags": [],
	    "Class": "KeyframeSequenceProvider",
	    "type": "YieldFunction"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Light", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Brightness",
	    "tags": [],
	    "Class": "Light"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Light"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Light"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Shadows",
	    "tags": [],
	    "Class": "Light"
	  },
	  { "Superclass": "Light", "type": "Class", "Name": "PointLight", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Range",
	    "tags": [],
	    "Class": "PointLight"
	  },
	  { "Superclass": "Light", "type": "Class", "Name": "SpotLight", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Angle",
	    "tags": [],
	    "Class": "SpotLight"
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "Face",
	    "tags": [],
	    "Class": "SpotLight"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Range",
	    "tags": [],
	    "Class": "SpotLight"
	  },
	  {
	    "Superclass": "Light",
	    "type": "Class",
	    "Name": "SurfaceLight",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Angle",
	    "tags": [],
	    "Class": "SurfaceLight"
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "Face",
	    "tags": [],
	    "Class": "SurfaceLight"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Range",
	    "tags": [],
	    "Class": "SurfaceLight"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "ProximityPrompt", "tags": []},
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ActionText",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoLocalize",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClickablePrompt",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "ProximityPromptExclusivity",
	    "type": "Property",
	    "Name": "Exclusivity",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HoldDuration",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "KeyCode",
	    "type": "Property",
	    "Name": "GamepadKeyCode",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxActivationDistance",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ObjectText",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RequiresLineOfSight",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "LocalizationTable",
	    "type": "Property",
	    "Name": "RootLocalizationTable",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "ProximityPromptStyle",
	    "type": "Property",
	    "Name": "Style",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "UIOffset",
	    "tags": [],
	    "Class": "ProximityPrompt"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Lighting",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Ambient",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Brightness",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ClockTime",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ColorShift_Bottom",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ColorShift_Top",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ExposureCompensation",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "FogColor",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FogEnd",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FogStart",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "GeographicLatitude",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GlobalShadows",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "OutdoorAmbient",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Outlines",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "ShadowColor",
	    "tags": ["deprecated"],
	    "Class": "Lighting"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "TimeOfDay",
	    "tags": [],
	    "Class": "Lighting"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [],
	    "Name": "GetMinutesAfterMidnight",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetMoonDirection",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetMoonPhase",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetSunDirection",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "double", "Name": "minutes", "Default": null }],
	    "Name": "SetMinutesAfterMidnight",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [],
	    "Name": "getMinutesAfterMidnight",
	    "tags": ["deprecated"],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "double", "Name": "minutes", "Default": null }],
	    "Name": "setMinutesAfterMidnight",
	    "tags": ["deprecated"],
	    "Class": "Lighting",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "skyboxChanged", "Type": "bool" }],
	    "Name": "LightingChanged",
	    "tags": [],
	    "Class": "Lighting",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LocalizationService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ForcePlayModeGameLocaleId",
	    "tags": ["LocalUserSecurity"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ForcePlayModeRobloxLocaleId",
	    "tags": ["LocalUserSecurity"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsTextScraperRunning",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "RobloxForcePlayModeGameLocaleId",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "RobloxForcePlayModeRobloxLocaleId",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "RobloxLocaleId",
	    "tags": ["readonly"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "SystemLocaleId",
	    "tags": ["readonly"],
	    "Class": "LocalizationService"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetCorescriptLocalizations",
	    "tags": [],
	    "Class": "LocalizationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "player", "Default": null }],
	    "Name": "GetTranslatorForPlayer",
	    "tags": [],
	    "Class": "LocalizationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StartTextScraper",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StopTextScraper",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "PromptExportToCSVs",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "PromptImportFromCSVs",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [],
	    "Name": "AutoTranslateWillRun",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LocalizationTable",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "DevelopmentLanguage",
	    "tags": ["deprecated", "hidden"],
	    "Class": "LocalizationTable"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Root",
	    "tags": ["deprecated", "hidden"],
	    "Class": "LocalizationTable"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "SourceLocaleId",
	    "tags": [],
	    "Class": "LocalizationTable"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetContents",
	    "tags": ["deprecated"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetEntries",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "targetLocaleId", "Default": null },
	      { "Type": "string", "Name": "key", "Default": null }
	    ],
	    "Name": "GetString",
	    "tags": ["deprecated"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "localeId", "Default": null }],
	    "Name": "GetTranslator",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null }
	    ],
	    "Name": "RemoveEntry",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "localeId", "Default": null }
	    ],
	    "Name": "RemoveEntryValue",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "RemoveKey",
	    "tags": ["deprecated"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "localeId", "Default": null }],
	    "Name": "RemoveTargetLocale",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "contents", "Default": null }],
	    "Name": "SetContents",
	    "tags": ["deprecated"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Variant", "Name": "entries", "Default": null }],
	    "Name": "SetEntries",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "targetLocaleId", "Default": null },
	      { "Type": "string", "Name": "text", "Default": null }
	    ],
	    "Name": "SetEntry",
	    "tags": ["deprecated"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "newContext", "Default": null }
	    ],
	    "Name": "SetEntryContext",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "example", "Default": null }
	    ],
	    "Name": "SetEntryExample",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "newKey", "Default": null }
	    ],
	    "Name": "SetEntryKey",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "newSource", "Default": null }
	    ],
	    "Name": "SetEntrySource",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "source", "Default": null },
	      { "Type": "string", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "localeId", "Default": null },
	      { "Type": "string", "Name": "text", "Default": null }
	    ],
	    "Name": "SetEntryValue",
	    "tags": [],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "value", "Default": null }],
	    "Name": "SetIsExemptFromUGCAnalytics",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LocalizationTable",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LogService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "source", "Default": null }],
	    "Name": "ExecuteScript",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetHttpResultHistory",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetLogHistory",
	    "tags": [],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RequestHttpResultApproved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RequestServerHttpResult",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RequestServerOutput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "httpResult", "Type": "Dictionary" }],
	    "Name": "HttpResultOut",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "message", "Type": "string" },
	      { "Name": "messageType", "Type": "MessageType" }
	    ],
	    "Name": "MessageOut",
	    "tags": [],
	    "Class": "LogService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "isApproved", "Type": "bool" }],
	    "Name": "OnHttpResultApproved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "httpResult", "Type": "Dictionary" }],
	    "Name": "ServerHttpResultOut",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "message", "Type": "string" },
	      { "Name": "messageType", "Type": "MessageType" },
	      { "Name": "timestamp", "Type": "int" }
	    ],
	    "Name": "ServerMessageOut",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "LogService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LoginService",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Logout",
	    "tags": ["RobloxSecurity"],
	    "Class": "LoginService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "PromptLogin",
	    "tags": ["RobloxSecurity"],
	    "Class": "LoginService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "loginError", "Type": "string" }],
	    "Name": "LoginFailed",
	    "tags": ["RobloxSecurity"],
	    "Class": "LoginService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "username", "Type": "string" }],
	    "Name": "LoginSucceeded",
	    "tags": ["RobloxSecurity"],
	    "Class": "LoginService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LuaSettings",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreScriptStartsReported",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "DefaultWaitTime",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "GcFrequency",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "GcLimit",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "GcPause",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "GcStepMul",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WaitingThreadsBudget",
	    "tags": [],
	    "Class": "LuaSettings"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LuaSourceContainer",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "Superclass": "LuaSourceContainer",
	    "type": "Class",
	    "Name": "BaseScript",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Disabled",
	    "tags": [],
	    "Class": "BaseScript"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "LinkedSource",
	    "tags": [],
	    "Class": "BaseScript"
	  },
	  {
	    "Superclass": "BaseScript",
	    "type": "Class",
	    "Name": "CoreScript",
	    "tags": ["notCreatable"]
	  },
	  { "Superclass": "BaseScript", "type": "Class", "Name": "Script", "tags": [] },
	  {
	    "ValueType": "ProtectedString",
	    "type": "Property",
	    "Name": "Source",
	    "tags": ["PluginSecurity"],
	    "Class": "Script"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetHash",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Script",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Script",
	    "type": "Class",
	    "Name": "LocalScript",
	    "tags": []
	  },
	  {
	    "Superclass": "LuaSourceContainer",
	    "type": "Class",
	    "Name": "ModuleScript",
	    "tags": []
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "LinkedSource",
	    "tags": [],
	    "Class": "ModuleScript"
	  },
	  {
	    "ValueType": "ProtectedString",
	    "type": "Property",
	    "Name": "Source",
	    "tags": ["PluginSecurity"],
	    "Class": "ModuleScript"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "LuaWebService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "MarketplaceService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Instance", "Name": "player", "Default": null }],
	    "Name": "PlayerCanMakePurchases",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "gamePassId", "Default": null }
	    ],
	    "Name": "PromptGamePassPurchase",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "string", "Name": "productId", "Default": null }
	    ],
	    "Name": "PromptNativePurchase",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "productId", "Default": null },
	      { "Type": "bool", "Name": "equipIfPurchased", "Default": "true" },
	      { "Type": "CurrencyType", "Name": "currencyType", "Default": "Default" }
	    ],
	    "Name": "PromptProductPurchase",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "assetId", "Default": null },
	      { "Type": "bool", "Name": "equipIfPurchased", "Default": "true" },
	      { "Type": "CurrencyType", "Name": "currencyType", "Default": "Default" }
	    ],
	    "Name": "PromptPurchase",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "string", "Name": "productId", "Default": null }
	    ],
	    "Name": "PromptThirdPartyPurchase",
	    "tags": ["LocalUserSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "assetId", "Default": null },
	      { "Type": "int", "Name": "robuxAmount", "Default": null }
	    ],
	    "Name": "ReportAssetSale",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ReportRobuxUpsellStarted",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "ticket", "Default": null },
	      { "Type": "int64", "Name": "playerId", "Default": null },
	      { "Type": "int64", "Name": "productId", "Default": null }
	    ],
	    "Name": "SignalClientPurchaseSuccess",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "gamePassId", "Default": null },
	      { "Type": "bool", "Name": "success", "Default": null }
	    ],
	    "Name": "SignalPromptGamePassPurchaseFinished",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int64", "Name": "productId", "Default": null },
	      { "Type": "bool", "Name": "success", "Default": null }
	    ],
	    "Name": "SignalPromptProductPurchaseFinished",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "assetId", "Default": null },
	      { "Type": "bool", "Name": "success", "Default": null }
	    ],
	    "Name": "SignalPromptPurchaseFinished",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "value", "Default": null }],
	    "Name": "SignalServerLuaDialogClosed",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetDeveloperProductsAsync",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [
	      { "Type": "int64", "Name": "assetId", "Default": null },
	      { "Type": "InfoType", "Name": "infoType", "Default": "Asset" }
	    ],
	    "Name": "GetProductInfo",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetRobuxBalance",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [
	      { "Type": "InfoType", "Name": "infoType", "Default": null },
	      { "Type": "int64", "Name": "productId", "Default": null },
	      { "Type": "int", "Name": "expectedPrice", "Default": null },
	      { "Type": "string", "Name": "requestId", "Default": null }
	    ],
	    "Name": "PerformPurchase",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "int64", "Name": "assetId", "Default": null }
	    ],
	    "Name": "PlayerOwnsAsset",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int64", "Name": "gamePassId", "Default": null }
	    ],
	    "Name": "UserOwnsGamePassAsync",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [{ "Name": "arguments", "Type": "Tuple" }],
	    "Name": "ClientLuaDialogRequested",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "ticket", "Type": "string" },
	      { "Name": "playerId", "Type": "int64" },
	      { "Name": "productId", "Type": "int64" }
	    ],
	    "Name": "ClientPurchaseSuccess",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "productId", "Type": "string" },
	      { "Name": "wasPurchased", "Type": "bool" }
	    ],
	    "Name": "NativePurchaseFinished",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "gamePassId", "Type": "int64" },
	      { "Name": "wasPurchased", "Type": "bool" }
	    ],
	    "Name": "PromptGamePassPurchaseFinished",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "gamePassId", "Type": "int64" }
	    ],
	    "Name": "PromptGamePassPurchaseRequested",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "userId", "Type": "int64" },
	      { "Name": "productId", "Type": "int64" },
	      { "Name": "isPurchased", "Type": "bool" }
	    ],
	    "Name": "PromptProductPurchaseFinished",
	    "tags": ["deprecated"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "productId", "Type": "int64" },
	      { "Name": "equipIfPurchased", "Type": "bool" },
	      { "Name": "currencyType", "Type": "CurrencyType" }
	    ],
	    "Name": "PromptProductPurchaseRequested",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "assetId", "Type": "int64" },
	      { "Name": "isPurchased", "Type": "bool" }
	    ],
	    "Name": "PromptPurchaseFinished",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "assetId", "Type": "int64" },
	      { "Name": "equipIfPurchased", "Type": "bool" },
	      { "Name": "currencyType", "Type": "CurrencyType" }
	    ],
	    "Name": "PromptPurchaseRequested",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "serverResponseTable", "Type": "Dictionary" }],
	    "Name": "ServerPurchaseVerification",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "productId", "Type": "string" },
	      { "Name": "receipt", "Type": "string" },
	      { "Name": "wasPurchased", "Type": "bool" }
	    ],
	    "Name": "ThirdPartyPurchaseFinished",
	    "tags": ["LocalUserSecurity"],
	    "Class": "MarketplaceService",
	    "type": "Event"
	  },
	  {
	    "ReturnType": "ProductPurchaseDecision",
	    "Arguments": [{ "Name": "receiptInfo", "Type": "Dictionary" }],
	    "Name": "ProcessReceipt",
	    "tags": [],
	    "Class": "MarketplaceService",
	    "type": "Callback"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Message",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Text",
	    "tags": [],
	    "Class": "Message"
	  },
	  {
	    "Superclass": "Message",
	    "type": "Class",
	    "Name": "Hint",
	    "tags": ["deprecated"]
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Mouse", "tags": [] },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Hit",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Icon",
	    "tags": [],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Origin",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Target",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "TargetFilter",
	    "tags": [],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "TargetSurface",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "Ray",
	    "type": "Property",
	    "Name": "UnitRay",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ViewSizeX",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ViewSizeY",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "X",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Y",
	    "tags": ["readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "hit",
	    "tags": ["deprecated", "hidden", "readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "target",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Mouse"
	  },
	  {
	    "Arguments": [],
	    "Name": "Button1Down",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Button1Up",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Button2Down",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Button2Up",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Idle",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "key", "Type": "string" }],
	    "Name": "KeyDown",
	    "tags": ["deprecated"],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "key", "Type": "string" }],
	    "Name": "KeyUp",
	    "tags": ["deprecated"],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Move",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WheelBackward",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WheelForward",
	    "tags": [],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "key", "Type": "string" }],
	    "Name": "keyDown",
	    "tags": ["deprecated"],
	    "Class": "Mouse",
	    "type": "Event"
	  },
	  { "Superclass": "Mouse", "type": "Class", "Name": "PlayerMouse", "tags": [] },
	  { "Superclass": "Mouse", "type": "Class", "Name": "PluginMouse", "tags": [] },
	  {
	    "Arguments": [{ "Name": "instances", "Type": "Objects" }],
	    "Name": "DragEnter",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginMouse",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "MouseService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "NetworkMarker",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "Arguments": [],
	    "Name": "Received",
	    "tags": [],
	    "Class": "NetworkMarker",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "NetworkPeer",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "limit", "Default": null }],
	    "Name": "SetOutgoingKBPSLimit",
	    "tags": ["PluginSecurity"],
	    "Class": "NetworkPeer",
	    "type": "Function"
	  },
	  {
	    "Superclass": "NetworkPeer",
	    "type": "Class",
	    "Name": "NetworkClient",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Ticket",
	    "tags": [],
	    "Class": "NetworkClient"
	  },
	  {
	    "Arguments": [
	      { "Name": "peer", "Type": "string" },
	      { "Name": "replicator", "Type": "Instance" }
	    ],
	    "Name": "ConnectionAccepted",
	    "tags": [],
	    "Class": "NetworkClient",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "peer", "Type": "string" },
	      { "Name": "code", "Type": "int" },
	      { "Name": "reason", "Type": "string" }
	    ],
	    "Name": "ConnectionFailed",
	    "tags": [],
	    "Class": "NetworkClient",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "peer", "Type": "string" }],
	    "Name": "ConnectionRejected",
	    "tags": [],
	    "Class": "NetworkClient",
	    "type": "Event"
	  },
	  {
	    "Superclass": "NetworkPeer",
	    "type": "Class",
	    "Name": "NetworkServer",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Port",
	    "tags": ["readonly"],
	    "Class": "NetworkServer"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetClientCount",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NetworkServer",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "NetworkReplicator",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "CloseConnection",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NetworkReplicator",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetPlayer",
	    "tags": [],
	    "Class": "NetworkReplicator",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int", "Name": "verbosityLevel", "Default": "0" }],
	    "Name": "GetRakStatsString",
	    "tags": ["PluginSecurity"],
	    "Class": "NetworkReplicator",
	    "type": "Function"
	  },
	  {
	    "Superclass": "NetworkReplicator",
	    "type": "Class",
	    "Name": "ClientReplicator",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "request", "Default": null }],
	    "Name": "RequestServerStats",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ClientReplicator",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "stats", "Type": "Dictionary" }],
	    "Name": "StatsReceived",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ClientReplicator",
	    "type": "Event"
	  },
	  {
	    "Superclass": "NetworkReplicator",
	    "type": "Class",
	    "Name": "ServerReplicator",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "NetworkSettings",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ArePhysicsRejectionsReported",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ClientPhysicsSendRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DataGCRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DataMtuAdjust",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "PacketPriority",
	    "type": "Property",
	    "Name": "DataSendPriority",
	    "tags": ["hidden"],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DataSendRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ExtraMemoryUsed",
	    "tags": ["PluginSecurity", "hidden"],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FreeMemoryMBytes",
	    "tags": ["PluginSecurity", "hidden", "readonly"],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "IncommingReplicationLag",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsQueueErrorComputed",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "NetworkOwnerRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PhysicsMtuAdjust",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "PacketPriority",
	    "type": "Property",
	    "Name": "PhysicsSendPriority",
	    "tags": ["hidden"],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "PhysicsSendRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PreferredClientPort",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintBits",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintEvents",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintFilters",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintInstances",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintPhysicsErrors",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintProperties",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintSplitMessage",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintStreamInstanceQuota",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PrintTouches",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "ReceiveRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RenderStreamedRegions",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShowActiveAnimationAsset",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TouchSendRate",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TrackDataTypes",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TrackPhysicsDetails",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UseInstancePacketCache",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsePhysicsPacketCache",
	    "tags": [],
	    "Class": "NetworkSettings"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "NotificationService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLuaChatEnabled",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "NotificationService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLuaGamesPageEnabled",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "NotificationService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLuaHomePageEnabled",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "NotificationService"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "AppShellActionType", "Name": "actionType", "Default": null }
	    ],
	    "Name": "ActionEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "NotificationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "AppShellActionType", "Name": "actionType", "Default": null }
	    ],
	    "Name": "ActionTaken",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "NotificationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "CancelAllNotification",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NotificationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int", "Name": "alertId", "Default": null }
	    ],
	    "Name": "CancelNotification",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NotificationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int", "Name": "alertId", "Default": null },
	      { "Type": "string", "Name": "alertMsg", "Default": null },
	      { "Type": "int", "Name": "minutesToFire", "Default": null }
	    ],
	    "Name": "ScheduleNotification",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NotificationService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetScheduledNotifications",
	    "tags": ["LocalUserSecurity"],
	    "Class": "NotificationService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "connectionName", "Type": "string" },
	      { "Name": "connectionState", "Type": "ConnectionState" },
	      { "Name": "sequenceNumber", "Type": "string" }
	    ],
	    "Name": "RobloxConnectionChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "NotificationService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "eventData", "Type": "Map" }],
	    "Name": "RobloxEventReceived",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "NotificationService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PVInstance",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "Superclass": "PVInstance",
	    "type": "Class",
	    "Name": "BasePart",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Anchored",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BackParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BackParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "BackSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "BackSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BottomParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "BottomParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "BottomSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "BottomSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "BrickColor",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CanCollide",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "CenterOfMass",
	    "tags": ["readonly"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "CollisionGroupId",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "PhysicalProperties",
	    "type": "Property",
	    "Name": "CustomPhysicalProperties",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Elasticity",
	    "tags": ["deprecated", "hidden"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Friction",
	    "tags": ["deprecated", "hidden"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FrontParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FrontParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "FrontSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "FrontSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LeftParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LeftParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "LeftSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "LeftSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LocalTransparencyModifier",
	    "tags": ["hidden"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Locked",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Material",
	    "type": "Property",
	    "Name": "Material",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Orientation",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ReceiveAge",
	    "tags": ["hidden", "readonly"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Reflectance",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ResizeIncrement",
	    "tags": ["readonly"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Faces",
	    "type": "Property",
	    "Name": "ResizeableFaces",
	    "tags": ["readonly"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "RightParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "RightParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "RightSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "RightSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "RotVelocity",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Rotation",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SpecificGravity",
	    "tags": ["deprecated", "readonly"],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TopParamA",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TopParamB",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "SurfaceType",
	    "type": "Property",
	    "Name": "TopSurface",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "InputType",
	    "type": "Property",
	    "Name": "TopSurfaceInput",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Velocity",
	    "tags": [],
	    "Class": "BasePart"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "brickColor",
	    "tags": ["deprecated"],
	    "Class": "BasePart"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "BreakJoints",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "Instance", "Name": "part", "Default": null }],
	    "Name": "CanCollideWith",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "CanSetNetworkOwnership",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "bool", "Name": "recursive", "Default": "false" }],
	    "Name": "GetConnectedParts",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetJoints",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetMass",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetNetworkOwner",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetNetworkOwnershipAuto",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [],
	    "Name": "GetRenderCFrame",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetRootPart",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetTouchingParts",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsGrounded",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "MakeJoints",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "NormalId", "Name": "normalId", "Default": null },
	      { "Type": "int", "Name": "deltaAmount", "Default": null }
	    ],
	    "Name": "Resize",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "playerInstance", "Default": "nil" }
	    ],
	    "Name": "SetNetworkOwner",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SetNetworkOwnershipAuto",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "breakJoints",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "getMass",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "makeJoints",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "NormalId", "Name": "normalId", "Default": null },
	      { "Type": "int", "Name": "deltaAmount", "Default": null }
	    ],
	    "Name": "resize",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Objects", "Name": "parts", "Default": null },
	      {
	        "Type": "CollisionFidelity",
	        "Name": "collisionfidelity",
	        "Default": "Default"
	      }
	    ],
	    "Name": "SubtractAsync",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Objects", "Name": "parts", "Default": null },
	      {
	        "Type": "CollisionFidelity",
	        "Name": "collisionfidelity",
	        "Default": "Default"
	      }
	    ],
	    "Name": "UnionAsync",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [{ "Name": "part", "Type": "Instance" }],
	    "Name": "LocalSimulationTouched",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "OutfitChanged",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "otherPart", "Type": "Instance" }],
	    "Name": "StoppedTouching",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "otherPart", "Type": "Instance" }],
	    "Name": "TouchEnded",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "otherPart", "Type": "Instance" }],
	    "Name": "Touched",
	    "tags": [],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "otherPart", "Type": "Instance" }],
	    "Name": "touched",
	    "tags": ["deprecated"],
	    "Class": "BasePart",
	    "type": "Event"
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "CornerWedgePart",
	    "tags": []
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "FormFactorPart",
	    "tags": []
	  },
	  {
	    "ValueType": "FormFactor",
	    "type": "Property",
	    "Name": "FormFactor",
	    "tags": ["deprecated"],
	    "Class": "FormFactorPart"
	  },
	  {
	    "ValueType": "FormFactor",
	    "type": "Property",
	    "Name": "formFactor",
	    "tags": ["deprecated", "hidden"],
	    "Class": "FormFactorPart"
	  },
	  {
	    "Superclass": "FormFactorPart",
	    "type": "Class",
	    "Name": "Part",
	    "tags": []
	  },
	  {
	    "ValueType": "PartType",
	    "type": "Property",
	    "Name": "Shape",
	    "tags": [],
	    "Class": "Part"
	  },
	  {
	    "Superclass": "Part",
	    "type": "Class",
	    "Name": "FlagStand",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TeamColor",
	    "tags": [],
	    "Class": "FlagStand"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "FlagCaptured",
	    "tags": [],
	    "Class": "FlagStand",
	    "type": "Event"
	  },
	  { "Superclass": "Part", "type": "Class", "Name": "Platform", "tags": [] },
	  { "Superclass": "Part", "type": "Class", "Name": "Seat", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Disabled",
	    "tags": [],
	    "Class": "Seat"
	  },
	  {
	    "ValueType": "Class:Humanoid",
	    "type": "Property",
	    "Name": "Occupant",
	    "tags": ["readonly"],
	    "Class": "Seat"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "humanoid", "Default": null }],
	    "Name": "Sit",
	    "tags": [],
	    "Class": "Seat",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Part",
	    "type": "Class",
	    "Name": "SkateboardPlatform",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "Class:SkateboardController",
	    "type": "Property",
	    "Name": "Controller",
	    "tags": ["readonly"],
	    "Class": "SkateboardPlatform"
	  },
	  {
	    "ValueType": "Class:Humanoid",
	    "type": "Property",
	    "Name": "ControllingHumanoid",
	    "tags": ["readonly"],
	    "Class": "SkateboardPlatform"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Steer",
	    "tags": [],
	    "Class": "SkateboardPlatform"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "StickyWheels",
	    "tags": [],
	    "Class": "SkateboardPlatform"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Throttle",
	    "tags": [],
	    "Class": "SkateboardPlatform"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "impulseWorld", "Default": null }
	    ],
	    "Name": "ApplySpecificImpulse",
	    "tags": [],
	    "Class": "SkateboardPlatform",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "humanoid", "Type": "Instance" },
	      { "Name": "skateboardController", "Type": "Instance" }
	    ],
	    "Name": "Equipped",
	    "tags": [],
	    "Class": "SkateboardPlatform",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "newState", "Type": "MoveState" },
	      { "Name": "oldState", "Type": "MoveState" }
	    ],
	    "Name": "MoveStateChanged",
	    "tags": [],
	    "Class": "SkateboardPlatform",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "humanoid", "Type": "Instance" }],
	    "Name": "Unequipped",
	    "tags": [],
	    "Class": "SkateboardPlatform",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "humanoid", "Type": "Instance" },
	      { "Name": "skateboardController", "Type": "Instance" }
	    ],
	    "Name": "equipped",
	    "tags": ["deprecated"],
	    "Class": "SkateboardPlatform",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "humanoid", "Type": "Instance" }],
	    "Name": "unequipped",
	    "tags": ["deprecated"],
	    "Class": "SkateboardPlatform",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Part",
	    "type": "Class",
	    "Name": "SpawnLocation",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllowTeamChangeOnTouch",
	    "tags": [],
	    "Class": "SpawnLocation"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Duration",
	    "tags": [],
	    "Class": "SpawnLocation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "SpawnLocation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Neutral",
	    "tags": [],
	    "Class": "SpawnLocation"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TeamColor",
	    "tags": [],
	    "Class": "SpawnLocation"
	  },
	  {
	    "Superclass": "FormFactorPart",
	    "type": "Class",
	    "Name": "WedgePart",
	    "tags": []
	  },
	  { "Superclass": "BasePart", "type": "Class", "Name": "MeshPart", "tags": [] },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "MeshId",
	    "tags": ["ScriptWriteRestricted: [NotAccessibleSecurity]"],
	    "Class": "MeshPart"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "TextureID",
	    "tags": [],
	    "Class": "MeshPart"
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "PartOperation",
	    "tags": []
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "TriangleCount",
	    "tags": ["readonly"],
	    "Class": "PartOperation"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsePartColor",
	    "tags": [],
	    "Class": "PartOperation"
	  },
	  {
	    "Superclass": "PartOperation",
	    "type": "Class",
	    "Name": "NegateOperation",
	    "tags": []
	  },
	  {
	    "Superclass": "PartOperation",
	    "type": "Class",
	    "Name": "UnionOperation",
	    "tags": []
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "Terrain",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsSmooth",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "Region3int16",
	    "type": "Property",
	    "Name": "MaxExtents",
	    "tags": ["readonly"],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "WaterColor",
	    "tags": [],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WaterReflectance",
	    "tags": [],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WaterTransparency",
	    "tags": [],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WaterWaveSize",
	    "tags": [],
	    "Class": "Terrain"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WaterWaveSpeed",
	    "tags": [],
	    "Class": "Terrain"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null }
	    ],
	    "Name": "AutowedgeCell",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Region3int16", "Name": "region", "Default": null }
	    ],
	    "Name": "AutowedgeCells",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null }
	    ],
	    "Name": "CellCenterToWorld",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null }
	    ],
	    "Name": "CellCornerToWorld",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Clear",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ConvertToSmooth",
	    "tags": ["PluginSecurity", "deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Region3int16", "Name": "region", "Default": null }
	    ],
	    "Name": "CopyRegion",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "CountCells",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "center", "Default": null },
	      { "Type": "float", "Name": "radius", "Default": null },
	      { "Type": "Material", "Name": "material", "Default": null }
	    ],
	    "Name": "FillBall",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CoordinateFrame", "Name": "cframe", "Default": null },
	      { "Type": "Vector3", "Name": "size", "Default": null },
	      { "Type": "Material", "Name": "material", "Default": null }
	    ],
	    "Name": "FillBlock",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      { "Type": "float", "Name": "resolution", "Default": null },
	      { "Type": "Material", "Name": "material", "Default": null }
	    ],
	    "Name": "FillRegion",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null }
	    ],
	    "Name": "GetCell",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Color3",
	    "Arguments": [{ "Type": "Material", "Name": "material", "Default": null }],
	    "Name": "GetMaterialColor",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null }
	    ],
	    "Name": "GetWaterCell",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "region", "Default": null },
	      { "Type": "Vector3int16", "Name": "corner", "Default": null },
	      { "Type": "bool", "Name": "pasteEmptyCells", "Default": null }
	    ],
	    "Name": "PasteRegion",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      { "Type": "float", "Name": "resolution", "Default": null }
	    ],
	    "Name": "ReadVoxels",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null },
	      { "Type": "CellMaterial", "Name": "material", "Default": null },
	      { "Type": "CellBlock", "Name": "block", "Default": null },
	      { "Type": "CellOrientation", "Name": "orientation", "Default": null }
	    ],
	    "Name": "SetCell",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Region3int16", "Name": "region", "Default": null },
	      { "Type": "CellMaterial", "Name": "material", "Default": null },
	      { "Type": "CellBlock", "Name": "block", "Default": null },
	      { "Type": "CellOrientation", "Name": "orientation", "Default": null }
	    ],
	    "Name": "SetCells",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Material", "Name": "material", "Default": null },
	      { "Type": "Color3", "Name": "value", "Default": null }
	    ],
	    "Name": "SetMaterialColor",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "z", "Default": null },
	      { "Type": "WaterForce", "Name": "force", "Default": null },
	      { "Type": "WaterDirection", "Name": "direction", "Default": null }
	    ],
	    "Name": "SetWaterCell",
	    "tags": ["deprecated"],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [{ "Type": "Vector3", "Name": "position", "Default": null }],
	    "Name": "WorldToCell",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [{ "Type": "Vector3", "Name": "position", "Default": null }],
	    "Name": "WorldToCellPreferEmpty",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [{ "Type": "Vector3", "Name": "position", "Default": null }],
	    "Name": "WorldToCellPreferSolid",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      { "Type": "float", "Name": "resolution", "Default": null },
	      { "Type": "Array", "Name": "materials", "Default": null },
	      { "Type": "Array", "Name": "occupancy", "Default": null }
	    ],
	    "Name": "WriteVoxels",
	    "tags": [],
	    "Class": "Terrain",
	    "type": "Function"
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "TrussPart",
	    "tags": []
	  },
	  {
	    "ValueType": "Style",
	    "type": "Property",
	    "Name": "Style",
	    "tags": [],
	    "Class": "TrussPart"
	  },
	  {
	    "Superclass": "BasePart",
	    "type": "Class",
	    "Name": "VehicleSeat",
	    "tags": []
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "AreHingesDetected",
	    "tags": ["readonly"],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Disabled",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HeadsUpDisplay",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxSpeed",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "Class:Humanoid",
	    "type": "Property",
	    "Name": "Occupant",
	    "tags": ["readonly"],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Steer",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SteerFloat",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Throttle",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ThrottleFloat",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Torque",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TurnSpeed",
	    "tags": [],
	    "Class": "VehicleSeat"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "humanoid", "Default": null }],
	    "Name": "Sit",
	    "tags": [],
	    "Class": "VehicleSeat",
	    "type": "Function"
	  },
	  { "Superclass": "PVInstance", "type": "Class", "Name": "Model", "tags": [] },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "PrimaryPart",
	    "tags": [],
	    "Class": "Model"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "BreakJoints",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetExtentsSize",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [],
	    "Name": "GetModelCFrame",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector3",
	    "Arguments": [],
	    "Name": "GetModelSize",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [],
	    "Name": "GetPrimaryPartCFrame",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "MakeJoints",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "position", "Default": null }],
	    "Name": "MoveTo",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ResetOrientationToIdentity",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SetIdentityOrientation",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CoordinateFrame", "Name": "cframe", "Default": null }
	    ],
	    "Name": "SetPrimaryPartCFrame",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "delta", "Default": null }],
	    "Name": "TranslateBy",
	    "tags": [],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "breakJoints",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "makeJoints",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "location", "Default": null }],
	    "Name": "move",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Vector3", "Name": "location", "Default": null }],
	    "Name": "moveTo",
	    "tags": ["deprecated"],
	    "Class": "Model",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Model",
	    "type": "Class",
	    "Name": "Status",
	    "tags": ["deprecated", "notCreatable"]
	  },
	  { "Superclass": "Model", "type": "Class", "Name": "Workspace", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllowThirdPartySales",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "Class:Camera",
	    "type": "Property",
	    "Name": "CurrentCamera",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "DistributedGameTime",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FallenPartsDestroyHeight",
	    "tags": ["ScriptWriteRestricted: [PluginSecurity]"],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "FilteringEnabled",
	    "tags": ["ScriptWriteRestricted: [PluginSecurity]"],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Gravity",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "StreamingEnabled",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TemporaryLegacyPhysicsSolverOverride",
	    "tags": [],
	    "Class": "Workspace"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Terrain",
	    "tags": ["readonly"],
	    "Class": "Workspace"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "BreakJoints",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "ExperimentalSolverIsEnabled",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Ray", "Name": "ray", "Default": null },
	      {
	        "Type": "Instance",
	        "Name": "ignoreDescendantsInstance",
	        "Default": "nil"
	      },
	      { "Type": "bool", "Name": "terrainCellsAreCubes", "Default": "false" },
	      { "Type": "bool", "Name": "ignoreWater", "Default": "false" }
	    ],
	    "Name": "FindPartOnRay",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Ray", "Name": "ray", "Default": null },
	      { "Type": "Objects", "Name": "ignoreDescendantsTable", "Default": null },
	      { "Type": "bool", "Name": "terrainCellsAreCubes", "Default": "false" },
	      { "Type": "bool", "Name": "ignoreWater", "Default": "false" }
	    ],
	    "Name": "FindPartOnRayWithIgnoreList",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Ray", "Name": "ray", "Default": null },
	      {
	        "Type": "Objects",
	        "Name": "whitelistDescendantsTable",
	        "Default": null
	      },
	      { "Type": "bool", "Name": "ignoreWater", "Default": "false" }
	    ],
	    "Name": "FindPartOnRayWithWhitelist",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      {
	        "Type": "Instance",
	        "Name": "ignoreDescendantsInstance",
	        "Default": "nil"
	      },
	      { "Type": "int", "Name": "maxParts", "Default": "20" }
	    ],
	    "Name": "FindPartsInRegion3",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      { "Type": "Objects", "Name": "ignoreDescendantsTable", "Default": null },
	      { "Type": "int", "Name": "maxParts", "Default": "20" }
	    ],
	    "Name": "FindPartsInRegion3WithIgnoreList",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      {
	        "Type": "Objects",
	        "Name": "whitelistDescendantsTable",
	        "Default": null
	      },
	      { "Type": "int", "Name": "maxParts", "Default": "20" }
	    ],
	    "Name": "FindPartsInRegion3WithWhiteList",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetNumAwakeParts",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetPhysicsAnalyzerBreakOnIssue",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "int", "Name": "index", "Default": null }],
	    "Name": "GetPhysicsAnalyzerIssue",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetPhysicsThrottling",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [],
	    "Name": "GetRealPhysicsFPS",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      {
	        "Type": "Instance",
	        "Name": "ignoreDescendentsInstance",
	        "Default": "nil"
	      }
	    ],
	    "Name": "IsRegion3Empty",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      { "Type": "Objects", "Name": "ignoreDescendentsTable", "Default": null }
	    ],
	    "Name": "IsRegion3EmptyWithIgnoreList",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Objects", "Name": "objects", "Default": null },
	      { "Type": "JointCreationMode", "Name": "jointType", "Default": null }
	    ],
	    "Name": "JoinToOutsiders",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "MakeJoints",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "PGSIsEnabled",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enable", "Default": null }],
	    "Name": "SetPhysicsAnalyzerBreakOnIssue",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "value", "Default": null }],
	    "Name": "SetPhysicsThrottleEnabled",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "UnjoinFromOutsiders",
	    "tags": [],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ZoomToExtents",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Ray", "Name": "ray", "Default": null },
	      {
	        "Type": "Instance",
	        "Name": "ignoreDescendantsInstance",
	        "Default": "nil"
	      },
	      { "Type": "bool", "Name": "terrainCellsAreCubes", "Default": "false" },
	      { "Type": "bool", "Name": "ignoreWater", "Default": "false" }
	    ],
	    "Name": "findPartOnRay",
	    "tags": ["deprecated"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [
	      { "Type": "Region3", "Name": "region", "Default": null },
	      {
	        "Type": "Instance",
	        "Name": "ignoreDescendantsInstance",
	        "Default": "nil"
	      },
	      { "Type": "int", "Name": "maxParts", "Default": "20" }
	    ],
	    "Name": "findPartsInRegion3",
	    "tags": ["deprecated"],
	    "Class": "Workspace",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "count", "Type": "int" }],
	    "Name": "PhysicsAnalyzerIssuesFound",
	    "tags": ["PluginSecurity"],
	    "Class": "Workspace",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PackageLink",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "PackageId",
	    "tags": ["readonly"],
	    "Class": "PackageLink"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "VersionNumber",
	    "tags": ["readonly"],
	    "Class": "PackageLink"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Pages", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsFinished",
	    "tags": ["readonly"],
	    "Class": "Pages"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetCurrentPage",
	    "tags": [],
	    "Class": "Pages",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "AdvanceToNextPageAsync",
	    "tags": [],
	    "Class": "Pages",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Pages",
	    "type": "Class",
	    "Name": "DataStorePages",
	    "tags": []
	  },
	  { "Superclass": "Pages", "type": "Class", "Name": "FriendPages", "tags": [] },
	  {
	    "Superclass": "Pages",
	    "type": "Class",
	    "Name": "InventoryPages",
	    "tags": []
	  },
	  {
	    "Superclass": "Pages",
	    "type": "Class",
	    "Name": "StandardPages",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PartOperationAsset",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ParticleEmitter",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Acceleration",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "ColorSequence",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Drag",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NormalId",
	    "type": "Property",
	    "Name": "EmissionDirection",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberRange",
	    "type": "Property",
	    "Name": "Lifetime",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightEmission",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightInfluence",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LockedToPart",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Rate",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberRange",
	    "type": "Property",
	    "Name": "RotSpeed",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberRange",
	    "type": "Property",
	    "Name": "Rotation",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberSequence",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberRange",
	    "type": "Property",
	    "Name": "Speed",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "SpreadAngle",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Texture",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "NumberSequence",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "VelocityInheritance",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "VelocitySpread",
	    "tags": ["deprecated"],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ZOffset",
	    "tags": [],
	    "Class": "ParticleEmitter"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Clear",
	    "tags": [],
	    "Class": "ParticleEmitter",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "particleCount", "Default": "16" }],
	    "Name": "Emit",
	    "tags": [],
	    "Class": "ParticleEmitter",
	    "type": "Function"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Path", "tags": [] },
	  {
	    "ValueType": "PathStatus",
	    "type": "Property",
	    "Name": "Status",
	    "tags": ["readonly"],
	    "Class": "Path"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetPointCoordinates",
	    "tags": ["deprecated"],
	    "Class": "Path",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetWaypoints",
	    "tags": [],
	    "Class": "Path",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "int", "Name": "start", "Default": null }],
	    "Name": "CheckOcclusionAsync",
	    "tags": [],
	    "Class": "Path",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PathfindingService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "EmptyCutoff",
	    "tags": ["deprecated"],
	    "Class": "PathfindingService"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "start", "Default": null },
	      { "Type": "Vector3", "Name": "finish", "Default": null },
	      { "Type": "float", "Name": "maxDistance", "Default": null }
	    ],
	    "Name": "ComputeRawPathAsync",
	    "tags": ["deprecated"],
	    "Class": "PathfindingService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "start", "Default": null },
	      { "Type": "Vector3", "Name": "finish", "Default": null },
	      { "Type": "float", "Name": "maxDistance", "Default": null }
	    ],
	    "Name": "ComputeSmoothPathAsync",
	    "tags": ["deprecated"],
	    "Class": "PathfindingService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "start", "Default": null },
	      { "Type": "Vector3", "Name": "finish", "Default": null }
	    ],
	    "Name": "FindPathAsync",
	    "tags": [],
	    "Class": "PathfindingService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PhysicsPacketCache",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PhysicsService",
	    "tags": []
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "Instance", "Name": "part", "Default": null }
	    ],
	    "Name": "CollisionGroupContainsPart",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name1", "Default": null },
	      { "Type": "string", "Name": "name2", "Default": null },
	      { "Type": "bool", "Name": "collidable", "Default": null }
	    ],
	    "Name": "CollisionGroupSetCollidable",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "string", "Name": "name1", "Default": null },
	      { "Type": "string", "Name": "name2", "Default": null }
	    ],
	    "Name": "CollisionGroupsAreCollidable",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "CreateCollisionGroup",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "GetCollisionGroupId",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int", "Name": "name", "Default": null }],
	    "Name": "GetCollisionGroupName",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetCollisionGroups",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetMaxCollisionGroups",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "part", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "target", "Default": null },
	      { "Type": "float", "Name": "translateStiffness", "Default": null },
	      { "Type": "float", "Name": "rotateStiffness", "Default": null }
	    ],
	    "Name": "IkSolve",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "part", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "target", "Default": null },
	      { "Type": "float", "Name": "translateStiffness", "Default": null },
	      { "Type": "float", "Name": "rotateStiffness", "Default": null }
	    ],
	    "Name": "LocalIkSolve",
	    "tags": ["LocalUserSecurity"],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "RemoveCollisionGroup",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "from", "Default": null },
	      { "Type": "string", "Name": "to", "Default": null }
	    ],
	    "Name": "RenameCollisionGroup",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "part", "Default": null },
	      { "Type": "string", "Name": "name", "Default": null }
	    ],
	    "Name": "SetPartCollisionGroup",
	    "tags": [],
	    "Class": "PhysicsService",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PhysicsSettings",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllowSleep",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreAnchorsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreAssembliesShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreAwakePartsHighlighted",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreBodyTypesShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreContactIslandsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreContactPointsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreJointCoordinatesShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreMechanismsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreModelCoordsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreOwnersShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ArePartCoordsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreRegionsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreUnalignedPartsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AreWorldCoordsShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "DisableCSGv2",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsReceiveAgeShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsTreeShown",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PhysicsAnalyzerEnabled",
	    "tags": ["PluginSecurity", "readonly"],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "EnviromentalPhysicsThrottle",
	    "type": "Property",
	    "Name": "PhysicsEnvironmentalThrottle",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShowDecompositionGeometry",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "ThrottleAdjustTime",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UseCSGv2",
	    "tags": [],
	    "Class": "PhysicsSettings"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Player", "tags": [] },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "AccountAge",
	    "tags": ["readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AppearanceDidLoad",
	    "tags": ["RobloxScriptSecurity", "deprecated", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoJumpEnabled",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CameraMaxZoomDistance",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CameraMinZoomDistance",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "CameraMode",
	    "type": "Property",
	    "Name": "CameraMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CanLoadCharacterAppearance",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "Class:Model",
	    "type": "Property",
	    "Name": "Character",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "CharacterAppearance",
	    "tags": ["deprecated", "notbrowsable"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "CharacterAppearanceId",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "ChatMode",
	    "type": "Property",
	    "Name": "ChatMode",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DataComplexity",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "DataComplexityLimit",
	    "tags": ["LocalUserSecurity", "deprecated"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "DataReady",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "DevCameraOcclusionMode",
	    "type": "Property",
	    "Name": "DevCameraOcclusionMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "DevComputerCameraMovementMode",
	    "type": "Property",
	    "Name": "DevComputerCameraMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "DevComputerMovementMode",
	    "type": "Property",
	    "Name": "DevComputerMovementMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "DevEnableMouseLock",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "DevTouchCameraMovementMode",
	    "type": "Property",
	    "Name": "DevTouchCameraMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "DevTouchMovementMode",
	    "type": "Property",
	    "Name": "DevTouchMovementMode",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "DisplayName",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "FollowUserId",
	    "tags": ["readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Guest",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HealthDisplayDistance",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "LocaleId",
	    "tags": ["hidden", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaximumSimulationRadius",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "MembershipType",
	    "type": "Property",
	    "Name": "MembershipType",
	    "tags": ["readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "NameDisplayDistance",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Neutral",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "OsPlatform",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "ReplicationFocus",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "Class:SpawnLocation",
	    "type": "Property",
	    "Name": "RespawnLocation",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SimulationRadius",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "Class:Team",
	    "type": "Property",
	    "Name": "Team",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TeamColor",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Teleported",
	    "tags": ["RobloxScriptSecurity", "hidden", "readonly"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TeleportedIn",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "UserId",
	    "tags": [],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "VRDevice",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "userId",
	    "tags": ["deprecated"],
	    "Class": "Player"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Array", "Name": "userIds", "Default": null }],
	    "Name": "AddToBlockList",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearCharacterAppearance",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [{ "Type": "Vector3", "Name": "point", "Default": null }],
	    "Name": "DistanceFromCharacter",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "FriendStatus",
	    "Arguments": [{ "Type": "Instance", "Name": "player", "Default": null }],
	    "Name": "GetFriendStatus",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetGameSessionID",
	    "tags": ["RobloxSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetJoinData",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetMouse",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetUnder13",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "HasAppearanceLoaded",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsUserAvailableForExperiment",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": "" }],
	    "Name": "Kick",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "LoadBoolean",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "assetInstance", "Default": null }
	    ],
	    "Name": "LoadCharacterAppearance",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "LoadData",
	    "tags": ["LocalUserSecurity", "deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "LoadInstance",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "LoadNumber",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "LoadString",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector3", "Name": "walkDirection", "Default": null },
	      { "Type": "bool", "Name": "relativeToCamera", "Default": "false" }
	    ],
	    "Name": "Move",
	    "tags": [],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RemoveCharacter",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "player", "Default": null }],
	    "Name": "RequestFriendship",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "player", "Default": null }],
	    "Name": "RevokeFriendship",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "bool", "Name": "value", "Default": null }
	    ],
	    "Name": "SaveBoolean",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SaveData",
	    "tags": ["LocalUserSecurity", "deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Instance", "Name": "value", "Default": null }
	    ],
	    "Name": "SaveInstance",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "double", "Name": "value", "Default": null }
	    ],
	    "Name": "SaveNumber",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "value", "Default": null }
	    ],
	    "Name": "SaveString",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "accountAge", "Default": null }],
	    "Name": "SetAccountAge",
	    "tags": ["PluginSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "MembershipType", "Name": "membershipType", "Default": null }
	    ],
	    "Name": "SetMembershipType",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "value", "Default": null }],
	    "Name": "SetSuperSafeChat",
	    "tags": ["PluginSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "value", "Default": null }],
	    "Name": "SetUnder13",
	    "tags": ["RobloxSecurity", "deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "bool", "Name": "blocked", "Default": null }
	    ],
	    "Name": "UpdatePlayerBlocked",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "loadBoolean",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "loadInstance",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "loadNumber",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "loadString",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "bool", "Name": "value", "Default": null }
	    ],
	    "Name": "saveBoolean",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Instance", "Name": "value", "Default": null }
	    ],
	    "Name": "saveInstance",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "double", "Name": "value", "Default": null }
	    ],
	    "Name": "saveNumber",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "string", "Name": "value", "Default": null }
	    ],
	    "Name": "saveString",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [{ "Type": "int", "Name": "maxFriends", "Default": "200" }],
	    "Name": "GetFriendsOnline",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "GetRankInGroup",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "GetRoleInGroup",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "IsBestFriendsWith",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "IsFriendsWith",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "groupId", "Default": null }],
	    "Name": "IsInGroup",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "LoadCharacter",
	    "tags": [],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "LoadCharacterBlocking",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "WaitForDataReady",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "isFriendsWith",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "waitForDataReady",
	    "tags": ["deprecated"],
	    "Class": "Player",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [{ "Name": "character", "Type": "Instance" }],
	    "Name": "CharacterAdded",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "character", "Type": "Instance" }],
	    "Name": "CharacterAppearanceLoaded",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "character", "Type": "Instance" }],
	    "Name": "CharacterRemoving",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "message", "Type": "string" },
	      { "Name": "recipient", "Type": "Instance" }
	    ],
	    "Name": "Chatted",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "friendStatus", "Type": "FriendStatus" }
	    ],
	    "Name": "FriendStatusChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "time", "Type": "double" }],
	    "Name": "Idled",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "teleportState", "Type": "TeleportState" },
	      { "Name": "placeId", "Type": "int64" },
	      { "Name": "spawnName", "Type": "string" }
	    ],
	    "Name": "OnTeleport",
	    "tags": [],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "radius", "Type": "float" }],
	    "Name": "SimulationRadiusChanged",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Player",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PlayerScripts",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearComputerCameraMovementModes",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearComputerMovementModes",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearTouchCameraMovementModes",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ClearTouchMovementModes",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetRegisteredComputerCameraMovementModes",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetRegisteredComputerMovementModes",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetRegisteredTouchCameraMovementModes",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetRegisteredTouchMovementModes",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      {
	        "Type": "ComputerCameraMovementMode",
	        "Name": "cameraMovementMode",
	        "Default": null
	      }
	    ],
	    "Name": "RegisterComputerCameraMovementMode",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      {
	        "Type": "ComputerMovementMode",
	        "Name": "movementMode",
	        "Default": null
	      }
	    ],
	    "Name": "RegisterComputerMovementMode",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      {
	        "Type": "TouchCameraMovementMode",
	        "Name": "cameraMovementMode",
	        "Default": null
	      }
	    ],
	    "Name": "RegisterTouchCameraMovementMode",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "TouchMovementMode", "Name": "movementMode", "Default": null }
	    ],
	    "Name": "RegisterTouchMovementMode",
	    "tags": [],
	    "Class": "PlayerScripts",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "ComputerCameraMovementModeRegistered",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "ComputerMovementModeRegistered",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "TouchCameraMovementModeRegistered",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "TouchMovementModeRegistered",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "PlayerScripts",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Players", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "BubbleChat",
	    "tags": ["readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CharacterAutoLoads",
	    "tags": [],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ClassicChat",
	    "tags": ["readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "LocalPlayer",
	    "tags": ["readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MaxPlayers",
	    "tags": ["readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MaxPlayersInternal",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "NumPlayers",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PreferredPlayers",
	    "tags": ["readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PreferredPlayersInternal",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "localPlayer",
	    "tags": ["deprecated", "hidden", "readonly"],
	    "Class": "Players"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "numPlayers",
	    "tags": ["deprecated", "hidden", "readonly"],
	    "Class": "Players"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": null }],
	    "Name": "Chat",
	    "tags": ["PluginSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "CreateLocalPlayer",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetPlayerByUserId",
	    "tags": [],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "character", "Default": null }],
	    "Name": "GetPlayerFromCharacter",
	    "tags": [],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetPlayers",
	    "tags": [],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "string", "Name": "reason", "Default": null },
	      { "Type": "string", "Name": "optionalMessage", "Default": null }
	    ],
	    "Name": "ReportAbuse",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "ChatStyle", "Name": "style", "Default": "Classic" }
	    ],
	    "Name": "SetChatStyle",
	    "tags": ["PluginSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "message", "Default": null }],
	    "Name": "TeamChat",
	    "tags": ["PluginSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "message", "Default": null },
	      { "Type": "Instance", "Name": "player", "Default": null }
	    ],
	    "Name": "WhisperChat",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "character", "Default": null }],
	    "Name": "getPlayerFromCharacter",
	    "tags": ["deprecated"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "getPlayers",
	    "tags": ["deprecated"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Instance", "Name": "character", "Default": null }],
	    "Name": "playerFromCharacter",
	    "tags": ["deprecated"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "players",
	    "tags": ["deprecated"],
	    "Class": "Players",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetCharacterAppearanceAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetCharacterAppearanceInfoAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetFriendsAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetNameFromUserIdAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [{ "Type": "string", "Name": "userName", "Default": null }],
	    "Name": "GetUserIdFromNameAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "ThumbnailType", "Name": "thumbnailType", "Default": null },
	      { "Type": "ThumbnailSize", "Name": "thumbnailSize", "Default": null }
	    ],
	    "Name": "GetUserThumbnailAsync",
	    "tags": [],
	    "Class": "Players",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "friendRequestEvent", "Type": "FriendRequestEvent" }
	    ],
	    "Name": "FriendRequestEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "message", "Type": "string" }],
	    "Name": "GameAnnounce",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerAdded",
	    "tags": [],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "chatType", "Type": "PlayerChatType" },
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "message", "Type": "string" },
	      { "Name": "targetPlayer", "Type": "Instance" }
	    ],
	    "Name": "PlayerChatted",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerConnecting",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerDisconnecting",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerRejoining",
	    "tags": ["LocalUserSecurity"],
	    "Class": "Players",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerRemoving",
	    "tags": [],
	    "Class": "Players",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Plugin", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CollisionEnabled",
	    "tags": ["readonly"],
	    "Class": "Plugin"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "GridSize",
	    "tags": ["readonly"],
	    "Class": "Plugin"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsesAssetInsertionDrag",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "exclusiveMouse", "Default": null }
	    ],
	    "Name": "Activate",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "actionId", "Default": null },
	      { "Type": "string", "Name": "text", "Default": null },
	      { "Type": "string", "Name": "statusTip", "Default": null },
	      { "Type": "string", "Name": "iconName", "Default": "" }
	    ],
	    "Name": "CreatePluginAction",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "CreateToolbar",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Deactivate",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "JointCreationMode",
	    "Arguments": [],
	    "Name": "GetJoinMode",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetMouse",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "RibbonTool",
	    "Arguments": [],
	    "Name": "GetSelectedRibbonTool",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "GetSetting",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [],
	    "Name": "GetStudioUserId",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "rigModel", "Default": null }],
	    "Name": "ImportFbxAnimation",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsActivated",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsActivatedWithExclusiveMouse",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "Negate",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "script", "Default": null },
	      { "Type": "int", "Name": "lineNumber", "Default": "1" }
	    ],
	    "Name": "OpenScript",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "url", "Default": null }],
	    "Name": "OpenWikiPage",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "soundChannel", "Default": null }
	    ],
	    "Name": "PauseSound",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "soundChannel", "Default": null }
	    ],
	    "Name": "PlaySound",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "soundChannel", "Default": null }
	    ],
	    "Name": "ResumeSound",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SaveSelectedToRoblox",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "RibbonTool", "Name": "tool", "Default": null },
	      { "Type": "UDim2", "Name": "position", "Default": null }
	    ],
	    "Name": "SelectRibbonTool",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "Separate",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null }
	    ],
	    "Name": "SetSetting",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "decal", "Default": null }],
	    "Name": "StartDecalDrag",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "PluginDrag", "Name": "drag", "Default": null }],
	    "Name": "StartDrag",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StopAllSounds",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "Objects", "Name": "objects", "Default": null }],
	    "Name": "Union",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "pluginGuiId", "Default": null },
	      {
	        "Type": "DockWidgetPluginGuiInfo",
	        "Name": "dockWidgetPluginGuiInfo",
	        "Default": null
	      }
	    ],
	    "Name": "CreateDockWidgetPluginGui",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "pluginGuiId", "Default": null },
	      { "Type": "Dictionary", "Name": "pluginGuiOptions", "Default": null }
	    ],
	    "Name": "CreateQWidgetPluginGui",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Plugin",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "ImportFbxRig",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int64",
	    "Arguments": [{ "Type": "string", "Name": "assetType", "Default": null }],
	    "Name": "PromptForExistingAssetId",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "string", "Name": "suggestedFileName", "Default": "" }
	    ],
	    "Name": "PromptSaveSelection",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [],
	    "Name": "Deactivation",
	    "tags": ["PluginSecurity"],
	    "Class": "Plugin",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PluginAction",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ActionId",
	    "tags": ["readonly"],
	    "Class": "PluginAction"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "StatusTip",
	    "tags": ["readonly"],
	    "Class": "PluginAction"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Text",
	    "tags": ["readonly"],
	    "Class": "PluginAction"
	  },
	  {
	    "Arguments": [],
	    "Name": "Triggered",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginAction",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PluginGuiService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PluginManager",
	    "tags": []
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "CreatePlugin",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "filePath", "Default": "" }],
	    "Name": "ExportPlace",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "filePath", "Default": "" }],
	    "Name": "ExportSelection",
	    "tags": ["PluginSecurity"],
	    "Class": "PluginManager",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PointsService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetAwardablePoints",
	    "tags": ["deprecated"],
	    "Class": "PointsService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "int64", "Name": "userId", "Default": null },
	      { "Type": "int", "Name": "amount", "Default": null }
	    ],
	    "Name": "AwardPoints",
	    "tags": [],
	    "Class": "PointsService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetGamePointBalance",
	    "tags": [],
	    "Class": "PointsService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetPointBalance",
	    "tags": ["deprecated"],
	    "Class": "PointsService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "userId", "Type": "int64" },
	      { "Name": "pointsAwarded", "Type": "int" },
	      { "Name": "userBalanceInGame", "Type": "int" },
	      { "Name": "userTotalBalance", "Type": "int" }
	    ],
	    "Name": "PointsAwarded",
	    "tags": [],
	    "Class": "PointsService",
	    "type": "Event"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Pose", "tags": [] },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "Pose"
	  },
	  {
	    "ValueType": "PoseEasingDirection",
	    "type": "Property",
	    "Name": "EasingDirection",
	    "tags": [],
	    "Class": "Pose"
	  },
	  {
	    "ValueType": "PoseEasingStyle",
	    "type": "Property",
	    "Name": "EasingStyle",
	    "tags": [],
	    "Class": "Pose"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaskWeight",
	    "tags": ["deprecated"],
	    "Class": "Pose"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Weight",
	    "tags": [],
	    "Class": "Pose"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "pose", "Default": null }],
	    "Name": "AddSubPose",
	    "tags": [],
	    "Class": "Pose",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetSubPoses",
	    "tags": [],
	    "Class": "Pose",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "pose", "Default": null }],
	    "Name": "RemoveSubPose",
	    "tags": [],
	    "Class": "Pose",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "PostEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "PostEffect"
	  },
	  {
	    "Superclass": "PostEffect",
	    "type": "Class",
	    "Name": "BloomEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Intensity",
	    "tags": [],
	    "Class": "BloomEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "BloomEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Threshold",
	    "tags": [],
	    "Class": "BloomEffect"
	  },
	  {
	    "Superclass": "PostEffect",
	    "type": "Class",
	    "Name": "BlurEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "BlurEffect"
	  },
	  {
	    "Superclass": "PostEffect",
	    "type": "Class",
	    "Name": "ColorCorrectionEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Brightness",
	    "tags": [],
	    "Class": "ColorCorrectionEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Contrast",
	    "tags": [],
	    "Class": "ColorCorrectionEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Saturation",
	    "tags": [],
	    "Class": "ColorCorrectionEffect"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "TintColor",
	    "tags": [],
	    "Class": "ColorCorrectionEffect"
	  },
	  {
	    "Superclass": "PostEffect",
	    "type": "Class",
	    "Name": "SunRaysEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Intensity",
	    "tags": [],
	    "Class": "SunRaysEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Spread",
	    "tags": [],
	    "Class": "SunRaysEffect"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadata",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataCallbacks",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataClasses",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataEnums",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataEvents",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataFunctions",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataItem",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Browsable",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ClassCategory",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Constraint",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Deprecated",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "EditingDisabled",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsBackend",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "ScriptContext",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "UIMaximum",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "UIMinimum",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "UINumTicks",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "summary",
	    "tags": [],
	    "Class": "ReflectionMetadataItem"
	  },
	  {
	    "Superclass": "ReflectionMetadataItem",
	    "type": "Class",
	    "Name": "ReflectionMetadataClass",
	    "tags": []
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ExplorerImageIndex",
	    "tags": [],
	    "Class": "ReflectionMetadataClass"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ExplorerOrder",
	    "tags": [],
	    "Class": "ReflectionMetadataClass"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Insertable",
	    "tags": [],
	    "Class": "ReflectionMetadataClass"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "PreferredParent",
	    "tags": [],
	    "Class": "ReflectionMetadataClass"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "PreferredParents",
	    "tags": [],
	    "Class": "ReflectionMetadataClass"
	  },
	  {
	    "Superclass": "ReflectionMetadataItem",
	    "type": "Class",
	    "Name": "ReflectionMetadataEnum",
	    "tags": []
	  },
	  {
	    "Superclass": "ReflectionMetadataItem",
	    "type": "Class",
	    "Name": "ReflectionMetadataEnumItem",
	    "tags": []
	  },
	  {
	    "Superclass": "ReflectionMetadataItem",
	    "type": "Class",
	    "Name": "ReflectionMetadataMember",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataProperties",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReflectionMetadataYieldFunctions",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RemoteEvent",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Tuple", "Name": "arguments", "Default": null }],
	    "Name": "FireAllClients",
	    "tags": [],
	    "Class": "RemoteEvent",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "Tuple", "Name": "arguments", "Default": null }
	    ],
	    "Name": "FireClient",
	    "tags": [],
	    "Class": "RemoteEvent",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Tuple", "Name": "arguments", "Default": null }],
	    "Name": "FireServer",
	    "tags": [],
	    "Class": "RemoteEvent",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "arguments", "Type": "Tuple" }],
	    "Name": "OnClientEvent",
	    "tags": [],
	    "Class": "RemoteEvent",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "arguments", "Type": "Tuple" }
	    ],
	    "Name": "OnServerEvent",
	    "tags": [],
	    "Class": "RemoteEvent",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RemoteFunction",
	    "tags": []
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Type": "Instance", "Name": "player", "Default": null },
	      { "Type": "Tuple", "Name": "arguments", "Default": null }
	    ],
	    "Name": "InvokeClient",
	    "tags": [],
	    "Class": "RemoteFunction",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "Tuple", "Name": "arguments", "Default": null }],
	    "Name": "InvokeServer",
	    "tags": [],
	    "Class": "RemoteFunction",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Name": "arguments", "Type": "Tuple" }],
	    "Name": "OnClientInvoke",
	    "tags": [],
	    "Class": "RemoteFunction",
	    "type": "Callback"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "arguments", "Type": "Tuple" }
	    ],
	    "Name": "OnServerInvoke",
	    "tags": [],
	    "Class": "RemoteFunction",
	    "type": "Callback"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RenderSettings",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "AutoFRMLevel",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "EagerBulkExecution",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "QualityLevel",
	    "type": "Property",
	    "Name": "EditQualityLevel",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "EnableFRM",
	    "tags": ["hidden"],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ExportMergeByMaterial",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "FramerateManagerMode",
	    "type": "Property",
	    "Name": "FrameRateManager",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "GraphicsMode",
	    "type": "Property",
	    "Name": "GraphicsMode",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MeshCacheSize",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "QualityLevel",
	    "type": "Property",
	    "Name": "QualityLevel",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ReloadAssets",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RenderCSGTrianglesDebug",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShowBoundingBoxes",
	    "tags": [],
	    "Class": "RenderSettings"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetMaxQualityLevel",
	    "tags": [],
	    "Class": "RenderSettings",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RenderingTest",
	    "tags": []
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "CFrame",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ComparisonDiffThreshold",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "RenderingTestComparisonMethod",
	    "type": "Property",
	    "Name": "ComparisonMethod",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "ComparisonPsnrThreshold",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Description",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "FieldOfView",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Orientation",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Position",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "QualityLevel",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ShouldSkip",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Ticket",
	    "tags": [],
	    "Class": "RenderingTest"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReplicatedFirst",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsDefaultLoadingGuiRemoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsFinishedReplicating",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RemoveDefaultLoadingScreen",
	    "tags": [],
	    "Class": "ReplicatedFirst",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SetDefaultLoadingGuiRemoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "DefaultLoadingGuiRemoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "FinishedReplicating",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "RemoveDefaultLoadingGuiSignal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ReplicatedFirst",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ReplicatedStorage",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RobloxReplicatedStorage",
	    "tags": ["notCreatable", "notbrowsable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RunService",
	    "tags": []
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "int", "Name": "priority", "Default": null },
	      { "Type": "Function", "Name": "function", "Default": null }
	    ],
	    "Name": "BindToRenderStep",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetRobloxVersion",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsClient",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsEdit",
	    "tags": ["PluginSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsRunMode",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsRunning",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsServer",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsStudio",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Pause",
	    "tags": ["PluginSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Reset",
	    "tags": ["PluginSecurity", "deprecated"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Run",
	    "tags": ["PluginSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enable", "Default": null }],
	    "Name": "Set3dRenderingEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "focus", "Default": null }],
	    "Name": "SetRobloxGuiFocused",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Stop",
	    "tags": ["PluginSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "UnbindFromRenderStep",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "bool", "Name": "enable", "Default": null }],
	    "Name": "setThrottleFramerateEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "RunService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "step", "Type": "double" }],
	    "Name": "Heartbeat",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "step", "Type": "double" }],
	    "Name": "RenderStepped",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "time", "Type": "double" },
	      { "Name": "step", "Type": "double" }
	    ],
	    "Name": "Stepped",
	    "tags": [],
	    "Class": "RunService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "RuntimeScriptService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ScriptContext",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ScriptsDisabled",
	    "tags": ["LocalUserSecurity"],
	    "Class": "ScriptContext"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "Instance", "Name": "parent", "Default": null }
	    ],
	    "Name": "AddCoreScriptLocal",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ScriptContext",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "double", "Name": "seconds", "Default": null }],
	    "Name": "SetTimeout",
	    "tags": ["PluginSecurity"],
	    "Class": "ScriptContext",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "message", "Type": "string" },
	      { "Name": "stackTrace", "Type": "string" },
	      { "Name": "script", "Type": "Instance" }
	    ],
	    "Name": "Error",
	    "tags": [],
	    "Class": "ScriptContext",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ScriptDebugger",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "CurrentLine",
	    "tags": ["readonly"],
	    "Class": "ScriptDebugger"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsDebugging",
	    "tags": ["readonly"],
	    "Class": "ScriptDebugger"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsPaused",
	    "tags": ["readonly"],
	    "Class": "ScriptDebugger"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Script",
	    "tags": ["readonly"],
	    "Class": "ScriptDebugger"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "expression", "Default": null }],
	    "Name": "AddWatch",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetBreakpoints",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Map",
	    "Arguments": [],
	    "Name": "GetGlobals",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Map",
	    "Arguments": [{ "Type": "int", "Name": "stackFrame", "Default": "0" }],
	    "Name": "GetLocals",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetStack",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Map",
	    "Arguments": [{ "Type": "int", "Name": "stackFrame", "Default": "0" }],
	    "Name": "GetUpvalues",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "Instance", "Name": "watch", "Default": null }],
	    "Name": "GetWatchValue",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetWatches",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Resume",
	    "tags": ["deprecated"],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "int", "Name": "line", "Default": null }],
	    "Name": "SetBreakpoint",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null }
	    ],
	    "Name": "SetGlobal",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null },
	      { "Type": "int", "Name": "stackFrame", "Default": "0" }
	    ],
	    "Name": "SetLocal",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "name", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null },
	      { "Type": "int", "Name": "stackFrame", "Default": "0" }
	    ],
	    "Name": "SetUpvalue",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepIn",
	    "tags": ["deprecated"],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepOut",
	    "tags": ["deprecated"],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StepOver",
	    "tags": ["deprecated"],
	    "Class": "ScriptDebugger",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "breakpoint", "Type": "Instance" }],
	    "Name": "BreakpointAdded",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "breakpoint", "Type": "Instance" }],
	    "Name": "BreakpointRemoved",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "line", "Type": "int" }],
	    "Name": "EncounteredBreak",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Resuming",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "watch", "Type": "Instance" }],
	    "Name": "WatchAdded",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "watch", "Type": "Instance" }],
	    "Name": "WatchRemoved",
	    "tags": [],
	    "Class": "ScriptDebugger",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ScriptService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Selection",
	    "tags": []
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "Get",
	    "tags": ["PluginSecurity"],
	    "Class": "Selection",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Objects", "Name": "selection", "Default": null }],
	    "Name": "Set",
	    "tags": ["PluginSecurity"],
	    "Class": "Selection",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "SelectionChanged",
	    "tags": [],
	    "Class": "Selection",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ServerScriptService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ServerStorage",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ServiceProvider",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "FindService",
	    "tags": [],
	    "Class": "ServiceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "GetService",
	    "tags": [],
	    "Class": "ServiceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "getService",
	    "tags": ["deprecated"],
	    "Class": "ServiceProvider",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [{ "Type": "string", "Name": "className", "Default": null }],
	    "Name": "service",
	    "tags": ["deprecated"],
	    "Class": "ServiceProvider",
	    "type": "Function"
	  },
	  {
	    "Arguments": [],
	    "Name": "Close",
	    "tags": [],
	    "Class": "ServiceProvider",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "CloseLate",
	    "tags": ["LocalUserSecurity"],
	    "Class": "ServiceProvider",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "service", "Type": "Instance" }],
	    "Name": "ServiceAdded",
	    "tags": [],
	    "Class": "ServiceProvider",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "service", "Type": "Instance" }],
	    "Name": "ServiceRemoving",
	    "tags": [],
	    "Class": "ServiceProvider",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ServiceProvider",
	    "type": "Class",
	    "Name": "DataModel",
	    "tags": []
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "CreatorId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "CreatorType",
	    "type": "Property",
	    "Name": "CreatorType",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "GameId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "GearGenreSetting",
	    "type": "Property",
	    "Name": "GearGenreSetting",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "Genre",
	    "type": "Property",
	    "Name": "Genre",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsSFFlagsLoaded",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "JobId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "PlaceId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PlaceVersion",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "PrivateServerId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "PrivateServerOwnerId",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "VIPServerId",
	    "tags": ["deprecated", "hidden", "readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "VIPServerOwnerId",
	    "tags": ["deprecated", "hidden", "readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "Class:Workspace",
	    "type": "Property",
	    "Name": "Workspace",
	    "tags": ["readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "lighting",
	    "tags": ["deprecated", "readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ValueType": "Class:Workspace",
	    "type": "Property",
	    "Name": "workspace",
	    "tags": ["deprecated", "readonly"],
	    "Class": "DataModel"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Function", "Name": "function", "Default": null }],
	    "Name": "BindToClose",
	    "tags": [],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [
	      { "Type": "string", "Name": "jobname", "Default": null },
	      { "Type": "double", "Name": "greaterThan", "Default": null }
	    ],
	    "Name": "GetJobIntervalPeakFraction",
	    "tags": ["PluginSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [
	      { "Type": "string", "Name": "jobname", "Default": null },
	      { "Type": "double", "Name": "greaterThan", "Default": null }
	    ],
	    "Name": "GetJobTimePeakFraction",
	    "tags": ["PluginSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetJobsExtendedStats",
	    "tags": ["PluginSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetJobsInfo",
	    "tags": ["PluginSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetMessage",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "GetRemoteBuildMode",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "GearType", "Name": "gearType", "Default": null }],
	    "Name": "IsGearTypeAllowed",
	    "tags": [],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "IsLoaded",
	    "tags": [],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Content", "Name": "url", "Default": null }],
	    "Name": "Load",
	    "tags": ["LocalUserSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "OpenScreenshotsFolder",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "OpenVideosFolder",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "category", "Default": null },
	      { "Type": "string", "Name": "action", "Default": "custom" },
	      { "Type": "string", "Name": "label", "Default": "none" },
	      { "Type": "int", "Name": "value", "Default": "0" }
	    ],
	    "Name": "ReportInGoogleAnalytics",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Shutdown",
	    "tags": ["LocalUserSecurity"],
	    "Class": "DataModel",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "url", "Default": null },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "HttpGetAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "url", "Default": null },
	      { "Type": "string", "Name": "data", "Default": null },
	      { "Type": "string", "Name": "contentType", "Default": "*/*" },
	      {
	        "Type": "HttpRequestType",
	        "Name": "httpRequestType",
	        "Default": "Default"
	      },
	      { "Type": "bool", "Name": "doNotAllowDiabolicalMode", "Default": "false" }
	    ],
	    "Name": "HttpPostAsync",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "SaveFilter", "Name": "saveFilter", "Default": "SaveAll" }
	    ],
	    "Name": "SavePlace",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [],
	    "Name": "AllowedGearTypeChanged",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "betterQuality", "Type": "bool" }],
	    "Name": "GraphicsQualityChangeRequest",
	    "tags": [],
	    "Class": "DataModel",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "object", "Type": "Instance" },
	      { "Name": "descriptor", "Type": "Property" }
	    ],
	    "Name": "ItemChanged",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "Loaded",
	    "tags": [],
	    "Class": "DataModel",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "path", "Type": "string" }],
	    "Name": "ScreenshotReady",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "DataModel",
	    "type": "Event"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "OnClose",
	    "tags": ["deprecated"],
	    "Class": "DataModel",
	    "type": "Callback"
	  },
	  {
	    "Superclass": "ServiceProvider",
	    "type": "Class",
	    "Name": "GenericSettings",
	    "tags": []
	  },
	  {
	    "Superclass": "GenericSettings",
	    "type": "Class",
	    "Name": "AnalysticsSettings",
	    "tags": []
	  },
	  {
	    "Superclass": "GenericSettings",
	    "type": "Class",
	    "Name": "GlobalSettings",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "GetFFlag",
	    "tags": [],
	    "Class": "GlobalSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "GetFVariable",
	    "tags": [],
	    "Class": "GlobalSettings",
	    "type": "Function"
	  },
	  {
	    "Superclass": "GenericSettings",
	    "type": "Class",
	    "Name": "UserSettings",
	    "tags": []
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "name", "Default": null }],
	    "Name": "IsUserFeatureEnabled",
	    "tags": [],
	    "Class": "UserSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Reset",
	    "tags": [],
	    "Class": "UserSettings",
	    "type": "Function"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Sky", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CelestialBodiesShown",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MoonAngularSize",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "MoonTextureId",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxBk",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxDn",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxFt",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxLf",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxRt",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SkyboxUp",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "StarCount",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "SunAngularSize",
	    "tags": [],
	    "Class": "Sky"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SunTextureId",
	    "tags": [],
	    "Class": "Sky"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Smoke", "tags": [] },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Smoke"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Smoke"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Opacity",
	    "tags": [],
	    "Class": "Smoke"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "RiseVelocity",
	    "tags": [],
	    "Class": "Smoke"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Size",
	    "tags": [],
	    "Class": "Smoke"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Sound", "tags": [] },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "EmitterSize",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsLoaded",
	    "tags": ["readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsPaused",
	    "tags": ["readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsPlaying",
	    "tags": ["readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Looped",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxDistance",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MinDistance",
	    "tags": ["deprecated"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Pitch",
	    "tags": ["deprecated"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PlayOnRemove",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "PlaybackLoudness",
	    "tags": ["readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "PlaybackSpeed",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Playing",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "RollOffMode",
	    "type": "Property",
	    "Name": "RollOffMode",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "Class:SoundGroup",
	    "type": "Property",
	    "Name": "SoundGroup",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "SoundId",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "TimeLength",
	    "tags": ["readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "TimePosition",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Volume",
	    "tags": [],
	    "Class": "Sound"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "isPlaying",
	    "tags": ["deprecated", "readonly"],
	    "Class": "Sound"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Pause",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Play",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Resume",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Stop",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "pause",
	    "tags": ["deprecated"],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "play",
	    "tags": ["deprecated"],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "stop",
	    "tags": ["deprecated"],
	    "Class": "Sound",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "soundId", "Type": "string" },
	      { "Name": "numOfTimesLooped", "Type": "int" }
	    ],
	    "Name": "DidLoop",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Ended",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Loaded",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Paused",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Played",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Resumed",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "soundId", "Type": "string" }],
	    "Name": "Stopped",
	    "tags": [],
	    "Class": "Sound",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "SoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "SoundEffect"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Priority",
	    "tags": [],
	    "Class": "SoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "ChorusSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Depth",
	    "tags": [],
	    "Class": "ChorusSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Mix",
	    "tags": [],
	    "Class": "ChorusSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Rate",
	    "tags": [],
	    "Class": "ChorusSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "CompressorSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Attack",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "GainMakeup",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Ratio",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Release",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "SideChain",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Threshold",
	    "tags": [],
	    "Class": "CompressorSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "DistortionSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Level",
	    "tags": [],
	    "Class": "DistortionSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "EchoSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Delay",
	    "tags": [],
	    "Class": "EchoSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DryLevel",
	    "tags": [],
	    "Class": "EchoSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Feedback",
	    "tags": [],
	    "Class": "EchoSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WetLevel",
	    "tags": [],
	    "Class": "EchoSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "EqualizerSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HighGain",
	    "tags": [],
	    "Class": "EqualizerSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LowGain",
	    "tags": [],
	    "Class": "EqualizerSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MidGain",
	    "tags": [],
	    "Class": "EqualizerSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "FlangeSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Depth",
	    "tags": [],
	    "Class": "FlangeSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Mix",
	    "tags": [],
	    "Class": "FlangeSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Rate",
	    "tags": [],
	    "Class": "FlangeSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "PitchShiftSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Octave",
	    "tags": [],
	    "Class": "PitchShiftSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "ReverbSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DecayTime",
	    "tags": [],
	    "Class": "ReverbSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Density",
	    "tags": [],
	    "Class": "ReverbSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Diffusion",
	    "tags": [],
	    "Class": "ReverbSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DryLevel",
	    "tags": [],
	    "Class": "ReverbSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "WetLevel",
	    "tags": [],
	    "Class": "ReverbSoundEffect"
	  },
	  {
	    "Superclass": "SoundEffect",
	    "type": "Class",
	    "Name": "TremoloSoundEffect",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Depth",
	    "tags": [],
	    "Class": "TremoloSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Duty",
	    "tags": [],
	    "Class": "TremoloSoundEffect"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Frequency",
	    "tags": [],
	    "Class": "TremoloSoundEffect"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "SoundGroup",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Volume",
	    "tags": [],
	    "Class": "SoundGroup"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "SoundService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "ReverbType",
	    "type": "Property",
	    "Name": "AmbientReverb",
	    "tags": [],
	    "Class": "SoundService"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DistanceFactor",
	    "tags": [],
	    "Class": "SoundService"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DopplerScale",
	    "tags": [],
	    "Class": "SoundService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "RespectFilteringEnabled",
	    "tags": [],
	    "Class": "SoundService"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "RolloffScale",
	    "tags": [],
	    "Class": "SoundService"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "BeginRecording",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "GetListener",
	    "tags": [],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "sound", "Default": null }],
	    "Name": "PlayLocalSound",
	    "tags": [],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "SoundType", "Name": "sound", "Default": null }],
	    "Name": "PlayStockSound",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "ListenerType", "Name": "listenerType", "Default": null },
	      { "Type": "Tuple", "Name": "listener", "Default": null }
	    ],
	    "Name": "SetListener",
	    "tags": [],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "int", "Name": "deviceIndex", "Default": null }],
	    "Name": "SetRecordingDevice",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "SoundService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "EndRecording",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "SoundService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [],
	    "Name": "GetRecordingDevices",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "SoundService",
	    "type": "YieldFunction"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Sparkles", "tags": [] },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Color",
	    "tags": ["hidden"],
	    "Class": "Sparkles"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Sparkles"
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "SparkleColor",
	    "tags": [],
	    "Class": "Sparkles"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "SpawnerService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "StarterGear",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "StarterPlayer",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllowCustomAnimations",
	    "tags": ["ScriptWriteRestricted: [NotAccessibleSecurity]", "hidden"],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoJumpEnabled",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CameraMaxZoomDistance",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "CameraMinZoomDistance",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "CameraMode",
	    "type": "Property",
	    "Name": "CameraMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "DevCameraOcclusionMode",
	    "type": "Property",
	    "Name": "DevCameraOcclusionMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "DevComputerCameraMovementMode",
	    "type": "Property",
	    "Name": "DevComputerCameraMovementMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "DevComputerMovementMode",
	    "type": "Property",
	    "Name": "DevComputerMovementMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "DevTouchCameraMovementMode",
	    "type": "Property",
	    "Name": "DevTouchCameraMovementMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "DevTouchMovementMode",
	    "type": "Property",
	    "Name": "DevTouchMovementMode",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "EnableMouseLockOption",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HealthDisplayDistance",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LoadCharacterAppearance",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "NameDisplayDistance",
	    "tags": [],
	    "Class": "StarterPlayer"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "StarterPlayerScripts",
	    "tags": []
	  },
	  {
	    "Superclass": "StarterPlayerScripts",
	    "type": "Class",
	    "Name": "StarterCharacterScripts",
	    "tags": []
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Stats", "tags": [] },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ContactsCount",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DataReceiveKbps",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "DataSendKbps",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "HeartbeatTimeMs",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "InstanceCount",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MovingPrimitivesCount",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "PhysicsReceiveKbps",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "PhysicsSendKbps",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "PhysicsStepTimeMs",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "PrimitivesCount",
	    "tags": ["readonly"],
	    "Class": "Stats"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [
	      { "Type": "DeveloperMemoryTag", "Name": "tag", "Default": null }
	    ],
	    "Name": "GetMemoryUsageMbForTag",
	    "tags": [],
	    "Class": "Stats",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "float",
	    "Arguments": [],
	    "Name": "GetTotalMemoryUsageMb",
	    "tags": [],
	    "Class": "Stats",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Dictionary",
	    "Arguments": [
	      { "Type": "TextureQueryType", "Name": "queryType", "Default": null },
	      { "Type": "int", "Name": "pageIndex", "Default": null },
	      { "Type": "int", "Name": "pageSize", "Default": null }
	    ],
	    "Name": "GetPaginatedMemoryByTexture",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Stats",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "StatsItem",
	    "tags": []
	  },
	  {
	    "ReturnType": "double",
	    "Arguments": [],
	    "Name": "GetValue",
	    "tags": ["PluginSecurity"],
	    "Class": "StatsItem",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetValueString",
	    "tags": ["PluginSecurity"],
	    "Class": "StatsItem",
	    "type": "Function"
	  },
	  {
	    "Superclass": "StatsItem",
	    "type": "Class",
	    "Name": "RunningAverageItemDouble",
	    "tags": []
	  },
	  {
	    "Superclass": "StatsItem",
	    "type": "Class",
	    "Name": "RunningAverageItemInt",
	    "tags": []
	  },
	  {
	    "Superclass": "StatsItem",
	    "type": "Class",
	    "Name": "RunningAverageTimeIntervalItem",
	    "tags": []
	  },
	  {
	    "Superclass": "StatsItem",
	    "type": "Class",
	    "Name": "TotalCountTimeIntervalItem",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TaskScheduler",
	    "tags": []
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "SchedulerDutyCycle",
	    "tags": ["readonly"],
	    "Class": "TaskScheduler"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "SchedulerRate",
	    "tags": ["readonly"],
	    "Class": "TaskScheduler"
	  },
	  {
	    "ValueType": "ThreadPoolConfig",
	    "type": "Property",
	    "Name": "ThreadPoolConfig",
	    "tags": [],
	    "Class": "TaskScheduler"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ThreadPoolSize",
	    "tags": ["readonly"],
	    "Class": "TaskScheduler"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Team", "tags": [] },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoAssignable",
	    "tags": [],
	    "Class": "Team"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoColorCharacters",
	    "tags": ["deprecated"],
	    "Class": "Team"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "Score",
	    "tags": ["deprecated"],
	    "Class": "Team"
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "TeamColor",
	    "tags": [],
	    "Class": "Team"
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetPlayers",
	    "tags": [],
	    "Class": "Team",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerAdded",
	    "tags": [],
	    "Class": "Team",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "player", "Type": "Instance" }],
	    "Name": "PlayerRemoved",
	    "tags": [],
	    "Class": "Team",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Teams",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "Objects",
	    "Arguments": [],
	    "Name": "GetTeams",
	    "tags": [],
	    "Class": "Teams",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RebalanceTeams",
	    "tags": ["deprecated"],
	    "Class": "Teams",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TeleportService",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CustomizedTeleportUI",
	    "tags": ["deprecated"],
	    "Class": "TeleportService"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetArrivingTeleportGui",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [],
	    "Name": "GetLocalPlayerTeleportData",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Variant",
	    "Arguments": [{ "Type": "string", "Name": "setting", "Default": null }],
	    "Name": "GetTeleportSetting",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "gui", "Default": null }],
	    "Name": "SetTeleportGui",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "setting", "Default": null },
	      { "Type": "Variant", "Name": "value", "Default": null }
	    ],
	    "Name": "SetTeleportSetting",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "placeId", "Default": null },
	      { "Type": "Instance", "Name": "player", "Default": "nil" },
	      { "Type": "Variant", "Name": "teleportData", "Default": null },
	      { "Type": "Instance", "Name": "customLoadingScreen", "Default": "nil" }
	    ],
	    "Name": "Teleport",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "TeleportCancel",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "placeId", "Default": null },
	      { "Type": "string", "Name": "instanceId", "Default": null },
	      { "Type": "Instance", "Name": "player", "Default": "nil" },
	      { "Type": "string", "Name": "spawnName", "Default": "" },
	      { "Type": "Variant", "Name": "teleportData", "Default": null },
	      { "Type": "Instance", "Name": "customLoadingScreen", "Default": "nil" }
	    ],
	    "Name": "TeleportToPlaceInstance",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "placeId", "Default": null },
	      { "Type": "string", "Name": "reservedServerAccessCode", "Default": null },
	      { "Type": "Objects", "Name": "players", "Default": null },
	      { "Type": "string", "Name": "spawnName", "Default": "" },
	      { "Type": "Variant", "Name": "teleportData", "Default": null },
	      { "Type": "Instance", "Name": "customLoadingScreen", "Default": "nil" }
	    ],
	    "Name": "TeleportToPrivateServer",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "placeId", "Default": null },
	      { "Type": "string", "Name": "spawnName", "Default": null },
	      { "Type": "Instance", "Name": "player", "Default": "nil" },
	      { "Type": "Variant", "Name": "teleportData", "Default": null },
	      { "Type": "Instance", "Name": "customLoadingScreen", "Default": "nil" }
	    ],
	    "Name": "TeleportToSpawnByName",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "int64", "Name": "userId", "Default": null }],
	    "Name": "GetPlayerPlaceInstanceAsync",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [{ "Type": "int64", "Name": "placeId", "Default": null }],
	    "Name": "ReserveServer",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "int64", "Name": "placeId", "Default": null },
	      { "Type": "Objects", "Name": "players", "Default": null },
	      { "Type": "Variant", "Name": "teleportData", "Default": null },
	      { "Type": "Instance", "Name": "customLoadingScreen", "Default": "nil" }
	    ],
	    "Name": "TeleportPartyAsync",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "loadingGui", "Type": "Instance" },
	      { "Name": "dataTable", "Type": "Variant" }
	    ],
	    "Name": "LocalPlayerArrivedFromTeleport",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "player", "Type": "Instance" },
	      { "Name": "teleportResult", "Type": "TeleportResult" },
	      { "Name": "errorMessage", "Type": "string" }
	    ],
	    "Name": "TeleportInitFailed",
	    "tags": [],
	    "Class": "TeleportService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TerrainRegion",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsSmooth",
	    "tags": ["deprecated", "readonly"],
	    "Class": "TerrainRegion"
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "SizeInCells",
	    "tags": ["readonly"],
	    "Class": "TerrainRegion"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ConvertToSmooth",
	    "tags": ["PluginSecurity", "deprecated"],
	    "Class": "TerrainRegion",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TestService",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AutoRuns",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Description",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "ErrorCount",
	    "tags": ["readonly"],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ExecuteWithStudioRun",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Is30FpsThrottleEnabled",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsPhysicsEnvironmentalThrottled",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsSleepAllowed",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "NumberOfPlayers",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "SimulateSecondsLag",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "TestCount",
	    "tags": ["readonly"],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "Timeout",
	    "tags": [],
	    "Class": "TestService"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "WarnCount",
	    "tags": ["readonly"],
	    "Class": "TestService"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "condition", "Default": null },
	      { "Type": "string", "Name": "description", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Check",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "text", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Checkpoint",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Done",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "description", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Error",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "description", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Fail",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "text", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Message",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "condition", "Default": null },
	      { "Type": "string", "Name": "description", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Require",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "condition", "Default": null },
	      { "Type": "string", "Name": "description", "Default": null },
	      { "Type": "Instance", "Name": "source", "Default": "nil" },
	      { "Type": "int", "Name": "line", "Default": "0" }
	    ],
	    "Name": "Warn",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Run",
	    "tags": ["PluginSecurity"],
	    "Class": "TestService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [
	      { "Name": "condition", "Type": "bool" },
	      { "Name": "text", "Type": "string" },
	      { "Name": "script", "Type": "Instance" },
	      { "Name": "line", "Type": "int" }
	    ],
	    "Name": "ServerCollectConditionalResult",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "text", "Type": "string" },
	      { "Name": "script", "Type": "Instance" },
	      { "Name": "line", "Type": "int" }
	    ],
	    "Name": "ServerCollectResult",
	    "tags": [],
	    "Class": "TestService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TextFilterResult",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int64", "Name": "toUserId", "Default": null }],
	    "Name": "GetChatForUserAsync",
	    "tags": [],
	    "Class": "TextFilterResult",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetNonChatStringForBroadcastAsync",
	    "tags": [],
	    "Class": "TextFilterResult",
	    "type": "YieldFunction"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [{ "Type": "int64", "Name": "toUserId", "Default": null }],
	    "Name": "GetNonChatStringForUserAsync",
	    "tags": [],
	    "Class": "TextFilterResult",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TextService",
	    "tags": []
	  },
	  {
	    "ReturnType": "Vector2",
	    "Arguments": [
	      { "Type": "string", "Name": "string", "Default": null },
	      { "Type": "int", "Name": "fontSize", "Default": null },
	      { "Type": "Font", "Name": "font", "Default": null },
	      { "Type": "Vector2", "Name": "frameSize", "Default": null }
	    ],
	    "Name": "GetTextSize",
	    "tags": [],
	    "Class": "TextService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "stringToFilter", "Default": null },
	      { "Type": "int64", "Name": "fromUserId", "Default": null },
	      {
	        "Type": "TextFilterContext",
	        "Name": "textContext",
	        "Default": "PrivateChat"
	      }
	    ],
	    "Name": "FilterStringAsync",
	    "tags": [],
	    "Class": "TextService",
	    "type": "YieldFunction"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ThirdPartyUserService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetUserDisplayName",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "GetUserPlatformId",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "HaveActiveUser",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ReturnToEngagement",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ShowAccountPicker",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadId", "Default": null }
	    ],
	    "Name": "RegisterActiveUser",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "YieldFunction"
	  },
	  {
	    "Arguments": [],
	    "Name": "ActiveGamepadAdded",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "ActiveGamepadRemoved",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "signOutStatus", "Type": "int" }],
	    "Name": "ActiveUserSignedOut",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "ThirdPartyUserService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TimerService",
	    "tags": ["notCreatable"]
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Toolbar", "tags": [] },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "string", "Name": "text", "Default": null },
	      { "Type": "string", "Name": "tooltip", "Default": null },
	      { "Type": "string", "Name": "iconname", "Default": null }
	    ],
	    "Name": "CreateButton",
	    "tags": ["PluginSecurity"],
	    "Class": "Toolbar",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TouchInputService",
	    "tags": []
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TouchTransmitter",
	    "tags": ["notCreatable", "notbrowsable"]
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "Trail", "tags": [] },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment0",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "Class:Attachment",
	    "type": "Property",
	    "Name": "Attachment1",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "ColorSequence",
	    "type": "Property",
	    "Name": "Color",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "FaceCamera",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Lifetime",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightEmission",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "LightInfluence",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MaxLength",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MinLength",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "Content",
	    "type": "Property",
	    "Name": "Texture",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TextureLength",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "TextureMode",
	    "type": "Property",
	    "Name": "TextureMode",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "NumberSequence",
	    "type": "Property",
	    "Name": "Transparency",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ValueType": "NumberSequence",
	    "type": "Property",
	    "Name": "WidthScale",
	    "tags": [],
	    "Class": "Trail"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Clear",
	    "tags": [],
	    "Class": "Trail",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Translator",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "LocaleId",
	    "tags": ["readonly"],
	    "Class": "Translator"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "string", "Name": "key", "Default": null },
	      { "Type": "Variant", "Name": "args", "Default": null }
	    ],
	    "Name": "FormatByKey",
	    "tags": [],
	    "Class": "Translator",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "Instance", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "text", "Default": null }
	    ],
	    "Name": "RobloxOnlyTranslate",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "Translator",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [
	      { "Type": "Instance", "Name": "context", "Default": null },
	      { "Type": "string", "Name": "text", "Default": null }
	    ],
	    "Name": "Translate",
	    "tags": [],
	    "Class": "Translator",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TweenBase",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "PlaybackState",
	    "type": "Property",
	    "Name": "PlaybackState",
	    "tags": ["readonly"],
	    "Class": "TweenBase"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Cancel",
	    "tags": [],
	    "Class": "TweenBase",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Pause",
	    "tags": [],
	    "Class": "TweenBase",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Play",
	    "tags": [],
	    "Class": "TweenBase",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "playbackState", "Type": "PlaybackState" }],
	    "Name": "Completed",
	    "tags": [],
	    "Class": "TweenBase",
	    "type": "Event"
	  },
	  { "Superclass": "TweenBase", "type": "Class", "Name": "Tween", "tags": [] },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Instance",
	    "tags": ["readonly"],
	    "Class": "Tween"
	  },
	  {
	    "ValueType": "TweenInfo",
	    "type": "Property",
	    "Name": "TweenInfo",
	    "tags": ["readonly"],
	    "Class": "Tween"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "TweenService",
	    "tags": []
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [
	      { "Type": "Instance", "Name": "instance", "Default": null },
	      { "Type": "TweenInfo", "Name": "tweenInfo", "Default": null },
	      { "Type": "Dictionary", "Name": "propertyTable", "Default": null }
	    ],
	    "Name": "Create",
	    "tags": [],
	    "Class": "TweenService",
	    "type": "Function"
	  },
	  { "Superclass": "Instance", "type": "Class", "Name": "UIBase", "tags": [] },
	  {
	    "Superclass": "UIBase",
	    "type": "Class",
	    "Name": "UIComponent",
	    "tags": []
	  },
	  {
	    "Superclass": "UIComponent",
	    "type": "Class",
	    "Name": "UIConstraint",
	    "tags": []
	  },
	  {
	    "Superclass": "UIConstraint",
	    "type": "Class",
	    "Name": "UIAspectRatioConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "AspectRatio",
	    "tags": [],
	    "Class": "UIAspectRatioConstraint"
	  },
	  {
	    "ValueType": "AspectType",
	    "type": "Property",
	    "Name": "AspectType",
	    "tags": [],
	    "Class": "UIAspectRatioConstraint"
	  },
	  {
	    "ValueType": "DominantAxis",
	    "type": "Property",
	    "Name": "DominantAxis",
	    "tags": [],
	    "Class": "UIAspectRatioConstraint"
	  },
	  {
	    "Superclass": "UIConstraint",
	    "type": "Class",
	    "Name": "UISizeConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "MaxSize",
	    "tags": [],
	    "Class": "UISizeConstraint"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "MinSize",
	    "tags": [],
	    "Class": "UISizeConstraint"
	  },
	  {
	    "Superclass": "UIConstraint",
	    "type": "Class",
	    "Name": "UITextSizeConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MaxTextSize",
	    "tags": [],
	    "Class": "UITextSizeConstraint"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MinTextSize",
	    "tags": [],
	    "Class": "UITextSizeConstraint"
	  },
	  {
	    "Superclass": "UIComponent",
	    "type": "Class",
	    "Name": "UILayout",
	    "tags": []
	  },
	  {
	    "Superclass": "UILayout",
	    "type": "Class",
	    "Name": "UIGridStyleLayout",
	    "tags": ["notbrowsable"]
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "AbsoluteContentSize",
	    "tags": ["readonly"],
	    "Class": "UIGridStyleLayout"
	  },
	  {
	    "ValueType": "FillDirection",
	    "type": "Property",
	    "Name": "FillDirection",
	    "tags": [],
	    "Class": "UIGridStyleLayout"
	  },
	  {
	    "ValueType": "HorizontalAlignment",
	    "type": "Property",
	    "Name": "HorizontalAlignment",
	    "tags": [],
	    "Class": "UIGridStyleLayout"
	  },
	  {
	    "ValueType": "SortOrder",
	    "type": "Property",
	    "Name": "SortOrder",
	    "tags": [],
	    "Class": "UIGridStyleLayout"
	  },
	  {
	    "ValueType": "VerticalAlignment",
	    "type": "Property",
	    "Name": "VerticalAlignment",
	    "tags": [],
	    "Class": "UIGridStyleLayout"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "ApplyLayout",
	    "tags": [],
	    "Class": "UIGridStyleLayout",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Function", "Name": "function", "Default": "nil" }],
	    "Name": "SetCustomSortFunction",
	    "tags": ["deprecated"],
	    "Class": "UIGridStyleLayout",
	    "type": "Function"
	  },
	  {
	    "Superclass": "UIGridStyleLayout",
	    "type": "Class",
	    "Name": "UIGridLayout",
	    "tags": []
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "CellPadding",
	    "tags": [],
	    "Class": "UIGridLayout"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "CellSize",
	    "tags": [],
	    "Class": "UIGridLayout"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "FillDirectionMaxCells",
	    "tags": [],
	    "Class": "UIGridLayout"
	  },
	  {
	    "ValueType": "StartCorner",
	    "type": "Property",
	    "Name": "StartCorner",
	    "tags": [],
	    "Class": "UIGridLayout"
	  },
	  {
	    "Superclass": "UIGridStyleLayout",
	    "type": "Class",
	    "Name": "UIListLayout",
	    "tags": []
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "Padding",
	    "tags": [],
	    "Class": "UIListLayout"
	  },
	  {
	    "Superclass": "UIGridStyleLayout",
	    "type": "Class",
	    "Name": "UIPageLayout",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Animated",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Circular",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "Class:GuiObject",
	    "type": "Property",
	    "Name": "CurrentPage",
	    "tags": ["readonly"],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "EasingDirection",
	    "type": "Property",
	    "Name": "EasingDirection",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "EasingStyle",
	    "type": "Property",
	    "Name": "EasingStyle",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GamepadInputEnabled",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "Padding",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ScrollWheelInputEnabled",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TouchInputEnabled",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "TweenTime",
	    "tags": [],
	    "Class": "UIPageLayout"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "Instance", "Name": "page", "Default": null }],
	    "Name": "JumpTo",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "index", "Default": null }],
	    "Name": "JumpToIndex",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Next",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Previous",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "page", "Type": "Instance" }],
	    "Name": "PageEnter",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "page", "Type": "Instance" }],
	    "Name": "PageLeave",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "currentPage", "Type": "Instance" }],
	    "Name": "Stopped",
	    "tags": [],
	    "Class": "UIPageLayout",
	    "type": "Event"
	  },
	  {
	    "Superclass": "UIGridStyleLayout",
	    "type": "Class",
	    "Name": "UITableLayout",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "FillEmptySpaceColumns",
	    "tags": [],
	    "Class": "UITableLayout"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "FillEmptySpaceRows",
	    "tags": [],
	    "Class": "UITableLayout"
	  },
	  {
	    "ValueType": "TableMajorAxis",
	    "type": "Property",
	    "Name": "MajorAxis",
	    "tags": [],
	    "Class": "UITableLayout"
	  },
	  {
	    "ValueType": "UDim2",
	    "type": "Property",
	    "Name": "Padding",
	    "tags": [],
	    "Class": "UITableLayout"
	  },
	  {
	    "Superclass": "UIComponent",
	    "type": "Class",
	    "Name": "UIPadding",
	    "tags": []
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "PaddingBottom",
	    "tags": [],
	    "Class": "UIPadding"
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "PaddingLeft",
	    "tags": [],
	    "Class": "UIPadding"
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "PaddingRight",
	    "tags": [],
	    "Class": "UIPadding"
	  },
	  {
	    "ValueType": "UDim",
	    "type": "Property",
	    "Name": "PaddingTop",
	    "tags": [],
	    "Class": "UIPadding"
	  },
	  {
	    "Superclass": "UIComponent",
	    "type": "Class",
	    "Name": "UIScale",
	    "tags": []
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "Scale",
	    "tags": [],
	    "Class": "UIScale"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "UserGameSettings",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AllTutorialsDisabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "CustomCameraMode",
	    "type": "Property",
	    "Name": "CameraMode",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "CameraYInverted",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ChatVisible",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "ComputerCameraMovementMode",
	    "type": "Property",
	    "Name": "ComputerCameraMovementMode",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "ComputerMovementMode",
	    "type": "Property",
	    "Name": "ComputerMovementMode",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "ControlMode",
	    "type": "Property",
	    "Name": "ControlMode",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Fullscreen",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "GamepadCameraSensitivity",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "HasEverUsedVR",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsUsingCameraYInverted",
	    "tags": ["RobloxScriptSecurity", "hidden", "readonly"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "IsUsingGamepadCameraSensitivity",
	    "tags": ["RobloxScriptSecurity", "hidden", "readonly"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MasterVolume",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "MicroProfilerWebServerEnabled",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "MicroProfilerWebServerIP",
	    "tags": ["RobloxScriptSecurity", "hidden", "readonly"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "MicroProfilerWebServerPort",
	    "tags": ["RobloxScriptSecurity", "hidden", "readonly"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MouseSensitivity",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "MouseSensitivityFirstPerson",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "MouseSensitivityThirdPerson",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "OnScreenProfilerEnabled",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "OnboardingsCompleted",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "PerformanceStatsVisible",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "RotationType",
	    "type": "Property",
	    "Name": "RotationType",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "SavedQualitySetting",
	    "type": "Property",
	    "Name": "SavedQualityLevel",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "TouchCameraMovementMode",
	    "type": "Property",
	    "Name": "TouchCameraMovementMode",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "TouchMovementMode",
	    "type": "Property",
	    "Name": "TouchMovementMode",
	    "tags": [],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsedCoreGuiIsVisibleToggle",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsedCustomGuiIsVisibleToggle",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "UsedHideHudShortcut",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "VREnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ValueType": "int",
	    "type": "Property",
	    "Name": "VRRotationIntensity",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings"
	  },
	  {
	    "ReturnType": "int",
	    "Arguments": [],
	    "Name": "GetCameraYInvertValue",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "string", "Name": "onboardingId", "Default": null }
	    ],
	    "Name": "GetOnboardingCompleted",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "string", "Name": "tutorialId", "Default": null }],
	    "Name": "GetTutorialState",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "InFullScreen",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [],
	    "Name": "InStudioMode",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "onboardingId", "Default": null }
	    ],
	    "Name": "ResetOnboardingCompleted",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SetCameraYInvertVisible",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "SetGamepadCameraSensitivityVisible",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "onboardingId", "Default": null }
	    ],
	    "Name": "SetOnboardingCompleted",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "tutorialId", "Default": null },
	      { "Type": "bool", "Name": "value", "Default": null }
	    ],
	    "Name": "SetTutorialState",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "isFullscreen", "Type": "bool" }],
	    "Name": "FullscreenChanged",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "isPerformanceStatsVisible", "Type": "bool" }],
	    "Name": "PerformanceStatsVisibleChanged",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserGameSettings",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "isStudioMode", "Type": "bool" }],
	    "Name": "StudioModeChanged",
	    "tags": [],
	    "Class": "UserGameSettings",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "UserInputService",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "AccelerometerEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "BottomBarSize",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GamepadEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GazeSelectionEnabled",
	    "tags": ["RobloxScriptSecurity", "hidden"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "GyroscopeEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "KeyboardEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "LegacyInputEventsEnabled",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "ModalEnabled",
	    "tags": [],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "MouseBehavior",
	    "type": "Property",
	    "Name": "MouseBehavior",
	    "tags": [],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "float",
	    "type": "Property",
	    "Name": "MouseDeltaSensitivity",
	    "tags": [],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "MouseEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "MouseIconEnabled",
	    "tags": [],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "NavBarSize",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "OnScreenKeyboardAnimationDuration",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "OnScreenKeyboardPosition",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "OnScreenKeyboardSize",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "OnScreenKeyboardVisible",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "OverrideMouseIconBehavior",
	    "type": "Property",
	    "Name": "OverrideMouseIconBehavior",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "Vector2",
	    "type": "Property",
	    "Name": "StatusBarSize",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "TouchEnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "UserHeadCFrame",
	    "tags": ["deprecated", "readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "VREnabled",
	    "tags": ["readonly"],
	    "Class": "UserInputService"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadNum", "Default": null },
	      { "Type": "KeyCode", "Name": "gamepadKeyCode", "Default": null }
	    ],
	    "Name": "GamepadSupports",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetConnectedGamepads",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetDeviceAcceleration",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetDeviceGravity",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Tuple",
	    "Arguments": [],
	    "Name": "GetDeviceRotation",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Instance",
	    "Arguments": [],
	    "Name": "GetFocusedTextBox",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadNum", "Default": null }
	    ],
	    "Name": "GetGamepadConnected",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadNum", "Default": null }
	    ],
	    "Name": "GetGamepadState",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetKeysPressed",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "UserInputType",
	    "Arguments": [],
	    "Name": "GetLastInputType",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetMouseButtonsPressed",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector2",
	    "Arguments": [],
	    "Name": "GetMouseDelta",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Vector2",
	    "Arguments": [],
	    "Name": "GetMouseLocation",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [],
	    "Name": "GetNavigationGamepads",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Platform",
	    "Arguments": [],
	    "Name": "GetPlatform",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "Array",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadNum", "Default": null }
	    ],
	    "Name": "GetSupportedGamepadKeyCodes",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [{ "Type": "UserCFrame", "Name": "type", "Default": null }],
	    "Name": "GetUserCFrame",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadNum", "Default": null },
	      { "Type": "KeyCode", "Name": "gamepadKeyCode", "Default": null }
	    ],
	    "Name": "IsGamepadButtonDown",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "KeyCode", "Name": "keyCode", "Default": null }],
	    "Name": "IsKeyDown",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "mouseButton", "Default": null }
	    ],
	    "Name": "IsMouseButtonPressed",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadEnum", "Default": null }
	    ],
	    "Name": "IsNavigationGamepad",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RecenterUserHeadCFrame",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "statusBarSize", "Default": null },
	      { "Type": "Vector2", "Name": "navBarSize", "Default": null },
	      { "Type": "Vector2", "Name": "bottomBarSize", "Default": null }
	    ],
	    "Name": "SendAppUISizes",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "UserInputType", "Name": "gamepadEnum", "Default": null },
	      { "Type": "bool", "Name": "enabled", "Default": null }
	    ],
	    "Name": "SetNavigationGamepad",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "acceleration", "Type": "Instance" }],
	    "Name": "DeviceAccelerationChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "gravity", "Type": "Instance" }],
	    "Name": "DeviceGravityChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "rotation", "Type": "Instance" },
	      { "Name": "cframe", "Type": "CoordinateFrame" }
	    ],
	    "Name": "DeviceRotationChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "gamepadNum", "Type": "UserInputType" }],
	    "Name": "GamepadConnected",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "gamepadNum", "Type": "UserInputType" }],
	    "Name": "GamepadDisconnected",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "input", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "InputBegan",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "input", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "InputChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "input", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "InputEnded",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "JumpRequest",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "lastInputType", "Type": "UserInputType" }],
	    "Name": "LastInputTypeChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "position", "Type": "Vector2" }],
	    "Name": "StatusBarTapped",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "textboxReleased", "Type": "Instance" }],
	    "Name": "TextBoxFocusReleased",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "textboxFocused", "Type": "Instance" }],
	    "Name": "TextBoxFocused",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touch", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchEnded",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "state", "Type": "UserInputState" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchLongPress",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touch", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchMoved",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "totalTranslation", "Type": "Vector2" },
	      { "Name": "velocity", "Type": "Vector2" },
	      { "Name": "state", "Type": "UserInputState" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchPan",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "scale", "Type": "float" },
	      { "Name": "velocity", "Type": "float" },
	      { "Name": "state", "Type": "UserInputState" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchPinch",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "rotation", "Type": "float" },
	      { "Name": "velocity", "Type": "float" },
	      { "Name": "state", "Type": "UserInputState" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchRotate",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touch", "Type": "Instance" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchStarted",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "swipeDirection", "Type": "SwipeDirection" },
	      { "Name": "numberOfTouches", "Type": "int" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchSwipe",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "touchPositions", "Type": "Array" },
	      { "Name": "gameProcessedEvent", "Type": "bool" }
	    ],
	    "Name": "TouchTap",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "position", "Type": "Vector2" },
	      { "Name": "processedByUI", "Type": "bool" }
	    ],
	    "Name": "TouchTapInWorld",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "type", "Type": "UserCFrame" },
	      { "Name": "value", "Type": "CoordinateFrame" }
	    ],
	    "Name": "UserCFrameChanged",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WindowFocusReleased",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [],
	    "Name": "WindowFocused",
	    "tags": [],
	    "Class": "UserInputService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "VRService",
	    "tags": []
	  },
	  {
	    "ValueType": "UserCFrame",
	    "type": "Property",
	    "Name": "GuiInputUserCFrame",
	    "tags": [],
	    "Class": "VRService"
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "VRDeviceName",
	    "tags": ["RobloxScriptSecurity", "readonly"],
	    "Class": "VRService"
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "VREnabled",
	    "tags": ["readonly"],
	    "Class": "VRService"
	  },
	  {
	    "ReturnType": "VRTouchpadMode",
	    "Arguments": [{ "Type": "VRTouchpad", "Name": "pad", "Default": null }],
	    "Name": "GetTouchpadMode",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "CoordinateFrame",
	    "Arguments": [{ "Type": "UserCFrame", "Name": "type", "Default": null }],
	    "Name": "GetUserCFrame",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "bool",
	    "Arguments": [{ "Type": "UserCFrame", "Name": "type", "Default": null }],
	    "Name": "GetUserCFrameEnabled",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "RecenterUserHeadCFrame",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "CoordinateFrame", "Name": "cframe", "Default": null },
	      { "Type": "UserCFrame", "Name": "inputUserCFrame", "Default": null }
	    ],
	    "Name": "RequestNavigation",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "VRTouchpad", "Name": "pad", "Default": null },
	      { "Type": "VRTouchpadMode", "Name": "mode", "Default": null }
	    ],
	    "Name": "SetTouchpadMode",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Function"
	  },
	  {
	    "Arguments": [
	      { "Name": "cframe", "Type": "CoordinateFrame" },
	      { "Name": "inputUserCFrame", "Type": "UserCFrame" }
	    ],
	    "Name": "NavigationRequested",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "pad", "Type": "VRTouchpad" },
	      { "Name": "mode", "Type": "VRTouchpadMode" }
	    ],
	    "Name": "TouchpadModeChanged",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "type", "Type": "UserCFrame" },
	      { "Name": "value", "Type": "CoordinateFrame" }
	    ],
	    "Name": "UserCFrameChanged",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Event"
	  },
	  {
	    "Arguments": [
	      { "Name": "type", "Type": "UserCFrame" },
	      { "Name": "enabled", "Type": "bool" }
	    ],
	    "Name": "UserCFrameEnabled",
	    "tags": [],
	    "Class": "VRService",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "ValueBase",
	    "tags": []
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "BinaryStringValue",
	    "tags": []
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "BinaryString" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "BinaryStringValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "BoolValue",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "BoolValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "bool" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "BoolValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "bool" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "BoolValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "BrickColorValue",
	    "tags": []
	  },
	  {
	    "ValueType": "BrickColor",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "BrickColorValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "BrickColor" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "BrickColorValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "BrickColor" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "BrickColorValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "CFrameValue",
	    "tags": []
	  },
	  {
	    "ValueType": "CoordinateFrame",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "CFrameValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "CoordinateFrame" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "CFrameValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "CoordinateFrame" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "CFrameValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "Color3Value",
	    "tags": []
	  },
	  {
	    "ValueType": "Color3",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "Color3Value"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Color3" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "Color3Value",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Color3" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "Color3Value",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "DoubleConstrainedValue",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "ConstrainedValue",
	    "tags": ["hidden"],
	    "Class": "DoubleConstrainedValue"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "MaxValue",
	    "tags": [],
	    "Class": "DoubleConstrainedValue"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "MinValue",
	    "tags": [],
	    "Class": "DoubleConstrainedValue"
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "DoubleConstrainedValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "double" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "DoubleConstrainedValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "double" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "DoubleConstrainedValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "IntConstrainedValue",
	    "tags": ["deprecated"]
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "ConstrainedValue",
	    "tags": ["hidden"],
	    "Class": "IntConstrainedValue"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "MaxValue",
	    "tags": [],
	    "Class": "IntConstrainedValue"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "MinValue",
	    "tags": [],
	    "Class": "IntConstrainedValue"
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "IntConstrainedValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "int64" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "IntConstrainedValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "int64" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "IntConstrainedValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "IntValue",
	    "tags": []
	  },
	  {
	    "ValueType": "int64",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "IntValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "int64" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "IntValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "int64" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "IntValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "NumberValue",
	    "tags": []
	  },
	  {
	    "ValueType": "double",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "NumberValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "double" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "NumberValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "double" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "NumberValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "ObjectValue",
	    "tags": []
	  },
	  {
	    "ValueType": "Class:Instance",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "ObjectValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Instance" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "ObjectValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Instance" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "ObjectValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "RayValue",
	    "tags": []
	  },
	  {
	    "ValueType": "Ray",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "RayValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Ray" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "RayValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Ray" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "RayValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "StringValue",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "StringValue"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "string" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "StringValue",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "string" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "StringValue",
	    "type": "Event"
	  },
	  {
	    "Superclass": "ValueBase",
	    "type": "Class",
	    "Name": "Vector3Value",
	    "tags": []
	  },
	  {
	    "ValueType": "Vector3",
	    "type": "Property",
	    "Name": "Value",
	    "tags": [],
	    "Class": "Vector3Value"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Vector3" }],
	    "Name": "Changed",
	    "tags": [],
	    "Class": "Vector3Value",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "value", "Type": "Vector3" }],
	    "Name": "changed",
	    "tags": ["deprecated"],
	    "Class": "Vector3Value",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "VirtualInputManager",
	    "tags": []
	  },
	  {
	    "ValueType": "string",
	    "type": "Property",
	    "Name": "AdditionalLuaState",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "Dump",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "objectId", "Default": null },
	      { "Type": "KeyCode", "Name": "keyCode", "Default": null },
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "float", "Name": "z", "Default": null }
	    ],
	    "Name": "HandleGamepadAxisInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "deviceId", "Default": null },
	      { "Type": "KeyCode", "Name": "keyCode", "Default": null },
	      { "Type": "int", "Name": "buttonState", "Default": null }
	    ],
	    "Name": "HandleGamepadButtonInput",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "deviceId", "Default": null }],
	    "Name": "HandleGamepadConnect",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "int", "Name": "deviceId", "Default": null }],
	    "Name": "HandleGamepadDisconnect",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "float", "Name": "z", "Default": null }
	    ],
	    "Name": "SendAccelerometerEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "float", "Name": "z", "Default": null }
	    ],
	    "Name": "SendGravityEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "quatX", "Default": null },
	      { "Type": "float", "Name": "quatY", "Default": null },
	      { "Type": "float", "Name": "quatZ", "Default": null },
	      { "Type": "float", "Name": "quatW", "Default": null }
	    ],
	    "Name": "SendGyroscopeEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "bool", "Name": "isPressed", "Default": null },
	      { "Type": "KeyCode", "Name": "keyCode", "Default": null },
	      { "Type": "bool", "Name": "isRepeatedKey", "Default": null },
	      { "Type": "Instance", "Name": "pluginGui", "Default": null }
	    ],
	    "Name": "SendKeyEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int", "Name": "x", "Default": null },
	      { "Type": "int", "Name": "y", "Default": null },
	      { "Type": "int", "Name": "mouseButton", "Default": null },
	      { "Type": "bool", "Name": "isDown", "Default": null },
	      { "Type": "Instance", "Name": "pluginGui", "Default": null }
	    ],
	    "Name": "SendMouseButtonEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "Instance", "Name": "pluginGui", "Default": null }
	    ],
	    "Name": "SendMouseMoveEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null },
	      { "Type": "bool", "Name": "isForwardScroll", "Default": null },
	      { "Type": "Instance", "Name": "pluginGui", "Default": null }
	    ],
	    "Name": "SendMouseWheelEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "str", "Default": null },
	      { "Type": "Instance", "Name": "pluginGui", "Default": null }
	    ],
	    "Name": "SendTextInputCharacterEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "int64", "Name": "touchId", "Default": null },
	      { "Type": "int", "Name": "state", "Default": null },
	      { "Type": "float", "Name": "x", "Default": null },
	      { "Type": "float", "Name": "y", "Default": null }
	    ],
	    "Name": "SendTouchEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "fileName", "Default": null }],
	    "Name": "StartPlaying",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StartRecording",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StopRecording",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "string", "Name": "namespace", "Default": null },
	      { "Type": "string", "Name": "detail", "Default": null },
	      { "Type": "string", "Name": "detailType", "Default": null }
	    ],
	    "Name": "sendRobloxEvent",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Function"
	  },
	  {
	    "Arguments": [{ "Name": "additionalLuaState", "Type": "string" }],
	    "Name": "PlaybackCompleted",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Event"
	  },
	  {
	    "Arguments": [{ "Name": "result", "Type": "string" }],
	    "Name": "RecordingCompleted",
	    "tags": ["RobloxScriptSecurity"],
	    "Class": "VirtualInputManager",
	    "type": "Event"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "VirtualUser",
	    "tags": ["notCreatable"]
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "Button1Down",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "Button1Up",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "Button2Down",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "Button2Up",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "CaptureController",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "ClickButton1",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "ClickButton2",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [
	      { "Type": "Vector2", "Name": "position", "Default": null },
	      { "Type": "CoordinateFrame", "Name": "camera", "Default": "Identity" }
	    ],
	    "Name": "MoveMouse",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "SetKeyDown",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "SetKeyUp",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [],
	    "Name": "StartRecording",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "string",
	    "Arguments": [],
	    "Name": "StopRecording",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "ReturnType": "void",
	    "Arguments": [{ "Type": "string", "Name": "key", "Default": null }],
	    "Name": "TypeKey",
	    "tags": ["LocalUserSecurity"],
	    "Class": "VirtualUser",
	    "type": "Function"
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "Visit",
	    "tags": ["notCreatable"]
	  },
	  {
	    "Superclass": "Instance",
	    "type": "Class",
	    "Name": "WeldConstraint",
	    "tags": []
	  },
	  {
	    "ValueType": "bool",
	    "type": "Property",
	    "Name": "Enabled",
	    "tags": [],
	    "Class": "WeldConstraint"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Part0",
	    "tags": [],
	    "Class": "WeldConstraint"
	  },
	  {
	    "ValueType": "Class:BasePart",
	    "type": "Property",
	    "Name": "Part1",
	    "tags": [],
	    "Class": "WeldConstraint"
	  },
	  { "type": "Enum", "Name": "ActionType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Nothing",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pause",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Lose",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Draw",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Win",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ActionType"
	  },
	  { "type": "Enum", "Name": "ActuatorRelativeTo", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Attachment0",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ActuatorRelativeTo"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Attachment1",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ActuatorRelativeTo"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ActuatorRelativeTo"
	  },
	  { "type": "Enum", "Name": "ActuatorType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ActuatorType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Motor",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ActuatorType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Servo",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ActuatorType"
	  },
	  { "type": "Enum", "Name": "AnimationPriority", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Idle",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AnimationPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Movement",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AnimationPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Action",
	    "tags": [],
	    "Value": 2,
	    "Enum": "AnimationPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Core",
	    "tags": [],
	    "Value": 1000,
	    "Enum": "AnimationPriority"
	  },
	  { "type": "Enum", "Name": "AppShellActionType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OpenApp",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TapChatTab",
	    "tags": [],
	    "Value": 2,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TapConversationEntry",
	    "tags": [],
	    "Value": 3,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TapAvatarTab",
	    "tags": [],
	    "Value": 4,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ReadConversation",
	    "tags": [],
	    "Value": 5,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TapGamePageTab",
	    "tags": [],
	    "Value": 6,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TapHomePageTab",
	    "tags": [],
	    "Value": 7,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GamePageLoaded",
	    "tags": [],
	    "Value": 8,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HomePageLoaded",
	    "tags": [],
	    "Value": 9,
	    "Enum": "AppShellActionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AvatarEditorPageLoaded",
	    "tags": [],
	    "Value": 10,
	    "Enum": "AppShellActionType"
	  },
	  { "type": "Enum", "Name": "AspectType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "FitWithinMaxSize",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AspectType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ScaleWithParentSize",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AspectType"
	  },
	  { "type": "Enum", "Name": "AssetType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Image",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeeShirt",
	    "tags": [],
	    "Value": 2,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Audio",
	    "tags": [],
	    "Value": 3,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Mesh",
	    "tags": [],
	    "Value": 4,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Lua",
	    "tags": [],
	    "Value": 5,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hat",
	    "tags": [],
	    "Value": 8,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Place",
	    "tags": [],
	    "Value": 9,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Model",
	    "tags": [],
	    "Value": 10,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Shirt",
	    "tags": [],
	    "Value": 11,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pants",
	    "tags": [],
	    "Value": 12,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Decal",
	    "tags": [],
	    "Value": 13,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 17,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Face",
	    "tags": [],
	    "Value": 18,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gear",
	    "tags": [],
	    "Value": 19,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Badge",
	    "tags": [],
	    "Value": 21,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Animation",
	    "tags": [],
	    "Value": 24,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Torso",
	    "tags": [],
	    "Value": 27,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightArm",
	    "tags": [],
	    "Value": 28,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftArm",
	    "tags": [],
	    "Value": 29,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftLeg",
	    "tags": [],
	    "Value": 30,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightLeg",
	    "tags": [],
	    "Value": 31,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Package",
	    "tags": [],
	    "Value": 32,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GamePass",
	    "tags": [],
	    "Value": 34,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Plugin",
	    "tags": [],
	    "Value": 38,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MeshPart",
	    "tags": [],
	    "Value": 40,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HairAccessory",
	    "tags": [],
	    "Value": 41,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FaceAccessory",
	    "tags": [],
	    "Value": 42,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NeckAccessory",
	    "tags": [],
	    "Value": 43,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ShoulderAccessory",
	    "tags": [],
	    "Value": 44,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FrontAccessory",
	    "tags": [],
	    "Value": 45,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BackAccessory",
	    "tags": [],
	    "Value": 46,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WaistAccessory",
	    "tags": [],
	    "Value": 47,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClimbAnimation",
	    "tags": [],
	    "Value": 48,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DeathAnimation",
	    "tags": [],
	    "Value": 49,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FallAnimation",
	    "tags": [],
	    "Value": 50,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "IdleAnimation",
	    "tags": [],
	    "Value": 51,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "JumpAnimation",
	    "tags": [],
	    "Value": 52,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RunAnimation",
	    "tags": [],
	    "Value": 53,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SwimAnimation",
	    "tags": [],
	    "Value": 54,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WalkAnimation",
	    "tags": [],
	    "Value": 55,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PoseAnimation",
	    "tags": [],
	    "Value": 56,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "EarAccessory",
	    "tags": [],
	    "Value": 57,
	    "Enum": "AssetType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "EyeAccessory",
	    "tags": [],
	    "Value": 58,
	    "Enum": "AssetType"
	  },
	  { "type": "Enum", "Name": "AutoJointsMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AutoJointsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Explicit",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AutoJointsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LegacyImplicit",
	    "tags": [],
	    "Value": 2,
	    "Enum": "AutoJointsMode"
	  },
	  { "type": "Enum", "Name": "AvatarContextMenuOption", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Friend",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AvatarContextMenuOption"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Chat",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AvatarContextMenuOption"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Emote",
	    "tags": [],
	    "Value": 2,
	    "Enum": "AvatarContextMenuOption"
	  },
	  { "type": "Enum", "Name": "AvatarJointPositionType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Fixed",
	    "tags": [],
	    "Value": 0,
	    "Enum": "AvatarJointPositionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ArtistIntent",
	    "tags": [],
	    "Value": 1,
	    "Enum": "AvatarJointPositionType"
	  },
	  { "type": "Enum", "Name": "Axis", "tags": [] },
	  { "type": "EnumItem", "Name": "X", "tags": [], "Value": 0, "Enum": "Axis" },
	  { "type": "EnumItem", "Name": "Y", "tags": [], "Value": 1, "Enum": "Axis" },
	  { "type": "EnumItem", "Name": "Z", "tags": [], "Value": 2, "Enum": "Axis" },
	  { "type": "Enum", "Name": "BinType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Script",
	    "tags": [],
	    "Value": 0,
	    "Enum": "BinType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GameTool",
	    "tags": [],
	    "Value": 1,
	    "Enum": "BinType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Grab",
	    "tags": [],
	    "Value": 2,
	    "Enum": "BinType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Clone",
	    "tags": [],
	    "Value": 3,
	    "Enum": "BinType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hammer",
	    "tags": [],
	    "Value": 4,
	    "Enum": "BinType"
	  },
	  { "type": "Enum", "Name": "BodyPart", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 0,
	    "Enum": "BodyPart"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Torso",
	    "tags": [],
	    "Value": 1,
	    "Enum": "BodyPart"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftArm",
	    "tags": [],
	    "Value": 2,
	    "Enum": "BodyPart"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightArm",
	    "tags": [],
	    "Value": 3,
	    "Enum": "BodyPart"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftLeg",
	    "tags": [],
	    "Value": 4,
	    "Enum": "BodyPart"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightLeg",
	    "tags": [],
	    "Value": 5,
	    "Enum": "BodyPart"
	  },
	  { "type": "Enum", "Name": "BodyPartR15", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 0,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "UpperTorso",
	    "tags": [],
	    "Value": 1,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LowerTorso",
	    "tags": [],
	    "Value": 2,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftFoot",
	    "tags": [],
	    "Value": 3,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftLowerLeg",
	    "tags": [],
	    "Value": 4,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftUpperLeg",
	    "tags": [],
	    "Value": 5,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightFoot",
	    "tags": [],
	    "Value": 6,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightLowerLeg",
	    "tags": [],
	    "Value": 7,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightUpperLeg",
	    "tags": [],
	    "Value": 8,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftHand",
	    "tags": [],
	    "Value": 9,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftLowerArm",
	    "tags": [],
	    "Value": 10,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftUpperArm",
	    "tags": [],
	    "Value": 11,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightHand",
	    "tags": [],
	    "Value": 12,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightLowerArm",
	    "tags": [],
	    "Value": 13,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightUpperArm",
	    "tags": [],
	    "Value": 14,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RootPart",
	    "tags": [],
	    "Value": 15,
	    "Enum": "BodyPartR15"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Unknown",
	    "tags": [],
	    "Value": 17,
	    "Enum": "BodyPartR15"
	  },
	  { "type": "Enum", "Name": "Button", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Jump",
	    "tags": [],
	    "Value": 32,
	    "Enum": "Button"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Dismount",
	    "tags": [],
	    "Value": 8,
	    "Enum": "Button"
	  },
	  { "type": "Enum", "Name": "ButtonStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Custom",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ButtonStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxButtonDefault",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ButtonStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxButton",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ButtonStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxRoundButton",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ButtonStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxRoundDefaultButton",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ButtonStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxRoundDropdownButton",
	    "tags": [],
	    "Value": 5,
	    "Enum": "ButtonStyle"
	  },
	  { "type": "Enum", "Name": "CameraMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CameraMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LockFirstPerson",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CameraMode"
	  },
	  { "type": "Enum", "Name": "CameraPanMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CameraPanMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "EdgeBump",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CameraPanMode"
	  },
	  { "type": "Enum", "Name": "CameraType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Fixed",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Watch",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Attach",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Track",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 4,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Custom",
	    "tags": [],
	    "Value": 5,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Scriptable",
	    "tags": [],
	    "Value": 6,
	    "Enum": "CameraType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Orbital",
	    "tags": [],
	    "Value": 7,
	    "Enum": "CameraType"
	  },
	  { "type": "Enum", "Name": "CellBlock", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Solid",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CellBlock"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "VerticalWedge",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CellBlock"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CornerWedge",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CellBlock"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InverseCornerWedge",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CellBlock"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HorizontalWedge",
	    "tags": [],
	    "Value": 4,
	    "Enum": "CellBlock"
	  },
	  { "type": "Enum", "Name": "CellMaterial", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Empty",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Grass",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sand",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Brick",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Granite",
	    "tags": [],
	    "Value": 4,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Asphalt",
	    "tags": [],
	    "Value": 5,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Iron",
	    "tags": [],
	    "Value": 6,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Aluminum",
	    "tags": [],
	    "Value": 7,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gold",
	    "tags": [],
	    "Value": 8,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WoodPlank",
	    "tags": [],
	    "Value": 9,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WoodLog",
	    "tags": [],
	    "Value": 10,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gravel",
	    "tags": [],
	    "Value": 11,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CinderBlock",
	    "tags": [],
	    "Value": 12,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MossyStone",
	    "tags": [],
	    "Value": 13,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cement",
	    "tags": [],
	    "Value": 14,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RedPlastic",
	    "tags": [],
	    "Value": 15,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BluePlastic",
	    "tags": [],
	    "Value": 16,
	    "Enum": "CellMaterial"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Water",
	    "tags": [],
	    "Value": 17,
	    "Enum": "CellMaterial"
	  },
	  { "type": "Enum", "Name": "CellOrientation", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NegZ",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CellOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "X",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CellOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Z",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CellOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NegX",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CellOrientation"
	  },
	  { "type": "Enum", "Name": "CenterDialogType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UnsolicitedDialog",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CenterDialogType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlayerInitiatedDialog",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CenterDialogType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ModalDialog",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CenterDialogType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QuitDialog",
	    "tags": [],
	    "Value": 4,
	    "Enum": "CenterDialogType"
	  },
	  { "type": "Enum", "Name": "ChatCallbackType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "OnCreatingChatWindow",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ChatCallbackType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OnClientSendingMessage",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ChatCallbackType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OnClientFormattingMessage",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ChatCallbackType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OnServerReceivingMessage",
	    "tags": [],
	    "Value": 17,
	    "Enum": "ChatCallbackType"
	  },
	  { "type": "Enum", "Name": "ChatColor", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Blue",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ChatColor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Green",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ChatColor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Red",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ChatColor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "White",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ChatColor"
	  },
	  { "type": "Enum", "Name": "ChatMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Menu",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ChatMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TextAndMenu",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ChatMode"
	  },
	  { "type": "Enum", "Name": "ChatPrivacyMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "AllUsers",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ChatPrivacyMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NoOne",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ChatPrivacyMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Friends",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ChatPrivacyMode"
	  },
	  { "type": "Enum", "Name": "ChatStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ChatStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bubble",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ChatStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClassicAndBubble",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ChatStyle"
	  },
	  { "type": "Enum", "Name": "CollisionFidelity", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CollisionFidelity"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hull",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CollisionFidelity"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Box",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CollisionFidelity"
	  },
	  { "type": "Enum", "Name": "ComputerCameraMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Orbital",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ComputerCameraMovementMode"
	  },
	  { "type": "Enum", "Name": "ComputerMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ComputerMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeyboardMouse",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ComputerMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClickToMove",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ComputerMovementMode"
	  },
	  { "type": "Enum", "Name": "ConnectionError", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "OK",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectErrors",
	    "tags": [],
	    "Value": 256,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectBadhash",
	    "tags": [],
	    "Value": 257,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectSecurityKeyMismatch",
	    "tags": [],
	    "Value": 258,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectNewSecurityKeyMismatch",
	    "tags": [],
	    "Value": 272,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectProtocolMismatch",
	    "tags": [],
	    "Value": 259,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectReceivePacketError",
	    "tags": [],
	    "Value": 260,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectReceivePacketStreamError",
	    "tags": [],
	    "Value": 261,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectSendPacketError",
	    "tags": [],
	    "Value": 262,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectIllegalTeleport",
	    "tags": [],
	    "Value": 263,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectDuplicatePlayer",
	    "tags": [],
	    "Value": 264,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectDuplicateTicket",
	    "tags": [],
	    "Value": 265,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectTimeout",
	    "tags": [],
	    "Value": 266,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectLuaKick",
	    "tags": [],
	    "Value": 267,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectOnRemoteSysStats",
	    "tags": [],
	    "Value": 268,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectHashTimeout",
	    "tags": [],
	    "Value": 269,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectCloudEditKick",
	    "tags": [],
	    "Value": 270,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectPlayerless",
	    "tags": [],
	    "Value": 271,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectEvicted",
	    "tags": [],
	    "Value": 273,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectDevMaintenance",
	    "tags": [],
	    "Value": 274,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectRobloxMaintenance",
	    "tags": [],
	    "Value": 275,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectRejoin",
	    "tags": [],
	    "Value": 276,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DisconnectConnectionLost",
	    "tags": [],
	    "Value": 277,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchErrors",
	    "tags": [],
	    "Value": 512,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchDisabled",
	    "tags": [],
	    "Value": 515,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelauchError",
	    "tags": [],
	    "Value": 516,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchGameEnded",
	    "tags": [],
	    "Value": 517,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchGameFull",
	    "tags": [],
	    "Value": 518,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchUserLeft",
	    "tags": [],
	    "Value": 522,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchRestricted",
	    "tags": [],
	    "Value": 523,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchUnauthorized",
	    "tags": [],
	    "Value": 524,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchFlooded",
	    "tags": [],
	    "Value": 525,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchHashExpired",
	    "tags": [],
	    "Value": 526,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchHashException",
	    "tags": [],
	    "Value": 527,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchPartyCannotFit",
	    "tags": [],
	    "Value": 528,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchHttpError",
	    "tags": [],
	    "Value": 529,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchCustomMessage",
	    "tags": [],
	    "Value": 610,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlacelaunchOtherError",
	    "tags": [],
	    "Value": 611,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportErrors",
	    "tags": [],
	    "Value": 768,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportFailure",
	    "tags": [],
	    "Value": 769,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportGameNotFound",
	    "tags": [],
	    "Value": 770,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportGameEnded",
	    "tags": [],
	    "Value": 771,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportGameFull",
	    "tags": [],
	    "Value": 772,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportUnauthorized",
	    "tags": [],
	    "Value": 773,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportFlooded",
	    "tags": [],
	    "Value": 774,
	    "Enum": "ConnectionError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TeleportIsTeleporting",
	    "tags": [],
	    "Value": 775,
	    "Enum": "ConnectionError"
	  },
	  { "type": "Enum", "Name": "ConnectionState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Connected",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ConnectionState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Disconnected",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ConnectionState"
	  },
	  { "type": "Enum", "Name": "ContextActionPriority", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Low",
	    "tags": [],
	    "Value": 1000,
	    "Enum": "ContextActionPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Medium",
	    "tags": [],
	    "Value": 2000,
	    "Enum": "ContextActionPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 2000,
	    "Enum": "ContextActionPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "High",
	    "tags": [],
	    "Value": 3000,
	    "Enum": "ContextActionPriority"
	  },
	  { "type": "Enum", "Name": "ContextActionResult", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Pass",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ContextActionResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sink",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ContextActionResult"
	  },
	  { "type": "Enum", "Name": "ControlMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "MouseLockSwitch",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ControlMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ControlMode"
	  },
	  { "type": "Enum", "Name": "CoreGuiType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "PlayerList",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CoreGuiType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Health",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CoreGuiType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Backpack",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CoreGuiType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Chat",
	    "tags": [],
	    "Value": 3,
	    "Enum": "CoreGuiType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "All",
	    "tags": [],
	    "Value": 4,
	    "Enum": "CoreGuiType"
	  },
	  { "type": "Enum", "Name": "CreatorType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "User",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CreatorType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Group",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CreatorType"
	  },
	  { "type": "Enum", "Name": "CurrencyType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CurrencyType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Robux",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CurrencyType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Tix",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CurrencyType"
	  },
	  { "type": "Enum", "Name": "CustomCameraMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "CustomCameraMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 2,
	    "Enum": "CustomCameraMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "CustomCameraMode"
	  },
	  { "type": "Enum", "Name": "DataStoreRequestType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "GetAsync",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DataStoreRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SetIncrementAsync",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DataStoreRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "UpdateAsync",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DataStoreRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GetSortedAsync",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DataStoreRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SetIncrementSortedAsync",
	    "tags": [],
	    "Value": 4,
	    "Enum": "DataStoreRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OnUpdate",
	    "tags": [],
	    "Value": 5,
	    "Enum": "DataStoreRequestType"
	  },
	  { "type": "Enum", "Name": "DevCameraOcclusionMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Zoom",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DevCameraOcclusionMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Invisicam",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DevCameraOcclusionMode"
	  },
	  { "type": "Enum", "Name": "DevComputerCameraMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UserChoice",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DevComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DevComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DevComputerCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Orbital",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DevComputerCameraMovementMode"
	  },
	  { "type": "Enum", "Name": "DevComputerMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UserChoice",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DevComputerMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeyboardMouse",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DevComputerMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClickToMove",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DevComputerMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Scriptable",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DevComputerMovementMode"
	  },
	  { "type": "Enum", "Name": "DevTouchCameraMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UserChoice",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DevTouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DevTouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DevTouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Orbital",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DevTouchCameraMovementMode"
	  },
	  { "type": "Enum", "Name": "DevTouchMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UserChoice",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbstick",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPad",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbpad",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClickToMove",
	    "tags": [],
	    "Value": 4,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Scriptable",
	    "tags": [],
	    "Value": 5,
	    "Enum": "DevTouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DynamicThumbstick",
	    "tags": [],
	    "Value": 6,
	    "Enum": "DevTouchMovementMode"
	  },
	  { "type": "Enum", "Name": "DeveloperMemoryTag", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Internal",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HttpCache",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Instances",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Signals",
	    "tags": [],
	    "Value": 3,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LuaHeap",
	    "tags": [],
	    "Value": 4,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Script",
	    "tags": [],
	    "Value": 5,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PhysicsCollision",
	    "tags": [],
	    "Value": 6,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PhysicsParts",
	    "tags": [],
	    "Value": 7,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsSolidModels",
	    "tags": [],
	    "Value": 8,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsMeshParts",
	    "tags": [],
	    "Value": 9,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsParticles",
	    "tags": [],
	    "Value": 10,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsParts",
	    "tags": [],
	    "Value": 11,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsSpatialHash",
	    "tags": [],
	    "Value": 12,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsTerrain",
	    "tags": [],
	    "Value": 13,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsTexture",
	    "tags": [],
	    "Value": 14,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GraphicsTextureCharacter",
	    "tags": [],
	    "Value": 15,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sounds",
	    "tags": [],
	    "Value": 16,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "StreamingSounds",
	    "tags": [],
	    "Value": 17,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TerrainVoxels",
	    "tags": [],
	    "Value": 18,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gui",
	    "tags": [],
	    "Value": 20,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Animation",
	    "tags": [],
	    "Value": 21,
	    "Enum": "DeveloperMemoryTag"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Navigation",
	    "tags": [],
	    "Value": 22,
	    "Enum": "DeveloperMemoryTag"
	  },
	  { "type": "Enum", "Name": "DialogBehaviorType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "SinglePlayer",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DialogBehaviorType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MultiplePlayers",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DialogBehaviorType"
	  },
	  { "type": "Enum", "Name": "DialogPurpose", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Quest",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DialogPurpose"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Help",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DialogPurpose"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Shop",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DialogPurpose"
	  },
	  { "type": "Enum", "Name": "DialogTone", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Neutral",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DialogTone"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Friendly",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DialogTone"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Enemy",
	    "tags": [],
	    "Value": 2,
	    "Enum": "DialogTone"
	  },
	  { "type": "Enum", "Name": "DominantAxis", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Width",
	    "tags": [],
	    "Value": 0,
	    "Enum": "DominantAxis"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Height",
	    "tags": [],
	    "Value": 1,
	    "Enum": "DominantAxis"
	  },
	  { "type": "Enum", "Name": "EasingDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "In",
	    "tags": [],
	    "Value": 0,
	    "Enum": "EasingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Out",
	    "tags": [],
	    "Value": 1,
	    "Enum": "EasingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InOut",
	    "tags": [],
	    "Value": 2,
	    "Enum": "EasingDirection"
	  },
	  { "type": "Enum", "Name": "EasingStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Linear",
	    "tags": [],
	    "Value": 0,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sine",
	    "tags": [],
	    "Value": 1,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Back",
	    "tags": [],
	    "Value": 2,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Quad",
	    "tags": [],
	    "Value": 3,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Quart",
	    "tags": [],
	    "Value": 4,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Quint",
	    "tags": [],
	    "Value": 5,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bounce",
	    "tags": [],
	    "Value": 6,
	    "Enum": "EasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Elastic",
	    "tags": [],
	    "Value": 7,
	    "Enum": "EasingStyle"
	  },
	  { "type": "Enum", "Name": "ElasticBehavior", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "WhenScrollable",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ElasticBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Always",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ElasticBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Never",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ElasticBehavior"
	  },
	  { "type": "Enum", "Name": "EnviromentalPhysicsThrottle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "DefaultAuto",
	    "tags": [],
	    "Value": 0,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Disabled",
	    "tags": [],
	    "Value": 1,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Always",
	    "tags": [],
	    "Value": 2,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Skip2",
	    "tags": [],
	    "Value": 3,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Skip4",
	    "tags": [],
	    "Value": 4,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Skip8",
	    "tags": [],
	    "Value": 5,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Skip16",
	    "tags": [],
	    "Value": 6,
	    "Enum": "EnviromentalPhysicsThrottle"
	  },
	  { "type": "Enum", "Name": "ErrorReporting", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "DontReport",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ErrorReporting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Prompt",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ErrorReporting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Report",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ErrorReporting"
	  },
	  { "type": "Enum", "Name": "ExplosionType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NoCraters",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ExplosionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Craters",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ExplosionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CratersAndDebris",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ExplosionType"
	  },
	  { "type": "Enum", "Name": "FillDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Horizontal",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FillDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Vertical",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FillDirection"
	  },
	  { "type": "Enum", "Name": "FilterResult", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Rejected",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FilterResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Accepted",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FilterResult"
	  },
	  { "type": "Enum", "Name": "Font", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Legacy",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Arial",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ArialBold",
	    "tags": [],
	    "Value": 2,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SourceSans",
	    "tags": [],
	    "Value": 3,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SourceSansBold",
	    "tags": [],
	    "Value": 4,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SourceSansSemibold",
	    "tags": [],
	    "Value": 16,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SourceSansLight",
	    "tags": [],
	    "Value": 5,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SourceSansItalic",
	    "tags": [],
	    "Value": 6,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bodoni",
	    "tags": [],
	    "Value": 7,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Garamond",
	    "tags": [],
	    "Value": 8,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cartoon",
	    "tags": [],
	    "Value": 9,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Code",
	    "tags": [],
	    "Value": 10,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Highway",
	    "tags": [],
	    "Value": 11,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SciFi",
	    "tags": [],
	    "Value": 12,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Arcade",
	    "tags": [],
	    "Value": 13,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Fantasy",
	    "tags": [],
	    "Value": 14,
	    "Enum": "Font"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Antique",
	    "tags": [],
	    "Value": 15,
	    "Enum": "Font"
	  },
	  { "type": "Enum", "Name": "FontSize", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Size8",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size9",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size10",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size11",
	    "tags": [],
	    "Value": 3,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size12",
	    "tags": [],
	    "Value": 4,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size14",
	    "tags": [],
	    "Value": 5,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size18",
	    "tags": [],
	    "Value": 6,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size24",
	    "tags": [],
	    "Value": 7,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size36",
	    "tags": [],
	    "Value": 8,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size48",
	    "tags": [],
	    "Value": 9,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size28",
	    "tags": [],
	    "Value": 10,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size32",
	    "tags": [],
	    "Value": 11,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size42",
	    "tags": [],
	    "Value": 12,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size60",
	    "tags": [],
	    "Value": 13,
	    "Enum": "FontSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size96",
	    "tags": [],
	    "Value": 14,
	    "Enum": "FontSize"
	  },
	  { "type": "Enum", "Name": "FormFactor", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Symmetric",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FormFactor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Brick",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FormFactor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Plate",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FormFactor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Custom",
	    "tags": [],
	    "Value": 3,
	    "Enum": "FormFactor"
	  },
	  { "type": "Enum", "Name": "FrameStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Custom",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ChatBlue",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxSquare",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RobloxRound",
	    "tags": [],
	    "Value": 3,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ChatGreen",
	    "tags": [],
	    "Value": 4,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ChatRed",
	    "tags": [],
	    "Value": 5,
	    "Enum": "FrameStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DropShadow",
	    "tags": [],
	    "Value": 6,
	    "Enum": "FrameStyle"
	  },
	  { "type": "Enum", "Name": "FramerateManagerMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Automatic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FramerateManagerMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "On",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FramerateManagerMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Off",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FramerateManagerMode"
	  },
	  { "type": "Enum", "Name": "FriendRequestEvent", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Issue",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FriendRequestEvent"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Revoke",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FriendRequestEvent"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Accept",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FriendRequestEvent"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Deny",
	    "tags": [],
	    "Value": 3,
	    "Enum": "FriendRequestEvent"
	  },
	  { "type": "Enum", "Name": "FriendStatus", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Unknown",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FriendStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NotFriend",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FriendStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Friend",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FriendStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FriendRequestSent",
	    "tags": [],
	    "Value": 3,
	    "Enum": "FriendStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FriendRequestReceived",
	    "tags": [],
	    "Value": 4,
	    "Enum": "FriendStatus"
	  },
	  { "type": "Enum", "Name": "FunctionalTestResult", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Passed",
	    "tags": [],
	    "Value": 0,
	    "Enum": "FunctionalTestResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Warning",
	    "tags": [],
	    "Value": 1,
	    "Enum": "FunctionalTestResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Error",
	    "tags": [],
	    "Value": 2,
	    "Enum": "FunctionalTestResult"
	  },
	  { "type": "Enum", "Name": "GameAvatarType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "R6",
	    "tags": [],
	    "Value": 0,
	    "Enum": "GameAvatarType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "R15",
	    "tags": [],
	    "Value": 1,
	    "Enum": "GameAvatarType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlayerChoice",
	    "tags": [],
	    "Value": 2,
	    "Enum": "GameAvatarType"
	  },
	  { "type": "Enum", "Name": "GearGenreSetting", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "AllGenres",
	    "tags": [],
	    "Value": 0,
	    "Enum": "GearGenreSetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MatchingGenreOnly",
	    "tags": [],
	    "Value": 1,
	    "Enum": "GearGenreSetting"
	  },
	  { "type": "Enum", "Name": "GearType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "MeleeWeapons",
	    "tags": [],
	    "Value": 0,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RangedWeapons",
	    "tags": [],
	    "Value": 1,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Explosives",
	    "tags": [],
	    "Value": 2,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PowerUps",
	    "tags": [],
	    "Value": 3,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NavigationEnhancers",
	    "tags": [],
	    "Value": 4,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MusicalInstruments",
	    "tags": [],
	    "Value": 5,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SocialItems",
	    "tags": [],
	    "Value": 6,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BuildingTools",
	    "tags": [],
	    "Value": 7,
	    "Enum": "GearType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Transport",
	    "tags": [],
	    "Value": 8,
	    "Enum": "GearType"
	  },
	  { "type": "Enum", "Name": "Genre", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "All",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TownAndCity",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Fantasy",
	    "tags": [],
	    "Value": 2,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SciFi",
	    "tags": [],
	    "Value": 3,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ninja",
	    "tags": [],
	    "Value": 4,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Scary",
	    "tags": [],
	    "Value": 5,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pirate",
	    "tags": [],
	    "Value": 6,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Adventure",
	    "tags": [],
	    "Value": 7,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sports",
	    "tags": [],
	    "Value": 8,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Funny",
	    "tags": [],
	    "Value": 9,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WildWest",
	    "tags": [],
	    "Value": 10,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "War",
	    "tags": [],
	    "Value": 11,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SkatePark",
	    "tags": [],
	    "Value": 12,
	    "Enum": "Genre"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Tutorial",
	    "tags": [],
	    "Value": 13,
	    "Enum": "Genre"
	  },
	  { "type": "Enum", "Name": "GraphicsMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Automatic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Direct3D9",
	    "tags": [],
	    "Value": 3,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Direct3D11",
	    "tags": [],
	    "Value": 2,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OpenGL",
	    "tags": [],
	    "Value": 4,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Metal",
	    "tags": [],
	    "Value": 5,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Vulkan",
	    "tags": [],
	    "Value": 6,
	    "Enum": "GraphicsMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NoGraphics",
	    "tags": [],
	    "Value": 7,
	    "Enum": "GraphicsMode"
	  },
	  { "type": "Enum", "Name": "HandlesStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Resize",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HandlesStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Movement",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HandlesStyle"
	  },
	  { "type": "Enum", "Name": "HorizontalAlignment", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HorizontalAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HorizontalAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HorizontalAlignment"
	  },
	  { "type": "Enum", "Name": "HttpCachePolicy", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HttpCachePolicy"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Full",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HttpCachePolicy"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DataOnly",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HttpCachePolicy"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 3,
	    "Enum": "HttpCachePolicy"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InternalRedirectRefresh",
	    "tags": [],
	    "Value": 4,
	    "Enum": "HttpCachePolicy"
	  },
	  { "type": "Enum", "Name": "HttpContentType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "ApplicationJson",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HttpContentType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ApplicationXml",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HttpContentType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ApplicationUrlEncoded",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HttpContentType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TextPlain",
	    "tags": [],
	    "Value": 3,
	    "Enum": "HttpContentType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TextXml",
	    "tags": [],
	    "Value": 4,
	    "Enum": "HttpContentType"
	  },
	  { "type": "Enum", "Name": "HttpError", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "OK",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InvalidUrl",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DnsResolve",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ConnectFail",
	    "tags": [],
	    "Value": 3,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OutOfMemory",
	    "tags": [],
	    "Value": 4,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TimedOut",
	    "tags": [],
	    "Value": 5,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TooManyRedirects",
	    "tags": [],
	    "Value": 6,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InvalidRedirect",
	    "tags": [],
	    "Value": 7,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NetFail",
	    "tags": [],
	    "Value": 8,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Aborted",
	    "tags": [],
	    "Value": 9,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SslConnectFail",
	    "tags": [],
	    "Value": 10,
	    "Enum": "HttpError"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Unknown",
	    "tags": [],
	    "Value": 11,
	    "Enum": "HttpError"
	  },
	  { "type": "Enum", "Name": "HttpRequestType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HttpRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MarketplaceService",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HttpRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Players",
	    "tags": [],
	    "Value": 7,
	    "Enum": "HttpRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Chat",
	    "tags": [],
	    "Value": 15,
	    "Enum": "HttpRequestType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Avatar",
	    "tags": [],
	    "Value": 16,
	    "Enum": "HttpRequestType"
	  },
	  { "type": "Enum", "Name": "HumanoidDisplayDistanceType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Viewer",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HumanoidDisplayDistanceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Subject",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HumanoidDisplayDistanceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HumanoidDisplayDistanceType"
	  },
	  { "type": "Enum", "Name": "HumanoidHealthDisplayType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "DisplayWhenDamaged",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HumanoidHealthDisplayType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AlwaysOn",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HumanoidHealthDisplayType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AlwaysOff",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HumanoidHealthDisplayType"
	  },
	  { "type": "Enum", "Name": "HumanoidRigType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "R6",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HumanoidRigType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "R15",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HumanoidRigType"
	  },
	  { "type": "Enum", "Name": "HumanoidStateType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "FallingDown",
	    "tags": [],
	    "Value": 0,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Running",
	    "tags": [],
	    "Value": 8,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RunningNoPhysics",
	    "tags": [],
	    "Value": 10,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Climbing",
	    "tags": [],
	    "Value": 12,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "StrafingNoPhysics",
	    "tags": [],
	    "Value": 11,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ragdoll",
	    "tags": [],
	    "Value": 1,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GettingUp",
	    "tags": [],
	    "Value": 2,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Jumping",
	    "tags": [],
	    "Value": 3,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Landed",
	    "tags": [],
	    "Value": 7,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Flying",
	    "tags": [],
	    "Value": 6,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Freefall",
	    "tags": [],
	    "Value": 5,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Seated",
	    "tags": [],
	    "Value": 13,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PlatformStanding",
	    "tags": [],
	    "Value": 14,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Dead",
	    "tags": [],
	    "Value": 15,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Swimming",
	    "tags": [],
	    "Value": 4,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Physics",
	    "tags": [],
	    "Value": 16,
	    "Enum": "HumanoidStateType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 18,
	    "Enum": "HumanoidStateType"
	  },
	  { "type": "Enum", "Name": "InOut", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Edge",
	    "tags": [],
	    "Value": 0,
	    "Enum": "InOut"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Inset",
	    "tags": [],
	    "Value": 1,
	    "Enum": "InOut"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 2,
	    "Enum": "InOut"
	  },
	  { "type": "Enum", "Name": "InfoType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Asset",
	    "tags": [],
	    "Value": 0,
	    "Enum": "InfoType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Product",
	    "tags": [],
	    "Value": 1,
	    "Enum": "InfoType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GamePass",
	    "tags": [],
	    "Value": 2,
	    "Enum": "InfoType"
	  },
	  { "type": "Enum", "Name": "InitialDockState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Top",
	    "tags": [],
	    "Value": 0,
	    "Enum": "InitialDockState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bottom",
	    "tags": [],
	    "Value": 1,
	    "Enum": "InitialDockState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 2,
	    "Enum": "InitialDockState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 3,
	    "Enum": "InitialDockState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Float",
	    "tags": [],
	    "Value": 4,
	    "Enum": "InitialDockState"
	  },
	  { "type": "Enum", "Name": "InputType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NoInput",
	    "tags": [],
	    "Value": 0,
	    "Enum": "InputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Constant",
	    "tags": [],
	    "Value": 12,
	    "Enum": "InputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sin",
	    "tags": [],
	    "Value": 13,
	    "Enum": "InputType"
	  },
	  { "type": "Enum", "Name": "JointCreationMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "All",
	    "tags": [],
	    "Value": 0,
	    "Enum": "JointCreationMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Surface",
	    "tags": [],
	    "Value": 1,
	    "Enum": "JointCreationMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 2,
	    "Enum": "JointCreationMode"
	  },
	  { "type": "Enum", "Name": "JointType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 28,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Rotate",
	    "tags": [],
	    "Value": 7,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RotateP",
	    "tags": [],
	    "Value": 8,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RotateV",
	    "tags": [],
	    "Value": 9,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Glue",
	    "tags": [],
	    "Value": 10,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Weld",
	    "tags": [],
	    "Value": 1,
	    "Enum": "JointType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Snap",
	    "tags": [],
	    "Value": 3,
	    "Enum": "JointType"
	  },
	  { "type": "Enum", "Name": "KeyCode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Unknown",
	    "tags": [],
	    "Value": 0,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Backspace",
	    "tags": [],
	    "Value": 8,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Tab",
	    "tags": [],
	    "Value": 9,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Clear",
	    "tags": [],
	    "Value": 12,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Return",
	    "tags": [],
	    "Value": 13,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pause",
	    "tags": [],
	    "Value": 19,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Escape",
	    "tags": [],
	    "Value": 27,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Space",
	    "tags": [],
	    "Value": 32,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QuotedDouble",
	    "tags": [],
	    "Value": 34,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hash",
	    "tags": [],
	    "Value": 35,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Dollar",
	    "tags": [],
	    "Value": 36,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Percent",
	    "tags": [],
	    "Value": 37,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ampersand",
	    "tags": [],
	    "Value": 38,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Quote",
	    "tags": [],
	    "Value": 39,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftParenthesis",
	    "tags": [],
	    "Value": 40,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightParenthesis",
	    "tags": [],
	    "Value": 41,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Asterisk",
	    "tags": [],
	    "Value": 42,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Plus",
	    "tags": [],
	    "Value": 43,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Comma",
	    "tags": [],
	    "Value": 44,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Minus",
	    "tags": [],
	    "Value": 45,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Period",
	    "tags": [],
	    "Value": 46,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Slash",
	    "tags": [],
	    "Value": 47,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Zero",
	    "tags": [],
	    "Value": 48,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "One",
	    "tags": [],
	    "Value": 49,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Two",
	    "tags": [],
	    "Value": 50,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Three",
	    "tags": [],
	    "Value": 51,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Four",
	    "tags": [],
	    "Value": 52,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Five",
	    "tags": [],
	    "Value": 53,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Six",
	    "tags": [],
	    "Value": 54,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Seven",
	    "tags": [],
	    "Value": 55,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Eight",
	    "tags": [],
	    "Value": 56,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Nine",
	    "tags": [],
	    "Value": 57,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Colon",
	    "tags": [],
	    "Value": 58,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Semicolon",
	    "tags": [],
	    "Value": 59,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LessThan",
	    "tags": [],
	    "Value": 60,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Equals",
	    "tags": [],
	    "Value": 61,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GreaterThan",
	    "tags": [],
	    "Value": 62,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Question",
	    "tags": [],
	    "Value": 63,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "At",
	    "tags": [],
	    "Value": 64,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftBracket",
	    "tags": [],
	    "Value": 91,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BackSlash",
	    "tags": [],
	    "Value": 92,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightBracket",
	    "tags": [],
	    "Value": 93,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Caret",
	    "tags": [],
	    "Value": 94,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Underscore",
	    "tags": [],
	    "Value": 95,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Backquote",
	    "tags": [],
	    "Value": 96,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "A",
	    "tags": [],
	    "Value": 97,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "B",
	    "tags": [],
	    "Value": 98,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "C",
	    "tags": [],
	    "Value": 99,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "D",
	    "tags": [],
	    "Value": 100,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "E",
	    "tags": [],
	    "Value": 101,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F",
	    "tags": [],
	    "Value": 102,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "G",
	    "tags": [],
	    "Value": 103,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "H",
	    "tags": [],
	    "Value": 104,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "I",
	    "tags": [],
	    "Value": 105,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "J",
	    "tags": [],
	    "Value": 106,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "K",
	    "tags": [],
	    "Value": 107,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "L",
	    "tags": [],
	    "Value": 108,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "M",
	    "tags": [],
	    "Value": 109,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "N",
	    "tags": [],
	    "Value": 110,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "O",
	    "tags": [],
	    "Value": 111,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "P",
	    "tags": [],
	    "Value": 112,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Q",
	    "tags": [],
	    "Value": 113,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "R",
	    "tags": [],
	    "Value": 114,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "S",
	    "tags": [],
	    "Value": 115,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "T",
	    "tags": [],
	    "Value": 116,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "U",
	    "tags": [],
	    "Value": 117,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "V",
	    "tags": [],
	    "Value": 118,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "W",
	    "tags": [],
	    "Value": 119,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "X",
	    "tags": [],
	    "Value": 120,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Y",
	    "tags": [],
	    "Value": 121,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Z",
	    "tags": [],
	    "Value": 122,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftCurly",
	    "tags": [],
	    "Value": 123,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pipe",
	    "tags": [],
	    "Value": 124,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightCurly",
	    "tags": [],
	    "Value": 125,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Tilde",
	    "tags": [],
	    "Value": 126,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Delete",
	    "tags": [],
	    "Value": 127,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadZero",
	    "tags": [],
	    "Value": 256,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadOne",
	    "tags": [],
	    "Value": 257,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadTwo",
	    "tags": [],
	    "Value": 258,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadThree",
	    "tags": [],
	    "Value": 259,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadFour",
	    "tags": [],
	    "Value": 260,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadFive",
	    "tags": [],
	    "Value": 261,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadSix",
	    "tags": [],
	    "Value": 262,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadSeven",
	    "tags": [],
	    "Value": 263,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadEight",
	    "tags": [],
	    "Value": 264,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadNine",
	    "tags": [],
	    "Value": 265,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadPeriod",
	    "tags": [],
	    "Value": 266,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadDivide",
	    "tags": [],
	    "Value": 267,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadMultiply",
	    "tags": [],
	    "Value": 268,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadMinus",
	    "tags": [],
	    "Value": 269,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadPlus",
	    "tags": [],
	    "Value": 270,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadEnter",
	    "tags": [],
	    "Value": 271,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "KeypadEquals",
	    "tags": [],
	    "Value": 272,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Up",
	    "tags": [],
	    "Value": 273,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Down",
	    "tags": [],
	    "Value": 274,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 275,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 276,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Insert",
	    "tags": [],
	    "Value": 277,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Home",
	    "tags": [],
	    "Value": 278,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "End",
	    "tags": [],
	    "Value": 279,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PageUp",
	    "tags": [],
	    "Value": 280,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PageDown",
	    "tags": [],
	    "Value": 281,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftShift",
	    "tags": [],
	    "Value": 304,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightShift",
	    "tags": [],
	    "Value": 303,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftMeta",
	    "tags": [],
	    "Value": 310,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightMeta",
	    "tags": [],
	    "Value": 309,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftAlt",
	    "tags": [],
	    "Value": 308,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightAlt",
	    "tags": [],
	    "Value": 307,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftControl",
	    "tags": [],
	    "Value": 306,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightControl",
	    "tags": [],
	    "Value": 305,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CapsLock",
	    "tags": [],
	    "Value": 301,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NumLock",
	    "tags": [],
	    "Value": 300,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ScrollLock",
	    "tags": [],
	    "Value": 302,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftSuper",
	    "tags": [],
	    "Value": 311,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightSuper",
	    "tags": [],
	    "Value": 312,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Mode",
	    "tags": [],
	    "Value": 313,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Compose",
	    "tags": [],
	    "Value": 314,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Help",
	    "tags": [],
	    "Value": 315,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Print",
	    "tags": [],
	    "Value": 316,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SysReq",
	    "tags": [],
	    "Value": 317,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Break",
	    "tags": [],
	    "Value": 318,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Menu",
	    "tags": [],
	    "Value": 319,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Power",
	    "tags": [],
	    "Value": 320,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Euro",
	    "tags": [],
	    "Value": 321,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Undo",
	    "tags": [],
	    "Value": 322,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F1",
	    "tags": [],
	    "Value": 282,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F2",
	    "tags": [],
	    "Value": 283,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F3",
	    "tags": [],
	    "Value": 284,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F4",
	    "tags": [],
	    "Value": 285,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F5",
	    "tags": [],
	    "Value": 286,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F6",
	    "tags": [],
	    "Value": 287,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F7",
	    "tags": [],
	    "Value": 288,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F8",
	    "tags": [],
	    "Value": 289,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F9",
	    "tags": [],
	    "Value": 290,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F10",
	    "tags": [],
	    "Value": 291,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F11",
	    "tags": [],
	    "Value": 292,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F12",
	    "tags": [],
	    "Value": 293,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F13",
	    "tags": [],
	    "Value": 294,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F14",
	    "tags": [],
	    "Value": 295,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "F15",
	    "tags": [],
	    "Value": 296,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World0",
	    "tags": [],
	    "Value": 160,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World1",
	    "tags": [],
	    "Value": 161,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World2",
	    "tags": [],
	    "Value": 162,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World3",
	    "tags": [],
	    "Value": 163,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World4",
	    "tags": [],
	    "Value": 164,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World5",
	    "tags": [],
	    "Value": 165,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World6",
	    "tags": [],
	    "Value": 166,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World7",
	    "tags": [],
	    "Value": 167,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World8",
	    "tags": [],
	    "Value": 168,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World9",
	    "tags": [],
	    "Value": 169,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World10",
	    "tags": [],
	    "Value": 170,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World11",
	    "tags": [],
	    "Value": 171,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World12",
	    "tags": [],
	    "Value": 172,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World13",
	    "tags": [],
	    "Value": 173,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World14",
	    "tags": [],
	    "Value": 174,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World15",
	    "tags": [],
	    "Value": 175,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World16",
	    "tags": [],
	    "Value": 176,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World17",
	    "tags": [],
	    "Value": 177,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World18",
	    "tags": [],
	    "Value": 178,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World19",
	    "tags": [],
	    "Value": 179,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World20",
	    "tags": [],
	    "Value": 180,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World21",
	    "tags": [],
	    "Value": 181,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World22",
	    "tags": [],
	    "Value": 182,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World23",
	    "tags": [],
	    "Value": 183,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World24",
	    "tags": [],
	    "Value": 184,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World25",
	    "tags": [],
	    "Value": 185,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World26",
	    "tags": [],
	    "Value": 186,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World27",
	    "tags": [],
	    "Value": 187,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World28",
	    "tags": [],
	    "Value": 188,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World29",
	    "tags": [],
	    "Value": 189,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World30",
	    "tags": [],
	    "Value": 190,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World31",
	    "tags": [],
	    "Value": 191,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World32",
	    "tags": [],
	    "Value": 192,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World33",
	    "tags": [],
	    "Value": 193,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World34",
	    "tags": [],
	    "Value": 194,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World35",
	    "tags": [],
	    "Value": 195,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World36",
	    "tags": [],
	    "Value": 196,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World37",
	    "tags": [],
	    "Value": 197,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World38",
	    "tags": [],
	    "Value": 198,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World39",
	    "tags": [],
	    "Value": 199,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World40",
	    "tags": [],
	    "Value": 200,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World41",
	    "tags": [],
	    "Value": 201,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World42",
	    "tags": [],
	    "Value": 202,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World43",
	    "tags": [],
	    "Value": 203,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World44",
	    "tags": [],
	    "Value": 204,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World45",
	    "tags": [],
	    "Value": 205,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World46",
	    "tags": [],
	    "Value": 206,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World47",
	    "tags": [],
	    "Value": 207,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World48",
	    "tags": [],
	    "Value": 208,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World49",
	    "tags": [],
	    "Value": 209,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World50",
	    "tags": [],
	    "Value": 210,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World51",
	    "tags": [],
	    "Value": 211,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World52",
	    "tags": [],
	    "Value": 212,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World53",
	    "tags": [],
	    "Value": 213,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World54",
	    "tags": [],
	    "Value": 214,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World55",
	    "tags": [],
	    "Value": 215,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World56",
	    "tags": [],
	    "Value": 216,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World57",
	    "tags": [],
	    "Value": 217,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World58",
	    "tags": [],
	    "Value": 218,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World59",
	    "tags": [],
	    "Value": 219,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World60",
	    "tags": [],
	    "Value": 220,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World61",
	    "tags": [],
	    "Value": 221,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World62",
	    "tags": [],
	    "Value": 222,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World63",
	    "tags": [],
	    "Value": 223,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World64",
	    "tags": [],
	    "Value": 224,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World65",
	    "tags": [],
	    "Value": 225,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World66",
	    "tags": [],
	    "Value": 226,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World67",
	    "tags": [],
	    "Value": 227,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World68",
	    "tags": [],
	    "Value": 228,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World69",
	    "tags": [],
	    "Value": 229,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World70",
	    "tags": [],
	    "Value": 230,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World71",
	    "tags": [],
	    "Value": 231,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World72",
	    "tags": [],
	    "Value": 232,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World73",
	    "tags": [],
	    "Value": 233,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World74",
	    "tags": [],
	    "Value": 234,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World75",
	    "tags": [],
	    "Value": 235,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World76",
	    "tags": [],
	    "Value": 236,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World77",
	    "tags": [],
	    "Value": 237,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World78",
	    "tags": [],
	    "Value": 238,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World79",
	    "tags": [],
	    "Value": 239,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World80",
	    "tags": [],
	    "Value": 240,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World81",
	    "tags": [],
	    "Value": 241,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World82",
	    "tags": [],
	    "Value": 242,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World83",
	    "tags": [],
	    "Value": 243,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World84",
	    "tags": [],
	    "Value": 244,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World85",
	    "tags": [],
	    "Value": 245,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World86",
	    "tags": [],
	    "Value": 246,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World87",
	    "tags": [],
	    "Value": 247,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World88",
	    "tags": [],
	    "Value": 248,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World89",
	    "tags": [],
	    "Value": 249,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World90",
	    "tags": [],
	    "Value": 250,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World91",
	    "tags": [],
	    "Value": 251,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World92",
	    "tags": [],
	    "Value": 252,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World93",
	    "tags": [],
	    "Value": 253,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World94",
	    "tags": [],
	    "Value": 254,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "World95",
	    "tags": [],
	    "Value": 255,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonX",
	    "tags": [],
	    "Value": 1000,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonY",
	    "tags": [],
	    "Value": 1001,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonA",
	    "tags": [],
	    "Value": 1002,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonB",
	    "tags": [],
	    "Value": 1003,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonR1",
	    "tags": [],
	    "Value": 1004,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonL1",
	    "tags": [],
	    "Value": 1005,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonR2",
	    "tags": [],
	    "Value": 1006,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonL2",
	    "tags": [],
	    "Value": 1007,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonR3",
	    "tags": [],
	    "Value": 1008,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonL3",
	    "tags": [],
	    "Value": 1009,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonStart",
	    "tags": [],
	    "Value": 1010,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ButtonSelect",
	    "tags": [],
	    "Value": 1011,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPadLeft",
	    "tags": [],
	    "Value": 1012,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPadRight",
	    "tags": [],
	    "Value": 1013,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPadUp",
	    "tags": [],
	    "Value": 1014,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPadDown",
	    "tags": [],
	    "Value": 1015,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbstick1",
	    "tags": [],
	    "Value": 1016,
	    "Enum": "KeyCode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbstick2",
	    "tags": [],
	    "Value": 1017,
	    "Enum": "KeyCode"
	  },
	  { "type": "Enum", "Name": "KeywordFilterType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Include",
	    "tags": [],
	    "Value": 0,
	    "Enum": "KeywordFilterType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Exclude",
	    "tags": [],
	    "Value": 1,
	    "Enum": "KeywordFilterType"
	  },
	  { "type": "Enum", "Name": "Language", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Language"
	  },
	  { "type": "Enum", "Name": "LeftRight", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 0,
	    "Enum": "LeftRight"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 1,
	    "Enum": "LeftRight"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 2,
	    "Enum": "LeftRight"
	  },
	  { "type": "Enum", "Name": "LevelOfDetailSetting", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "High",
	    "tags": [],
	    "Value": 2,
	    "Enum": "LevelOfDetailSetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Medium",
	    "tags": [],
	    "Value": 1,
	    "Enum": "LevelOfDetailSetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Low",
	    "tags": [],
	    "Value": 0,
	    "Enum": "LevelOfDetailSetting"
	  },
	  { "type": "Enum", "Name": "Limb", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Torso",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftArm",
	    "tags": [],
	    "Value": 2,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightArm",
	    "tags": [],
	    "Value": 3,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftLeg",
	    "tags": [],
	    "Value": 4,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightLeg",
	    "tags": [],
	    "Value": 5,
	    "Enum": "Limb"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Unknown",
	    "tags": [],
	    "Value": 6,
	    "Enum": "Limb"
	  },
	  { "type": "Enum", "Name": "ListenerType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Camera",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ListenerType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CFrame",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ListenerType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ObjectPosition",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ListenerType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ObjectCFrame",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ListenerType"
	  },
	  { "type": "Enum", "Name": "Material", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Plastic",
	    "tags": [],
	    "Value": 256,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Wood",
	    "tags": [],
	    "Value": 512,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Slate",
	    "tags": [],
	    "Value": 800,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Concrete",
	    "tags": [],
	    "Value": 816,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CorrodedMetal",
	    "tags": [],
	    "Value": 1040,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DiamondPlate",
	    "tags": [],
	    "Value": 1056,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Foil",
	    "tags": [],
	    "Value": 1072,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Grass",
	    "tags": [],
	    "Value": 1280,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ice",
	    "tags": [],
	    "Value": 1536,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Marble",
	    "tags": [],
	    "Value": 784,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Granite",
	    "tags": [],
	    "Value": 832,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Brick",
	    "tags": [],
	    "Value": 848,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pebble",
	    "tags": [],
	    "Value": 864,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sand",
	    "tags": [],
	    "Value": 1296,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Fabric",
	    "tags": [],
	    "Value": 1312,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SmoothPlastic",
	    "tags": [],
	    "Value": 272,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Metal",
	    "tags": [],
	    "Value": 1088,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WoodPlanks",
	    "tags": [],
	    "Value": 528,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cobblestone",
	    "tags": [],
	    "Value": 880,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Air",
	    "tags": ["notbrowsable"],
	    "Value": 1792,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Water",
	    "tags": ["notbrowsable"],
	    "Value": 2048,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Rock",
	    "tags": ["notbrowsable"],
	    "Value": 896,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Glacier",
	    "tags": ["notbrowsable"],
	    "Value": 1552,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Snow",
	    "tags": ["notbrowsable"],
	    "Value": 1328,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sandstone",
	    "tags": ["notbrowsable"],
	    "Value": 912,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Mud",
	    "tags": ["notbrowsable"],
	    "Value": 1344,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Basalt",
	    "tags": ["notbrowsable"],
	    "Value": 788,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ground",
	    "tags": ["notbrowsable"],
	    "Value": 1360,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CrackedLava",
	    "tags": ["notbrowsable"],
	    "Value": 804,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Neon",
	    "tags": [],
	    "Value": 288,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Glass",
	    "tags": [],
	    "Value": 1568,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Asphalt",
	    "tags": ["notbrowsable"],
	    "Value": 1376,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeafyGrass",
	    "tags": ["notbrowsable"],
	    "Value": 1284,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Salt",
	    "tags": ["notbrowsable"],
	    "Value": 1392,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Limestone",
	    "tags": ["notbrowsable"],
	    "Value": 820,
	    "Enum": "Material"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pavement",
	    "tags": ["notbrowsable"],
	    "Value": 836,
	    "Enum": "Material"
	  },
	  { "type": "Enum", "Name": "MembershipType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "MembershipType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BuildersClub",
	    "tags": [],
	    "Value": 1,
	    "Enum": "MembershipType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TurboBuildersClub",
	    "tags": [],
	    "Value": 2,
	    "Enum": "MembershipType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OutrageousBuildersClub",
	    "tags": [],
	    "Value": 3,
	    "Enum": "MembershipType"
	  },
	  { "type": "Enum", "Name": "MeshType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 0,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Torso",
	    "tags": [],
	    "Value": 1,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Wedge",
	    "tags": [],
	    "Value": 2,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Prism",
	    "tags": ["deprecated"],
	    "Value": 7,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pyramid",
	    "tags": ["deprecated"],
	    "Value": 8,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ParallelRamp",
	    "tags": ["deprecated"],
	    "Value": 9,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightAngleRamp",
	    "tags": ["deprecated"],
	    "Value": 10,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CornerWedge",
	    "tags": ["deprecated"],
	    "Value": 11,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Brick",
	    "tags": [],
	    "Value": 6,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sphere",
	    "tags": [],
	    "Value": 3,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cylinder",
	    "tags": [],
	    "Value": 4,
	    "Enum": "MeshType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FileMesh",
	    "tags": [],
	    "Value": 5,
	    "Enum": "MeshType"
	  },
	  { "type": "Enum", "Name": "MessageType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "MessageOutput",
	    "tags": [],
	    "Value": 0,
	    "Enum": "MessageType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MessageInfo",
	    "tags": [],
	    "Value": 1,
	    "Enum": "MessageType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MessageWarning",
	    "tags": [],
	    "Value": 2,
	    "Enum": "MessageType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MessageError",
	    "tags": [],
	    "Value": 3,
	    "Enum": "MessageType"
	  },
	  { "type": "Enum", "Name": "MouseBehavior", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "MouseBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LockCenter",
	    "tags": [],
	    "Value": 1,
	    "Enum": "MouseBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LockCurrentPosition",
	    "tags": [],
	    "Value": 2,
	    "Enum": "MouseBehavior"
	  },
	  { "type": "Enum", "Name": "MoveState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Stopped",
	    "tags": [],
	    "Value": 0,
	    "Enum": "MoveState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Coasting",
	    "tags": [],
	    "Value": 1,
	    "Enum": "MoveState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Pushing",
	    "tags": [],
	    "Value": 2,
	    "Enum": "MoveState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Stopping",
	    "tags": [],
	    "Value": 3,
	    "Enum": "MoveState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AirFree",
	    "tags": [],
	    "Value": 4,
	    "Enum": "MoveState"
	  },
	  { "type": "Enum", "Name": "NameOcclusion", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "OccludeAll",
	    "tags": [],
	    "Value": 2,
	    "Enum": "NameOcclusion"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "EnemyOcclusion",
	    "tags": [],
	    "Value": 1,
	    "Enum": "NameOcclusion"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NoOcclusion",
	    "tags": [],
	    "Value": 0,
	    "Enum": "NameOcclusion"
	  },
	  { "type": "Enum", "Name": "NetworkOwnership", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Automatic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "NetworkOwnership"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Manual",
	    "tags": [],
	    "Value": 1,
	    "Enum": "NetworkOwnership"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OnContact",
	    "tags": [],
	    "Value": 2,
	    "Enum": "NetworkOwnership"
	  },
	  { "type": "Enum", "Name": "NormalId", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Top",
	    "tags": [],
	    "Value": 1,
	    "Enum": "NormalId"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bottom",
	    "tags": [],
	    "Value": 4,
	    "Enum": "NormalId"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Back",
	    "tags": [],
	    "Value": 2,
	    "Enum": "NormalId"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Front",
	    "tags": [],
	    "Value": 5,
	    "Enum": "NormalId"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 0,
	    "Enum": "NormalId"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 3,
	    "Enum": "NormalId"
	  },
	  { "type": "Enum", "Name": "OverrideMouseIconBehavior", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "OverrideMouseIconBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ForceShow",
	    "tags": [],
	    "Value": 1,
	    "Enum": "OverrideMouseIconBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ForceHide",
	    "tags": [],
	    "Value": 2,
	    "Enum": "OverrideMouseIconBehavior"
	  },
	  { "type": "Enum", "Name": "PacketPriority", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "IMMEDIATE_PRIORITY",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PacketPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HIGH_PRIORITY",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PacketPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MEDIUM_PRIORITY",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PacketPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LOW_PRIORITY",
	    "tags": [],
	    "Value": 3,
	    "Enum": "PacketPriority"
	  },
	  { "type": "Enum", "Name": "PartType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Ball",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PartType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Block",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PartType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cylinder",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PartType"
	  },
	  { "type": "Enum", "Name": "PathStatus", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Success",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PathStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClosestNoPath",
	    "tags": ["deprecated"],
	    "Value": 1,
	    "Enum": "PathStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClosestOutOfRange",
	    "tags": ["deprecated"],
	    "Value": 2,
	    "Enum": "PathStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FailStartNotEmpty",
	    "tags": ["deprecated"],
	    "Value": 3,
	    "Enum": "PathStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "FailFinishNotEmpty",
	    "tags": ["deprecated"],
	    "Value": 4,
	    "Enum": "PathStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NoPath",
	    "tags": [],
	    "Value": 5,
	    "Enum": "PathStatus"
	  },
	  { "type": "Enum", "Name": "PathWaypointAction", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Walk",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PathWaypointAction"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Jump",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PathWaypointAction"
	  },
	  { "type": "Enum", "Name": "Platform", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Windows",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "OSX",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "IOS",
	    "tags": [],
	    "Value": 2,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Android",
	    "tags": [],
	    "Value": 3,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "XBoxOne",
	    "tags": [],
	    "Value": 4,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PS4",
	    "tags": [],
	    "Value": 5,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PS3",
	    "tags": [],
	    "Value": 6,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "XBox360",
	    "tags": [],
	    "Value": 7,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WiiU",
	    "tags": [],
	    "Value": 8,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NX",
	    "tags": [],
	    "Value": 9,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ouya",
	    "tags": [],
	    "Value": 10,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AndroidTV",
	    "tags": [],
	    "Value": 11,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Chromecast",
	    "tags": [],
	    "Value": 12,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Linux",
	    "tags": [],
	    "Value": 13,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SteamOS",
	    "tags": [],
	    "Value": 14,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WebOS",
	    "tags": [],
	    "Value": 15,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DOS",
	    "tags": [],
	    "Value": 16,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BeOS",
	    "tags": [],
	    "Value": 17,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "UWP",
	    "tags": [],
	    "Value": 18,
	    "Enum": "Platform"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 19,
	    "Enum": "Platform"
	  },
	  { "type": "Enum", "Name": "PlaybackState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Begin",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PlaybackState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Delayed",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PlaybackState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Playing",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PlaybackState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Paused",
	    "tags": [],
	    "Value": 3,
	    "Enum": "PlaybackState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Completed",
	    "tags": [],
	    "Value": 4,
	    "Enum": "PlaybackState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cancelled",
	    "tags": [],
	    "Value": 5,
	    "Enum": "PlaybackState"
	  },
	  { "type": "Enum", "Name": "PlayerActions", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "CharacterForward",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PlayerActions"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CharacterBackward",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PlayerActions"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CharacterLeft",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PlayerActions"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CharacterRight",
	    "tags": [],
	    "Value": 3,
	    "Enum": "PlayerActions"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CharacterJump",
	    "tags": [],
	    "Value": 4,
	    "Enum": "PlayerActions"
	  },
	  { "type": "Enum", "Name": "PlayerChatType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "All",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PlayerChatType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Team",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PlayerChatType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Whisper",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PlayerChatType"
	  },
	  { "type": "Enum", "Name": "PoseEasingDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Out",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PoseEasingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InOut",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PoseEasingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "In",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PoseEasingDirection"
	  },
	  { "type": "Enum", "Name": "PoseEasingStyle", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Linear",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PoseEasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Constant",
	    "tags": [],
	    "Value": 1,
	    "Enum": "PoseEasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Elastic",
	    "tags": [],
	    "Value": 2,
	    "Enum": "PoseEasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cubic",
	    "tags": [],
	    "Value": 3,
	    "Enum": "PoseEasingStyle"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bounce",
	    "tags": [],
	    "Value": 4,
	    "Enum": "PoseEasingStyle"
	  },
	  { "type": "Enum", "Name": "PrivilegeType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Owner",
	    "tags": [],
	    "Value": 255,
	    "Enum": "PrivilegeType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Admin",
	    "tags": [],
	    "Value": 240,
	    "Enum": "PrivilegeType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Member",
	    "tags": [],
	    "Value": 128,
	    "Enum": "PrivilegeType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Visitor",
	    "tags": [],
	    "Value": 10,
	    "Enum": "PrivilegeType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Banned",
	    "tags": [],
	    "Value": 0,
	    "Enum": "PrivilegeType"
	  },
	  { "type": "Enum", "Name": "ProductPurchaseDecision", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NotProcessedYet",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ProductPurchaseDecision"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PurchaseGranted",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ProductPurchaseDecision"
	  },
	  { "type": "Enum", "Name": "QualityLevel", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Automatic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level01",
	    "tags": [],
	    "Value": 1,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level02",
	    "tags": [],
	    "Value": 2,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level03",
	    "tags": [],
	    "Value": 3,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level04",
	    "tags": [],
	    "Value": 4,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level05",
	    "tags": [],
	    "Value": 5,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level06",
	    "tags": [],
	    "Value": 6,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level07",
	    "tags": [],
	    "Value": 7,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level08",
	    "tags": [],
	    "Value": 8,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level09",
	    "tags": [],
	    "Value": 9,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level10",
	    "tags": [],
	    "Value": 10,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level11",
	    "tags": [],
	    "Value": 11,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level12",
	    "tags": [],
	    "Value": 12,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level13",
	    "tags": [],
	    "Value": 13,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level14",
	    "tags": [],
	    "Value": 14,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level15",
	    "tags": [],
	    "Value": 15,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level16",
	    "tags": [],
	    "Value": 16,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level17",
	    "tags": [],
	    "Value": 17,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level18",
	    "tags": [],
	    "Value": 18,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level19",
	    "tags": [],
	    "Value": 19,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level20",
	    "tags": [],
	    "Value": 20,
	    "Enum": "QualityLevel"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Level21",
	    "tags": [],
	    "Value": 21,
	    "Enum": "QualityLevel"
	  },
	  { "type": "Enum", "Name": "R15CollisionType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "OuterBox",
	    "tags": [],
	    "Value": 0,
	    "Enum": "R15CollisionType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InnerBox",
	    "tags": [],
	    "Value": 1,
	    "Enum": "R15CollisionType"
	  },
	  { "type": "Enum", "Name": "RenderPriority", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "First",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RenderPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Input",
	    "tags": [],
	    "Value": 100,
	    "Enum": "RenderPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Camera",
	    "tags": [],
	    "Value": 200,
	    "Enum": "RenderPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Character",
	    "tags": [],
	    "Value": 300,
	    "Enum": "RenderPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Last",
	    "tags": [],
	    "Value": 2000,
	    "Enum": "RenderPriority"
	  },
	  { "type": "Enum", "Name": "RenderingTestComparisonMethod", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "psnr",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RenderingTestComparisonMethod"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "diff",
	    "tags": [],
	    "Value": 1,
	    "Enum": "RenderingTestComparisonMethod"
	  },
	  { "type": "Enum", "Name": "ReverbType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NoReverb",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GenericReverb",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PaddedCell",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Room",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bathroom",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LivingRoom",
	    "tags": [],
	    "Value": 5,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "StoneRoom",
	    "tags": [],
	    "Value": 6,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Auditorium",
	    "tags": [],
	    "Value": 7,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ConcertHall",
	    "tags": [],
	    "Value": 8,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cave",
	    "tags": [],
	    "Value": 9,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Arena",
	    "tags": [],
	    "Value": 10,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hangar",
	    "tags": [],
	    "Value": 11,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CarpettedHallway",
	    "tags": [],
	    "Value": 12,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hallway",
	    "tags": [],
	    "Value": 13,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "StoneCorridor",
	    "tags": [],
	    "Value": 14,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Alley",
	    "tags": [],
	    "Value": 15,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Forest",
	    "tags": [],
	    "Value": 16,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "City",
	    "tags": [],
	    "Value": 17,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Mountains",
	    "tags": [],
	    "Value": 18,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Quarry",
	    "tags": [],
	    "Value": 19,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Plain",
	    "tags": [],
	    "Value": 20,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ParkingLot",
	    "tags": [],
	    "Value": 21,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SewerPipe",
	    "tags": [],
	    "Value": 22,
	    "Enum": "ReverbType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "UnderWater",
	    "tags": [],
	    "Value": 23,
	    "Enum": "ReverbType"
	  },
	  { "type": "Enum", "Name": "RibbonTool", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Select",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Scale",
	    "tags": [],
	    "Value": 1,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Rotate",
	    "tags": [],
	    "Value": 2,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Move",
	    "tags": [],
	    "Value": 3,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Transform",
	    "tags": [],
	    "Value": 4,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ColorPicker",
	    "tags": [],
	    "Value": 5,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MaterialPicker",
	    "tags": [],
	    "Value": 6,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Group",
	    "tags": [],
	    "Value": 7,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ungroup",
	    "tags": [],
	    "Value": 8,
	    "Enum": "RibbonTool"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 9,
	    "Enum": "RibbonTool"
	  },
	  { "type": "Enum", "Name": "RollOffMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Inverse",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RollOffMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Linear",
	    "tags": [],
	    "Value": 1,
	    "Enum": "RollOffMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InverseTapered",
	    "tags": [],
	    "Value": 3,
	    "Enum": "RollOffMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LinearSquare",
	    "tags": [],
	    "Value": 2,
	    "Enum": "RollOffMode"
	  },
	  { "type": "Enum", "Name": "RotationType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "MovementRelative",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RotationType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "CameraRelative",
	    "tags": [],
	    "Value": 1,
	    "Enum": "RotationType"
	  },
	  { "type": "Enum", "Name": "RuntimeUndoBehavior", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Aggregate",
	    "tags": [],
	    "Value": 0,
	    "Enum": "RuntimeUndoBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Snapshot",
	    "tags": [],
	    "Value": 1,
	    "Enum": "RuntimeUndoBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hybrid",
	    "tags": [],
	    "Value": 2,
	    "Enum": "RuntimeUndoBehavior"
	  },
	  { "type": "Enum", "Name": "SaveFilter", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "SaveAll",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SaveFilter"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SaveWorld",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SaveFilter"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SaveGame",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SaveFilter"
	  },
	  { "type": "Enum", "Name": "SavedQualitySetting", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Automatic",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel1",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel2",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel3",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel4",
	    "tags": [],
	    "Value": 4,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel5",
	    "tags": [],
	    "Value": 5,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel6",
	    "tags": [],
	    "Value": 6,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel7",
	    "tags": [],
	    "Value": 7,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel8",
	    "tags": [],
	    "Value": 8,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel9",
	    "tags": [],
	    "Value": 9,
	    "Enum": "SavedQualitySetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "QualityLevel10",
	    "tags": [],
	    "Value": 10,
	    "Enum": "SavedQualitySetting"
	  },
	  { "type": "Enum", "Name": "ScaleType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Stretch",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ScaleType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Slice",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ScaleType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Tile",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ScaleType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Fit",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ScaleType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Crop",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ScaleType"
	  },
	  { "type": "Enum", "Name": "ScreenOrientation", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "LandscapeLeft",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ScreenOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LandscapeRight",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ScreenOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LandscapeSensor",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ScreenOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Portrait",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ScreenOrientation"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sensor",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ScreenOrientation"
	  },
	  { "type": "Enum", "Name": "ScrollBarInset", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ScrollBarInset"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ScrollBar",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ScrollBarInset"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Always",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ScrollBarInset"
	  },
	  { "type": "Enum", "Name": "ScrollingDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "X",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ScrollingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Y",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ScrollingDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "XY",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ScrollingDirection"
	  },
	  { "type": "Enum", "Name": "SizeConstraint", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "RelativeXY",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SizeConstraint"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RelativeXX",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SizeConstraint"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RelativeYY",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SizeConstraint"
	  },
	  { "type": "Enum", "Name": "SortOrder", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "LayoutOrder",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SortOrder"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Name",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SortOrder"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Custom",
	    "tags": ["deprecated"],
	    "Value": 1,
	    "Enum": "SortOrder"
	  },
	  { "type": "Enum", "Name": "SoundType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NoSound",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Boing",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bomb",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Break",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Click",
	    "tags": [],
	    "Value": 4,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Clock",
	    "tags": [],
	    "Value": 5,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Slingshot",
	    "tags": [],
	    "Value": 6,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Page",
	    "tags": [],
	    "Value": 7,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ping",
	    "tags": [],
	    "Value": 8,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Snap",
	    "tags": [],
	    "Value": 9,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Splat",
	    "tags": [],
	    "Value": 10,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Step",
	    "tags": [],
	    "Value": 11,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "StepOn",
	    "tags": [],
	    "Value": 12,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Swoosh",
	    "tags": [],
	    "Value": 13,
	    "Enum": "SoundType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Victory",
	    "tags": [],
	    "Value": 14,
	    "Enum": "SoundType"
	  },
	  { "type": "Enum", "Name": "SpecialKey", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Insert",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SpecialKey"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Home",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SpecialKey"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "End",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SpecialKey"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PageUp",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SpecialKey"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PageDown",
	    "tags": [],
	    "Value": 4,
	    "Enum": "SpecialKey"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ChatHotkey",
	    "tags": [],
	    "Value": 5,
	    "Enum": "SpecialKey"
	  },
	  { "type": "Enum", "Name": "StartCorner", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "TopLeft",
	    "tags": [],
	    "Value": 0,
	    "Enum": "StartCorner"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TopRight",
	    "tags": [],
	    "Value": 1,
	    "Enum": "StartCorner"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BottomLeft",
	    "tags": [],
	    "Value": 2,
	    "Enum": "StartCorner"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BottomRight",
	    "tags": [],
	    "Value": 3,
	    "Enum": "StartCorner"
	  },
	  { "type": "Enum", "Name": "Status", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Poison",
	    "tags": ["deprecated"],
	    "Value": 0,
	    "Enum": "Status"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Confusion",
	    "tags": ["deprecated"],
	    "Value": 1,
	    "Enum": "Status"
	  },
	  { "type": "Enum", "Name": "Style", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "AlternatingSupports",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Style"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "BridgeStyleSupports",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Style"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NoSupports",
	    "tags": [],
	    "Value": 2,
	    "Enum": "Style"
	  },
	  { "type": "Enum", "Name": "SurfaceConstraint", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SurfaceConstraint"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hinge",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SurfaceConstraint"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SteppingMotor",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SurfaceConstraint"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Motor",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SurfaceConstraint"
	  },
	  { "type": "Enum", "Name": "SurfaceType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Smooth",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Glue",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Weld",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Studs",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Inlet",
	    "tags": [],
	    "Value": 4,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Universal",
	    "tags": [],
	    "Value": 5,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Hinge",
	    "tags": [],
	    "Value": 6,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Motor",
	    "tags": [],
	    "Value": 7,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SteppingMotor",
	    "tags": [],
	    "Value": 8,
	    "Enum": "SurfaceType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "SmoothNoOutlines",
	    "tags": [],
	    "Value": 10,
	    "Enum": "SurfaceType"
	  },
	  { "type": "Enum", "Name": "SwipeDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 0,
	    "Enum": "SwipeDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 1,
	    "Enum": "SwipeDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Up",
	    "tags": [],
	    "Value": 2,
	    "Enum": "SwipeDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Down",
	    "tags": [],
	    "Value": 3,
	    "Enum": "SwipeDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 4,
	    "Enum": "SwipeDirection"
	  },
	  { "type": "Enum", "Name": "TableMajorAxis", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "RowMajor",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TableMajorAxis"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ColumnMajor",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TableMajorAxis"
	  },
	  { "type": "Enum", "Name": "Technology", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Legacy",
	    "tags": [],
	    "Value": 0,
	    "Enum": "Technology"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Voxel",
	    "tags": [],
	    "Value": 1,
	    "Enum": "Technology"
	  },
	  { "type": "Enum", "Name": "TeleportResult", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Success",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Failure",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GameNotFound",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GameEnded",
	    "tags": [],
	    "Value": 3,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "GameFull",
	    "tags": [],
	    "Value": 4,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Unauthorized",
	    "tags": [],
	    "Value": 5,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Flooded",
	    "tags": [],
	    "Value": 6,
	    "Enum": "TeleportResult"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "IsTeleporting",
	    "tags": [],
	    "Value": 7,
	    "Enum": "TeleportResult"
	  },
	  { "type": "Enum", "Name": "TeleportState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "RequestedFromServer",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TeleportState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Started",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TeleportState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "WaitingForServer",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TeleportState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Failed",
	    "tags": [],
	    "Value": 3,
	    "Enum": "TeleportState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "InProgress",
	    "tags": [],
	    "Value": 4,
	    "Enum": "TeleportState"
	  },
	  { "type": "Enum", "Name": "TeleportType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "ToPlace",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TeleportType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ToInstance",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TeleportType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ToReservedServer",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TeleportType"
	  },
	  { "type": "Enum", "Name": "TextFilterContext", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "PublicChat",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextFilterContext"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PrivateChat",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TextFilterContext"
	  },
	  { "type": "Enum", "Name": "TextTruncate", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TextTruncate"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AtEnd",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextTruncate"
	  },
	  { "type": "Enum", "Name": "TextXAlignment", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TextXAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TextXAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextXAlignment"
	  },
	  { "type": "Enum", "Name": "TextYAlignment", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Top",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TextYAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextYAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bottom",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TextYAlignment"
	  },
	  { "type": "Enum", "Name": "TextureMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Stretch",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TextureMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Wrap",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextureMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Static",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TextureMode"
	  },
	  { "type": "Enum", "Name": "TextureQueryType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NonHumanoid",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TextureQueryType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NonHumanoidOrphaned",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TextureQueryType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Humanoid",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TextureQueryType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HumanoidOrphaned",
	    "tags": [],
	    "Value": 3,
	    "Enum": "TextureQueryType"
	  },
	  { "type": "Enum", "Name": "ThreadPoolConfig", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Auto",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PerCore1",
	    "tags": [],
	    "Value": 101,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PerCore2",
	    "tags": [],
	    "Value": 102,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PerCore3",
	    "tags": [],
	    "Value": 103,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "PerCore4",
	    "tags": [],
	    "Value": 104,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads1",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads2",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads3",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads4",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads8",
	    "tags": [],
	    "Value": 8,
	    "Enum": "ThreadPoolConfig"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Threads16",
	    "tags": [],
	    "Value": 16,
	    "Enum": "ThreadPoolConfig"
	  },
	  { "type": "Enum", "Name": "ThrottlingPriority", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Extreme",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ThrottlingPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ElevatedOnServer",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ThrottlingPriority"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ThrottlingPriority"
	  },
	  { "type": "Enum", "Name": "ThumbnailSize", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Size48x48",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size180x180",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size420x420",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size60x60",
	    "tags": [],
	    "Value": 3,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size100x100",
	    "tags": [],
	    "Value": 4,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size150x150",
	    "tags": [],
	    "Value": 5,
	    "Enum": "ThumbnailSize"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Size352x352",
	    "tags": [],
	    "Value": 6,
	    "Enum": "ThumbnailSize"
	  },
	  { "type": "Enum", "Name": "ThumbnailType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "HeadShot",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ThumbnailType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AvatarBust",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ThumbnailType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "AvatarThumbnail",
	    "tags": [],
	    "Value": 2,
	    "Enum": "ThumbnailType"
	  },
	  { "type": "Enum", "Name": "TickCountSampleMethod", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Fast",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TickCountSampleMethod"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Benchmark",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TickCountSampleMethod"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Precise",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TickCountSampleMethod"
	  },
	  { "type": "Enum", "Name": "TopBottom", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Top",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TopBottom"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TopBottom"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bottom",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TopBottom"
	  },
	  { "type": "Enum", "Name": "TouchCameraMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Follow",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Classic",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TouchCameraMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Orbital",
	    "tags": [],
	    "Value": 3,
	    "Enum": "TouchCameraMovementMode"
	  },
	  { "type": "Enum", "Name": "TouchMovementMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Default",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbstick",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DPad",
	    "tags": [],
	    "Value": 2,
	    "Enum": "TouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Thumbpad",
	    "tags": [],
	    "Value": 3,
	    "Enum": "TouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ClickToMove",
	    "tags": [],
	    "Value": 4,
	    "Enum": "TouchMovementMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "DynamicThumbstick",
	    "tags": [],
	    "Value": 5,
	    "Enum": "TouchMovementMode"
	  },
	  { "type": "Enum", "Name": "TweenStatus", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Canceled",
	    "tags": [],
	    "Value": 0,
	    "Enum": "TweenStatus"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Completed",
	    "tags": [],
	    "Value": 1,
	    "Enum": "TweenStatus"
	  },
	  { "type": "Enum", "Name": "UiMessageType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "UiMessageError",
	    "tags": [],
	    "Value": 0,
	    "Enum": "UiMessageType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "UiMessageInfo",
	    "tags": [],
	    "Value": 1,
	    "Enum": "UiMessageType"
	  },
	  { "type": "Enum", "Name": "UploadSetting", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Never",
	    "tags": [],
	    "Value": 0,
	    "Enum": "UploadSetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Ask",
	    "tags": [],
	    "Value": 1,
	    "Enum": "UploadSetting"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Always",
	    "tags": [],
	    "Value": 2,
	    "Enum": "UploadSetting"
	  },
	  { "type": "Enum", "Name": "UserCFrame", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Head",
	    "tags": [],
	    "Value": 0,
	    "Enum": "UserCFrame"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftHand",
	    "tags": [],
	    "Value": 1,
	    "Enum": "UserCFrame"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightHand",
	    "tags": [],
	    "Value": 2,
	    "Enum": "UserCFrame"
	  },
	  { "type": "Enum", "Name": "UserInputState", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Begin",
	    "tags": [],
	    "Value": 0,
	    "Enum": "UserInputState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Change",
	    "tags": [],
	    "Value": 1,
	    "Enum": "UserInputState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "End",
	    "tags": [],
	    "Value": 2,
	    "Enum": "UserInputState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Cancel",
	    "tags": [],
	    "Value": 3,
	    "Enum": "UserInputState"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 4,
	    "Enum": "UserInputState"
	  },
	  { "type": "Enum", "Name": "UserInputType", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "MouseButton1",
	    "tags": [],
	    "Value": 0,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MouseButton2",
	    "tags": [],
	    "Value": 1,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MouseButton3",
	    "tags": [],
	    "Value": 2,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MouseWheel",
	    "tags": [],
	    "Value": 3,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MouseMovement",
	    "tags": [],
	    "Value": 4,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Touch",
	    "tags": [],
	    "Value": 7,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Keyboard",
	    "tags": [],
	    "Value": 8,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Focus",
	    "tags": [],
	    "Value": 9,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Accelerometer",
	    "tags": [],
	    "Value": 10,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gyro",
	    "tags": [],
	    "Value": 11,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad1",
	    "tags": [],
	    "Value": 12,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad2",
	    "tags": [],
	    "Value": 13,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad3",
	    "tags": [],
	    "Value": 14,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad4",
	    "tags": [],
	    "Value": 15,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad5",
	    "tags": [],
	    "Value": 16,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad6",
	    "tags": [],
	    "Value": 17,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad7",
	    "tags": [],
	    "Value": 18,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Gamepad8",
	    "tags": [],
	    "Value": 19,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "TextInput",
	    "tags": [],
	    "Value": 20,
	    "Enum": "UserInputType"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 21,
	    "Enum": "UserInputType"
	  },
	  { "type": "Enum", "Name": "VRTouchpad", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VRTouchpad"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VRTouchpad"
	  },
	  { "type": "Enum", "Name": "VRTouchpadMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Touch",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VRTouchpadMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "VirtualThumbstick",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VRTouchpadMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "ABXY",
	    "tags": [],
	    "Value": 2,
	    "Enum": "VRTouchpadMode"
	  },
	  { "type": "Enum", "Name": "VerticalAlignment", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Center",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VerticalAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Top",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VerticalAlignment"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Bottom",
	    "tags": [],
	    "Value": 2,
	    "Enum": "VerticalAlignment"
	  },
	  { "type": "Enum", "Name": "VerticalScrollBarPosition", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Left",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VerticalScrollBarPosition"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Right",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VerticalScrollBarPosition"
	  },
	  { "type": "Enum", "Name": "VibrationMotor", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Large",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VibrationMotor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Small",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VibrationMotor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftTrigger",
	    "tags": [],
	    "Value": 2,
	    "Enum": "VibrationMotor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightTrigger",
	    "tags": [],
	    "Value": 3,
	    "Enum": "VibrationMotor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "LeftHand",
	    "tags": [],
	    "Value": 4,
	    "Enum": "VibrationMotor"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "RightHand",
	    "tags": [],
	    "Value": 5,
	    "Enum": "VibrationMotor"
	  },
	  { "type": "Enum", "Name": "VideoQualitySettings", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "LowResolution",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VideoQualitySettings"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "MediumResolution",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VideoQualitySettings"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "HighResolution",
	    "tags": [],
	    "Value": 2,
	    "Enum": "VideoQualitySettings"
	  },
	  { "type": "Enum", "Name": "VirtualInputMode", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Recording",
	    "tags": [],
	    "Value": 1,
	    "Enum": "VirtualInputMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Playing",
	    "tags": [],
	    "Value": 2,
	    "Enum": "VirtualInputMode"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "VirtualInputMode"
	  },
	  { "type": "Enum", "Name": "WaterDirection", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "NegX",
	    "tags": [],
	    "Value": 0,
	    "Enum": "WaterDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "X",
	    "tags": [],
	    "Value": 1,
	    "Enum": "WaterDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NegY",
	    "tags": [],
	    "Value": 2,
	    "Enum": "WaterDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Y",
	    "tags": [],
	    "Value": 3,
	    "Enum": "WaterDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "NegZ",
	    "tags": [],
	    "Value": 4,
	    "Enum": "WaterDirection"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Z",
	    "tags": [],
	    "Value": 5,
	    "Enum": "WaterDirection"
	  },
	  { "type": "Enum", "Name": "WaterForce", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "None",
	    "tags": [],
	    "Value": 0,
	    "Enum": "WaterForce"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Small",
	    "tags": [],
	    "Value": 1,
	    "Enum": "WaterForce"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Medium",
	    "tags": [],
	    "Value": 2,
	    "Enum": "WaterForce"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Strong",
	    "tags": [],
	    "Value": 3,
	    "Enum": "WaterForce"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Max",
	    "tags": [],
	    "Value": 4,
	    "Enum": "WaterForce"
	  },
	  { "type": "Enum", "Name": "ZIndexBehavior", "tags": [] },
	  {
	    "type": "EnumItem",
	    "Name": "Global",
	    "tags": [],
	    "Value": 0,
	    "Enum": "ZIndexBehavior"
	  },
	  {
	    "type": "EnumItem",
	    "Name": "Sibling",
	    "tags": [],
	    "Value": 1,
	    "Enum": "ZIndexBehavior"
	  }
	]
	]=];
end;

_Modules_[Tween] = function()--[[Tween]] 
	local script = Tween;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local TweenService = game:GetService("TweenService");
	local Create, Play;do
		local create = TweenService.Create;
		Create = function(...)
			return create(TweenService, ...);
		end;
		local Part = Instance.new("Part");
		Play = Create(Part, TweenInfo.new(), {Transparency = 1}).Play;
		Part:Destroy();
	end;
	
	local Tween = {};
	
	function Tween.PlayNew(...)
		return Play(Create(...));
	end;
	
	-- IK I could just have a local for the tweeninfo, but this is more cool
	Tween.TweenInfo = setmetatable({
		Cache = {},
	}, {__call = function(self, ...)
		local arguments = table.concat{...};
		if not self.Cache[arguments] then
			self.Cache[arguments] = TweenInfo.new(...);
		end;
		return self.Cache[arguments];
	end});
	
	return Tween;
end;

_Modules_[DefaultSettings] = function()--[[DefaultSettings]] 
	local script = DefaultSettings;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	return {
		TweenList = true,
		TweenListObjects = true
	};
end;

_Modules_[Notification] = function()--[[Notification]] 
	local script = Notification;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	local Tween = require(script.Parent.Tween);
	
	local NotificationList = script.Parent.Parent.NotificationList;
	local Template = NotificationList.Notification;
	Template.Parent = nil;
	
	local auto_scale_x_increment = UDim2.fromScale(0.05, 0);
	local auto_scale_y_increment = UDim2.fromOffset(0, 10);
	local function notification(message, duration, color)
		duration = duration or 5;
		local Clone = Template:Clone();
		Clone.Parent = NotificationList;
	
		local Notif = Clone.Notification;
		Notif.Position = UDim2.fromScale(1, 0);
		Notif.Title.Text = tostring(message);
	
		local Size = Clone.Size; 
		while not Notif.Title.TextFits do
			local x_passed = Size.X.Scale + auto_scale_x_increment > 1;
			local y_passed = Size.Y.Offset + auto_scale_y_increment > 100;
			
			if x_passed and y_passed then
				break;
			end;
			if not x_passed then
				Size += auto_scale_x_increment;
			end;
			if not y_passed then
				Size += auto_scale_y_increment;
			end;
		end;
		Tween.PlayNew(Clone, Tween.TweenInfo(1, 8), {Size = Size});
	
		if color then Notif.Title.TextColor3 = color; end;
		
		Tween.PlayNew(Notif, Tween.TweenInfo(1, 8), {Position = UDim2.new()});
		
		local Destroyed = false;
		task.delay(duration, function()
			if Destroyed then
				return;
			end;
			Tween.PlayNew(Notif, Tween.TweenInfo(1, 8), {Position = UDim2.new(1, 10)});
			task.wait(1);
			if Destroyed then
				return;
			end;
			Clone:Destroy();
		end);
		Notif.Status.Size = UDim2.fromOffset(Notif.AbsoluteSize.X, 4);
		Tween.PlayNew(Notif.Status, Tween.TweenInfo(duration + 0.1), {Size = UDim2.fromOffset(0, 4)});
		
		Notif.Close.MouseButton1Click:Connect(function()
			Destroyed = true;
			Tween.PlayNew(Notif, Tween.TweenInfo(1, 8), {Position = UDim2.new(1, 10)});
			task.wait(1);
			Clone:Destroy();
		end);
	end;
	local Notification = {};
	
	Notification.Notification = notification;
	function Notification.Error(message, duration)
		notification(message, duration, Color3.fromRGB(255, 88, 88));
		warn("ERROR: ", message);
	end;
	
	return Notification;
end;


--Scripts
task.spawn(function()--[[LocalScript]] 
	local script = LocalScript;
	local require = function(m)
		if _Modules_[m] then
			return _Modules_[m]();
		end;
		return require(m);
	end;


	--warn"WAITING FOR LOCAL CHARACTER";
	--local valid = false;
	
	--local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait();
	--local con; con = character.ChildAdded:Connect(function()
	--	if #character:GetChildren() > 10 then
	--		con:Disconnect();
	--		valid = true;
	--	end;
	--end);
	
	--repeat task.wait()until valid;
	--warn"DONE WAITING";
	
	local MainFrame = script.Parent.Main;
	local ObjectTemplate = MainFrame.Explorer.ObjectContainer.Object;
	ObjectTemplate.Parent = nil;
	local PropertyTemplate = MainFrame.Properties.PropertyContainer.Property;
	PropertyTemplate.Parent = nil;
	
	
	local PriorityList = {
		"Workspace",
		"Players",
		"CoreGui",
		"Lighting",
		"ReplicatedFirst",
		"ReplicatedStorage",
		"StarterGui",
		"StarterPack",
		"StarterPlayer",
		"Teams",
		"SoundService",
		"Chat"
	};
	
	-- TODO: MAYBE MAKE MODULES USE middleclass library
	
	MainFrame.TopBar.Close.MouseButton1Click:Once(function()
		script.Parent:Destroy();
	end);
	
	local InstanceList = require(script.InstanceList).new(MainFrame, ObjectTemplate, PropertyTemplate);
	local Settings = InstanceList.Settings;
	
	local function addInstanceToList(instance)
		return InstanceList:addFromInstance(instance);
	end;
	
	for _, ServiceName in next, PriorityList do
		
		local instance = game:GetService(ServiceName);
		if (pcall(function()return instance.Name,instance.Parent end)) then
			addInstanceToList(instance);
		end;
		
	end;
end);
