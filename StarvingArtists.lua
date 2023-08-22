-- Arda Script

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "ARDA-BORA HUB", HidePremium = false, IntroEnabled = true, IntroText = "ARDA ve BORA", SaveConfig = true, ConfigFolder = "OrionTest"})

local ArtMakerTab = Window:MakeTab({
	Name = "ArtMaker",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CreditsTab:AddLabel("Credits to ARDAlion1104")

ArtMakerTab:AddLabel("Wait 5-6 Min. Before Submitting!")

ArtMakerTab:AddButton({
	Name = "Luffy",
	Callback = function()
      		local image = 'https://cdna.artstation.com/p/assets/images/images/015/088/632/medium/joseph-lavoie-luffy500.jpg' -- image you want to import
local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?
-- epic coding stuf --
local grid = nil
local s, e = pcall(function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild'MainGui':FindFirstChild'PaintFrame':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.Grid
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild'PaintFrame':FindFirstChild'GridHolder':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
else
warn('cannot execute script')
return
end
end)
if e then
local s1, e1 = pcall(function()
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
end)
if e1 then
warn('cannot execute script')
return
end
end
local h = game:GetService("HttpService")
function getjson(url)
local begin = game:HttpGet("https://f818fcf9-3b10-4c92-8176-0bef47a8421d.id.repl.co/get?url="..url)
if (begin == 'the file size is too big!') then
return 'fstb'
else
local json = h:JSONDecode(begin)
return json
end
end
function import(url)
local pixels = getjson(url)
local cells = {}
local index = 1
if (pixels == 'fstb') then
game.StarterGui:SetCore(
"SendNotification",
{
Title = "error",
Text = "the file size exceeds three megabytes, "
.."to prevent people from crashing my vps i have set"
.." the cap to amount. sorry for the inconvenience"
}
)
else
grid['1'].BackgroundColor3 = Color3.fromRGB(
pixels[1][1],
pixels[1][2],
pixels[1][3]
)
for y = 1, resolutionX, 1 do
for x = 1, resolutionY, 1 do
pcall(function()
local pixel = pixels[index]
index = index + 1 
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
end
end
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
game.StarterGui:SetCore(
"SendNotification",
{
Title = "Done!",
Text = "Finished!"
}
)
end
end
import(image)
  	end    
})

ArtMakerTab:AddButton({
	Name = "Evil Head",
	Callback = function()
      		local image = 'https://64.media.tumblr.com/4027ba285822c2e0255415eb81a54901/49f64d2b415f8d60-ed/s540x810/dc649d2b437724f9c0ba385443dff85b6238e89d.png' -- image you want to import
local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?
-- epic coding stuf --
local grid = nil
local s, e = pcall(function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild'MainGui':FindFirstChild'PaintFrame':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.Grid
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild'PaintFrame':FindFirstChild'GridHolder':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
else
warn('cannot execute script')
return
end
end)
if e then
local s1, e1 = pcall(function()
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
end)
if e1 then
warn('cannot execute script')
return
end
end
local h = game:GetService("HttpService")
function getjson(url)
local begin = game:HttpGet("https://f818fcf9-3b10-4c92-8176-0bef47a8421d.id.repl.co/get?url="..url)
if (begin == 'the file size is too big!') then
return 'fstb'
else
local json = h:JSONDecode(begin)
return json
end
end
function import(url)
local pixels = getjson(url)
local cells = {}
local index = 1
if (pixels == 'fstb') then
game.StarterGui:SetCore(
"SendNotification",
{
Title = "error",
Text = "the file size exceeds three megabytes, "
.."to prevent people from crashing my vps i have set"
.." the cap to amount. sorry for the inconvenience"
}
)
else
grid['1'].BackgroundColor3 = Color3.fromRGB(
pixels[1][1],
pixels[1][2],
pixels[1][3]
)
for y = 1, resolutionX, 1 do
for x = 1, resolutionY, 1 do
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
end
end
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
game.StarterGui:SetCore(
"SendNotification",
{
Title = "Done!",
Text = "Finished!"
}
)
end
end
import(image)
  	end    
})

ArtMakerTab:AddButton({
	Name = "Cute Cat",
	Callback = function()
      		local image = 'https://storage.googleapis.com/pai-images/5058b58c77d642419fffce83280a057d.jpeg' -- image you want to import
local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?
-- epic coding stuf --
local grid = nil
local s, e = pcall(function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild'MainGui':FindFirstChild'PaintFrame':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.Grid
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild'PaintFrame':FindFirstChild'GridHolder':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
else
warn('cannot execute script')
return
end
end)
if e then
local s1, e1 = pcall(function()
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
end)
if e1 then
warn('cannot execute script')
return
end
end
local h = game:GetService("HttpService")
function getjson(url)
local begin = game:HttpGet("https://f818fcf9-3b10-4c92-8176-0bef47a8421d.id.repl.co/get?url="..url)
if (begin == 'the file size is too big!') then
return 'fstb'
else
local json = h:JSONDecode(begin)
return json
end
end
function import(url)
local pixels = getjson(url)
local cells = {}
local index = 1
if (pixels == 'fstb') then
game.StarterGui:SetCore(
"SendNotification",
{
Title = "error",
Text = "the file size exceeds three megabytes, "
.."to prevent people from crashing my vps i have set"
.." the cap to amount. sorry for the inconvenience"
}
)
else
grid['1'].BackgroundColor3 = Color3.fromRGB(
pixels[1][1],
pixels[1][2],
pixels[1][3]
)
for y = 1, resolutionX, 1 do
for x = 1, resolutionY, 1 do
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
end
end
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
game.StarterGui:SetCore(
"SendNotification",
{
Title = "Done!",
Text = "Finished!"
}
)
end
end
import(image)
  	end    
})

ArtMakerTab:AddButton({
	Name = "Anime",
	Callback = function()
      		local image = 'https://upload-os-bbs.hoyolab.com/upload/2022/11/05/8409043/90988373648173e6b97fa040a1297202_910222633013648728.png?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_80' -- image you want to import
local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?
-- epic coding stuf --
local grid = nil
local s, e = pcall(function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild'MainGui':FindFirstChild'PaintFrame':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.Grid
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild'PaintFrame':FindFirstChild'GridHolder':FindFirstChild'Grid' then
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
else
warn('cannot execute script')
return
end
end)
if e then
local s1, e1 = pcall(function()
grid = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
end)
if e1 then
warn('cannot execute script')
return
end
end
local h = game:GetService("HttpService")
function getjson(url)
local begin = game:HttpGet("https://f818fcf9-3b10-4c92-8176-0bef47a8421d.id.repl.co/get?url="..url)
if (begin == 'the file size is too big!') then
return 'fstb'
else
local json = h:JSONDecode(begin)
return json
end
end
function import(url)
local pixels = getjson(url)
local cells = {}
local index = 1
if (pixels == 'fstb') then
game.StarterGui:SetCore(
"SendNotification",
{
Title = "error",
Text = "the file size exceeds three megabytes, "
.."to prevent people from crashing my vps i have set"
.." the cap to amount. sorry for the inconvenience"
}
)
else
grid['1'].BackgroundColor3 = Color3.fromRGB(
pixels[1][1],
pixels[1][2],
pixels[1][3]
)
for y = 1, resolutionX, 1 do
for x = 1, resolutionY, 1 do
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
end
end
pcall(function()
local pixel = pixels[index]
index = index + 1
local r = pixels[index][1]
local g = pixels[index][2]
local b = pixels[index][3]
grid[tostring(index)].BackgroundColor3 = Color3.fromRGB(r, g, b)
table.insert(cells, pixel)
end)
game.StarterGui:SetCore(
"SendNotification",
{
Title = "Done!",
Text = "Finished!"
}
)
end
end
import(image)
  	end    
})


OrionLib:Init()
