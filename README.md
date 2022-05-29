# qb-goldpan 
Rework of qb-mine from https://github.com/izMystic

Original verison from https://github.com/ALONE-OP/qb-mine

Goldpanning script for QBCore Framework

# Preview
Gathering Gravel- https://streamable.com/eisebo

Washing Gravel- https://streamable.com/7uquwv

Smelting- https://streamable.com/b1xrh5

Selling- https://streamable.com/dij6vi

# Instructions

**Add to qb-shops/config.lua**

*Add into Config.Products*
```
    ["gold"] = {
        [1] = {
            name = 'sifter',
            price = 150,
            amount = 200,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'bucket',
            price = 150,
            amount = 200,
            info = {},
            type = 'item',
            slot = 2,
        },  
        [2] = {
            name = 'mold',
            price = 150,
            amount = 200,
            info = {},
            type = 'item',
            slot = 3,
        },

    },
```
*Add into Config.Locations*
```
    ["gold"] = {
        ["label"] = "Gold Panning Supplies",
        ["coords"] = vector4(-179.12, 3026.58, 20.31, 342.06), --Change this to change the loco of shop
        ["ped"] = 's_m_y_construct_02',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["gold"],
        ["showblip"] = true,
        ["blipsprite"] = 52,--Change this to whatever you want --Default Blip
        ["blipcolor"] = 0 --Also Change --Default Color
    },
```

**Add to qb-core/shared.lua**

*Add into QBShared.Items*
```
    	["sifter"]						= {["name"] = "sifter",       		    		["label"] = "Sifting Pan",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "SiftingPan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sifter the better picker upper."},
	["bucket"]						= {["name"] = "bucket",       		    		["label"] = "Bucket",	 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "Bucket.png", 				["unique"] = true, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Gather some gravel!"},
	["mold"]				= {["name"] = "mold",       		    ["label"] = "Casting Mold",	 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "Mold.png", 		["unique"] = true, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "This should make those gold bars..."},
    	["gravel"]						= {["name"] = "gravel",       		    		["label"] = "Gravel",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "Gravel.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "You should wash this.."},
	["rawgold"]						= {["name"] = "rawgold",       		    		["label"] = "Rawgold",	 				["weight"] = 5000, 		["type"] = "item", 		["image"] = "Rawgold.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wow you really did find gold!!"},
	["goldbar"]				= {["name"] = "goldbar",       		    ["label"] = "Goldbar",	 		["weight"] = 5000, 		["type"] = "item", 		["image"] = "Goldbar.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Yup, after selling this you will be rich."},

```

# Dependencies

qb-core: https://github.com/qbcore-framework/qb-core

qb-target: https://github.com/qbcore-framework/qb-target

qb-shops: https://github.com/qbcore-framework/qb-shops

PolyZone: https://github.com/qbcore-framework/PolyZone

Progressbar: https://github.com/qbcore-framework/progressbar

qb-sellitems: https://github.com/RapidzModzz/qb-sellitems

