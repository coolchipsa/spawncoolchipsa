local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "клёвая чипса", -- Custom name of your entity
    Model = "rbxassetid://13469083900", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 10,
        WaitTime = 0,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {5555, 133124, 0, 1.5}, -- Shake values (don't change if you don't know)
        60, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://12594647623", -- Image1 url
            Image2 = "rbxassetid://12594647623", -- Image2 url
            Shake = true,
            Sound1 = {
                7817626386, -- SoundId
                { Volume = 5 }, -- Sound properties
            },
            Sound2 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                false, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 50,
                Max = 50,
            },
        },
    },
    CustomDialog = {" ты здох от   ", "рандомного лоха его имя клёвая чипса   ", " а ты и есть тот лох  ", "лроллооптполомдлпалпшотралиопплрполотпаодипадпилптатщалпащ "}, -- Custom death message
})

Spawner.runEntity(entityTable)