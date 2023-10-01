--// Cache

local loadstring, game, getgenv, setclipboard = loadstring, game, getgenv, setclipboard

--// Loaded check

if getgenv().Aimbot then return end

--// Load Aimbot V2 (Raw)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Raw%20Main.lua"))()

--// Variables

local Aimbot = getgenv().Aimbot
local Settings, FOVSettings, Functions = Aimbot.Settings, Aimbot.FOVSettings, Aimbot.Functions

local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)() -- Pepsi's UI Library

local Parts = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}
-- New example script written by wally
-- You can suggest changes with a pull request or something

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Vortex . cc | Build : Paid',
    Center = true, 
    AutoShow = true,
})

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    ['Combat'] = Window:AddTab('Combat'), 
    ['Visual'] = Window:AddTab("Visual"), 
    ['Misc'] = Window:AddTab("Misc"), 
    ['Settings'] = Window:AddTab('Settings'),
    [''] = Window:AddTab(""), 
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

-- Groupbox:AddSlider
-- Arguments: Idx, Options
CombatRightBox:AddSlider('MySlider', {
    Text = 'Fov Circle',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

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

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

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

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

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

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

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
-- Groupbox:AddSlider
-- Arguments: Idx, Options
CombatLeftBox:AddSlider('MySlider', {
    Text = 'Sensitivity',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

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

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 0,
    Min = 0,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})

CombatLeftBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    -- SyncToggleState only works with toggles. 
    -- It allows you to make a keybind which has its state synced with its parent toggle

    -- Example: Keybind which you use to toggle flyhack, etc.
    -- Changing the toggle disables the keybind state and toggling the keybind switches the toggle state

    Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 


    -- You can define custom Modes but I have never had a use for it.
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
EnemyEspTab:AddDropdown('Enemy Tracer Origin', {Values = {'Top', 'Bottom', 'Mouse'},Default = 1,Multi = false,Text = 'tracer origin',Tooltip = 'select origin',Callback = function(Value)
    enemysets.tracerOrigin = Value
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

EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'oof arrows',
    Default = false,  
    
}):AddColorPicker('outOfViewArrowscolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'oof color',
    Transparency = 0,

    
})
EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'oof outline',
    Default = false,  
    Callback = function(first)
        enemysets.offScreenArrow = first 
    end
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


local MyButton = MiscLeftBox:AddButton('dark dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

local MiscLeftBox = Tabs.Misc:AddLeftGroupbox('Player')

MiscLeftBox:AddToggle('MyToggle', {
    Text = 'speed',
    Default = false,
    
})





Options.KeyPicker:SetValue({ 'MB2', 'Toggle' }) -- Sets keybind to MB2, mode to Hold

-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(true)

-- Sets the watermark text
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








--NEW
