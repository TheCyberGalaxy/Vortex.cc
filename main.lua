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
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⡿⠁⣾⣿⡇⠀⠈⣿⣿⣷⡀⠀⠀
⠀⣿⣶⣦⣤⣤⣤⣤⣤⣤⣤⣶⣾⣿⣿⡿⠋⠀⣰⣿⣿⡇⠀⠀⢸⣿⣿⣷⠀⠀
⠀⠈⠉⠉⠙⠛⠛⠛⢋⣩⣽⣿⣿⠟⠋⠀⢀⣴⣿⣿⣿⠁⠀⠀⠈⣿⣿⣿⡇⠀
⠀⣤⣤⣶⣶⣶⣶⣾⠿⠟⠛⠉⠀⠀⠀⣠⣾⣿⣿⣿⡏⠀⠀⠀⠀⣿⣿⣿⣷⠀
⠀⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠚⠛⠛⠛⠛⠛⠀⠀⠀⠀⠀⠛⠛⠛⠛⠀
       Vortex . cc Made By :
    @xaze_    | @TheCyberGalaxy
    @gold_str | 
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
    Title = 'Vortex . cc | Build : Paid',
    Center = true, 
    AutoShow = true,
})

--makes tabs.
local Tabs = {
    -- Creates a new tab titled Main
    ['Combat'] = Window:AddTab('Combat'), 
    ['Visual'] = Window:AddTab("Visual"), 
    ['Misc'] = Window:AddTab("Misc"), 
    ['Settings'] = Window:AddTab('Settings'),
}
local CombatRightBox = Tabs.Combat:AddRightGroupbox('FOV')
CombatRightBox:AddToggle('MyToggle', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Enabled = New
	end

})
CombatRightBox:AddToggle('MyToggle', {
    Text = 'Visible',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Visible = New
	end
})


CombatRightBox:AddSlider('MySlider', {
    Text = 'Fov Circle',
    Default = 60,
    Min = 10,
    Max = 300,
    Rounding = 1,
    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Amount = New
	end
})

local CombatRightBox = Tabs.Combat:AddRightGroupbox('FOV')
CombatRightBox:AddToggle('MyToggle', {
    Text = 'Filled ',
    Default = true, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		FOVSettings.Filled = New
	end
})
CombatRightBox:AddSlider('MySlider', {
    Text = 'Transparemcy:',
    Default = 1,
    Min = 0,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
    Callback = function(New, Old)
		FOVSettings.Transparency = New
	end
})
CombatRightBox:AddSlider('MySlider', {
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
CombatRightBox:AddSlider('MySlider', {
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



local CombatLeftBox = Tabs.Combat:AddLeftGroupbox('Aimbot')
CombatLeftBox:AddToggle('MyToggle', {
    Text = 'Enable',
    Default = true, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.Enabled = New
	end
})
CombatLeftBox:AddToggle('MyToggle', {
    Text = 'Team Cheak',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.TeamCheck = New
	end
})
CombatLeftBox:AddToggle('MyToggle', {
    Text = 'Wall Cheak',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.WallCheck = New
	end
})
CombatLeftBox:AddToggle('MyToggle', {
    Text = 'Alive Cheak',
    Default = true, -- Default value (true / false)
    Tooltip = 'Enables Aimbot on/off', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.AliveCheck = New
	end
})
CombatLeftBox:AddSlider('MySlider', {
    Text = 'Sensitivity',
    Default = 0,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
CombatLeftBox:AddToggle('MyToggle', {
    Text = 'ThirdPerson',
    Default = false, -- Default value (true / false)
    Tooltip = 'Uses mousemoverel instead of CFrame to support locking in third person (could be choppy)', -- Information shown when you hover over the toggle
    Callback = function(New, Old)
		Settings.ThirdPerson = New
	end
})
-- Groupbox:AddSlider
-- Arguments: Idx, Options
CombatLeftBox:AddSlider('MySlider', {
    Text = 'ThirdPersonSensitivity',
    Default = 0,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})

CombatLeftBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 
    Mode = 'Hold', -- Modes: Always, Toggle, Hold
    Text = 'Aimbot', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
    Callback = function(New, Old)
        Settings.TriggerKey = stringmatch(tostring(New), "Enum%.[UserInputType]*[KeyCode]*%.(.+)")
    end
    
})

CombatLeftBox:AddDropdown('MyDropdown', {
    Values = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'LockPart',
    Tooltip = '', -- Information shown when you hover over the textbox
    Callback = function(New, Old)
		Settings.LockPart = New
	end
})



local TabEsp = Tabs.Visual:AddLeftTabbox()
local EnemyEspTab = TabEsp:AddTab('enemy')
local TeamEspTab = TabEsp:AddTab('friendly')

EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        enemysets.enabled = first
    end
})
EnemyEspTab:AddToggle('boxswitch', {
    Text = 'box esp',
    Default = false,  

}):AddColorPicker('boxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,


})
EnemyEspTab:AddToggle('nameswitch', {
    Text = 'name esp',
    Default = false,  
    


}):AddColorPicker('namecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    
}):AddColorPicker('healthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    
})
EnemyEspTab:AddToggle('tracerswitch', {
    Text = 'tracers esp',
    Default = false,  
  
}):AddColorPicker('tracercolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'tracer color',
    Transparency = 0,

    
})
EnemyEspTab:AddDropdown('Enemy Tracer Origin', {
    Values = {'Top', 'Bottom', 'Mouse'},Default = 1,Multi = false,Text = 'tracer origin',Tooltip = 'select origin',Callback = function(Value)
    Default = 1
end})
EnemyEspTab:AddToggle('distswitch', {
    Text = 'distance esp',
    Default = false,  

    
}):AddColorPicker('distcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    
})
EnemyEspTab:AddToggle('distswitchniger', {
    Text = 'chams',
    Default = false,  

    
}):AddColorPicker('distcolor1337', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams outline',
    Transparency = 0,

    
}):AddColorPicker('distcolor228', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams fill',
    Transparency = 0,

    
})



TeamEspTab:AddToggle('teamEspSwitch', {
    Text = 'enable esp',
    Default = false,

})
TeamEspTab:AddToggle('teamboxswitch', {
    Text = 'box esp',
    Default = false,  
    
}):AddColorPicker('teamboxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    
})
TeamEspTab:AddToggle('teamnameswitch', {
    Text = 'name esp',
    Default = false,  
    

    
}):AddColorPicker('teamnamecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    
}):AddColorPicker('teamhealthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    
})
TeamEspTab:AddToggle('teamdistswitch', {
    Text = 'distance esp',
    Default = false,  

    
}):AddColorPicker('teamdistcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    
})


local MiscLeftBox = Tabs.Misc:AddLeftGroupbox('debug')

local MyButton = MiscLeftBox:AddButton('Dark Dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
    Library:Notify('Loaded Dark Dex', 8)
end)
local MyButton = MiscLeftBox:AddButton('SimpleSpy', function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
    Library:Notify('Loaded SimpleSpy', 8)
end)
local MyButton = MiscLeftBox:AddButton('Task | Wait hook', function()
    a = hookfunction(wait, function(b)
        return a(0)
    end)
    b = hookfunction(task.wait, function(c)
        return b(0)
    end)
    Library:Notify('Loaded Task | wait hook', 8)
end)

local MyButton = MiscLeftBox:AddButton('Destroy Ui', function()
    Library:Unload()
end)
local MyButton = MiscLeftBox:AddButton('Rejoin', function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
    Library:Notify('Rejoining', 8)
end)



local MiscRightBox = Tabs.Misc:AddRightGroupbox('Player')


MiscRightBox:AddToggle('Walkspeed', {
    Text = 'Enable Walkspeed',
    Default = false,  
    
    Callback = function(first)
        print('Walkspeed')
    end
})
MiscRightBox:AddToggle('InfJump', {
    Text = 'Enable infjump (unsafe)',
    Default = false,  
    
    Callback = function(first)
        game:GetService("UserInputService").JumpRequest:connect(function() 
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end)
    end
})
MiscRightBox:AddToggle('Walkspeed', {
    Text = 'Enable Fly ',
    Default = false,  
    
    Callback = function(first)
        print('Walkspeed')
    end
})
MiscRightBox:AddSlider('MySlider', {
    Text = 'Walkspeed',
    Default = 16,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
    Callback = function(walkspeed)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
    end
})

MiscRightBox:AddSlider('MySlider', {
    Text = 'Flyspeed',
    Default = 50,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = false,
    Callback = function(flyspeed)
        
    end
})
MiscRightBox:AddButton('Reset Walkspeed', function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
MiscRightBox:AddButton('Reset Flyspeed', function()
    print('ye')
end)

Options.KeyPicker:SetValue({ 'MB2', 'Toggle' }) -- Sets keybind to MB2, mode to Hold
Library:SetWatermarkVisibility(true)
Library:SetWatermark('Vortex . cc | Build : Paid / DEV')
Library.KeybindFrame.Visible = true; -- todo: add a function for this
Library:OnUnload(function()
    Library.Unloaded = true
end)






-- Settings
local MenuGroup = Tabs['Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end) 
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
CombatLeftBox:AddLabel(' ')

Library:Notify("Status : Undetected ",8)
Library:Notify("Build  : Paid / DEV ",8)








   
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!
