local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create Depth entity
local entity = Creator.createEntity({
    CustomName = "Depth",

    -- Depth model (.rbxm)
    Model = "https://raw.githubusercontent.com/DArrcooMiguel/Depth-PLAMEN6789-Fix-Hotel--Only-/main/Depth%20Plamen6789%20FIXED%20(only%20for%20hotel-).rbxm",

    Speed = 186,
    DelayTime = 4.1,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        2.3,
    },

    Cycles = {
        Min = 4,
        Max = 8,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {5.5, 37.5, 0.2, 1.5},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://13619109732",
            Image2 = "rbxassetid://13619109732",

            Shake = true,

            Sound1 = {
                115630779610335,
                {Volume = 0.5},
            },

            Sound2 = {
                74600732721346,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(4, 157, 213),
            },

            Tease = {
                true,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Depth..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Depth has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Depth has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Depth has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Depth has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Depth entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Depth:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Depth.")
end

------------------------

-- Run Depth
Creator.runEntity(entity)
