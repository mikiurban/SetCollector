-- Appearances from Dragonflight (v.10.x)

--
-- LOCAL VARIABLES
--

local ALL = SetCollector.ALL
local ANY = SetCollector.ANY

-- Armor Type
local CLOTH = SetCollector.CLOTH
local LEATHER = SetCollector.LEATHER
local MAIL = SetCollector.MAIL
local PLATE = SetCollector.PLATE
local ANY_ARMOR	= SetCollector.ANY_ARMOR

-- Classes
local DEATHKNIGHT = SetCollector.DEATHKNIGHT
local DEMONHUNTER = SetCollector.DEMONHUNTER
local DRUID = SetCollector.DRUID
local EVOKER = SetCollector.EVOKER
local HUNTER = SetCollector.HUNTER
local MAGE = SetCollector.MAGE
local MONK = SetCollector.MONK
local PALADIN = SetCollector.PALADIN
local PRIEST = SetCollector.PRIEST
local ROGUE = SetCollector.ROGUE
local SHAMAN = SetCollector.SHAMAN
local WARLOCK = SetCollector.WARLOCK
local WARRIOR = SetCollector.WARRIOR
local ANY_CLASS = SetCollector.ANY_CLASS

-- Factions
local ALLIANCE = SetCollector.ALLIANCE
local HORDE = SetCollector.HORDE
local ANY_FACTION = SetCollector.ANY_FACTION

-- Obtainable
local OBTAIN = SetCollector.OBTAIN
local NO_OBTAIN = SetCollector.NO_OBTAIN

-- Useable as Transmog
local TRANSMOG = SetCollector.TRANSMOG
local NO_TRANSMOG = SetCollector.NO_TRANSMOG

-- Locations
local NO_LOCATION = nil

--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end
local function I(...) return SetCollector:CreateAppearanceFromItemID(...) end
local function CreateSet(...) return SetCollector:CreateSet(...) end
local function CreateVariant(...) return SetCollector:CreateVariant(...) end
local function IncludeSet(...) return SetCollector:IncludeSet(...) end
local function AddSetsToDatabase(...) return SetCollector:AddSetsToDatabase(...) end

local function GetCraftedAppearances()
    local COLLECTION, VERSION = SetCollector.CRAFTED, 100000
    local sets = {
        -- Primal Elements
        IncludeSet(COLLECTION,VERSION,2749,PLATE,ANY_CLASS,ANY_FACTION), -- Primal Molten
        IncludeSet(COLLECTION,VERSION,2743,CLOTH,ANY_CLASS,ANY_FACTION), -- Vibrant Wildercloth
        IncludeSet(COLLECTION,VERSION,2745,MAIL,ANY_CLASS,ANY_FACTION), -- Flame-Touched
        IncludeSet(COLLECTION,VERSION,2747,LEATHER,ANY_CLASS,ANY_FACTION), -- Life-Bound

        -- Expedition Gear
        IncludeSet(COLLECTION,VERSION,2698,PLATE,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Draconium Armor
        IncludeSet(COLLECTION,VERSION,2691,CLOTH,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Wildercloth Regalia
        IncludeSet(COLLECTION,VERSION,2694,MAIL,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Adamant Battlegear
        IncludeSet(COLLECTION,VERSION,2688,LEATHER,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Resilient Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 100000
    local sets = {
        IncludeSet(COLLECTION,VERSION,2712,PLATE,ANY_CLASS,ANY_FACTION), -- Djaradin Battlegear / Djaradin Dungeon Battlegear
        IncludeSet(COLLECTION,VERSION,2710,MAIL,ANY_CLASS,ANY_FACTION), -- Centaur Regalia / Centaur Dungeon Harness
        IncludeSet(COLLECTION,VERSION,2703,CLOTH,ANY_CLASS,ANY_FACTION), -- Titan Keeper's Vestments / Titan Dungeonkeeper's Vestments
        IncludeSet(COLLECTION,VERSION,2683,LEATHER,ANY_CLASS,ANY_FACTION), -- Tuskarr Battlegear / Ottuk Hide Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 100000
    local sets = {
        -- World and Weekly Quests
        IncludeSet(COLLECTION,VERSION,2711,PLATE,ANY_CLASS,ANY_FACTION,2714,2713), -- Djaradin Battlegear / Wyrmforged Battlegear
        IncludeSet(COLLECTION,VERSION,2706,MAIL,ANY_CLASS,ANY_FACTION,2708,2709), -- Centaur Regalia / Ohn'ahran Falconer's Regalia
        IncludeSet(COLLECTION,VERSION,2701,CLOTH,ANY_CLASS,ANY_FACTION,2704,2705), -- Titan Keeper's Vestments / Cobalt Watcher's Vestments
        IncludeSet(COLLECTION,VERSION,2681,LEATHER,ANY_CLASS,ANY_FACTION,2684,2587), -- Tuskarr Battlegear / Ottuk Hide Armor

        -- Expedition Gear
        IncludeSet(COLLECTION,VERSION,2697,PLATE,ANY_CLASS,ANY_FACTION,2700,2492,2699),
        IncludeSet(COLLECTION,VERSION,2692,MAIL,ANY_CLASS,ANY_FACTION,2695,2696,2491),
        IncludeSet(COLLECTION,VERSION,2685,LEATHER,ANY_CLASS,ANY_FACTION,2490,2687,2686),
        IncludeSet(COLLECTION,VERSION,2689,CLOTH,ANY_CLASS,ANY_FACTION,2693,2690,2489),

        -- Dracthyr Battlegear
        IncludeSet(COLLECTION,VERSION,2672,MAIL,ANY_CLASS,ANY_FACTION,2673,2674,2675,2670),  -- Emerald, Crimson, Cobalt, Sandshaped, Obsidian

        -- Valdrakken Civilian Clothing
        IncludeSet(COLLECTION,VERSION,2582,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2583,2584,2585,2586), 

        -- Primal Elements
        IncludeSet(COLLECTION,VERSION,2667,PLATE,ANY_CLASS,ANY_FACTION,2668,2748,2856),  
        IncludeSet(COLLECTION,VERSION,2661,CLOTH,ANY_CLASS,ANY_FACTION,2662,2742,2853),
        IncludeSet(COLLECTION,VERSION,2663,MAIL,ANY_CLASS,ANY_FACTION,2664,2744,2855),
        IncludeSet(COLLECTION,VERSION,2665,LEATHER,ANY_CLASS,ANY_FACTION,2666,2746,2854),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Cavern Delver's Gear
        IncludeSet(COLLECTION,VERSION,3011,CLOTH,ANY_CLASS,ANY_FACTION,3012,3013,3014), -- Moonless Vestiture
        IncludeSet(COLLECTION,VERSION,3015,LEATHER,ANY_CLASS,ANY_FACTION,3016,3017,3018), -- Sunless Leathers
        IncludeSet(COLLECTION,VERSION,3019,MAIL,ANY_CLASS,ANY_FACTION,3020,3021,3022), -- Skyless Scales
        IncludeSet(COLLECTION,VERSION,3023,PLATE,ANY_CLASS,ANY_FACTION,3024,3025,3026), -- Starless Bulwark

        -- Ornate Black Dragon Labwear
        IncludeSet(COLLECTION,VERSION,2912,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2938),

        -- Black Dragonflight Vestments
        IncludeSet(COLLECTION,VERSION,2852,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100105
    sets = {
        -- Racing Cup
        IncludeSet(COLLECTION,VERSION,3054,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3352), -- Outlandish Drake Racer's Silks, Outland Cup

        -- T.B.D.
        IncludeSet(COLLECTION,VERSION,3055,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3056,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3057,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3058,PLATE,ANY_CLASS,ANY_FACTION),

        -- Jingoist's War Armor / Warmongers's Battlegear
        IncludeSet(COLLECTION,VERSION,3065,CLOTH,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,VERSION,3066,LEATHER,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,VERSION,3067,MAIL,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,VERSION,3068,PLATE,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,VERSION,3061,CLOTH,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,VERSION,3062,LEATHER,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,VERSION,3063,MAIL,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,VERSION,3064,PLATE,ANY_CLASS,HORDE),

        -- Other Time Rifts
        IncludeSet(COLLECTION,VERSION,3069,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3070,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3071,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,VERSION,3072,PLATE,ANY_CLASS,ANY_FACTION),

        -- Draconic Mortal's Attire
        IncludeSet(COLLECTION,VERSION,3076,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Rift-Mender's Vestments, Soridormi

        -- Cavern Delver's Gear
        IncludeSet(COLLECTION,VERSION,3088,LEATHER,ANY_CLASS,ANY_FACTION,3092), -- Infinite Stalker's Garments, Time Rifts and Dawn of the Infinite, Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3091,CLOTH,ANY_CLASS,ANY_FACTION,3087), -- Infinite Zealot's Vestments, Dawn of the Infinite, Time Rifts and Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3093,MAIL,ANY_CLASS,ANY_FACTION,3089), -- Infinite Soldier's Raiment, Dawn of the Infinite, Time Rifts and Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3094,PLATE,ANY_CLASS,ANY_FACTION,3090), -- Infinite Vanguard's Armor, Dawn of the Infinite, Time Rifts and Dawn of the Infinite

        -- Gilnean Regalia
        IncludeSet(COLLECTION,VERSION,3351,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Gilnean Noble's Suit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100107
    sets = {
        -- Stormrider's Attire
        IncludeSet(COLLECTION,100107,3128,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3625,3626,3627,3628,3629,3630,3129), -- Shocking Silver Stormrider's Attire, Deep, Frenzied Deep, Champion, Sparking Champion, Silver, Shocking Silver, Thundering
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Dreamer's Enchantment
        IncludeSet(COLLECTION,VERSION,3131,CLOTH,ANY_CLASS,ANY_FACTION,3296,3300,3289,3194), -- Ceremonial Jacaranda Regalia, Quest Rewards, Superbloom, Aspirant, World Drops
        IncludeSet(COLLECTION,VERSION,3132,MAIL,ANY_CLASS,ANY_FACTION,3192,3291,3294,3298), -- Embrace of the Dreamfused Skull, World Drops, Aspirant, Quest Rewards, Superbloom
        IncludeSet(COLLECTION,VERSION,3133,LEATHER,ANY_CLASS,ANY_FACTION,3295,3290,3193,3299), -- Barkbloom Warleathers, Quest Rewards, Aspirant, World Drops, Superbloom
        IncludeSet(COLLECTION,VERSION,3134,PLATE,ANY_CLASS,ANY_FACTION,3191,3297,3292,3293), -- Overgrown Freyan Warplate, World Drops, Superbloom, Aspirant, Quest Rewards
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 109999
    sets = {
        -- Dalaran Defender, Pre-Patch event
        IncludeSet(COLLECTION,VERSION,3664,PLATE,ANY_CLASS,ANY_FACTION), -- Dalaran Defender's Plate Armor
        IncludeSet(COLLECTION,VERSION,3666,MAIL,ANY_CLASS,ANY_FACTION), -- Dalaran Defender's Mail Armor
        IncludeSet(COLLECTION,VERSION,3665,CLOTH,ANY_CLASS,ANY_FACTION), -- Dalaran Defender's Cloth Armor
        IncludeSet(COLLECTION,VERSION,3667,LEATHER,ANY_CLASS,ANY_FACTION), -- Dalaran Defender's Leather Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 100000
    local sets = {
        IncludeSet(COLLECTION,VERSION,2482,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Fireplume Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    VERSION = 100007
    sets = {
        -- Diplomat's Regalia
        IncludeSet(COLLECTION,VERSION,2857,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Waveborne Diplomat's Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    VERSION = 100200
    sets = {
        -- Unrelenting Justice
        IncludeSet(COLLECTION,VERSION,3305,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3367,3366), -- Moonlit Burden of Unrelenting Justice, Moon, Sun
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100205
    sets = {
        -- Dreadlords Regalia
        IncludeSet(COLLECTION,VERSION,3354,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3355), -- Dreadlord's Venombane Armor, In-Game Shop Variant
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 100000
    local sets = {
        -- Dragonflight Season 1 (Aspirant)
        IncludeSet(COLLECTION,VERSION,2715,PLATE,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Plate Battlegear
        IncludeSet(COLLECTION,VERSION,2707,MAIL,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Chain Armor
        IncludeSet(COLLECTION,VERSION,2702,CLOTH,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Silk Vestments
        IncludeSet(COLLECTION,VERSION,2682,LEATHER,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Battlegarb

        -- Dragonflight Season 1 (Gladiator, Alt = Elite)
        IncludeSet(COLLECTION,VERSION,2716,ANY_ARMOR,MAGE,ANY_FACTION,2717), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2718,ANY_ARMOR,PRIEST,ANY_FACTION,2719), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2720,ANY_ARMOR,WARLOCK,ANY_FACTION,2721), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2722,ANY_ARMOR,DRUID,ANY_FACTION,2723), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2724,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2725), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2726,ANY_ARMOR,MONK,ANY_FACTION,2727), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2728,ANY_ARMOR,ROGUE,ANY_FACTION,2729), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2730,ANY_ARMOR,EVOKER,ANY_FACTION,2731), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2732,ANY_ARMOR,HUNTER,ANY_FACTION,2733), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2734,ANY_ARMOR,SHAMAN,ANY_FACTION,2735), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2736,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2737), -- Crimson Gladiator's Plate Armor
        IncludeSet(COLLECTION,VERSION,2738,ANY_ARMOR,PALADIN,ANY_FACTION,2739), -- Crimson Gladiator's Plate Armor
        IncludeSet(COLLECTION,VERSION,2740,ANY_ARMOR,WARRIOR,ANY_FACTION,2741), -- Crimson Gladiator's Plate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Dragonflight Season 2 (Gladiator, Alt = Elite)
        IncludeSet(COLLECTION,VERSION,2935,ANY_ARMOR,MAGE,ANY_FACTION,2936), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2915,ANY_ARMOR,PRIEST,ANY_FACTION,2916), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2917,ANY_ARMOR,WARLOCK,ANY_FACTION,2918), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,VERSION,2921,ANY_ARMOR,DRUID,ANY_FACTION,2922), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2919,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2920), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2923,ANY_ARMOR,MONK,ANY_FACTION,2924), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2925,ANY_ARMOR,ROGUE,ANY_FACTION,2926), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,VERSION,2910,ANY_ARMOR,EVOKER,ANY_FACTION,2911), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2927,ANY_ARMOR,HUNTER,ANY_FACTION,2928), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2929,ANY_ARMOR,SHAMAN,ANY_FACTION,2930), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,VERSION,2913,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2914), -- Obsidion Gladiator's Plate Armor
        IncludeSet(COLLECTION,VERSION,2931,ANY_ARMOR,PALADIN,ANY_FACTION,2932), -- Obsidion Gladiator's Plate Armor
        IncludeSet(COLLECTION,VERSION,2933,ANY_ARMOR,WARRIOR,ANY_FACTION,2934), -- Obsidion Gladiator's Plate Armor

        IncludeSet(COLLECTION,VERSION,3007,CLOTH,ANY_CLASS,ANY_FACTION), -- Obsidian Aspirant's Silk Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,3008,LEATHER,ANY_CLASS,ANY_FACTION), -- Obsidian Aspirant's Leather Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,3009,MAIL,ANY_CLASS,ANY_FACTION), -- Obsidian Aspirant's Chain Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,3010,PLATE,ANY_CLASS,ANY_FACTION), -- Obsidian Aspirant's Plate Armor, Aspirant
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Dragonflight Season 3 and 4
        IncludeSet(COLLECTION,VERSION,3195,CLOTH,MAGE,ANY_FACTION,3196), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3197,CLOTH,PRIEST,ANY_FACTION,3198), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3199,CLOTH,WARLOCK,ANY_FACTION,3200), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3201,LEATHER,DRUID,ANY_FACTION,3202), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3203,LEATHER,DEMONHUNTER,ANY_FACTION,3204), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3205,LEATHER,MONK,ANY_FACTION,3206), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3207,LEATHER,ROGUE,ANY_FACTION,3208), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3209,MAIL,EVOKER,ANY_FACTION,3210), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3211,MAIL,HUNTER,ANY_FACTION,3212), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3213,MAIL,SHAMAN,ANY_FACTION,3214), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3215,PLATE,DEATHKNIGHT,ANY_FACTION,3216), -- Verdant Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,3217,PLATE,PALADIN,ANY_FACTION,3218), -- Verdant Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,3219,PLATE,WARRIOR,ANY_FACTION,3220), -- Verdant Gladiator's Plate Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 100000
    local sets = {
        -- Vault of the Incarnates (N, H, M, RF)
        IncludeSet(COLLECTION,VERSION,2601,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2614,2615,2616), -- Haunted Frostbrood Remains
        IncludeSet(COLLECTION,VERSION,2602,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2617,2618,2619), -- Skybound Avenger's Flightwear
        IncludeSet(COLLECTION,VERSION,2603,ANY_ARMOR,DRUID,ANY_FACTION,2620,2622,2621), -- Lost Landcaller's Vesture
        IncludeSet(COLLECTION,VERSION,2604,ANY_ARMOR,EVOKER,ANY_FACTION,2623,2624,2625), -- Scales of the Awakened
        IncludeSet(COLLECTION,VERSION,2605,ANY_ARMOR,HUNTER,ANY_FACTION,2626,2628,2627), -- Stormwing Harrier's Camouflage
        IncludeSet(COLLECTION,VERSION,2606,ANY_ARMOR,MAGE,ANY_FACTION,2629,2630,2631), -- Bindings of the Crystal Scholar
        IncludeSet(COLLECTION,VERSION,2607,ANY_ARMOR,MONK,ANY_FACTION,2632,2633,2634), -- Wrappings of the Waking Fist
        IncludeSet(COLLECTION,VERSION,2608,ANY_ARMOR,PALADIN,ANY_FACTION,2635,2637,2636), -- Virtuous Silver Cataphract
        IncludeSet(COLLECTION,VERSION,2609,ANY_ARMOR,PRIEST,ANY_FACTION,2638,2640,2639), -- Draconic Hierophant's Finery
        IncludeSet(COLLECTION,VERSION,2610,ANY_ARMOR,ROGUE,ANY_FACTION,2641,2642,2643), -- Vault Delver's Toolkit
        IncludeSet(COLLECTION,VERSION,2611,ANY_ARMOR,SHAMAN,ANY_FACTION,2644,2646,2645), -- Elements of Infused Earth
        IncludeSet(COLLECTION,VERSION,2612,ANY_ARMOR,WARLOCK,ANY_FACTION,2647,2648,2649), -- Scalesworn Cultist's Habit
        IncludeSet(COLLECTION,VERSION,2613,ANY_ARMOR,WARRIOR,ANY_FACTION,2650,2651,2652),  -- Stones of the Walking Mountain
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    VERSION = 100100
    sets = {
        -- Aberrus, the Shadowed Crucible (N, H, M, RF)
        IncludeSet(COLLECTION,VERSION,2870,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2895,2896,2897), -- Lingering Phantom's Encasement
        IncludeSet(COLLECTION,VERSION,2869,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2901,2902,2903), -- Kinslayer's Burdens
        IncludeSet(COLLECTION,VERSION,2868,ANY_ARMOR,DRUID,ANY_FACTION,2892,2893,2894), -- Strands of the Autumn Blaze
        IncludeSet(COLLECTION,VERSION,2867,ANY_ARMOR,EVOKER,ANY_FACTION,2904,2905,2906), -- Legacy of Obsidian Secrets
        IncludeSet(COLLECTION,VERSION,2866,ANY_ARMOR,HUNTER,ANY_FACTION,2889,2890,2891), -- Ashen Predator's Scaleform
        IncludeSet(COLLECTION,VERSION,2865,ANY_ARMOR,MAGE,ANY_FACTION,2907,2908,2909), -- Underlight Conjurer's Brilliance
        IncludeSet(COLLECTION,VERSION,2864,ANY_ARMOR,MONK,ANY_FACTION,2886,2887,2888), -- Fangs of the Vermillion Forge
        IncludeSet(COLLECTION,VERSION,2859,ANY_ARMOR,PALADIN,ANY_FACTION,2871,2872,2873), -- Heartfire Sentinel's Authority
        IncludeSet(COLLECTION,VERSION,2863,ANY_ARMOR,PRIEST,ANY_FACTION,2883,2884,2885), -- The Furnace Seraph's Verdict
        IncludeSet(COLLECTION,VERSION,2862,ANY_ARMOR,ROGUE,ANY_FACTION,2880,2881,2882), -- Lurking Specter's Shadeweave
        IncludeSet(COLLECTION,VERSION,2861,ANY_ARMOR,SHAMAN,ANY_FACTION,2877,2878,2879), -- Runes of the Cinderwolf
        IncludeSet(COLLECTION,VERSION,2860,ANY_ARMOR,WARLOCK,ANY_FACTION,2874,2875,2876), -- Sinister Savant's Cursethreads
        IncludeSet(COLLECTION,VERSION,2858,ANY_ARMOR,WARRIOR,ANY_FACTION,2898,2899,2900),  -- Irons of the Onyx Crucible
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    VERSION = 11020
    sets = {
        -- Amirdrassil, the Dream's Hope
        IncludeSet(COLLECTION,VERSION,3144,LEATHER,MONK,ANY_FACTION,3142,3141,3143), -- Mystic Heron's Discipline, Raid Finder, Mythic, Heroic
        IncludeSet(COLLECTION,VERSION,3137,MAIL,HUNTER,ANY_FACTION,3139,3138,3140), -- Blazing Dreamstalker's Trophies, Mythic, Raid Finder, Heroic
        IncludeSet(COLLECTION,VERSION,3175,CLOTH,WARLOCK,ANY_FACTION,3174,3173,3176), -- Devout Ashdevil's Pactweave, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3153,LEATHER,DEMONHUNTER,ANY_FACTION,3154,3155,3156), -- Screaming Torchfiend's Brutality, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,VERSION,3169,MAIL,SHAMAN,ANY_FACTION,3171,3170,3172), -- Vision of the Greatwolf Outcast, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,VERSION,3177,LEATHER,DRUID,ANY_FACTION,3178,3179,3180), -- Benevolent Embersage's Guidance, Heroic, Raid Finder, Mythic
        IncludeSet(COLLECTION,VERSION,3163,PLATE,DEATHKNIGHT,ANY_FACTION,3162,3161,3164), -- Risen Nightmare's Gravemantle, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,VERSION,3186,CLOTH,MAGE,ANY_FACTION,3187,3185,3188), -- Wayward Chronomancer's Clockwork, Heroic, Raid Finder, Mythic
        IncludeSet(COLLECTION,VERSION,3150,PLATE,WARRIOR,ANY_FACTION,3151,3149,3152), -- Molten Vanguard's Mortarplate, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3157,MAIL,EVOKER,ANY_FACTION,3159,3158,3160), -- Weyrnkeeper's Timeless Vigil, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3165,LEATHER,ROGUE,ANY_FACTION,3166,3167,3168), -- Lucid Shadewalker's Silence, Mythic, Raid Finder, Heroic
        IncludeSet(COLLECTION,VERSION,3148,PLATE,PALADIN,ANY_FACTION,3145,3147,3146), -- Zealous Pyreknight's Ardor, Mythic, Raid Finder, Heroic
        IncludeSet(COLLECTION,VERSION,3184,CLOTH,PRIEST,ANY_FACTION,3181,3183,3182), -- Blessings of Lunar Communion, Raid Finder, Heroic, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 100005
    local sets = {
        IncludeSet(COLLECTION,VERSION,2320,PLATE,ANY_CLASS,ANY_FACTION), -- Fel-Automaton Exoplate
        IncludeSet(COLLECTION,VERSION,2321,CLOTH,ANY_CLASS,ANY_FACTION),      -- Vestment of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2321,CLOTH,ANY_CLASS,ANY_FACTION), -- Vestment of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2323,CLOTH,ANY_CLASS,ANY_FACTION), -- Twisted Arcanum Regalia
        IncludeSet(COLLECTION,VERSION,2327,ANY_ARMOR,ANY_CLASS,ANY_FACTION),  -- Darkmoon Harlequin's Bells
        IncludeSet(COLLECTION,VERSION,2331,MAIL,ANY_CLASS,ANY_FACTION), -- Chains of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2334,LEATHER,ANY_CLASS,ANY_FACTION), -- Battlewraps of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2337,LEATHER,ANY_CLASS,ANY_FACTION), -- Vestments of the Nightmare Forest
        IncludeSet(COLLECTION,VERSION,2338,MAIL,ANY_CLASS,ANY_FACTION), -- Slumbering Caldera Regalia
        IncludeSet(COLLECTION,VERSION,2343,PLATE,ANY_CLASS,ANY_FACTION),      -- Battleplate of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2343,PLATE,ANY_CLASS,ANY_FACTION), -- Battleplate of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION,2346,ANY_ARMOR,ANY_CLASS,ANY_FACTION),  -- Dashing Buccaneer's Slops
        IncludeSet(COLLECTION,VERSION,2654,MAIL,ANY_CLASS,ANY_FACTION),       -- Glorious Dragonrider's Mail
        IncludeSet(COLLECTION,VERSION,2655,CLOTH,ANY_CLASS,ANY_FACTION), -- Corrupted Runelord's Regalia
        IncludeSet(COLLECTION,VERSION,2656,PLATE,ANY_CLASS,ANY_FACTION), -- Val'sharah Protector's Battleplate
        IncludeSet(COLLECTION,VERSION,2657,LEATHER,ANY_CLASS,ANY_FACTION), -- Sylvan Stalker's Leathers
        IncludeSet(COLLECTION,VERSION,2658,MAIL,ANY_CLASS,ANY_FACTION), -- Tidecaller's Chainmail
        IncludeSet(COLLECTION,VERSION,2659,CLOTH,ANY_CLASS,ANY_FACTION), -- Void-Bound Raiment
        IncludeSet(COLLECTION,VERSION,2660,LEATHER,ANY_CLASS,ANY_FACTION), -- Void-Bound Battlegear
        IncludeSet(COLLECTION,VERSION,2669,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Solemn Watchman's Garb
        IncludeSet(COLLECTION,VERSION,2676,MAIL,ANY_CLASS,ANY_FACTION), -- Void-Bound Chains
        IncludeSet(COLLECTION,VERSION,2677,PLATE,ANY_CLASS,ANY_FACTION), -- Void-Bound Warplate
        IncludeSet(COLLECTION,VERSION,2678,LEATHER,ANY_CLASS,ANY_FACTION), -- Kvaldir Scout Leathers
        IncludeSet(COLLECTION,VERSION,2679,PLATE,ANY_CLASS,ANY_FACTION), -- Helarjar Berserker Warplate
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100105
    sets = {
        IncludeSet(COLLECTION,VERSION,2339,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Bones of the Bloodhunter
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100200
    sets = {
        -- Sky-Captain's Regalia
        IncludeSet(COLLECTION,VERSION,3189,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3190), -- Sky-Captain's Formal Attire, Trading Post

        -- Wastewander Kit
        IncludeSet(COLLECTION,VERSION,3306,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Wastewander Tracker's Kit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100205
    sets = {
        -- Love Witch's Attire
        IncludeSet(COLLECTION,VERSION,3356,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3358,3357), -- Twilight Witch's Attire, In-Game Shop, Trading Post - Sky Witch
        -- Dark Ranger General's Kit
        IncludeSet(COLLECTION,VERSION,3362,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Dark Ranger General's Kit
        -- Spring Reveler's Collection
        IncludeSet(COLLECTION,VERSION,3360,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3445,3449,3447), -- Spring Reveler's Cornsilk Collection, Trading Post - Dandelion, Trading Post - Cornsilk, World Drop
        IncludeSet(COLLECTION,VERSION,3361,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3444,3446,3448), -- Spring Reveler's Cornsilk Collection, Trading Post - Dandelion, World Drop, Trading Post - Cornsilk
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    COLLECTION, VERSION = SetCollector.TRADING, 100206
    sets = {
        -- Buccaneer's Slops
        IncludeSet(COLLECTION,VERSION,2340,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3487), -- Fearless Buccaneer's Slops, Trading Post - Orange
        -- Gladiator's Ragged Armor
        IncludeSet(COLLECTION,VERSION,3451,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3452), -- Gladiator's Battered Armor, Trading Post
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    
    COLLECTION, VERSION = SetCollector.TRADING, 100207
    sets = {
        -- Snugglefin Murloc Romper
        IncludeSet(COLLECTION,VERSION,3634,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3635), -- Purple Snugglefin Murloc Romper, Purple

        -- Tropical Ensemble
        IncludeSet(COLLECTION,VERSION,3636,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3637,3638,3639), -- Sunny Tropical Beachwear, Blue, Pink, Yellow
        
        -- Diver Suit
        IncludeSet(COLLECTION,VERSION,3649,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3651,3650,3652), -- CopperDiver Suit, Green, Dark, Copper
        
        -- Tropical Swimwear Ensemble
        IncludeSet(COLLECTION,VERSION,3644,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3646,3645,3647), -- Sunny Tropical Swimwear, Pink, Blue, Yellow
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion10Appearances(expansion)
    if expansion.v10 then
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        GetTradingPostAppearances()
    end
end

function SetCollector:GetVersion10Status()
    return SetCollector:GetExpansionStatus("10")
end

function SetCollector:SetVersion10Status()
    SetCollector:SetExpansionStatus("10")
end

