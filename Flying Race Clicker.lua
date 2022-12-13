local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Flying Race Clicker by zHacks", 5013109572)
getgenv().autofarm = false
getgenv().rebirt = false


local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
local page = venyx:addPage("Auto", 5012544693)
local section1 = page:addSection("Auto Win")

section1:addButton("Auto Win (Move)", function(e)
    getgenv().autofarm = e
    if e then
        auto()
    end
end)
section1:addButton("Auto Win (Stay)", function(b)
    getgenv().autofarm = b
    if b then
        auto2()
    end
end)
section1:addToggle("Auto Rebirth", nil ,function(c)
getgenv().rebirt = c
if c then
    rebirth()
end
end)
function auto()
    spawn(function()
        local body = game.Players.LocalPlayer.Character.HumanoidRootPart
       while wait() do
        if not getgenv().autofarm then break end
            for i, v in ipairs(game:GetService("Workspace").Track:GetDescendants()) do
                if v.Name == "Sign" then
                    body.CFrame = v.CFrame
                    wait()
                firetouchinterest(body, v, 0)
              wait()
                firetouchinterest(body, v, 1)
                
        end
   end
end
end)
end
function auto2()
    spawn(function()
        local body = game.Players.LocalPlayer.Character.HumanoidRootPart
       while wait() do
        if not getgenv().autofarm then break end
            for i, v in ipairs(game:GetService("Workspace").Track:GetDescendants()) do
                if v.Name == "Sign" then
                firetouchinterest(body, v, 0)
              wait()
                firetouchinterest(body, v, 1)
                
        end
   end
end
end)
end

function rebirth()
    spawn(function()
        while getgenv().rebirt == true do
            wait()
            game:GetService("ReplicatedStorage").Remotes.RE_Rebirth:FireServer()
        end
    end)
 end  
        
