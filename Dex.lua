--[[

	Dex Created By Viktor188834 (RU)
	(GitHub: https://github.com/Viktor188834)
	(Discord: 12gaft)
	
	2026.01.03
		Starting Create
	
]]
local _self = {}
local self = setmetatable(_self, {})
local mouse = game.Players.LocalPlayer:GetMouse()

self.Colors = {}

self.Colors.Black = {
	Main = Color3.fromRGB(15, 15, 15),
	Secondary = Color3.fromRGB(30, 30, 30),
	Thirty = Color3.fromRGB(50, 50, 50),
	Conversely = Color3.fromRGB(185, 185, 185)
}

self.Colors.Red = {
	Main = Color3.fromRGB(190, 42, 42),
	Secondary = Color3.fromRGB(145, 32, 32),
	Thirty = Color3.fromRGB(98, 22, 22);
	Conversely = Color3.fromRGB(185, 141, 141);
}

self.Colors.Blue = {
	Main = Color3.fromRGB(14, 79, 177),
	Secondary = Color3.fromRGB(18, 67, 156),
	Thirty = Color3.fromRGB(25, 48, 150),
	Conversely = Color3.fromRGB(162, 169, 226)
}

self.Colors.White = {
	Main = Color3.fromRGB(235, 235, 235),
	Secondary = Color3.fromRGB(236, 236, 236),
	Thirty = Color3.fromRGB(182, 182, 182),
	Conversely = Color3.fromRGB(45, 45, 45),
}

self.Row = 0

local ColorNow = self.Colors.Black

local ImageLibrary = --loadstring(game:HttpGet("https://github.com/Viktor188834/New-Dex/blob/main/ImageLibrarys.lua"))() or 
	require(game:GetService("ReplicatedStorage"):WaitForChild("ImagesLibrary"))
local f = {}

self.CTRL_Active = false
game.UserInputService.InputBegan:Connect(function(i, g)
	if g then return end
	if i.KeyCode == Enum.KeyCode.LeftControl then
		self.CTRL_Active = true
	end
end)
game.UserInputService.InputEnded:Connect(function(i, g)
	if i.KeyCode == Enum.KeyCode.LeftControl then
		self.CTRL_Active = false
	end
end)

local function create(name, prop)
	local new = Instance.new(name)
	for i,v in pairs(prop) do
		new[i] = v
	end
	return new
end

local serv = {}
for _,v in game:GetChildren() do
	local name = ""
	for _, v in string.split(v.Name, " ") do
		name = name..v
	end
	serv[name] = v
end

local Events_Folder = create("Folder", {
	Parent = serv.ReplicatedStorage;
	Name = "Events"
})
local events = {
	UpdateTree = create("BindableEvent", {
		Parent = create("Folder", {
			Parent = Events_Folder;
			Name = "UpdateTree";
		});
	});
}

local Dex1 = create("ScreenGui", {
	Parent = serv.CoreGui or serv.Players.LocalPlayer.PlayerGui, 
	ResetOnSpawn = false, 
	Name = "Dex___Viktor188834", 
	DisplayOrder = 52,
})

local DexTree: ScrollingFrame = create("ScrollingFrame", {
	Parent = Dex1, 
	Name = "DexTree", 
	Size = UDim2.new(0.2, 0, 0.5, 0), 
	Position = UDim2.new(1, 0, 0.5, 0), 
	AnchorPoint = Vector2.new(1, 1),
	BackgroundColor3 = ColorNow.Main,
	ScrollBarThickness = 3,
	BorderSizePixel = 0,
})

function f:get_image(imageName: string)
	if ImageLibrary[imageName] then
		return ImageLibrary[imageName]
	else
		return ImageLibrary["nil"] 
	end
end

function f:math_(but)
	return (#DexTree:GetChildren()*but.AbsoluteSize.Y)
end

function f:tabIsA(tab: {}, IsA: string)
	for i,v in tab do
		if v:IsA(IsA) then
		else
			return false
		end
	end
	return true
end

local DexProp = create("ScrollingFrame", {
	Parent = Dex1,
	Name = "DexProperties",
	Size = UDim2.new(0.2, 0, 0.5, 0),
	Position = UDim2.new(1, 0, 0.5, 0),
	AnchorPoint = Vector2.new(1, 0),
	BorderSizePixel = 0,
	ScrollBarImageTransparency = 1,
	BackgroundColor3 = ColorNow.Main
})

local Dex2 = create("TextLabel", {
	Parent = Dex1,
	Name = "TopBar",
	Size = UDim2.new(0.2, 0, 0, 15),
	Position = UDim2.new(1, 0, 0, 0),
	BorderSizePixel = 0,
	AnchorPoint = Vector2.new(1, 1),
	BackgroundColor3 = ColorNow.Thirty;
	TextColor3 = ColorNow.Conversely;
	Text = "Dex";
})

local Dex3 = create("ImageButton", {
	Parent = Dex2,
	Name = "Close",
	Size = UDim2.new(0, 10, 0, 10),
	Position = UDim2.new(0, 2, 1, -2),
	AnchorPoint = Vector2.new(0, 1),
	Image = ImageLibrary.Close,
	BorderSizePixel = 0,
	BackgroundColor3 = ColorNow.Thirty
})

local Dex4 = create("TextLabel", {
	Parent = Dex1;
	Size = UDim2.new(0.2, 0, 0, 15);
	Position = UDim2.new(1, 0, 0.5, 0);
	AnchorPoint = Vector2.new(1, 0);
	BorderSizePixel = 0;
	TextColor3 = ColorNow.Conversely;
	BackgroundColor3 = ColorNow.Thirty;
	Text = "Properties"
})

local Dex5 = create("ImageButton", {
	Parent = Dex4,
	Name = "Close",
	Size = UDim2.new(0, 10, 0, 10),
	Position = UDim2.new(0, 2, 1, -2),
	AnchorPoint = Vector2.new(0, 1),
	Image = ImageLibrary.Close,
	BorderSizePixel = 0,
	BackgroundColor3 = ColorNow.Thirty
})

local Dex6 = create("ImageButton", {
	Parent = Dex1;
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(0, 0, 0.5, 0);
	Size = UDim2.new(0, 25, 0, 25);
	Image = f:get_image("ArrowRight");
	BorderSizePixel = 0;
	BackgroundColor3 = ColorNow.Secondary
})

local Dex7 = create("Frame", {
	Parent = Dex6;
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(1, 5, 0.5, 0);
	Size = UDim2.new(0, 0, 3, 0);
	BackgroundColor3 = ColorNow.Secondary;
	BorderSizePixel = 0;
	Visible = false;
})

local Dex8 = create("UIListLayout", {
	Parent = Dex7;
	Wraps = true;
	HorizontalAlignment = Enum.HorizontalAlignment.Center;
	VerticalAlignment = Enum.VerticalAlignment.Center;
	Padding = UDim.new(0, 3)
})

;(function()
	local function OnActive()
		Dex7.Visible = not Dex7.Visible
	end
	Dex6.MouseButton1Down:Connect(OnActive)
	Dex6.TouchTap:Connect(OnActive)
end)()

local Left_Frame = {}

Left_Frame.AddButton = function(text: string, callback, Icon: string)
	local image = create("ImageButton", {
		Name = text;
		Image = Icon;
		Size = UDim2.new(0, 50, 0, 50);
		Position = UDim2.new(0, 0, 0, #Dex7:GetChildren()*30);
		Parent = Dex7;
		BackgroundTransparency = 1;
	})
	local TextLabel = create("TextLabel", {
		Parent = image;
		Text = text;
		TextColor3 = ColorNow.Conversely;
		BackgroundTransparency = 1;
		TextStrokeTransparency = 0;
		TextStrokeColor3 = ColorNow.Main;
		Size = UDim2.new(1, 0, 0,1, 0);
		Position = UDim2.new(0, 0, 1, 0);
	})
	image.MouseButton1Down:Connect(callback);
	image.TouchTap:Connect(callback)
	Dex7.Size = UDim2.new(0, 50, 0, (#Dex7:GetChildren()-1)*50)
end

local Properties_Storage_Class = {
	["Basic"] = {
		["Archivable"] = "Data";
		["ClassName"] = "Data";
		["Name"] = "Data";
		["Parent"] = "Data";
	};
	["BasePart"] = {
		["Color"] = "Appearance";
		["CastShadow"] = "Appearance";
		["Material"] = "Appearance";
		["Transparency"] = "Appearance";
		["Reflectance"] = "Appearance";
		["Size"] = "Transform";
		["CFrame"] = "Transform";
		["PivotOffset"] = "Pivot";
		["EnableFluidForces"] = "Behavior";
		["CanCollide"] = "Collision";
		["CanTouch"] = "Collision";
		["CollisionGroup"] = "Collision";
		["Anchored"] = "Collision";
		["Mass"] = "Collision";
		["Shape"] = "Collision"
	};
}

local function Properties_Text(buttons,ins: Instance,i,v,isprop)
	if type(buttons[v]) == "nil" then
		buttons[v] = create("TextLabel", {
			Size = UDim2.new(1, 0, 0, 25);
			Position = UDim2.new(0, 0, 0, #DexProp:GetChildren()*25+15);
			Parent = DexProp;
			BorderSizePixel = 0;
			BackgroundColor3 = ColorNow.Secondary;
			RichText = true;
			TextSize = 10;
			TextColor3 = ColorNow.Conversely;
			Text = v
		})
	end
	local t = create("TextLabel", {
		Position = UDim2.new(0, 0, 0, #DexProp:GetChildren()*25+15);
		Parent = DexProp;
		Size = UDim2.new(0.5, 0, 0, 25);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		RichText = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextSize = 10;
		TextColor3 = ColorNow.Conversely;
		Text = tostring(i)
	});
	local readonly = false
	if isprop then
		local old = ins[i];
		local e,a = pcall(function()
			ins[i] = "lol===========3254rtsdgxfhtru6yducyjhv"
		end)
		if e == false then
			readonly = true
		else
			ins[i] = old
		end
	end
	if isprop and type(ins[i]) == "boolean" or type(ins:GetAttribute(i)) == "boolean" then
		local image: ImageButton = create("ImageButton", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1.5, 0, 0, 0);
			Size = UDim2.new(0, 25, 0, 25);
			AnchorPoint = Vector2.new(0.5, 0);
		})
		if isprop then
			image.Image = f:get_image("Boolean_"..tostring(ins[i]));
			ins:GetPropertyChangedSignal(i):Connect(function()
				image.Image = f:get_image("Boolean_"..tostring(ins[i]))
			end)
		else
			image.Image = f:get_image("Boolean_"..tostring(ins:GetAttribute(i)))
			ins:GetAttributeChangedSignal(i):Connect(function()
				image.Image = f:get_image("Boolean_"..tostring(ins:GetAttribute(i)))
			end)
		end
		local function OnActive()
			ins[i] = not ins[i]
		end
		image.MouseButton1Down:Connect(OnActive);
		image.TouchTap:Connect(OnActive);
	elseif isprop and type(ins[i]) == "string" or type(ins:GetAttribute(i)) == "string" then
		local textbox: TextBox = create("TextBox", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1, 0, 0, 0);
			Size = UDim2.new(1, 0, 0, 25);
			AnchorPoint = Vector2.new(0, 0);
			ClearTextOnFocus = false;
			TextColor3 = ColorNow.Conversely
		})
		if isprop then
			textbox.Text = ins[i]
		else
			textbox.Text = ins:GetAttribute(i)
		end
		ins:GetAttributeChangedSignal(i):Connect(function()
			textbox.Text = ins[i]
		end)
		local function OnActive()
			if not readonly and isprop then
				ins[i] = textbox.Text
			elseif not isprop then
				ins:SetAttribute(i, textbox.Text)
			end
		end
		textbox.InputEnded:Connect(OnActive);
	elseif isprop and type(ins[i]) == "number" or type(ins:GetAttribute(i)) == "number" then
		local textbox: TextBox = create("TextBox", {
			Parent = t;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Position = UDim2.new(1, 0, 0, 0);
			Size = UDim2.new(1, 0, 0, 25);
			AnchorPoint = Vector2.new(0, 0);
			ClearTextOnFocus = false;
			TextColor3 = ColorNow.Conversely
		})
		if isprop then
			textbox.Text = ins[i]
		else
			textbox.Text = ins:GetAttribute(i)
		end
		ins:GetAttributeChangedSignal(i):Connect(function()
			textbox.Text = ins[i]
		end)
		local function OnActive()
			if tonumber(textbox.Text) then
				if (not readonly) and isprop then
					ins[i] = tonumber(textbox.Text)
				elseif not isprop then
					ins:SetAttribute(i, tonumber(textbox.Text))
				end
			end
		end
		textbox.InputEnded:Connect(OnActive);
	end
end

local function Properties(ins: Instance, frame: TextButton)
	local buttons = {}
	for i,v in DexProp:GetChildren() do
		v:Destroy()
	end
	for i,v in Properties_Storage_Class.Basic do
		Properties_Text(buttons,ins,i,v,true)
	end
	for i,v in Properties_Storage_Class do
		if ins:IsA(i) then
			for i,v in v do
				Properties_Text(buttons,ins,i,v,true)
			end
		end
	end
	for i,v in ins:GetAttributes() do
		Properties_Text(buttons,ins,i,"Attributes",false)
	end
end
self.ID = 0
self.Selections = {}

function f:On_Double_Click(ins: Instance, mainframe: TextButton)
	
end

local function Path_Doing(parents: Instance, MainFrameParents: TextButton)
	if parents.Name == "Dex___Viktor188834" then return end
	local any = {
		Childrens_Did = false;
		Childrens_Buttons = {};
		Row = self.Row;
		Row_Buttons = self.Row_Buttons;
		id = self.ID;
		selected = false
	}
	self.ID += 1
	local MainFrame: TextButton = create("TextButton", {
		Parent = DexTree;
		Size = UDim2.new(1, -(16*(self.Row+1)), 0, 20),
		BackgroundColor3 = ColorNow.Secondary;
		BorderSizePixel = 0;
		Name = parents.Name;
		AnchorPoint = Vector2.new(1, 0);
		Text = "";
		AutoButtonColor = false
	})
	local UICorner_MainFrame = create("UICorner", {
		Parent = MainFrame;
		CornerRadius = UDim.new(0, 3)
	})
	MainFrame.Position = UDim2.new(1, 0, 0, f:math_(MainFrame))
	if self.Row >= 1 then
		if not self.Row_Buttons then
			self.Row_Buttons = 1
		else
			self.Row_Buttons += 1
		end
		MainFrame.Position = UDim2.new(1, 0, 0, (MainFrameParents.Position.Y.Offset+20*self.Row_Buttons))
	end
	MainFrame:SetAttribute("Dopolnitelno", MainFrame.Position.Y.Offset//20)
	MainFrame:SetAttribute("row", any.Row)
	game:GetService("RunService").Heartbeat:Connect(function()
		local a = false
		for i,v in self.Selections do
			if v.Parent == parents then
				any.selected = true
				a = true
			end
		end
		if not a then
			any.selected = false
		end
		for i,v in any do
			if type(v) ~= "table" and type(v) ~= "nil" then
				MainFrame:SetAttribute(i,v)
				parents:SetAttribute(i,v)
			end
		end
	end)
	local Icon = create("ImageLabel", {
		Parent = MainFrame;
		Size = UDim2.new(0, 15, 0, 15);
		Position = UDim2.new(0, 2, 0.1, 2);
		Image = f:get_image(parents.ClassName);
		BackgroundTransparency = 1;
	})
	local Text = create("TextLabel", {
		Parent = MainFrame;
		Size = UDim2.new(0.5, 0, 0.5, 0);
		Position = UDim2.new(0, 17, 0.5, 0);
		AnchorPoint = Vector2.new(0, 0.5);
		Text = parents.Name;
		TextSize = 8;
		TextXAlignment = Enum.TextXAlignment.Left;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		RichText = true;
		TextColor3 = ColorNow.Conversely;
	})
	local Show = create("ImageButton", {
		Parent = MainFrame;
		Name = "Show\/";
		Size = UDim2.new(0, 14, 0, 14);
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(0, -1, 0, 1);
		BackgroundTransparency = 1;
		Image = ImageLibrary.ArrowDown;
	})
	parents.Destroying:Connect(function()
		MainFrame:Destroy()
		events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -1, any.Row)
		DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	end)
	if #parents:GetChildren() <= 0 then
		Show.Visible = false
	else
		Show.Visible = true
	end
	parents.ChildRemoved:Connect(function(v)
		if #parents:GetChildren() <= 0 then
			Show.Visible = false
		else
			Show.Visible = true
		end
		DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	end)
	parents.ChildAdded:Connect(function(v)
		if #parents:GetChildren() <= 0 then
			Show.Visible = false
		else
			Show.Visible = true
		end
		if any.Childrens_Did == true then
			self.Row = 0
			local function do_(v)
				if v.Parent then
					self.Row += 1
					do_(v.Parent)
				else
					return false
				end
				return true
			end
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), #parents:GetChildren(), any.Row)
			do_(parents)
			table.insert(any.Childrens_Buttons, Path_Doing(v, MainFrame))
			self.Row_Buttons = false
			self.Row = 0
		end
	end)
	MainFrame.MouseEnter:Connect(function()
		if any.selected == true then
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			MainFrame.BackgroundColor3 = ColorNow.Thirty
		end
	end)
	MainFrame.MouseLeave:Connect(function()
		if any.selected == true then
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			MainFrame.BackgroundColor3 = ColorNow.Secondary
		end
	end)
	MainFrame.MouseButton1Down:Connect(function(x,y)
		if #self.Selections >= 1 and self.Selections[1].Parent == parents then
			f:On_Double_Click(parents,MainFrame)
		end
		if self.CTRL_Active == true then
			table.insert(self.Selections, {Parent = parents, Frame = MainFrame})
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		else
			for i,v in self.Selections do
				v.Frame.BackgroundColor3 = ColorNow.Secondary
			end
			self.Selections = {{Parent = parents, Frame = MainFrame}}
			MainFrame.BackgroundColor3 = Color3.fromRGB(14, 123, 190)
		end
		Properties(parents, MainFrame)
	end)
	Show.MouseButton1Down:Connect(function()
		any.Childrens_Did = not any.Childrens_Did
		if any.Childrens_Did == false then
			Show.Image = ImageLibrary.ArrowDown
			local function cont(p,ischildren)
				if ischildren then
					for i,v in DexTree:GetChildren() do
						if v:GetAttribute("id") == p:GetAttribute("id") then
							v:Destroy()
						end
					end
				end
				if p:GetAttribute("Childrens_Did") == true then
					for i,v in p:GetChildren() do
						cont(v,true)
						events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -1, any.Row)
					end
				end
			end
			cont(parents,false)
			for _, v in any.Childrens_Buttons do
				v:Destroy()
			end
			DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
		else
			Show.Image = ImageLibrary.ArrowUp
			self.Row = 0
			local function do_(v)
				if v.Parent then
					self.Row += 1
					do_(v.Parent)
				else
					return false
				end
				return true
			end
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), #parents:GetChildren(), any.Row)
			do_(parents)
			for _,v in parents:GetChildren() do
				table.insert(any.Childrens_Buttons, Path_Doing(v, MainFrame))
			end
			self.Row_Buttons = false
			self.Row = 0
		end
	end)
	MainFrame.MouseButton2Down:Connect(function()
		local Frame_Right_Mouse: Frame = create("Frame", {
			Parent = Dex1;
			Position = UDim2.new(0, mouse.X, 0, mouse.Y);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.new(0, 70, 0, 0);
			BackgroundColor3 = ColorNow.Thirty;
			BorderSizePixel = 0;
		})
		local corner = create("UICorner", {
			Parent = Frame_Right_Mouse;
			CornerRadius = UDim.new(0, 5)
		})
		local UIListLayout = create("UIListLayout", {
			Parent = Frame_Right_Mouse;
			Padding = UDim.new(0, 3);
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		})
		local Mini_Frame = {}
		Mini_Frame.In = {}
		Mini_Frame.Add = function(text: string, image: string, response)
			local b = create("TextButton", {
				AnchorPoint = Vector2.new(1, 0);
				Parent = Frame_Right_Mouse;
				Position = UDim2.new(1, 0, 0, #Mini_Frame.In*19);
				Size = UDim2.new(0, 50, 0, 18);
				BackgroundTransparency = 1;
				Text = text;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextColor3 = ColorNow.Conversely;
				RichText = true;
				BorderSizePixel = 0;
			})
			local corner = create("UICorner", {
				Parent = b;
				CornerRadius = UDim.new(0, 5)
			})
			local image = create("ImageLabel", {
				Parent = b;
				BackgroundTransparency = 1;
				Image = image;
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(0, 20, 0, 20);
				AnchorPoint = Vector2.new(1, 0);
			})
			table.insert(Mini_Frame.In, b)
			b.MouseButton1Down:Connect(response)
			Frame_Right_Mouse.Size = UDim2.new(0, 70, 0, 18*#Mini_Frame.In+10)
		end
		
		Mini_Frame.Add("Delete", f:get_image("Delete"), function()
			events.UpdateTree:Fire(MainFrame:GetAttribute("Dopolnitelno"), -#self.Selections)
			for i,v in self.Selections do
				v.Parent:Destroy()
			end
		end)
		
		Mini_Frame.Add("Rename", f:get_image("Rename"), function()
			
		end)
		
		wait(3)
		Frame_Right_Mouse:Destroy()
	end)
	events.UpdateTree.Event:Connect(function(d, childrens: number, row)
		if d < MainFrame:GetAttribute("Dopolnitelno") or any.Row < row and d < MainFrame:GetAttribute("Dopolnitelno") then
			MainFrame:SetAttribute("Dopolnitelno", (MainFrame:GetAttribute("Dopolnitelno")+childrens))
			MainFrame.Position = UDim2.new(1, 0, 0, MainFrame:GetAttribute("Dopolnitelno")*20)
		end
	end)
	DexTree.CanvasSize = UDim2.new(0, 0, 0, (f:math_(MainFrame)+MainFrame.AbsoluteSize.Y))
	return MainFrame
end

for _,v in {
		game.Workspace;game.Players;game.CoreGui or game.VoiceChatService;
		game.Lighting;game.MaterialService;game.NetworkClient;game.ReplicatedFirst;
		game.ReplicatedStorage;
		game.StarterGui;game.StarterPack;game.StarterPlayer;
		game.Teams;game.SoundService;game.TextChatService
	} do
	Path_Doing(v)
end

Left_Frame.AddButton("Refresh Dex", function()
	for i,v in DexTree:GetChildren() do
		v:Destroy()
	end
	for _,v in {
		game.Workspace;game.Players;game.CoreGui or game.VoiceChatService;
		game.Lighting;game.MaterialService;game.NetworkClient;game.ReplicatedFirst;
		game.ReplicatedStorage;
		game.StarterGui;game.StarterPack;game.StarterPlayer;
		game.Teams;game.SoundService;game.TextChatService
		} do
		Path_Doing(v)
	end
end, f:get_image("Refresh"))

return nil
