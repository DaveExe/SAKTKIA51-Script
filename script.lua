local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local exec = identifyexecutor()

local Window = Rayfield:CreateWindow({
    Name = "Dave's Hub",
    LoadingTitle = "Dave's Hub Loading...",
    LoadingSubtitle = "By Dave",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "Big Hub",
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Dave's Hub",
        Subtitle = "Key System",
        Note = "the key is ABCDEF",
        Key = "ABCDEF"
    }
    })

    local esp = Instance.new("Highlight", game.Workspace.Killers)

    esp.Enabled = false

    local plresp = Instance.new("Highlight", game.Workspace["Characters to kill"])

    plresp.FillColor = Color3.new(124, 255, 120)

    plresp.Enabled = false


    function died()
        Rayfield:Notify("Resetted","You will be respawning in 4 secs..",10010348543) -- (t,c,image)
    end

    --Tabs

    local Main = Window:CreateTab("Main")

    local Teleportation = Window:CreateTab("Teleportation")

    --Buttons

    local Button = Teleportation:CreateButton({
        Name = "Teleport to Raygun",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Weapons.RayGun.Container.Part.CFrame
        end,
    })

        local Button = Teleportation:CreateButton({
        Name = "Teleport to M1014",
        Callback = function()
            game:GetService("Workspace").AREA51.PipeEntranceRightRoom.Part.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Weapons.M1014.Hitbox.CFrame
            game:GetService("Workspace").AREA51.PipeEntranceRightRoom.Part.CanCollide = true
        end,
    })

    local Button = Teleportation:CreateButton({
        Name = "Teleport to AN-94",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Weapons["AN-94"]["AN-94"].Part.CFrame
        end,
    })

    local Button = Teleportation:CreateButton({
        Name = "Pack a Punch",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PACKAPUNCH.MainPart.CFrame
        end,
    })

    local Button = Teleportation:CreateButton({
        Name = "Teleport to Ammo Box",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AREA51.PlantRoom["Box of Shells"].Box.CFrame
        end,
    })

    local Toggle = Main:CreateToggle({
        Name = "ESP Killers",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                esp.Enabled = true
            end
            if Value == false then
                esp.Enabled = false
            end
        end,
    })

    local Toggle = Main:CreateToggle({
        Name = "ESP Players",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            if Value == true then
                plresp.Enabled = true
            end
            if Value == false then
                plresp.Enabled = false
            end
        end,
    })
