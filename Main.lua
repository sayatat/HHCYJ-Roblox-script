-- Created by Sayatat


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MoneyBTN = Instance.new("TextButton")
local PowerBTN = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.339317769, 0, 0.473140508, 0)
Frame.Size = UDim2.new(0, 158, 0, 136)
Frame.Draggable = true

MoneyBTN.Name = "MoneyBTN"
MoneyBTN.Parent = Frame
MoneyBTN.BackgroundColor3 = Color3.fromRGB(200, 255, 73)
MoneyBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MoneyBTN.BorderSizePixel = 0
MoneyBTN.Position = UDim2.new(0.105867796, 0, 0.194579408, 0)
MoneyBTN.Size = UDim2.new(0, 123, 0, 23)
MoneyBTN.Font = Enum.Font.SourceSans
MoneyBTN.Text = "Money"
MoneyBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
MoneyBTN.TextSize = 14.000

PowerBTN.Name = "PowerBTN"
PowerBTN.Parent = Frame
PowerBTN.BackgroundColor3 = Color3.fromRGB(200, 255, 73)
PowerBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
PowerBTN.BorderSizePixel = 0
PowerBTN.Position = UDim2.new(0.105867796, 0, 0.410974622, 0)
PowerBTN.Size = UDim2.new(0, 123, 0, 23)
PowerBTN.Font = Enum.Font.SourceSans
PowerBTN.Text = "Jump Power"
PowerBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
PowerBTN.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(135, 181, 121)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(-0.000430336484, 0, 0, 0)
Title.Size = UDim2.new(0, 158, 0, 16)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Script"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

Close.Name = "Close"
Close.Parent = ScreenGui
Close.BackgroundColor3 = Color3.fromRGB(185, 5, 8)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.460309505, 0, 0.47271511, 0)
Close.Size = UDim2.new(0, 23, 0, 16)
Close.Modal = true
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(200, 255, 73)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.942148745, 0)
Open.Size = UDim2.new(0, 56, 0, 28)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextSize = 14.000

-- Scripts:

local function YAHW_fake_script() -- MoneyBTN.LocalScript 
	local script = Instance.new('LocalScript', MoneyBTN)

	script.Parent.MouseButton1Down:Connect(function()
		while true do
			wait(.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Jump"):FireServer()
		end
	end)
end
coroutine.wrap(YAHW_fake_script)()
local function IAMIP_fake_script() -- PowerBTN.LocalScript 
	local script = Instance.new('LocalScript', PowerBTN)

	script.Parent.MouseButton1Down:Connect(function()
		while true do
			wait(.1)
			game:GetService("Players").LocalPlayer.Character.Drink.Drink.Drink:FireServer()
		end
	end)
end
coroutine.wrap(IAMIP_fake_script)()
local function VPQL_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Close.Visible = false
		script.Parent.Parent.Frame.Visible = false
		script.Parent.Parent.Open.Visible = true
	end)
end
coroutine.wrap(VPQL_fake_script)()
local function MLQEBOP_fake_script() -- Open.LocalScript 
	local script = Instance.new('LocalScript', Open)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Close.Visible = true
		script.Parent.Parent.Frame.Visible = true
		script.Parent.Parent.Open.Visible = false
	end)
end
coroutine.wrap(MLQEBOP_fake_script)()
