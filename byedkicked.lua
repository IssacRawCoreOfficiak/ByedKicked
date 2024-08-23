-- gui
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textbox = Instance.new("TextBox")
local kick = Instance.new("TextButton")
local ban = Instance.new("TextButton")

-- properties
gui.Name = "Admin GUI"
frame.Position = UDim2.new(0, 200, 0, 300)
frame.Size = UDim2.new(0, 200, 0, 150)
textbox.Position = UDim2.new(0, 10, 0, 10)
textbox.Size = UDim2.new(0, 190, 0, 25)
kick.Position = UDim2.new(0, 10, 0, 50)
kick.Size = UDim2.new(0, 90, 0, 25)
ban.Position = UDim2.new(0, 110, 0, 50)
ban.Size = UDim2.new(0, 90, 0, 25)
kick.Text = "Kick"
ban.Text = "Ban"

-- scripts
kick.MouseButton1Click:Connect(function()
-- kick player
local player = game.Players:FindFirstChild(textbox.Text)
if player then
player:Kick("BYEDKICKED GUI BANNED YOU 😂")
end
end)

ban.MouseButton1Click:Connect(function()
-- ban player
local player = game.Players:FindFirstChild(textbox.Text)
if player then
player:Kick("BYEDKICKED GUI BANNED YOU 😂")
-- add player to ban list
end
end)

-- parent
gui.Parent = game.Players.LocalPlayer.PlayerGui
frame.Parent = gui
textbox.Parent = frame
kick.Parent = frame
ban.Parent = frame
