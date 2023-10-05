print('waiting for game ready') repeat task.wait() until game:IsLoaded() print('executing script') 

------Save Configuration------
------------------------------
local a = 'Janina' -- 
local b = game:GetService('Players').LocalPlayer.Name .. '_ElementalDungeon.json' 
Settings = {}
function saveSettings()
    local HttpService = game:GetService('HttpService')
    if not isfolder(a) then
        makefolder(a)
    end
    writefile(a .. '/' .. b, HttpService:JSONEncode(Settings))
    Settings = ReadSetting()
    warn("Settings Saved!")
end
function ReadSetting()
    local s, e = pcall(function()
        local HttpService = game:GetService('HttpService')
        if not isfolder(a) then
            makefolder(a)
        end
        return HttpService:JSONDecode(readfile(a .. '/' .. b))
    end)
    if s then
        return e
    else
        saveSettings()
        return ReadSetting()
    end
end
Settings = ReadSetting()
------------------------------
------------------------------

print("Initializing Script")

local JaninaHub = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
local Window = JaninaHub:CreateWindow({
    Name = "Janina Hub || Elemental Dungeons - v1.1.2",
    LoadingTitle = "Janina Hub || Elemental Dungeons - v1.1.2",
    LoadingSubtitle = "by pa1n",
    ConfigurationSaving = {
    Enabled = false,
    FolderName = "",
    FileName = ""
    },
    Discord = {
    Enabled = true,
    Invite = "W2XyGrNQUe", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
    RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
    Title = "Janina Hub Key",
    Subtitle = "Just 1 Linkvertise to support the script!",
    Note = "go to pa1n.xyz/janina for the key!",
    FileName = "JaninaKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
    SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
    GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
    Key = {"https://pa1n.xyz/janina/key69", "https://pa1n.xyz/janina/donation"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})
print("loaded")
local RunService = game:GetService("RunService")

local dungeon = Window:CreateTab("Dungeon", 14943357678) -- Title, Imag
local Section = dungeon:CreateSection("Dungeon Settings")

local Label = dungeon:CreateLabel("Enable 'Auto Load Script' in Misc Section for automatic loading!")

local AutoNextDungeon = dungeon:CreateToggle({
    Name = "Auto Next Dungeon",
    CurrentValue = Settings.AutoNextDungeon or false,
    Flag = "Auto Next Dungeon", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.AutoNextDungeon = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoNextDungeon then
            wait(5)
            if (Settings.AutoRetry == false or Settings.AutoRetry == nil) and game:GetService("Players").LocalPlayer.PlayerGui.DungeonComplete.Main.Visible == true then
                wait(2)
                local args = {[1] = game:GetService("Players").LocalPlayer}
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.DungeonService.RF.TeleportToLobby:InvokeServer(unpack(args))
            end
            pcall(function()
                local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
                local levelLabel = playerGui.Main.PlayerBar.LevelLabel
                
                local levelText = levelLabel.Text
                local level = tonumber(string.match(levelText, "%d+"))
                
                if level then
                        if level >= 0 and level <= 4 then
                            local args = {[1] = "BeginnersDungeon",[2] = "Medium",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))                    
                        elseif level >= 5 and level <= 14 then
                            local args = {[1] = "BeginnersDungeon",[2] = "Hard",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))                                    
                        elseif level >= 15 and level <= 34 then
                            local args = {[1] = "BeginnersDungeon",[2] = "Hell",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 35 and level <= 44 then
                            local args = {[1] = "JungleDungeon",[2] = "Medium",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 45 and level <= 54 then
                            local args = {[1] = "JungleDungeon",[2] = "Hard",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 55 and level <= 74 then
                            local args = {[1] = "JungleDungeon",[2] = "Hell",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 75 and level <= 84 then
                            local args = {[1] = "ArcticBastionDungeon",[2] = "Easy",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 85 and level <= 94 then
                            local args = {[1] = "ArcticBastionDungeon",[2] = "Medium",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        elseif level >= 95 then                               
                            local args = {[1] = "ArcticBastionDungeon",[2] = "Hard",[3] = "Private",[4] = "Normal"}                    
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                        else
                            print("Unknown level")
                        end
                    else
                end
                wait()
                local BUTTONPATH = game:GetService("Players").LocalPlayer.PlayerGui.Party.Main.AllStuffFrame.PartyMenu.Start
                if BUTTONPATH then
                    local connections = getconnections(BUTTONPATH.Activated)                        
                    for _, connection in pairs(connections) do
                        connection.Function(BUTTONPATH)
                    end
                else
                    warn("Button not found")
                end  
            end)
        end
    end
end))

local DungeonName = dungeon:CreateDropdown({
    Name = "Choose Dungeon",
    Options = {"BeginnersDungeon","JungleDungeon", "ArcticBastionDungeon"},
    CurrentOption = {Settings.DungeonName or ""},
    MultipleOptions = false,
    Callback = function(Option)
        for i,v in pairs(Option) do
            Settings.DungeonName = v
        end
        saveSettings()
    end,
})

local DungeonDifficulty = dungeon:CreateDropdown({
    Name = "Choose Difficulty",
    Options = {"Easy","Medium", "Hard", "Hell", "Hardcore", "Infinite"},
    CurrentOption = {Settings.DungeonDifficulty or ""},
    MultipleOptions = false,
    Callback = function(Option)
        for i,v in pairs(Option) do
            Settings.DungeonDifficulty = v
        end
        saveSettings()
    end,
})

local AutoStart = dungeon:CreateToggle({
    Name = "Auto Farm Selected Dungeon",
    CurrentValue = Settings.AutoStart or false,
    Callback = function(Value)
        Settings.AutoStart = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if (Settings.AutoNextDungeon == false or Settings.AutoNextDungeon == nil) and Settings.AutoStart then
            wait(5)

            if (Settings.AutoRetry == false or Settings.AutoRetry == nil) and game:GetService("Players").LocalPlayer.PlayerGui.DungeonComplete.Main.Visible == true then
                wait(2)
                local args = {[1] = game:GetService("Players").LocalPlayer}
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.DungeonService.RF.TeleportToLobby:InvokeServer(unpack(args))
            end

            pcall(function()
                wait()
                local args = {
                    [1] = Settings.DungeonName,
                    [2] = Settings.DungeonDifficulty,
                    [3] = "Private",
                    [4] = "Normal"
                }                    
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(unpack(args))
                wait()

                local BUTTONPATH = game:GetService("Players").LocalPlayer.PlayerGui.Party.Main.AllStuffFrame.PartyMenu.Start
                if BUTTONPATH then
                    local connections = getconnections(BUTTONPATH.Activated)                        
                    for _, connection in pairs(connections) do
                        connection.Function(BUTTONPATH)
                    end
                else
                    warn("Button not found")
                end                
            end)
        end
    end
end))

local AutoRetry = dungeon:CreateToggle({
    Name = "Auto Retry",
    CurrentValue = Settings.AutoRetry or false,
    Flag = "Auto Retry", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.AutoRetry = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoRetry then
            wait(5)
            if game:GetService("Players").LocalPlayer.PlayerGui.DungeonComplete.Main.Visible == true then
                wait(5) local args = {[1] = "Retry"}
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.VoteOn:InvokeServer(unpack(args))
            end       
        end
    end
end))

local Section = dungeon:CreateSection("Autofarm Settings")

local AutoFarmMobNearest = dungeon:CreateToggle({
    Name = "Auto Dungeon (Teleport)",
    CurrentValue = Settings.Nearest or false,
    Callback = function(Value)
        Settings.Nearest = Value
        saveSettings()
    end
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.Nearest then
            AutoTeleportMob()
        end
    end
end))


local ggfarmmethod = Settings.FarmMethod or "Behind"

local nearestNPC = nil -- Declare a variable to store the nearest NPC

function AutoTeleportMob()
    pcall(function()
        if Settings.AutoHeal then AutoHeal() end
        if Settings.AutoPickUp then AutoPickUpLoot() end
        AutoDodgeBossS()
        AutoDodgeBossR()

        local function findNearestNPC()
            if nearestNPC and nearestNPC:FindFirstChild("HumanoidRootPart") and nearestNPC.Humanoid.Health > 0 then
                -- If nearestNPC is already set and its HP is greater than 0, return it
                return nearestNPC
            end

            local character = game.Players.LocalPlayer.Character
            if not character then
                return nil
            end

            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                return nil
            end

            local mobsFolder = game:GetService("Workspace").Mobs
            local shortestDistance = math.huge

            -- Find the nearest NPC
            for _, npc in pairs(mobsFolder:GetChildren()) do
                if npc:IsA("Model") and npc:FindFirstChild('HumanoidRootPart') and npc.Humanoid.Health > 0 then
                    local npcPosition = npc.HumanoidRootPart.Position
                    local playerPosition = humanoidRootPart.Position
                    local verticalDistance = npcPosition.Y - playerPosition.Y
                    
                    -- Check if the NPC is at least 30 units below the player
                    if verticalDistance >= -80 then    
                        local distance = (npcPosition - playerPosition).Magnitude

                        if distance < shortestDistance then
                            nearestNPC = npc -- Update the nearestNPC variable
                            shortestDistance = distance
                        end
                     end
                end
            end

            return nearestNPC
        end

        local nearestNPC = findNearestNPC()

        local player = game.Players.LocalPlayer
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

        if nearestNPC then      
            if humanoidRootPart and nearestNPC:FindFirstChild("HumanoidRootPart") then
                local npcCFrame = nearestNPC.HumanoidRootPart.CFrame
                local npcHead = nearestNPC.Head


                if nearestNPC:IsA("Model") and nearestNPC:FindFirstChild('HumanoidRootPart') and nearestNPC.Humanoid.Health > 0 then
                    if ggfarmmethod == "Behind" then
                        humanoidRootPart.CFrame = npcCFrame * CFrame.new(0, 0, Settings.FarmDistance) -- Teleport with an offset of 7 units above the NPC
                    
                    elseif ggfarmmethod == "Above" then 

                        humanoidRootPart.CFrame = npcCFrame * CFrame.new(0, Settings.FarmDistance, 0) -- Teleport with an offset of 7 units above the NPC

                        local npcPosition = nearestNPC.PrimaryPart.Position
                        local direction = (npcPosition - humanoidRootPart.Position).unit
                        local rotation = CFrame.new(Vector3.new(), direction)
                        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * rotation
                    
                    elseif ggfarmmethod == "Under" then
                        humanoidRootPart.CFrame = npcCFrame * CFrame.new(0, -Settings.FarmDistance, 0) -- Teleport with an offset of 7 units above the NPC
                        local npcPosition = nearestNPC.PrimaryPart.Position
                        local direction = (npcPosition - humanoidRootPart.Position).unit
                        local rotation = CFrame.new(Vector3.new(), direction)
                        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * rotation
                    else 
                        print("Auto Farm Method Broke")
                    end
                else
                    warn("npc has 0 health")
                end

            end
        else
            print("No NPCs found.")
        end
    end)
end


local KillAura = dungeon:CreateToggle({
    Name = "⚔️ Kill Aura",
    CurrentValue = Settings.KillAura or false,
    Flag = "Kill Aura", 
    Callback = function(Value)
        Settings.KillAura = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.KillAura then
            KillAuraBash() 
        end
    end
end))

function KillAuraBash() 
     pcall(function() 
        local player = game:GetService("Players").LocalPlayer
        for x, d in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if d:IsA("Tool") and d:FindFirstChild("Handle") then
                local button = game:service'VirtualInputManager'
                button:SendKeyEvent(true, "One", false, game)
            end
        end
        for i,v in pairs(workspace.Mobs:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0
            and (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 50 then

                local args = {
                    [1] = {
                        ["Direction"] = Vector3.new(0.19999732077121735, -0.13707752525806427, -0.970160186290741),
                        ["Position"] = v.HumanoidRootPart.Position, -- Use the mob's position
                        ["Origin"] = Vector3.new(-501.6357116699219, 65.80438232421875, -1992.13623046875)
                    }
                }
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.WeaponService.RF.UseSword:InvokeServer(unpack(args))
            end
        end
    end)
end

local AutoMastery = dungeon:CreateToggle({
    Name = "⭐ Auto Element Mastery",
    CurrentValue = Settings.Mastery or false,
    Flag = "Auto Mastery", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.Mastery = Value
        saveSettings()                 
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.Mastery then
            AutoUseAbility()
            wait(1)
        end
    end
end))

function AutoUseAbility()
    pcall(function()
        local player = game:GetService("Players").LocalPlayer
        for i,v in pairs(workspace.Mobs:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0
            and (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 50 then
                local enemyCFrame = v.HumanoidRootPart.Position
                local plrname = game.Players.LocalPlayer.Name
                local character = game:GetService("Workspace")[plrname]

                if not character:FindFirstChild("Tool") then
                local button = game:service'VirtualInputManager'
                button:SendKeyEvent(true, "Two", false, game)
                end
                
                wait()

                if character then
                    local tool = character:FindFirstChild("Tool")
                    if tool then
                        local moduleReference = tool:FindFirstChild("ModuleReference")
                        if moduleReference and moduleReference:IsA("ObjectValue") then
                            local elementName = tostring(moduleReference.Value)
                            if typeof(elementName) == "string" then
                                local abilitiesFolder = game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Elements[elementName]
                                
                                if abilitiesFolder then

                                    warn'usng abilitry'
                                    for _, v in pairs(abilitiesFolder:GetChildren()) do                        
                                        local args = {
                                            [1] = abilitiesFolder[v.Name],  -- Access element using elementName and v.Name
                                            [2] = {
                                                ["Direction"] = Vector3.new(-0.8853239417076111, -0.16702431440353394, -0.4339406490325928),
                                                ["Position"] = enemyCFrame,
                                                ["Origin"] = Vector3.new(-602.7299194335938, 68.82022857666016, -1749.65478515625)
                                            },
                                            [3] = "Start"
                                        }
                                        game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Templates.ToolTemplate.RemoteEvent:FireServer(unpack(args))

                                        if v.Name == "DragonsBreath" then
                                            wait(5)
                                        end

                                        local args = {
                                            [1] = abilitiesFolder[v.Name],  -- Access element using elementName and v.Name
                                            [2] = {
                                                ["Direction"] = Vector3.new(-0.8792662024497986, -0.14121150970458984, -0.4549177885055542),
                                                ["Position"] = enemyCFrame,
                                                ["Origin"] = Vector3.new(-602.7301635742188, 68.82275390625, -1749.657470703125)
                                            },
                                            [3] = "End"
                                        }
                                        game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Templates.ToolTemplate.RemoteEvent:FireServer(unpack(args))
                                    end
                                else
                                    warn("Abilities folder not found for element: " .. elementName)
                                end
                            else
                                warn("ModuleReference Value is not a string")
                            end
                        else
                            warn("Invalid or missing ModuleReference in the tool")
                        end
                    else
                        warn("Tool not found in the character")
                    end
                else
                    warn("Player character not found in Workspace")
                end
            end
        end
    end)
end

local AutoHealToggle = dungeon:CreateToggle({
    Name = "Auto Heal (Pickup Potions & Use)",
    CurrentValue = Settings.AutoHeal or false,
    Callback = function(Value)
        Settings.AutoHeal = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoHeal and (Settings.Nearest == false or Settings.Nearest == nil) then
            AutoHeal()
        end
    end
end))

function AutoHeal()
    pcall(function()
        local plr = game.Players.LocalPlayer
        local character = plr.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart = character.HumanoidRootPart
            local inventory = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Main.InventoryFrame.ItemsStored.Text
            for i, v in pairs(game:GetService("Workspace").Camera.Drops:GetChildren()) do
                if v:IsA("Model") and v.Name == "Drop" and v:FindFirstChild("Potion") then
                    if v:FindFirstChild("Center") then
                        if v.Center:FindFirstChild("ProximityPrompt") then
                                humanoidRootPart.CFrame = v.Center.CFrame
                                local start = tick()
                                repeat task.wait()
                                    humanoidRootPart.CFrame = v.Center.CFrame
                                        fireproximityprompt(v.Center.ProximityPrompt)
                                until (tick() - start) >= 5 or not v.Center.ProximityPrompt.Enabled
                        end
                    end
                end
            end                        
        end
    end)
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.PlayerBar.Main.PotionBar.Visible then
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.HealingService.RF.UseHeal:InvokeServer()
        end
    end)
end

local AutoElementalizeBlade = dungeon:CreateToggle({
    Name = "Auto Elementalize Blade (Need to buy it first)",
    CurrentValue = Settings.AutoElementalizeBlade or false,
    Callback = function(Value)
        Settings.AutoElementalizeBlade = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoElementalizeBlade then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and not v:FindFirstChild("Part") then
                    wait()
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.WeaponService.RF.EnchantedBlade:InvokeServer()
                end
            end
        end
    end
end))

local ggfarmdistance = Settings.FarmDistance or 7

local FarmDistanceSlider = dungeon:CreateSlider({
    Name = "Auto Farm Distance",
    Range = {0, 30},
    Increment = 1,
    Suffix = "unit",
    CurrentValue = ggfarmdistance,
    Callback = function(Value)
        Settings.FarmDistance = Value
        saveSettings()
        ggfarmdistance = Value
    end,
 })

 coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.FarmDistance ~= ggfarmdistance then
            Settings.FarmDistance = ggfarmdistance
        end
    end
end))

local FarmMethodDropdown = dungeon:CreateDropdown({
    Name = "Farm Method",
    Options = {"Behind","Above", "Under"},
    CurrentOption = {ggfarmmethod},
    MultipleOptions = false,
    Callback = function(Option)
        for i,v in pairs(Option) do 
            Settings.FarmMethod = v
        end
        ggfarmmethod = Settings.FarmMethod
        saveSettings()
    end,
 })


local Section = dungeon:CreateSection("Loot Settings")

local AutoPickUpLootToggle = dungeon:CreateToggle({
    Name = "Auto Pick Up Loot",
    CurrentValue = Settings.AutoPickUp or false,
    Callback = function(Value)
        Settings.AutoPickUp = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoPickUp and (Settings.Nearest == false or Settings.Nearest == nil) then
            RunService.RenderStepped:wait()
            AutoPickUpLoot()
        end
    end
end))

function AutoPickUpLoot()
    pcall(function()
        local plr = game.Players.LocalPlayer
        local character = plr.Character
    
        if character and character:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart = character.HumanoidRootPart
            local inventory = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Main.InventoryFrame.ItemsStored.Text
    
            for i, v in pairs(game:GetService("Workspace").Camera.Drops:GetChildren()) do
                if v:IsA("Model") and v.Name == "Drop" and not v:FindFirstChild("Potion") then
                    if v:FindFirstChild("Center") then
                        if v.Center:FindFirstChild("ProximityPrompt") then
                            if inventory ~= "75 / 75 Items Stored" and
                                inventory ~= "100 / 100 Items Stored" and
                                inventory ~= "125 / 125 Items Stored" then
                                    humanoidRootPart.CFrame = v.Center.CFrame
                                    local start = tick()
                                    repeat
                                        humanoidRootPart.CFrame = v.Center.CFrame
                                        RunService.RenderStepped:wait()
                                        fireproximityprompt(v.Center.ProximityPrompt)
                                    until (tick() - start) >= 5 or not v.Center.ProximityPrompt.Enabled -- Timeout after 5 seconds
                            end
                        end
                    end
                end
            end
        end
    end)
end

local Section = dungeon:CreateSection("Boss Settings")

local AutoDodge1 = dungeon:CreateToggle({
    Name = "Auto Dodge Boss Skill",
    CurrentValue = Settings.AutoDodgeSkill or false,
    Callback = function(Value)
        Settings.AutoDodgeSkill = Value
        saveSettings()
    end,
})

function AutoDodgeBossS()
    pcall(function() 
        while Settings.AutoDodgeSkill do
            local char = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local originalpos = CFrame.new(0,0,0)
              originalpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

            local skillfolder = game:GetService("Workspace").Effects
            while skillfolder:FindFirstChild("RedLines") or skillfolder:FindFirstChild("RedCircles") do
                task.wait()
                if char then
                char.CFrame = CFrame.new(-100, -100, -100)
                end
            end
            if char then
            char.CFrame = originalpos
            end
            break
        end
    end)
end

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if (Settings.Nearest == false or Settings.Nearest == nil) then
            AutoDodgeBossS()
        else
            task.wait()
        end
    end
end))

local AutoDodge2 = dungeon:CreateToggle({
    Name = "Auto Dodge Boss Rage",
    CurrentValue = Settings.AutoDodgeSkillRage or false,
    Callback = function(Value)
        Settings.AutoDodgeSkillRage = Value
        saveSettings()
        print(Settings.AutoDodgeSkillRage)
    end,
})

function AutoDodgeBossR()
    pcall(function() 
        while Settings.AutoDodgeSkillRage do
            local char = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local originalpos = CFrame.new(0,0,0)
              originalpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

            local skillfolder = game:GetService("Workspace").Effects
            while skillfolder:FindFirstChild("EngragedExplosion") do
                task.wait()
                if char then
                char.CFrame = CFrame.new(-100, -100, -100)
                end
            end
            if char then
            char.CFrame = originalpos
            print't'
            end
            break
        end
    end)
end

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if (Settings.Nearest == false or Settings.Nearest == nil) then
            AutoDodgeBossR()
        else
            task.wait()
        end
    end
end))

print'a'

--[[

local Section = dungeon:CreateSection("Hide")

local AutoHideToggle = dungeon:CreateToggle({
    Name = "Auto Hide",
    CurrentValue = Settings.AutoHide or false,
    Callback = function(Value)
        Settings.AutoHide = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoHide then
            teleportLogic()
        end     
    end
end))


local gghidelow = Settings.HideLow or 25

local HideSlider = dungeon:CreateSlider({

    Name = "Hide When HP Is Lower Then",
    Range = {0, 434},
    Increment = 1,
    Suffix = "%",
    CurrentValue = gghidelow,
    Callback = function(Value)
        Settings.HideLow = Value
        saveSettings()
        gghidelow = Value
    end,
})


local ggshowup = Settings.ShowUP or 75

local HideShowSlider = dungeon:CreateSlider({

    Name = "Return to Auto Farm at",
    Range = {0, 434},
    Increment = 1,
    Suffix = "%",
    CurrentValue = ggshowup,
    Callback = function(Value)
        Settings.ShowUP = Value
        saveSettings()
        ggshowup = Value
    end,
})


local function teleportLogic()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")

    local teleportDestination = CFrame.new(200, 200, 200)
    local originalPosition = character.PrimaryPart.CFrame
    local hasTeleported = false

    while task.wait() do
        if humanoid.Health < gghidelow then
            print("wee")
            character:SetPrimaryPartCFrame(CFrame.new(teleportDestination))
        elseif humanoid.Health >= ggshowup and not hasTeleported then
            character:SetPrimaryPartCFrame(originalPosition)
            hasTeleported = true
        end
        wait(1)
    end
end

]]

local lobby = Window:CreateTab("Lobby", 14943357678) -- Title, Imag

local Section = lobby:CreateSection("Stats")

local UpgradeSwordPower = lobby:CreateToggle({
    Name = "Auto Upgrade Sword Power",
    CurrentValue = Settings.USP or false,
    Callback = function(Value)
        Settings.USP = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.USP then
            wait()         
            local args = {[1] = "PhysicalPower",[2] = 1}
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.InventoryService.RF.UpgradeSkill:InvokeServer(unpack(args))
        end
    end
end))

local UpgradeElementPower = lobby:CreateToggle({
    Name = "Auto Upgrade Element Power",
    CurrentValue = Settings.UEP or false,
    Callback = function(Value)
        Settings.UEP = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.UEP then
            wait()
            local args = {[1] = "MagicPower",[2] = 1}
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.InventoryService.RF.UpgradeSkill:InvokeServer(unpack(args))
        end
    end
end))

local UpgradeDefense = lobby:CreateToggle({
    Name = "Auto Upgrade Defense",
    CurrentValue = Settings.UD or false,
    Flag = "Upgrade Defense", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.UD = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.UD then
            wait()
            local args = {[1] = "Defense",[2] = 1}
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.InventoryService.RF.UpgradeSkill:InvokeServer(unpack(args))
        end
    end
end))

local Section = lobby:CreateSection("Summon")

local SummonElement1 = lobby:CreateToggle({
    Name = "Auto Summon Element (1)",
    CurrentValue = Settings.Summon1 or false,
    Flag = "Upgrade Defense", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.Summon1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.Summon1 then
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.SummoningService.RF.SummonOnce:InvokeServer()
         end
    end
end))

local SummonElement2 = lobby:CreateToggle({
    Name = "Auto Summon Element (3)",
    CurrentValue = Settings.Summon2 or false,
    Flag = "Upgrade Defense", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Settings.Summon2 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.Summon2 then
            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.SummoningService.RF.SummonThree:InvokeServer()
        end
    end
end))

local Section = lobby:CreateSection("Other")

local RedeemAllCodes = lobby:CreateButton({
    Name = "Redeem All Codes",
    Callback = function()
        local args = {[1] = "BETA"} game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.CodesService.RF.RedeemCode:InvokeServer(unpack(args))
        wait()
        local args = {[1] = "TYFOR20KPLAYERS"} game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.CodesService.RF.RedeemCode:InvokeServer(unpack(args))
        wait()
    end,
})

local AutoFarmChest = lobby:CreateToggle({
    Name = "Auto Farm Chest",
    CurrentValue = Settings.AFC or false,
    Callback = function(Value)
        Settings.AFC = Value
        saveSettings()
        _G.qweewe = false
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        local chestsFolder = game:GetService("Workspace"):FindFirstChild("Chests")

        if Settings.AFC and #chestsFolder:GetChildren() ~= 0 then
            local camera = game.Workspace.CurrentCamera
            local topDownViewCFrame = CFrame.new(Vector3.new(0, 100, 0), Vector3.new(0, 0, 0))
            camera.CFrame = topDownViewCFrame
            local desiredFieldOfView = 80 -- Adjust this value as needed
            camera.FieldOfView = desiredFieldOfView
            local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
            for i, v in pairs(chestsFolder:GetChildren()) do
                if v.ProximityPrompt then
                    plr.CFrame = v.CFrame
                    wait(1)
                    fireproximityprompt(v.ProximityPrompt)
                else
                    _G.qweewe = false
                end
            end
        elseif Settings.AFC and #chestsFolder:GetChildren() == 0 and (_G.qweewe == false or _G.qweewe == nil) then
            _G.qweewe = true
            JaninaHub:Notify({
                Title = "No Chest Found!",
                Content = "You have already collected all of them!",
                Duration = 3,
                Image = 4483362458,
                Actions = { -- Notification Buttons
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                        end
                    },
                },
            }) 
        end
        
    end
end))

local AutoFarmEvilChest = lobby:CreateToggle({
    Name = "Auto Farm Evil Chest",
    CurrentValue = Settings.AFEC or false,
    Callback = function(Value)
        Settings.AFEC = Value
        saveSettings()
    end,
})

local notificationSent = false

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AFEC and not notificationSent then
            local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
            local foundChest = false

            for i, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v.Name == "Chest" then
                    foundChest = true
                    local camera = game.Workspace.CurrentCamera
                    local topDownViewCFrame = CFrame.new(Vector3.new(0, 100, 0), Vector3.new(0, 0, 0))
                    camera.CFrame = topDownViewCFrame
                    local desiredFieldOfView = 80 -- Adjust this value as needed
                    camera.FieldOfView = desiredFieldOfView
                    wait()
                    plr.CFrame = v.CFrame
                    wait(1)
                    fireproximityprompt(v.ProximityPrompt)
                    break  -- Exit the loop after finding the first chest
                end
            end

            if not foundChest then
                notificationSent = true
                JaninaHub:Notify({
                    Title = "No Evil Chest Found!",
                    Content = "You have already collected all of them!",
                    Duration = 3,
                    Image = 4483362458,
                    Actions = { -- Notification Buttons
                        Ignore = {
                            Name = "Okay!",
                            Callback = function()
                            end
                        },
                    },
                })
            end
        end
    end
end))

local Label = lobby:CreateLabel("You can only pick up the chests once in the game!")

local autoselltab = Window:CreateTab("Auto Sell", 14943357678) -- Title, Imag

local Section = autoselltab:CreateSection("Info")
local Label = autoselltab:CreateLabel("Only works in lobby! (Does not sell equipped/locked items)")

local AutoJoinLobbyForSellToggle = autoselltab:CreateToggle({
    Name = "Go Lobby When Inventory Is Full (After Dungeon)",
    CurrentValue = Settings.AutoJoinLobbyForSell or false,
    Callback = function(Value)
        Settings.AutoJoinLobbyForSell = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.AutoJoinLobbyForSell then
            local inventory = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Main.InventoryFrame.ItemsStored.Text
            if game.PlaceId ~= 10515146389 then
                if inventory == "75 / 75 Items Stored" or inventory == "100 / 100 Items Stored" or inventory == "125 / 125 Items Stored" then
                    local args = {[1] = game:GetService("Players").LocalPlayer}
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.DungeonService.RF.TeleportToLobby:InvokeServer(unpack(args))
                end
            end
        end
    end
end))

----------------------------------------------
-------------- Auto Sell Functions -----------
----------------------------------------------
local v1 = require(game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit)
local u17 = v1.GetController("DataController"):GetReplica()
function GetRarity(item, rarity)
    local rarities = {
        Common = Color3.new(232/255, 232/255, 232/255),
		Uncommon = Color3.new(47/255, 173/255, 51/255),
        Rare = Color3.new(25/255, 144/255, 255/255), --25, 144, 255
		Epic = Color3.new(255/255, 60/255, 245/255)
    }
    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Main.InventoryFrame.ListFrame:GetDescendants()) do
        if v.Name == "ItemName" and v.Text == item then
            if tostring(v.TextColor3) == tostring(rarities[rarity]) then
                return true
            else
                return false
            end
        end
    end
    return false 
end
function SellItem(item, rarity)
    if game.PlaceId == 10515146389 then
        for i, v in pairs(u17.Data.Main.Items[item]) do
            local UUID = i
            local Name = v.Base
            local Type = v.Type
            local Equipped = v.Equipped

        if Name == "Magical Ring" then Name = "Magic Ring" end
        if Name == "Vitality Band" then Name = "Vitality Ring" end

            if not Equipped then
                if GetRarity(Name, rarity) then
                    local args = {[1] = {[1] = {["Type"] = Type,["UUID"] = UUID}}}
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.InventoryService.RF.Sell:InvokeServer(unpack(args))
                end
            end
        end
    end
end
----------------------------------------------
----------------------------------------------
----------------------------------------------

SellItem("Relics", "Common")

local Section = autoselltab:CreateSection("⚔️ Sell Weapons ⚔️")

local SellWeapon1Toggle = autoselltab:CreateToggle({
    Name = "⚪  Sell Common Weapons",
    CurrentValue = Settings.SellWeapon1 or false,
    Callback = function(Value)
        Settings.SellWeapon1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellWeapon1 then
            SellItem("Weapons", "Common")
        end
    end
end))

local SellWeapon2Toggle = autoselltab:CreateToggle({
    Name = "🟢  Sell Uncommon Weapons",
    CurrentValue = Settings.SellWeapon2 or false,
    Callback = function(Value)
        Settings.SellWeapon2 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellWeapon2 then
            SellItem("Weapons", "Uncommon")
        end
    end
end))

local SellWeapon3Toggle = autoselltab:CreateToggle({
    Name = "🔵  Sell Rare Weapons",
    CurrentValue = Settings.SellWeapon3 or false,
    Callback = function(Value)
        Settings.SellWeapon3 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellWeapon3 then
            SellItem("Weapons", "Rare")
        end
    end
end))

local SellWeapon4Toggle = autoselltab:CreateToggle({
    Name = "🟣  Sell Epic Weapons ⚠️",
    CurrentValue = Settings.SellWeapon4 or false,
    Callback = function(Value)
        Settings.SellWeapon4 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellWeapon4 then
            SellItem("Weapons", "Epic")
        end
    end
end))


local Section = autoselltab:CreateSection("🛡️ Sell Armors 🛡️")

local SellArmor1Toggle = autoselltab:CreateToggle({
    Name = "⚪  Sell Common Armors",
    CurrentValue = Settings.SellArmor1 or false,
    Callback = function(Value)
        Settings.SellArmor1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellArmor1 then
            SellItem("Armors", "Common")
        end
    end
end))

local SellArmor2Toggle = autoselltab:CreateToggle({
    Name = "🟢  Sell Uncommon Armors",
    CurrentValue = Settings.SellArmor2 or false,
    Callback = function(Value)
        Settings.SellArmor2 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellArmor2 then
            SellItem("Armors", "Uncommon")
        end
    end
end))

local SellArmor3Toggle = autoselltab:CreateToggle({
    Name = "🔵  Sell Rare Armors",
    CurrentValue = Settings.SellArmor3 or false,
    Callback = function(Value)
        Settings.SellArmor3 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellArmor3 then
            SellItem("Armors", "Rare")
        end
    end
end))

local SellArmor4Toggle = autoselltab:CreateToggle({
    Name = "🟣  Sell Epic Armors ⚠️",
    CurrentValue = Settings.SellArmor4 or false,
    Callback = function(Value)
        Settings.SellArmor4 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellArmor4 then
            SellItem("Armors", "Epic")
        end
    end
end))



local Section = autoselltab:CreateSection("⚜️ Sell Relics ⚜️")

local SellRelic1Toggle = autoselltab:CreateToggle({
    Name = "⚪  Sell Common Relics",
    CurrentValue = Settings.SellRelic1 or false,
    Callback = function(Value)
        Settings.SellRelic1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellRelic1 then
            SellItem("Relics", "Common")
        end
    end
end))

local SellRelic2Toggle = autoselltab:CreateToggle({
    Name = "🟢  Sell Uncommon Relics",
    CurrentValue = Settings.SellRelic2 or false,
    Callback = function(Value)
        Settings.SellRelic2 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellRelic2 then
            SellItem("Relics", "Uncommon")
        end
    end
end))

local SellRelic3Toggle = autoselltab:CreateToggle({
    Name = "🔵  Sell Rare Relics",
    CurrentValue = Settings.SellRelic3 or false,
    Callback = function(Value)
        Settings.SellRelic3 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellRelic3 then
            SellItem("Relics", "Rare")
        end
    end
end))

local Section = autoselltab:CreateSection("⛰️ Sell Elements ⛰️")

local SellOrb1Toggle = autoselltab:CreateToggle({
    Name = "🔵  Sell Rare Elements",
    CurrentValue = Settings.SellOrb1 or false,
    Callback = function(Value)
        Settings.SellOrb1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellOrb1 then
            SellItem("Orbs", "Rare")
        end
    end
end))

local SellOrb2Toggle = autoselltab:CreateToggle({
    Name = " 🟣 Sell Epic Elements ⚠️",
    CurrentValue = Settings.SellOrb2 or false,
    Callback = function(Value)
        Settings.SellOrb1 = Value
        saveSettings()
    end,
})

coroutine.resume(coroutine.create(function()
    while task.wait() do
        if Settings.SellOrb2 then
            SellItem("Orbs", "Epic")
        end
    end
end))


local Misc = Window:CreateTab("Misc", 14943357678) -- Title, Image
local Section = Misc:CreateSection("Load")

local autoloadscripttoggle = Misc:CreateToggle({
    Name = "Auto Load Script",
    CurrentValue = Settings.autoload or false,
    Callback = function(Value)
        autoloadscript()
        Settings.autoload = Value
        saveSettings()
    end,
})
wait()
function autoloadscript()
    pcall(function()
        queue_on_teleport("local scriptLoaded = false repeat task.wait() scriptLoaded = pcall(function() loadstring(game:HttpGet('https://github.com/xpa1n/pa1nhub/raw/main/qweqweqwe.lua'))() end) until scriptLoaded print('Script loaded successfully!')")
    end)
end

if Settings.autoload then autoloadscript() end

local Section = Misc:CreateSection("Miscellaneous")


local Label = Misc:CreateLabel("This GUI has a built in anti-AFK feature that's currently active!")

local ggwalkspeed = Settings.WalkSpeed or 30

local WalkSpeed = Misc:CreateSlider({
    Name = "Walk Speed",
    Range = {30, 200},
    Increment = 1,
    Suffix = "",
    CurrentValue = ggwalkspeed,
    Callback = function(Value)
        Settings.WalkSpeed = Value
        saveSettings()
        ggwalkspeed = Value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Settings.WalkSpeed
    end,
 })

 coroutine.resume(coroutine.create(function()
    while task.wait() do
        if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= ggwalkspeed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ggwalkspeed
        end
    end
end))

local ggjumppower = Settings.Jumppower or 50

local JumpxPower = Misc:CreateSlider({
    Name = "Jump Power",
    Range = {50, 200},
    Increment = 1,
    Suffix = "",
    CurrentValue = ggjumppower,
    Callback = function(Value)
        Settings.Jumppower = Value
        saveSettings()
        ggjumppower = Value
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Settings.Jumppower
    end,
 })

 coroutine.resume(coroutine.create(function()
    while task.wait() do
        if game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= ggjumppower then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = ggjumppower
        end
    end
end))

local InfiniteJump = Misc:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = Settings.infinjump or false,
    Callback = function(Value)
        Settings.infinjump = Value
        saveSettings()
        InfJumpFunction()
    end,
})

function InfJumpFunction()
    pcall(function()
        if _G.infinJumpStarted == nil then
            --Ensures this only runs once to save resources
            _G.infinJumpStarted = true

            --The actual infinite jump
            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if Settings.infinjump then
                    if k:byte() == 32 then
                    humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
                    humanoid:ChangeState('Jumping')
                    wait()
                    humanoid:ChangeState('Seated')
                    end
                end
            end)
        end
    end)
end

InfJumpFunction()

local ESPPlayers = Misc:CreateToggle({
    Name = "ESP Players",
    CurrentValue = Settings.plrESP or false,
    Callback = function(Value)
        Settings.plrESP = Value -- Set this to true to enable player ESP
        saveSettings()
        ESPPlayer()  
    end,
})

function ESPPlayer() 
    local function createPlayerESP(player)
        local character = player.Character
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                local BillboardGui = Instance.new('BillboardGui')
                local TextLabel = Instance.new('TextLabel')
    
                BillboardGui.Parent = humanoidRootPart
                BillboardGui.AlwaysOnTop = true
                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
    
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.new(1, 0, 0)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = player.Name -- Display the player's name
                TextLabel.TextColor3 = Color3.new(2, 2, 2)
                TextLabel.TextScaled = true
            end
        end
    end
    
    local function removePlayerESP(player)
        local character = player.Character
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                local BillboardGui = humanoidRootPart:FindFirstChildOfClass("BillboardGui")
                if BillboardGui then
                    BillboardGui:Destroy()
                end
            end
        end
    end
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        if Settings.plrESP then
            createPlayerESP(player)
        else
            removePlayerESP(player)
        end
    end
end

ESPPlayer()


local Rejoin = Misc:CreateButton({
    Name = "Rejoin",
    Interact = 'Click',
    Callback = function()
        repeat  task.wait() until game:IsLoaded()
        warn("Rejoinning....") 
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end,
})

local Serverhop = Misc:CreateButton({
    Name = "Server Hop",
    Interact = 'Click',
    Callback = function()
        local Player = game.Players.LocalPlayer    
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        
        local _place,_id = game.PlaceId, game.JobId
        local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end
        
        local Next; repeat
           local Servers = ListServers(Next)
           for i,v in next, Servers.data do
               if v.playing < v.maxPlayers and v.id ~= _id then
                   local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
                   if s then break end
               end
           end
           
           Next = Servers.nextPageCursor
        until not Next
    end,
})

local joinlowest = Misc:CreateButton({
    Name = "Join Lowest Server",
    Interact = 'Click',
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end
        
        local Server, Next; repeat
           local Servers = ListServers(Next)
           Server = Servers.data[1]
           Next = Servers.nextPageCursor
        until Server
        
        TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    end,
})

local Credits = Window:CreateTab("Info", 14955350024) -- Title, Image

local Discord = Credits:CreateSection("Credits")

local Label = Credits:CreateLabel("Script is made by pa1n")

local Discord = Credits:CreateSection("Join Discord")

local JoinDiscord = Credits:CreateButton({
    Name = "Copy Discord Invite",
    Interact = 'Click',
    Callback = function()
        setclipboard(tostring("discord.gg/W2XyGrNQUe"))
    end,
})

local Input = Credits:CreateInput({
    Name = "or",
    PlaceholderText = "discord.gg/W2XyGrNQUe",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print(Text)
    end,
})
   
print'b'
------ ANTI AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


wait(2)
game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.DungeonService.RF.StartDungeon:InvokeServer()

print'c'
