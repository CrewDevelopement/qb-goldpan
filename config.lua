Config = {}

Config.GoldItems = {
    [1] = {
        name = "gravel",
        threshold = 80,
        max = 3,
        remove = nil,
    },
}

Config.WashingItems = {
    [1] = {
        name = "rawgold",
        threshold = 100,
        max = 2,
        remove = "gravel",
    },
}

Config.SmeltingItems = {
    [1] = {
        name = "goldbar",
        threshold = 80,
        max = 1,
        remove = "rawgold",
    },
}

Config.Blips = {
    {
        blippoint = vector3(-183.24, 3038.42, 19.2),
        blipsprite = 618,
        blipscale = 0.65,
        blipcolour = 46,
        label = "Gold Panning & Washing"
    },
    {
        blippoint = vector3(1061.71, -1978.43, 31.24),
        blipsprite = 436,
        blipscale = 0.65,
        blipcolour = 47,
        label = "Smelting"
    },
}

Config.Gold = {
    {
        zones = { 
            vector2(-193.12, 3024.45),
            vector2(-171.61, 3053.92),
            vector2(-175.66, 3057.4),
            vector2(-196.29, 3030.29),
        },
        minz = 17.0,
        maxz = 19.20,
    },
}

Config.Washing = {
    {
        zones = {
            vector2(-193.12, 3024.45),
            vector2(-171.61, 3053.92),
            vector2(-175.66, 3057.4),
            vector2(-196.29, 3030.29),
        },
        minz = 17.0,
        maxz = 19.20,
    },
}

Config.Smelting = {
    {
        zones = {
            vector2(1114.97, -2008.14),
            vector2(1111.14, -2005.42),
            vector2(1107.87, -2010.28),
            vector2(1111.82, -2013.07),
        },
        minz = 28.0,
        maxz = 36.0,
    },
}