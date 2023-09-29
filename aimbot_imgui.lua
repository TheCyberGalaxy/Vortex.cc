local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

-- Create The Window
local PepsisWorld = library:CreateWindow({
    Name = "Vortex.cc | DEVREWRITE | PvIEdit",
    Themeable = {
    Info = "Discord Server: VzYTJ7Y"
    }
})

-- Create the Different Tabs for the Window using local {TabName} = PepsisWorld:CreateTab({Name = "{string}"})
-- Create the Combat Tab in the Window
local CombatTab = PepsisWorld:CreateTab({
    Name = "Combat"
})

-- Create the Movement Tab in the Window
local MovementTab = PepsisWorld:CreateTab({
    Name = "Movement"
})

-- Create the Visual Tab in the Window
local VisualTab = PepsisWorld:CreateTab({
    Name = "Visual"
})

-- Create the Miscellaneous Tab in the Window
local MiscTab = PepsisWorld:CreateTab({
    Name = "Misc"
})

-- Add Functions/Sections to the Combat Tab
-- Using Pregrouped or own functions
local AimbotSection = CombatTab:CreateSection({
    Name = "Aimbot"
})

--Aimbot Toggle
AimbotSection:AddToggle({
    Name = "Enable",
    Flag = "RageSection_Enable"
})

-- Add a Keybind so people can change the Keybind for the Aimbot
AimbotSection:AddKeybind({
    Name = 'AimbotHotkey',
    Callback = print --Testing AddKeybind
})
-- Different Checks for the Aimbot.
-- The Current Checks are for your Team, if the target is behind a wall and if the target is alive.
AimbotSection:AddToggle({
    Name = "Team Check",
    Flag = "RageSection_Team Check"
})
AimbotSection:AddToggle({
    Name = "Wall Check",
    Flag = "RageSection_Wall Check"
})
AimbotSection:AddToggle({
    Name = "Alive Check",
    Flag = "RageSection_Alive Check"

})

-- FOV for the Aimbot
local FovCircleSection = CombatTab:CreateSection({
    Name = "Fov Circle"
})
FovCircleSection:AddToggle({
    Name = "Enable",
    Flag = "RageSection_Enable"
})
FovCircleSection:AddToggle({
    Name = "Filled",
    Flag = "RageSection_Filled"
})
FovCircleSection:AddToggle({
    Name = "Fov",
    Flag = "RageSection_Fov"
})




--// Cache