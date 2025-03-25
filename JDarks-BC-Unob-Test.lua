--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CurrentCamera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait() 
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local FootBall
local IsActive = false
local IsActive2 = true
local BallSpeed = 70

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ControlBallUI"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(.15, 0, .08, 0)
TextButton4.Position = UDim2.new(.1, 0, .8, 0)
TextButton4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton4.Text = "CONTROL"
TextButton4.TextScaled = true
TextButton4.Parent = ScreenGui

local TextButton1 = Instance.new("TextButton")
TextButton1.Size = UDim2.new(0.15 + 0 ,957 -(892 + 65) ,0.08,0 )
TextButton1.Position = UDim2.new(0.75 -0 ,0 ,350.8 -(87 + 263) ,180 -(67 + 113) )
TextButton1.BackgroundColor3 = Color3.fromRGB(0,0,187 + 68 )
TextButton1.Text = "STOP"
TextButton1.TextScaled = true
TextButton1.Visible = false
TextButton1.Parent = ScreenGui

local Frame9 = Instance.new("Frame")
Frame9.Size = UDim2.new(0.3,0,0.12 -0 ,0 )
Frame9.Position = UDim2.new(0.35 -0 ,952 -(802 + 150) ,0.6 -0 ,0)
Frame9.BackgroundColor3 = Color3.fromRGB(45 -20 ,19 + 6 ,1022 -(915 + 82) )
Frame9.Visible = false
Frame9.Parent = ScreenGui

local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1,0 ,0.3,0)
TextLabel5.BackgroundTransparency = 1 + 0 
TextLabel5.Text = "Speed: 70"
TextLabel5.TextColor3 = Color3.fromRGB(335 -80 ,1442 -(1069 + 118) ,255)
TextLabel5.TextScaled = true
TextLabel5.Parent = Frame9

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0.9,0 ,0.4,0 )
Frame2.Position = UDim2.new(0.05 + 0 ,0,0.5 -0 ,0)
Frame2.BackgroundColor3 = Color3.fromRGB(253 + 2 ,255,1046 -(368 + 423) )
Frame2.Parent = Frame9

local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(0.05 -0 ,18 -(10 + 8) ,3 -2 ,442 -(416 + 26) )
Frame7.Position = UDim2.new(0.07,0 ,0,0 )
Frame7.BackgroundColor3 = Color3.fromRGB(450 -195 ,438 -(145 + 293) ,0)
Frame7.Parent = Frame2

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(430.3 -(44 + 386) ,1486 -(998 + 488) ,0.2 + 0 ,0 )
Frame2.Position = UDim2.new(0.35,772 -(201 + 571) ,1138.4 -(116 + 1022) ,0)
Frame2.BackgroundColor3 = Color3.fromRGB(0 ,0,0 )
Frame2.Parent = ScreenGui

local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(1,0,1,0 )
TextLabel7.BackgroundTransparency = 3 -2 
TextLabel7.Text = "G - Control | F - Stop | Z/X - Speed"
TextLabel7.TextColor3 = Color3.fromRGB(255,1114 -(814 + 45) ,628 -373 )
TextLabel7.TextScaled = true
TextLabel7.Parent = Frame2

local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0.2 + 0 ,0 ,885.3 -(261 + 624) ,0 )
TextButton4.Position = UDim2.new(1080.8 -(1020 + 60) ,1423 -(630 + 793) ,0 ,0 )
TextButton4.Text = "X"
TextButton4.TextScaled = true
TextButton4.Parent = Frame2
TextButton4.MouseButton1Click:Connect(function()
	Frame2:Destroy()
end)

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.15 + 0 ,0 ,1747.05 -(760 + 987) ,1913 -(1789 + 124) )
TextLabel.Position = UDim2.new(766.1 -(745 + 21) ,0 ,0.88 -0 ,0 )
TextLabel.BackgroundTransparency = 1 + 0 
TextLabel.Text = "Made by JDarks"
TextLabel.TextColor3 = Color3.fromRGB(255,255,0)
TextLabel.TextScaled = true
TextLabel.Parent = ScreenGui

local TextLabel8 = Instance.new("TextLabel")
TextLabel8.Size = UDim2.new(0.5 + 0 ,1055 -(87 + 968) ,0.1,0 )
TextLabel8.Position = UDim2.new(0.25 + 0 ,0 ,1413.3 -(447 + 966) ,0)
TextLabel8.BackgroundColor3 = Color3.fromRGB(0,0 ,1817 -(1703 + 114) )
TextLabel8.Text = "Made by JDarks"
TextLabel8.TextColor3 = Color3.fromRGB(255, 255, 0)
TextLabel8.TextScaled = true
TextLabel8.Parent = ScreenGui

task.wait(5)
TextLabel8:Destroy()

--// Functions \\--

local function FindFootball() -- Complete!
	return workspace:FindFirstChild("Football")
end

local function ModifyVelocity() -- Complete!
	local BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.Parent = FootBall
	BodyVelocity.MaxForce = Vector3.new(1000000, 1000000, 1000000)
	
	RunService.Heartbeat:Connect(function()
		if not IsActive or not FootBall or not FootBall.Parent then
			BodyVelocity:Destroy()
			return
		end
		
		BodyVelocity.Velocity = IsActive2 and CurrentCamera.CFrame.LookVector * BallSpeed or Vector3.new(0, 0, 0)
	end)
end

local function ViewBall() -- Complete!
	FootBall = FindFootball()
	
	if not FootBall then
		warn("No Ball Found!")
		return
	end
	
	IsActive = not IsActive
	IsActive2 = true
	
	CurrentCamera.CameraSubject = IsActive and FootBall or Character 
	TextButton1.Visible = IsActive
	Frame9.Visible = IsActive
	TextButton1.BackgroundColor3 = IsActive2 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(0, 0, 255) 
	
	if IsActive then
		ModifyVelocity()
	end
end

local function Activated() -- Complete!
	IsActive2 = not IsActive2
	TextButton1.BackgroundColor3 = IsActive2 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(0, 0, 255)
end

UserInputService.InputBegan:Connect(function(input) -- Complete!
	if input.KeyCode == Enum.KeyCode.Z then
		BallSpeed = math.max(BallSpeed - 10, 10)
		TextLabel5.Text = "Speed: " .. tostring(BallSpeed)
	elseif input.KeyCode == Enum.KeyCode.X then
		BallSpeed = math.min(BallSpeed +  10, 350)
		TextLabel5.Text = "Speed: " .. tostring(BallSpeed)
	end
end)

UserInputService.InputBegan:Connect(function(input, bool) -- Complete!
	if bool then
		return
	end

	if input.KeyCode == Enum.KeyCode.G then
		ViewBall()
	elseif input.KeyCode == Enum.KeyCode.F then
		Activated()
	end
end)

local InputBegan = false

UserInputService.InputBegan:Connect(function(input) -- Complete!
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		InputBegan = true
	end
end)

UserInputService.InputEnded:Connect(function() -- Complete!
	InputBegan = false
end)

RunService.RenderStepped:Connect(function() -- Complete!
	if InputBegan then
		local MouseLocationX = UserInputService:GetMouseLocation().X
		local AbsoluteX = Frame2.AbsolutePosition.X
		local AbsoluteXX = Frame2.AbsolutePosition.X + Frame2.AbsoluteSize.X
		local ClampedX = math.clamp(MouseLocationX, AbsoluteX, AbsoluteXX)
		local DividedX = (ClampedX - AbsoluteX) / (AbsoluteXX - AbsoluteX)
		
		Frame7.Position = UDim2.new(DividedX - .025, 0, 0, 0)
		BallSpeed = math.floor(10 + (DividedX * 340))
		TextLabel5.Text = "Speed: " .. tostring(BallSpeed)
	end
end)

TextButton1.MouseButton1Click:Connect(Activated)
TextButton4.MouseButton1Click:Connect(ViewBall)
