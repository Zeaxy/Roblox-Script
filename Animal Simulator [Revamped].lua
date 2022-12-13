local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Animal Simulator by zHacks", 5013109572)
getgenv().autocoin = false 

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
local page = venyx:addPage("Auto", 5012544693)
local section1 = page:addSection("Auto Collect Coin")
section1:addToggle("Toggle", nil, function(t)
    getgenv().autocoin = t
    if t then
        auto()
    end
end)
function auto()
    spawn(function ()
        local coin = game:GetService("Workspace").CoinContainer:GetDescendants()
        local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
        while getgenv().autocoin == true do
            wait()
for _,v in pairs(coin) do
    if v.Name == "Coin" or "Chest" then
        for _,v2 in pairs (v:GetChildren()) do
  if v2.ClassName == "MeshPart" then
      hum.CFrame = v2.CFrame
    end
end 
    end
        end
        end
    end)
end


