getgenv().autotap = false
getgenv().WearBestPet = false


local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()
local win = BlekLib:Create({
    Name = "Anime Auto Clicker",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})
local maintab = win:Tab('Auto Farm')
local teleport = win:Tab("Teleport")
local main = win:Tab("Character")
local uitab = win:Tab('UI')


main:Slider("WalkSpeed", 15 , 0 , 500, function (v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

maintab:Toggle('Auto Click', function(tap)
  getgenv().autotap = tap
    print("Auto Tap is : ", Tap)
    if tap then
        taptap()
    end
end)
maintab:Toggle("Auto Equip Best Pet", function(auto)
    getgenv().WearBestPet = auto
    print("Auto Eqip Best Pet Is : ", auto)
    if auto then
        autoequipbestpet()
    end
end)
teleport:Label("To Use This Teleport You Need To Unlock The Area First")
uitab:Label("Created by zHacks")

teleport:Button("World 1", function()
    world1()
end)

teleport:Button("World 2", function()
    world2()
end)

teleport:Button("World 3", function()
    world3()
end)

teleport:Button("World 4", function()
    world4()
end)

teleport:Button("World 5", function()
    world5()
end)

teleport:Button("World 6", function()
    world6()
end)

teleport:Button("World 7", function()
    world7()
end)

uitab:Button('Destroy GUI', function()
    win:Exit()
end)

function taptap()
    spawn(function()
        while getgenv().autotap == true do
            wait()
            game:GetService("ReplicatedStorage").System.SystemClick.Click:FireServer()
        end 
    end)    
end


function autoequipbestpet()
    spawn(function ()
        if getgenv().WearBestPet == true then
            game:GetService("ReplicatedStorage").ServerMsg.WearBestPet:InvokeServer()
        end  
    end)
end
function world1()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-105.5, -10, -326, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function world2()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100, -10, 9, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function world3()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-72.5351562, -10, 348.022827, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function world4()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85.5378189, 24.9999466, 674.888733, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function world5()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.932671, -9.37685394, 1011.20288, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function world6()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-94.9189987, 0.926651001, 1346.18958, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end
function world7()    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-134.520615, 25.0000076, 1692.99988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
