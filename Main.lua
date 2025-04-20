-- Created by Sayatat

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local MoneyBTN = Instance.new("TextButton")
local PowerBTN = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.223518848, 0, 0.493801653, 0)
Frame.Size = UDim2.new(0, 158, 0, 136)
Frame.Draggable = true

Title.Name = "Title"
Title.Parent = ScreenGui
Title.BackgroundColor3 = Color3.fromRGB(135, 181, 121)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.223518848, 0, 0.493801653, 0)
Title.Size = UDim2.new(0, 158, 0, 16)
Title.Font = Enum.Font.SourceSans
Title.Text = "Script"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

MoneyBTN.Name = "MoneyBTN"
MoneyBTN.Parent = ScreenGui
MoneyBTN.BackgroundColor3 = Color3.fromRGB(200, 255, 73)
MoneyBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
MoneyBTN.BorderSizePixel = 0
MoneyBTN.Position = UDim2.new(0.238779172, 0, 0.547520638, 0)
MoneyBTN.Size = UDim2.new(0, 123, 0, 23)
MoneyBTN.Font = Enum.Font.SourceSans
MoneyBTN.Text = "Money"
MoneyBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
MoneyBTN.TextSize = 14.000

PowerBTN.Name = "PowerBTN"
PowerBTN.Parent = ScreenGui
PowerBTN.BackgroundColor3 = Color3.fromRGB(200, 255, 73)
PowerBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
PowerBTN.BorderSizePixel = 0
PowerBTN.Position = UDim2.new(0.238779172, 0, 0.609504104, 0)
PowerBTN.Size = UDim2.new(0, 123, 0, 23)
PowerBTN.Font = Enum.Font.SourceSans
PowerBTN.Text = "Jump Power"
PowerBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
PowerBTN.TextSize = 14.000

-- Scripts:

local function SAATB_fake_script() -- MoneyBTN.LocalScript 
	local script = Instance.new('LocalScript', MoneyBTN)

	script.Parent.MouseButton1Down:Connect(function()
		while true do
			wait(.1)
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Jump"):FireServer()
		end
	end)
end
coroutine.wrap(SAATB_fake_script)()
local function OPXM_fake_script() -- PowerBTN.LocalScript 
	local script = Instance.new('LocalScript', PowerBTN)

	script.Parent.MouseButton1Down:Connect(function()
		while true do
			wait(.1)
			game:GetService("Players").LocalPlayer.Character.Drink.Drink.Drink:FireServer()
		end
	end)
end
coroutine.wrap(OPXM_fake_script)()
