local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local Blur = Instance.new("BlurEffect")
Blur.Size = 0
Blur.Parent = game.Lighting

local Screen = Instance.new("ScreenGui")
Screen.Name = "IntroGui"
Screen.IgnoreGuiInset = true
Screen.ResetOnSpawn = false
Screen.Parent = PlayerGui

local Background = Instance.new("Frame")
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
Background.BackgroundTransparency = 0
Background.Parent = Screen

local BGGradient = Instance.new("UIGradient")
BGGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 25)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(25, 25, 50)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 25))
}
BGGradient.Rotation = 45
BGGradient.Parent = Background

local AmbientLight = Instance.new("ImageLabel")
AmbientLight.Size = UDim2.new(1.5, 0, 1.5, 0)
AmbientLight.Position = UDim2.new(-0.25, 0, -0.25, 0)
AmbientLight.BackgroundTransparency = 1
AmbientLight.Image = "rbxassetid://9150630156"
AmbientLight.ImageColor3 = Color3.fromRGB(90, 130, 255)
AmbientLight.ImageTransparency = 0.85
AmbientLight.ZIndex = 0
AmbientLight.Parent = Background

local Text = Instance.new("TextLabel")
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(1, 0, 0.25, 0)
Text.Text = "Patched By Roblox\nNo Longer Working"
Text.TextColor3 = Color3.fromRGB(230, 235, 255)
Text.TextTransparency = 1
Text.TextScaled = true
Text.Font = Enum.Font.GothamBold
Text.ZIndex = 3
Text.BackgroundTransparency = 1
Text.Parent = Background

local TextGlow = Instance.new("UIStroke")
TextGlow.Thickness = 2
TextGlow.Color = Color3.fromRGB(120, 150, 255)
TextGlow.Transparency = 0.3
TextGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TextGlow.Parent = Text

local Shine = Instance.new("ImageLabel")
Shine.AnchorPoint = Vector2.new(0.5, 0.5)
Shine.Position = UDim2.new(0.5, 0, 0.5, 0)
Shine.Size = UDim2.new(2, 0, 3, 0)
Shine.BackgroundTransparency = 1
Shine.Image = "rbxassetid://9150641010"
Shine.ImageColor3 = Color3.fromRGB(100, 130, 255)
Shine.ImageTransparency = 0.9
Shine.ZIndex = 2
Shine.Parent = Background

TweenService:Create(Blur, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = 25}):Play()
TweenService:Create(Text, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
TweenService:Create(TextGlow, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {Transparency = 0.5}):Play()
TweenService:Create(Shine, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {ImageTransparency = 0.7}):Play()
TweenService:Create(AmbientLight, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {ImageTransparency = 0.75}):Play()

wait(4)

local FadeOut = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
TweenService:Create(Text, FadeOut, {TextTransparency = 1}):Play()
TweenService:Create(Background, FadeOut, {BackgroundTransparency = 1}):Play()
TweenService:Create(Blur, FadeOut, {Size = 0}):Play()

wait(2.2)
Screen:Destroy()
Blur:Destroy()

wait(0.5)

-- Remove o jogador do jogo com a mensagem formatada
Player:Kick("my favorite thing is gone. fuck you roblox. \n\n-- one of bitwebbin's account user: miki")
