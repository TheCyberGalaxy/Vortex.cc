--[[
 ⣤⣤⣤⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⠄⠀⢀⣠⣤⣤⣤⣤⣤⣤⣤⠀
⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⢋⣤⣾⣿⡿⠿⠛⠋⠉⠉⠉⠉⠀
⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣷⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⣿⣿⠟⠁⠀⠀⣀⣠⣤⣴⣶⣶⣶⣶⣶⣶⣤⠀
⠀⠘⣿⣿⣿⣿⣧⠀⠀⠀⠀⢸⣿⠋⣀⣤⣾⣿⠛⠛⠛⠛⠿⠿⣿⣿⣿⣿⣿⠀
⠀⠀⠈⢻⣿⣿⣿⣧⡀⠀⠀⢸⣿⠟⠉⠀⣈⠙⢿⣶⣄⡀⠀⠀⠀⠉⠛⠿⣿⠀
⠀⠀⠀⠀⠙⢿⣿⣿⣷⣄⠀⢸⡇⠀⠀⠀⢘⣧⠀⣿⣿⢿⣦⡀⠀⠀⠀⠀⠈⠀
⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣦⣸⣧⣄⣀⣠⣾⡟⢀⣿⣿⡌⢻⣿⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣯⣭⣴⣿⢻⣿⡇⠀⢻⣿⣷⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⣀⣤⣾⡿⠁⣾⣿⡇⠀⠈⣿⣿⣷⡀⠀⠀
⠀⣿⣶⣦⣤⣤⣤⣤⣤⣤⣤⣶⣾⣿⣿⡿⠋⠀⣰⣿⣿⡇⠀⠀⢸⣿⣿⣷⠀⠀
⠀⠈⠉⠉⠙⠛⠛⠛⢋⣩⣽⣿⣿⠟⠋⠀⢀⣴⣿⣿⣿⠁⠀⠀⠈⣿⣿⣿⡇⠀
⠀⣤⣤⣶⣶⣶⣶⣾⠿⠟⠛⠉⠀⠀⠀⣠⣾⣿⣿⣿⡏⠀⠀⠀⠀⣿⣿⣿⣷⠀
⠀⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠚⠛⠛⠛⠛⠛⠀⠀⠀⠀⠀⠛⠛⠛⠛⠀
A message for Xaze, Please Add Labbles so we can see wat we are doing, like : 
"--//Tab1 (for tabs, ect.)"
Thank you, luv you, JK.

-Jayden / y? / gold_str
]]

warn("Loaded Vortex.cc [PAID/DEV]")

-- Cache

local loadstring, game, getgenv, setclipboard = loadstring, game, getgenv, setclipboard

-- Loaded check

if getgenv().Aimbot then return end


-- Loads Aimbot
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheCyberGalaxy/Vortex.cc/main/vortex.lua"))()

-- Variables
local Aimbot = getgenv().Aimbot
local Settings, FOVSettings, Functions = Aimbot.Settings, Aimbot.FOVSettings, Aimbot.Functions
local Parts = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}

--main script / window
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

-- makes a window.
local Window = Library:CreateWindow({
    Title = 'Vortex . cc                                        [DEV(Debugging)]',
    Center = true, 
    AutoShow = true,
})

--makes tabs.
local Tabs = {
    -- Creates a new tab titled Main
    ['Combat'] = Window:AddTab('Combat'), 
    ['Visual'] = Window:AddTab("Visual"), 
    ['Misc'] = Window:AddTab("Misc"), 
    ['Settings'] = Window:AddTab('Settings')
}

--//Main Tabs / Toggle (Tab1 and Tab2)\\--
local TabEsp = Tabs.Combat:AddLeftTabbox()

--//EnemyEsp Tab1\\--
local AimbotTab = TabEsp:AddTab('AimbotToggle')

AimbotTab:AddToggle('MyToggle', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.Enabled = New
	end
}):AddKeyPicker('AimbotToggle', {
    Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 
    Mode = 'Hold', -- Modes: Always, Toggle, Hold
    Text = 'Aimbot', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
    Callback = function(New, Old)
        Settings.TriggerKey = stringmatch(tostring(New), "Enum%.[UserInputType]*[KeyCode]*%.(.+)")
    end,
})
AimbotTab:AddToggle('MyToggle', {
    Text = 'Team Cheak',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.TeamCheck = New
	end
})
AimbotTab:AddToggle('MyToggle', {
    Text = 'Wall Cheak',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.WallCheck = New
	end
})
AimbotTab:AddToggle('MyToggle', {
    Text = 'Alive Cheak',
    Default = true, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.AliveCheck = New
	end
})


    

AimbotTab:AddSlider('MySlider', {
    Text = 'Sensitivity',
    Default = 0,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
AimbotTab:AddToggle('MyToggle', {
    Text = 'ThirdPerson',
    Default = false, -- Default value (true / false)
    Tooltip = 'Uses mousemoverel instead of CFrame to support locking in third person (could be choppy)', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.ThirdPerson = New
	end
})
-- Groupbox:AddSlider
-- Arguments: Idx, Options
AimbotTab:AddSlider('MySlider', {
    Text = 'ThirdPersonSensitivity',
    Default = 0,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})




AimbotTab:AddDropdown('MyDropdown', {
    Values = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'LockPart',
    Tooltip = '', -- Information shown when you hover over the textbox
    Callback = function(New, Old)
		Settings.LockPart = New
	end
})


local AimbotSettingsTab = TabEsp:AddTab('Visuals')

AimbotSettingsTab:AddToggle('MyToggle', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Enabled = New
	end

})
AimbotSettingsTab:AddToggle('MyToggle', {
    Text = 'Visible',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Visible = New
	end
})


AimbotSettingsTab:AddSlider('MySlider', {
    Text = 'Fov Circle',
    Default = 90,
    Min = 10,
    Max = 300,
    Rounding = 1,
    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Amount = New
	end
})
AimbotSettingsTab:AddToggle('MyToggle', {
    Text = 'Filled ',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Filled = New
	end
})
AimbotSettingsTab:AddSlider('MySlider', {
    Text = 'Transparemcy:',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Transparency = New
	end
}).Default = FOVSettings.Transparency
AimbotSettingsTab:AddSlider('MySlider', {
    Text = 'Sides:',
    Default = 60,
    Min = 3,
    Max = 60,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Sides = New
	end
})
AimbotSettingsTab:AddSlider('MySlider', {
    Text = 'Thickness:',
    Default = 0,
    Min = 0,
    Max = 50,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Thickness = New
	end
})
AimbotSettingsTab:AddLabel('Fov Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), -- white 
    Title = 'color picker', -- Optional. Allows you to have a custom color picker title (when you open it)
    Callback = function(New, Old)
		FOVSettings.Color = New
	end
})
AimbotSettingsTab:AddLabel('Fov Locked Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 0, 0), -- red
    Title = 'color picker', -- Optional. Allows you to have a custom color picker title (when you open it)
    Callback = function(New, Old)
		FOVSettings.LockedColor = New
	end
})







--//Main Tabs / Toggle (Tab1 and Tab2)\\--
local TabEsp = Tabs.Visual:AddLeftTabbox()

--//EnemyEsp Tab1\\--
local EnemyEspTab = TabEsp:AddTab('ESP main')

--//ESP Toggles For Enemys\\--
EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,

})
EnemyEspTab:AddToggle('boxswitch', {
    Text = 'Box ESP',
    Default = false,  

}):AddColorPicker('boxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

})
--//TeamESP Tab2\\--
local TeamEspTab = TabEsp:AddTab('ESP Settings')

--//ESP Toggles For Team Or Friendlys\\--
TeamEspTab:AddToggle('teamEspSwitch', {
    Text = 'Enable ESP',
    Default = false,

})
TeamEspTab:AddToggle('teamboxswitch', {
    Text = 'Box ESP',
    Default = false,  

}):AddColorPicker('teamboxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,
 
})

--//Group Box Crosshair(Combat | Left)\\--
local CombatLeftBox = Tabs.Combat:AddLeftGroupbox('Crosshair')


--//Group Box Debug(Misc | Left)\\--
local MiscLeftBox = Tabs.Misc:AddLeftGroupbox('debug')

--//Button For DrakDex(Loads In Dark Dex)\\--
local MyButton = MiscLeftBox:AddButton('Dark Dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
    Library:Notify(' :: Loaded Dark Dex', 8)
end)

--//Button For SimpleSpy(Loads In SimpleSpy)\\--
local MyButton = MiscLeftBox:AddButton('SimpleSpy', function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
    Library:Notify(':: Loaded SimpleSpy', 8)
end)

--//Button For UnLoading Ui(Destroys Ui)\\--
local MyButton = MiscLeftBox:AddButton('Destroy Ui', function()
    Library:Unload()
    Library:Notify(':: Destroyed UI ', 8)
end)

--//Button For ReJoining The Sever Your In(leaves the sever and joins back)\\--
local MyButton = MiscLeftBox:AddButton('Rejoin', function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
    Library:Notify(' :: Rejoining . . . ', 8)
end)



--//Main Tabs / Toggle (Tab1 and Tab2)\\--
local TabEsp = Tabs.Misc:AddRightTabbox()

--//Player Tab1\\--

-- Initialize your GUI library (replace this with your actual GUI library initialization)
local PlayerTab = {}

-- Define a variable to store the walkspeed
local currentWalkSpeed = 16

local PlayerTab = TabEsp:AddTab('Player')
-- Create a toggle for enabling/disabling the walk speed adjustment
PlayerTab:AddToggle('MyToggle', {
    Text = 'WalkSpeed',
    Default = false,
    Callback = function(enabled)
        if enabled then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = currentWalkSpeed
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 -- Reset to default if disabled
        end
    end
})

-- Create a slider for adjusting the walkspeed
PlayerTab:AddSlider('WalkSlider', {
    Text = 'Walkspeed',
    Default = currentWalkSpeed,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = false,
    Callback = function(walkspeed)
        currentWalkSpeed = walkspeed -- Update the current walkspeed variable
        if PlayerTab:GetToggleValue('WalkToggle') then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
        end
    end
})

--//INF jump Toggle | KeyPicker\\--
PlayerTab:AddToggle('InfJump', {
    Text = 'InfJump ',
    Default = false, 
    Callback = function(first)
        game:GetService("UserInputService").JumpRequest:connect(function() 
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end)
    end
})

--//Fly Toggle\\--
PlayerTab:AddToggle('Fly', {
    Text = ' Fly ',
    Default = false,  
})

--//Player Settings TAB2\\--
local PlayerSettingsTab = TabEsp:AddTab('Settings')

--//Player WalkSpeed Reset Button\\--
PlayerSettingsTab:AddButton('Reset Walkspeed', function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

--//Player Flyspeed Reset Button\\--
PlayerSettingsTab:AddButton('Reset Flyspeed', function()
    print('ye')
end)



--//Settings\\--
Library:SetWatermarkVisibility(true)
Library:SetWatermark('Vortex . cc [DEV(debugging)]')
Library.KeybindFrame.Visible = true; -- todo: add a function for this
Library:OnUnload(function()
    Library.Unloaded = true
end)
local MenuGroup = Tabs['Settings']:AddLeftGroupbox('Menu')

--//I set NoUI so it does not show up in the keybinds menu\\--
MenuGroup:AddButton('Unload', function() Library:Unload() end) 
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 



Library:Notify(" :: Status : Undetected ",8)
Library:Notify(" :: Build  : [DEV(debugging)] ",8)









   
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

SaveManager:BuildConfigSection(Tabs['Settings']) 

ThemeManager:ApplyToTab(Tabs['Settings'])

