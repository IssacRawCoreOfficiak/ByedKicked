-- gui
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textbox = Instance.new("TextBox")
local kick = Instance.new("TextButton")
local ban = Instance.new("TextButton")
local minimize = Instance.new("TextButton") -- new button

-- properties
gui.Name = "BYEDKICKED GUI V1"
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
textbox.PlaceholderText = "Player"
textbox.Position = UDim2.new(0, 10, 0, 10)
textbox.Size = UDim2.new(0, 190, 0, 25)
kick.Position = UDim2.new(0, 10, 0, 50)
kick.Size = UDim2.new(0, 90, 0, 25)
ban.Position = UDim2.new(0, 110, 0, 50)
ban.Size = UDim2.new(0, 90, 0, 25)
minimize.Position = UDim2.new(0, 170, 0, 10)
minimize.Size = UDim2.new(0, 30, 0, 20)
kick.Text = "Kick"
ban.Text = "Ban Permanent"
minimize.Text = "—"

-- scripts
kick.MouseButton1Click:Connect(function()
-- kick player
local player = game.Players:FindFirstChild(textbox.Text)
if player then
player:Kick("BYEDKICKED GUI KICKED YOU 😂")
wait(1)
player.Camera.CameraSubject = nil
end
end)

ban.MouseButton1Click:Connect(function()
-- ban player permanently
local player = game.Players:FindFirstChild(textbox.Text)
if player then
player:Kick("BYEDKICKED GUI BANNED YOU PERMANENTLY 😂")
-- add player to ban list
end
end)

minimize.MouseButton1Click:Connect(function()
-- minimize gui
frame.Size = UDim2.new(0, 30, 0, 20)
end)

-- parent
gui.Parent = game.Players.LocalPlayer.PlayerGui
frame.Parent = gui
textbox.Parent = frame
kick.Parent = frame
ban.Parent = frame
minimize.Parent = frame
