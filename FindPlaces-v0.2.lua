local cloneService = cloneref or function(obj) return obj end
local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
local getCustomAsset = getcustomasset

local Players: Players = cloneService(game:GetService("Players"))
local LocalPlayer = Players.LocalPlayer
local StarterGui: StarterGui = cloneService(game:GetService("StarterGui"))
local AssetService: AssetService = cloneService(game:GetService("AssetService"))
local TeleportService: TeleportService = cloneService(game:GetService("TeleportService"))

local GamePlaces = AssetService:GetGamePlacesAsync()

local CustomAsset = getCustomAsset("FindPlaces-v0.2.rbxm")
local AssetObject = game:GetObjects(CustomAsset)[1]

local ScreenGui = AssetObject:Clone()
ScreenGui.Parent = LocalPlayer.PlayerGui

local Frame = ScreenGui.Frame

local TopF = Frame.TopF
local CloseB = TopF.CloseB
local MinimizeB = TopF.MinimizeB
local MaximizeB = TopF.MaximizeB
local WaitB = TopF.WaitB

local BodyF = Frame.BodyF
local PlacesF = BodyF.PlacesF
local TemplateF = PlacesF.TemplateF

--// Main \\--
local function Notification(text: string)
	StarterGui:SetCore("SendNotification", {
		Title = "Place Finder",
		Text = text,
		Duration = 3,
	})
end

CloseB.Activated:Once(function()
	Frame.Parent:Destroy()
end)
MinimizeB.Activated:Connect(function()
	MinimizeB.Visible = false
	WaitB.Visible = true
	
	BodyF:TweenPosition(UDim2.fromScale(0, -1), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, false, function()
		WaitB.Visible = false
		MaximizeB.Visible = true
	end)
end)
MaximizeB.Activated:Connect(function()
	MaximizeB.Visible = false
	WaitB.Visible = true
	
	BodyF:TweenPosition(UDim2.fromScale(0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, false, function()
		WaitB.Visible = false
		MinimizeB.Visible = true
	end)
end)

for i, v in GamePlaces:GetCurrentPage() do
	local PlaceF = TemplateF:Clone()
	PlaceF.Parent = PlacesF
	PlaceF.Name = "PlaceF"
	PlaceF.Visible = true
	PlaceF.TextLabel.Text = v.Name .. "\nID: " .. v.PlaceId
	
	PlaceF.TeleportB.Activated:Once(function()
		Notification("Teleporting...")
		TeleportService:Teleport(v.PlaceId, LocalPlayer)
	end)
	PlaceF.CopyIdB.Activated:Connect(function()
		if clipBoard then
			clipBoard(v.PlaceId)
			Notification("Copied Place ID")
		else
			Notification("Your executor doesn't support setclipboard()")
		end
	end)
end

Frame.UIDragDetector.Enabled = true
Notification("Loaded! Made by NoobySploits")