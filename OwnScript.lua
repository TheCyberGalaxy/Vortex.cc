local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
Name = "Vortex.cc | DEVREWRITE",
Themeable = {
Info = "Discord Server: VzYTJ7Y"
}
})

local CombatTab = PepsisWorld:CreateTab({
Name = "Combat"
})
local MovementTab = PepsisWorld:CreateTab({
Name = "Movement"
})
local VisualTab = PepsisWorld:CreateTab({
Name = "Visual"
})
local MiscTab = PepsisWorld:CreateTab({
Name = "Misc"
})
local AimbotSection = CombatTab:CreateSection({
Name = "Aimbot"
})
AimbotSection:AddToggle({
Name = "Enable",
Flag = "RageSection_Enable"
})
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