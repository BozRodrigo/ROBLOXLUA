

local CoreGui = game:GetService("CoreGui") 
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

local Found = CoreGui:FindFirstChild("xd2214") 
if Found then 
    Found:Destroy() 
end  

local SynProtectGui, GetHui = (syn and syn.protect_gui), (gethui or get_hidden_gui)
local NewColorSequenceKeypoint = ColorSequenceKeypoint.new
local NewInstance = Instance.new  
local NewColorSequence = ColorSequence.new 
local NewColor3 = Color3.new 
local NewUDim = UDim.new 
local NewUDim2 = UDim2.new 
local NewRect = Rect.new 
local NewVector2 = Vector2.new
local TaskWait = task.wait
local ScaleType = Enum.ScaleType
local NewTweenInfo = TweenInfo.new

local Sound = NewInstance("Sound") 
local ScreenGui = NewInstance("ScreenGui")
local Frame, Frame1 = NewInstance("Frame"), NewInstance("Frame")
local UIGradient = NewInstance("UIGradient") 
local UICorner = NewInstance("UICorner")
local ImageLabel, ImageLabel1, ImageLabel2, ImageLabel3, ImageLabel4 = NewInstance("ImageLabel"), NewInstance("ImageLabel"), NewInstance("ImageLabel"), NewInstance("ImageLabel"), NewInstance("ImageLabel")
local TextLabel = NewInstance("TextLabel") 
local UIAspectRatioConstraint = NewInstance("UIAspectRatioConstraint")

Sound.SoundId = "rbxassetid://6518811702" 
Sound.Volume = 1

ScreenGui.IgnoreGuiInset = false 
ScreenGui.ResetOnSpawn = true 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 

Frame.BackgroundColor3 = NewColor3(0.0588235, 0.0588235, 0.0588235)
Frame.Position = NewUDim2(0.410881788, 0, 0.48901099, 0)
Frame.Size = NewUDim2(0, 280, 0, 95) 
Frame.Visible = true 
Frame.BackgroundTransparency = 1 

UIGradient.Color = NewColorSequence({NewColorSequenceKeypoint(0, NewColor3(1, 1, 1)), NewColorSequenceKeypoint(1, NewColor3(0, 0.215686, 1))})

UICorner.CornerRadius = NewUDim(0, 5)

ImageLabel.Image = "http://www.roblox.com/asset/?id=13202628207"
ImageLabel.BackgroundColor3 = NewColor3(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = NewUDim2(-0.000780392438, 0, -0.202906653, 0)
ImageLabel.Size = NewUDim2(0, 100, 0, 100)
ImageLabel.Visible = true
ImageLabel.Name = "Logo"

TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = ": WAITING FOR GAME"
TextLabel.TextColor3 = NewColor3(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.BackgroundColor3 = NewColor3(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = NewUDim2(0.308356851, 0, 0.106208116, 0)
TextLabel.Size = NewUDim2(0, 186, 0, 40)
TextLabel.Visible = true
TextLabel.Name = "Text"

ImageLabel1.Image = "rbxassetid://9457585092"
ImageLabel1.BackgroundColor3 = NewColor3(1, 1, 1)
ImageLabel1.Position = NewUDim2(0.443896174, 0, 0.514034986, 0)
ImageLabel1.Size = NewUDim2(0, 31, 0, 31)
ImageLabel1.Visible = true
ImageLabel1.Name = "LoadingCircle"
ImageLabel1.BackgroundTransparency = 1
ImageLabel1.Rotation = 0

ImageLabel1.Parent = Frame
TextLabel.Parent = Frame
ImageLabel.Parent = Frame
UICorner.Parent = Frame 
UIGradient.Parent = Frame 
Frame.Parent = ScreenGui
if SynProtectGui then 
    SynProtectGui(ScreenGui)
    ScreenGui.Parent = CoreGui 
elseif GetHui then 
    ScreenGui.Parent = GetHui()
else 
    ScreenGui.Parent = CoreGui
end 

TweenService:Create(Frame, NewTweenInfo(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0), {Visible = true, BackgroundTransparency = 0}):Play()

UIAspectRatioConstraint.Parent = I

Frame1.BackgroundTransparency = 1
Frame1.Size = NewUDim2(1, 0, 1, 0)
Frame1.Visible = true
Frame1.ZIndex = 0
Frame1.Name = "shadowHolder"
Frame1.Parent = Frame

ImageLabel2.Image = "rbxassetid://1316045217"
ImageLabel2.ImageColor3 = NewColor3(0, 0, 0)
ImageLabel2.ImageTransparency = 0.8600000143051147
ImageLabel2.ScaleType = ScaleType.Slice
ImageLabel2.SliceCenter = NewRect(10, 10, 118, 118)
ImageLabel2.AnchorPoint = NewVector2(0.5, 0.5)
ImageLabel2.BackgroundTransparency = 1
ImageLabel2.Position = NewUDim2(0.5, 0, 0.5, 6)
ImageLabel2.Size = NewUDim2(1, 10, 1, 10)
ImageLabel2.Visible = true
ImageLabel2.ZIndex = 0
ImageLabel2.Name = "umbraShadow"
ImageLabel2.Parent = Frame1

ImageLabel3.Image = "rbxassetid://1316045217"
ImageLabel3.ImageColor3 = NewColor3(0, 0, 0)
ImageLabel3.ImageTransparency = 0.8799999952316284
ImageLabel3.ScaleType = ScaleType.Slice
ImageLabel3.SliceCenter = NewRect(10, 10, 118, 118)
ImageLabel3.AnchorPoint = NewVector2(0.5, 0.5)
ImageLabel3.BackgroundTransparency = 1
ImageLabel3.Position = NewUDim2(0.5, 0, 0.5, 6)
ImageLabel3.Size = NewUDim2(1, 10, 1, 10)
ImageLabel3.Visible = true
ImageLabel3.ZIndex = 0
ImageLabel3.Name = "penumbraShadow"
ImageLabel3.Parent = Frame1

ImageLabel4.Image = "rbxassetid://1316045217"
ImageLabel4.ImageColor3 = NewColor3(0, 0, 0)
ImageLabel4.ImageTransparency = 0.8799999952316284
ImageLabel4.ScaleType = ScaleType.Slice
ImageLabel4.SliceCenter = NewRect(10, 10, 118, 118)
ImageLabel4.AnchorPoint = NewVector2(0.5, 0.5)
ImageLabel4.BackgroundTransparency = 1
ImageLabel4.Position = NewUDim2(0.5, 0, 0.5, 6)
ImageLabel4.Size = NewUDim2(1, 10, 1, 10)
ImageLabel4.Visible = true
ImageLabel4.ZIndex = 0
ImageLabel4.Name = "ambientShadow"
ImageLabel4.Parent = Frame1

local Base = 150 
local Connection = game:GetService("RunService").Heartbeat:Connect(function(Delta)
    ImageLabel1.Rotation = ImageLabel1.Rotation + Base * Delta
end)

repeat wait() until game:IsLoaded()
TextLabel.Text = 'MAKING SURE GAME IS LOADED'
wait(5)

local function GetSpins()
    local Spins = game:GetService("Players").LocalPlayer.PlayerGui.Gui.Ui.UiModule.Modules.Shop.RerollClan.RollClanFrame.Clan.Spins.Text
    Spins1, Spins2 = string.find(Spins, '%d')
    return tonumber(string.sub(Spins, Spins1, Spins2))
    
end

local function GetClan()
    
    return game:GetService("Players").LocalPlayer.PlayerGui.Gui.Ui.UiModule.Modules.Shop.RerollClan.RollClanFrame.Clan.LName.Text
    
end

while true do task.wait()
    
    
    TextLabel.Text = 'Spinning'
    TextLabel.TextScaled = false
    TextLabel.TextSize = 20
    
    print(GetSpins())
    for i = 1, tonumber(GetSpins()) do
        task.wait(1)
        local ohTable1 = {
	["Stat"] = "Spins"
}

game:GetService("ReplicatedStorage").Events.GetStats:InvokeServer(ohTable1)

        local args = {
            [1] = "RRLastName"
        }
        
        game:GetService("Players").LocalPlayer.PlayerGui.Gui.Ui.UiModule.Modules.Shop.RerollClan.RollClanFrame.Clan.RRLastName.LocalScript.RR:InvokeServer(unpack(args))
		
		if getgenv().webhooklink ~= "" then
				if string.len(getgenv().webhooklink) > 90 and getgenv().webhooklink:match("discord") then
				local data = {
					["content"] = "",
					["username"] = "muz.wtf",
					["avatar_url"] = "https://cdn.discordapp.com/attachments/992723214696452147/1099413127373783051/ca176e25de5c24fc4f65507be37214b3.jpg",
					["embeds"] = {
						{
							["description"] = "**NEW CLAN**",
							["fields"] = {
								{
									["name"] = "Username",
									["value"] = "||"..game.Players.LocalPlayer.Name.."||",
									["inline"] = false
								},
								{
									["name"] = "Clan",
									["value"] = "||"..tostring(GetClan()).."||",
									["inline"] = false
								}
							},
							["type"] = "rich",
							["color"] = tonumber(0x5a3812)
						}
					}
				}
				local newdata = game:GetService("HttpService"):JSONEncode(data)
				local headers = {
					["content-type"] = "application/json"
				}
				request = http_request or request or HttpPost or syn.request
				local send = {Url = getgenv().webhooklink, Body = newdata, Method = "POST", Headers = headers}
				request(send)
				end
			end
		
        TextLabel.Text = 'You got ' .. tostring(GetClan())
        
        if table.find(auto_spin.clans_wanted, GetClan()) then
            game:GetService('Players').LocalPlayer:Kick('You got the clan you wanted. ' .. tostring(GetClan()))
            print('You got the clan you wanted.')
            TextLabel.Text = 'Youve got the clan you wanted: ' .. tostring(GetClan())
			
			if getgenv().webhooklink ~= "" then
				if string.len(getgenv().webhooklink) > 90 and getgenv().webhooklink:match("discord") then
				local data = {
					["content"] = "@everyone",
					["username"] = "muz.wtf",
					["avatar_url"] = "https://cdn.discordapp.com/attachments/992723214696452147/1099413127373783051/ca176e25de5c24fc4f65507be37214b3.jpg",
					["embeds"] = {
						{
							["description"] = "**NEW CLAN**",
							["fields"] = {
								{
									["name"] = "Username",
									["value"] = "||"..game.Players.LocalPlayer.Name.."||",
									["inline"] = false
								},
								{
									["name"] = "Clan",
									["value"] = "||"..tostring(GetClan()).."||",
									["inline"] = false
								}
							},
							["type"] = "rich",
							["color"] = tonumber(0x5a3812)
						}
					}
				}
				local newdata = game:GetService("HttpService"):JSONEncode(data)
				local headers = {
					["content-type"] = "application/json"
				}
				request = http_request or request or HttpPost or syn.request
				local send = {Url = getgenv().webhooklink, Body = newdata, Method = "POST", Headers = headers}
				request(send)
				end
			end
			
            break
        elseif GetSpins() <= 0 then
            wait(1)
            TextLabel.Text = 'Failed to get clan you wanted rejoining.'
            local args = {
                [1] = 1,
                [2] = "\255"
            }

            game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Gui"):WaitForChild("Ui"):WaitForChild("UiModule"):WaitForChild("Modules"):WaitForChild("Settings"):WaitForChild("Set"):InvokeServer(unpack(args))
            game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
        end
    end
    
    if GetSpins() <= 0 and not table.find(auto_spin.clans_wanted, GetClan()) then
        wait(1)
        TextLabel.Text = 'Failed to get clan you wanted rejoining.'
        local args = {
            [1] = 1,
            [2] = "\255"
        }

        game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Gui"):WaitForChild("Ui"):WaitForChild("UiModule"):WaitForChild("Modules"):WaitForChild("Settings"):WaitForChild("Set"):InvokeServer(unpack(args))
        game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
end
