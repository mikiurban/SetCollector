-- Appearances from Dragonflight (v.10.x)

--
-- LOCAL VARIABLES
--

-- Armor Type
local CLOTH = SetCollector.CLOTH
local LEATHER = SetCollector.LEATHER
local MAIL = SetCollector.MAIL
local PLATE = SetCollector.PLATE

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
        IncludeSet(COLLECTION,VERSION,2749), -- Primal Molten
        IncludeSet(COLLECTION,VERSION,2743), -- Vibrant Wildercloth
        IncludeSet(COLLECTION,VERSION,2745), -- Flame-Touched
        IncludeSet(COLLECTION,VERSION,2747), -- Life-Bound
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100001
    sets = {
        -- Expedition Gear
        IncludeSet(COLLECTION,VERSION,2698), -- Crimson Combatant's Draconium Armor
        IncludeSet(COLLECTION,VERSION,2691), -- Crimson Combatant's Wildercloth Regalia
        IncludeSet(COLLECTION,VERSION,2694), -- Crimson Combatant's Adamant Battlegear
        IncludeSet(COLLECTION,VERSION,2688), -- Crimson Combatant's Resilient Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 100000
    local sets = {
        IncludeSet(COLLECTION,VERSION,2712), -- Djaradin Battlegear / Djaradin Dungeon Battlegear
        IncludeSet(COLLECTION,VERSION,2710), -- Centaur Regalia / Centaur Dungeon Harness
        IncludeSet(COLLECTION,VERSION,2703), -- Titan Keeper's Vestments / Titan Dungeonkeeper's Vestments
        IncludeSet(COLLECTION,VERSION,2683), -- Tuskarr Battlegear / Ottuk Hide Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 100000
    local sets = {
        -- World and Weekly Quests
        IncludeSet(COLLECTION,VERSION,2684,2587), -- Tuskarr Battlegear / Ottuk Hide Armor
        IncludeSet(COLLECTION,VERSION,2704,2705), -- Titan Keeper's Vestments / Cobalt Watcher's Vestments
        IncludeSet(COLLECTION,VERSION,2708,2709), -- Centaur Regalia / Ohn'ahran Falconer's Regalia
        IncludeSet(COLLECTION,VERSION,2714,2713), -- Djaradin Battlegear / Wyrmforged Battlegear

        -- Expedition Gear
        IncludeSet(SetCollector.EXPANSION,100000,2685), -- Dragonflight Combatant's Resilient Armor
        IncludeSet(SetCollector.EXPANSION,100000,2689,2693,2489,2690), -- Drakewatcher's Armor, World Drops, Renown, Primal Storms
        IncludeSet(SetCollector.EXPANSION,100000,2692,2491,2695,2696), -- Hornstrider's Battlegear, Renown, Primal Storms, World Drops
        IncludeSet(SetCollector.EXPANSION,100000,2697,2700,2492,2699), -- Shorebreaker's Armor, World Drops, Renown, Primal Storms

        -- Dracthyr Battlegear
        IncludeSet(SetCollector.EXPANSION,100000,2672,2673,2674,2675,2670), -- Sandshaped Dracthyr Battlegear, Crimson, Cobalt, Sandshaped, Obsidian

        -- Valdrakken Civilian Clothing
        IncludeSet(SetCollector.EXPANSION,100000,2582,2583,2584,2585,2586), -- Green Valdrakken Clothing, Bronze, Black, Blue, Green

        -- Primal Elements
        IncludeSet(SetCollector.EXPANSION,100000,2662,2853,2742), -- Raging Tempest, War Mode, The Forbidden Reach, World Drop
        IncludeSet(SetCollector.EXPANSION,100000,2664,2855,2744), -- Raging Tempest, The Forbidden Reach, War Mode, World Drop
        IncludeSet(SetCollector.EXPANSION,100000,2666,2854,2746), -- Raging Tempest, The Forbidden Reach, War Mode, World Drop
        IncludeSet(SetCollector.EXPANSION,100000,2668,2856,2748), -- Raging Tempest, War Mode, The Forbidden Reach, World Drop
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Cavern Delver's Gear
        IncludeSet(SetCollector.EXPANSION,100100,3011,3013,3012,3014), -- Zaralek Surveyor's Expedition Gear, Suffusion Camps and PvP, Campaign, Treasures and Unique Creatures
        IncludeSet(SetCollector.EXPANSION,100100,3015,3016,3017,3018), -- Inherited Gear, Treasures and Unique Creatures, Suffusion Camps and PvP, Campaign
        IncludeSet(SetCollector.EXPANSION,100100,3019,3021,3020,3022), -- Zaralek Surveyor's Expedition Gear, Suffusion Camps and PvP, Campaign, Treasures and Unique Creatures
        IncludeSet(SetCollector.EXPANSION,100100,3023,3025,3024,3026), -- Suffused Attire, Treasures and Unique Creatures, Campaign, Suffusion Camps and PvP

        -- Draconic Mortal's Attire
        IncludeSet(COLLECTION,VERSION,2912,2938,2852), -- Azure Renewal Finery, Azure, Obsidian
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100105
    sets = {
        -- Racing Cup
        IncludeSet(COLLECTION,VERSION,3054,3352,3363), -- Outlandish Drake Racer's Silks, Outland Cup

        -- Sapphiron's Bane
        IncludeSet(COLLECTION,VERSION,3055), -- Glacial Cloth
        IncludeSet(COLLECTION,VERSION,3057), -- Icy Scale Mail
        IncludeSet(COLLECTION,VERSION,3056), -- Polar Leather
        IncludeSet(COLLECTION,VERSION,3058), -- Icebane Plate

        -- Time Rifts
        IncludeSet(SetCollector.EXPANSION,100105,3061), -- Warmonger's Battlegear
        IncludeSet(SetCollector.EXPANSION,100105,3062), -- Warmonger's Battlegear
        IncludeSet(SetCollector.EXPANSION,100105,3063), -- Warmonger's Battlegear
        IncludeSet(SetCollector.EXPANSION,100105,3064), -- Warmonger's Battlegear
        IncludeSet(SetCollector.EXPANSION,100105,3065), -- Jingoist's War Armor
        IncludeSet(SetCollector.EXPANSION,100105,3066), -- Jingoist's War Armor
        IncludeSet(SetCollector.EXPANSION,100105,3067), -- Jingoist's War Armor
        IncludeSet(SetCollector.EXPANSION,100105,3068), -- Jingoist's War Armor
        IncludeSet(SetCollector.EXPANSION,100105,3069), -- Decorous Garments
        IncludeSet(SetCollector.EXPANSION,100105,3070), -- Lifegiver's Garms
        IncludeSet(SetCollector.EXPANSION,100105,3071), -- Hauberk of Discipline
        IncludeSet(SetCollector.EXPANSION,100105,3072), -- Valhalas Ceremonial Armor

        -- Draconic Mortal's Attire
        IncludeSet(COLLECTION,VERSION,3076), -- Rift-Mender's Vestments, Soridormi

        -- Cavern Delver's Gear
        IncludeSet(COLLECTION,VERSION,3088,3092), -- Infinite Stalker's Garments, Time Rifts and Dawn of the Infinite, Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3091,3087), -- Infinite Zealot's Vestments, Dawn of the Infinite, Time Rifts and Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3093,3089), -- Infinite Soldier's Raiment, Dawn of the Infinite, Time Rifts and Dawn of the Infinite
        IncludeSet(COLLECTION,VERSION,3094,3090), -- Infinite Vanguard's Armor, Dawn of the Infinite, Time Rifts and Dawn of the Infinite

        -- Gilnean Regalia
        IncludeSet(COLLECTION,VERSION,3351), -- Gilnean Noble's Suit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100107
    sets = {
        -- Stormrider's Attire
        IncludeSet(COLLECTION,100107,3128,3625,3626,3627,3628,3629,3630,3129), -- Shocking Silver Stormrider's Attire, Deep, Frenzied Deep, Champion, Sparking Champion, Silver, Shocking Silver, Thundering
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Dreamer's Enchantment
        IncludeSet(COLLECTION,VERSION,3131,3296,3300,3289,3194), -- Ceremonial Jacaranda Regalia, Quest Rewards, Superbloom, Aspirant, World Drops
        IncludeSet(COLLECTION,VERSION,3132,3192,3291,3294,3298), -- Embrace of the Dreamfused Skull, World Drops, Aspirant, Quest Rewards, Superbloom
        IncludeSet(COLLECTION,VERSION,3133,3295,3290,3193,3299), -- Barkbloom Warleathers, Quest Rewards, Aspirant, World Drops, Superbloom
        IncludeSet(COLLECTION,VERSION,3134,3191,3297,3292,3293), -- Overgrown Freyan Warplate, World Drops, Superbloom, Aspirant, Quest Rewards

        IncludeSet(COLLECTION,VERSION,3302), -- Elegant Green Dragon Outerwear, Renown
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 110000
    sets = {
        -- Dalaran Defender, Pre-Patch event
        IncludeSet(COLLECTION,VERSION,3664), -- Dalaran Defender's Plate Armor (Added in patch 11.0.0 "The War Within")
        IncludeSet(COLLECTION,VERSION,3666), -- Dalaran Defender's Mail Armor (Added in patch 11.0.0 "The War Within")
        IncludeSet(COLLECTION,VERSION,3665), -- Dalaran Defender's Cloth Armor (Added in patch 11.0.0 "The War Within")
        IncludeSet(COLLECTION,VERSION,3667), -- Dalaran Defender's Leather Armor (Added in patch 11.0.0 "The War Within")
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 100002
    local sets = {
        -- Wrappings of the Phoenix
        IncludeSet(COLLECTION,VERSION,2482), -- Fireplume Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100007
    sets = {
        -- Diplomat's Regalia
        IncludeSet(COLLECTION,VERSION,2857), -- Waveborne Diplomat's Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Unrelenting Justice
        IncludeSet(COLLECTION,VERSION,3305,3367,3366), -- Moonlit Burden of Unrelenting Justice, Moon, Sun
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100205
    sets = {
        -- Dreadlords Regalia
        IncludeSet(COLLECTION,VERSION,3354,3355), -- Dreadlord's Venombane Armor, In-Game Shop Variant
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 100000
    local sets = {
        -- Dragonflight Season 1
        IncludeSet(SetCollector.PVP,100000,2681,2682), -- Crimson Aspirant's Leather Armor, Aspirant
        IncludeSet(SetCollector.PVP,100000,2701,2702), -- Crimson Aspirant's Silk Armor, Aspirant
        IncludeSet(SetCollector.PVP,100000,2706,2707), -- Crimson Aspirant's Chain Armor, Aspirant
        IncludeSet(SetCollector.PVP,100000,2711,2715), -- Crimson Aspirant's Plate Armor, Aspirant
        IncludeSet(SetCollector.PVP,100000,2716,2717), -- Crimson Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2718,2719), -- Crimson Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2720,2721), -- Crimson Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2722,2723), -- Crimson Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2724,2725), -- Crimson Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2726,2727), -- Crimson Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2728,2729), -- Crimson Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2730,2731), -- Crimson Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2732,2733), -- Crimson Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2734,2735), -- Crimson Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2736,2737), -- Crimson Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2738,2739), -- Crimson Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,100000,2740,2741), -- Crimson Gladiator's Plate Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Dragonflight Season 2
        IncludeSet(COLLECTION,VERSION,2661,3007), -- Obsidian Aspirant's Silk Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,2663,3009), -- Obsidian Aspirant's Chain Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,2665,3008), -- Obsidian Aspirant's Leather Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,2667,3010), -- Obsidian Aspirant's Plate Armor, Aspirant
        IncludeSet(COLLECTION,VERSION,2910,2911), -- Obsidian Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,2913,2914), -- Obsidian Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,2915,2916), -- Obsidian Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,2917,2918), -- Obsidian Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,2919,2920), -- Obsidian Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,2921,2922), -- Obsidian Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,2923,2924), -- Obsidian Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,2925,2926), -- Obsidian Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,2927,2928), -- Obsidian Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,2929,2930), -- Obsidian Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,2931,2932), -- Obsidian Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,2933,2934), -- Obsidian Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,2935,2936), -- Obsidian Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Dragonflight Season 3 and 4
        IncludeSet(COLLECTION,VERSION,3195,3196), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3197,3198), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3199,3200), -- Verdant Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,VERSION,3201,3202), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3203,3204), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3205,3206), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3207,3208), -- Verdant Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,VERSION,3209,3210), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3211,3212), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3213,3214), -- Verdant Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,VERSION,3215,3216), -- Verdant Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,3217,3218), -- Verdant Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,VERSION,3219,3220), -- Verdant Gladiator's Plate Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 100000
    local sets = {
        -- Vault of the Incarnates
        IncludeSet(SetCollector.RAID,100000,2601,2614,2615,2616), -- Haunted Frostbrood Remains, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,100000,2602,2617,2619,2618), -- Skybound Avenger's Flightwear, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2603,2620,2622,2621), -- Lost Landcaller's Vesture, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2604,2623,2624,2625), -- Scales of the Awakened, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,100000,2605,2626,2628,2627), -- Stormwing Harrier's Camouflage, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2606,2629,2631,2630), -- Bindings of the Crystal Scholar, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2607,2632,2633,2634), -- Wrappings of the Waking Fist, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,100000,2608,2635,2637,2636), -- Virtuous Silver Cataphract, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2609,2638,2640,2639), -- Draconic Hierophant's Finery, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2610,2641,2642,2643), -- Vault Delver's Toolkit, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,100000,2611,2644,2646,2645), -- Elements of Infused Earth, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2612,2647,2649,2648), -- Scalesworn Cultist's Habit, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100000,2613,2650,2651,2652), -- Stones of the Walking Mountain, Heroic, Mythic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Aberrus, the Shadowed Crucible (N, H, M, RF)
        IncludeSet(COLLECTION,VERSION,2858,2898,2899,2900), -- Irons of the Onyx Crucible
        IncludeSet(COLLECTION,VERSION,2859,2871,2872,2873), -- Heartfire Sentinel's Authority
        IncludeSet(COLLECTION,VERSION,2860,2874,2875,2876), -- Sinister Savant's Cursethreads
        IncludeSet(COLLECTION,VERSION,2861,2877,2878,2879), -- Runes of the Cinderwolf
        IncludeSet(COLLECTION,VERSION,2862,2880,2881,2882), -- Lurking Specter's Shadeweave
        IncludeSet(COLLECTION,VERSION,2863,2883,2884,2885), -- The Furnace Seraph's Verdict
        IncludeSet(COLLECTION,VERSION,2864,2886,2887,2888), -- Fangs of the Vermillion Forge
        IncludeSet(COLLECTION,VERSION,2865,2907,2908,2909), -- Underlight Conjurer's Brilliance
        IncludeSet(COLLECTION,VERSION,2866,2889,2890,2891), -- Ashen Predator's Scaleform
        IncludeSet(COLLECTION,VERSION,2867,2904,2905,2906), -- Legacy of Obsidian Secrets
        IncludeSet(COLLECTION,VERSION,2868,2892,2893,2894), -- Strands of the Autumn Blaze
        IncludeSet(COLLECTION,VERSION,2869,2901,2902,2903), -- Kinslayer's Burdens
        IncludeSet(COLLECTION,VERSION,2870,2895,2896,2897), -- Lingering Phantom's Encasement
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100200
    sets = {
        -- Amirdrassil, the Dream's Hope
        IncludeSet(SetCollector.RAID,100200,3137,3139,3138,3140), -- Blazing Dreamstalker's Trophies, Mythic, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,100200,3144,3142,3141,3143), -- Mystic Heron's Discipline, Raid Finder, Mythic, Heroic
        IncludeSet(SetCollector.RAID,100200,3148,3145,3147,3146), -- Zealous Pyreknight's Ardor, Mythic, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,100200,3150,3151,3149,3152), -- Molten Vanguard's Mortarplate, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,100200,3153,3154,3155,3156), -- Screaming Torchfiend's Brutality, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,100200,3157,3159,3158,3160), -- Weyrnkeeper's Timeless Vigil, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,100200,3163,3162,3161,3164), -- Risen Nightmare's Gravemantle, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,100200,3165,3166,3167,3168), -- Lucid Shadewalker's Silence, Mythic, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,100200,3169,3171,3170,3172), -- Vision of the Greatwolf Outcast, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,100200,3175,3174,3173,3176), -- Devout Ashdevil's Pactweave, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,100200,3177,3178,3179,3180), -- Benevolent Embersage's Guidance, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,100200,3184,3181,3183,3182), -- Blessings of Lunar Communion, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,100200,3186,3187,3185,3188), -- Wayward Chronomancer's Clockwork, Heroic, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 100005
    local sets = {
        IncludeSet(COLLECTION,VERSION + 1,2320), -- Fel-Automaton Exoplate
        IncludeSet(COLLECTION,VERSION + 2,2321), -- Vestment of the Honored Valarjar (Added in patch 10.0.5 "Trading Post")
        IncludeSet(COLLECTION,VERSION + 3,2323), -- Twisted Arcanum Regalia
        IncludeSet(COLLECTION,VERSION + 4,2327), -- Darkmoon Harlequin's Bells (Added in patch 10.0.5 "Trading Post")
        IncludeSet(COLLECTION,VERSION + 5,2331), -- Chains of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION + 6,2334), -- Battlewraps of the Honored Valarjar
        IncludeSet(COLLECTION,VERSION + 7,2337), -- Vestments of the Nightmare Forest
        IncludeSet(COLLECTION,VERSION + 8,2338), -- Slumbering Caldera Regalia
        IncludeSet(COLLECTION,VERSION + 9,2654), -- Glorious Dragonrider's Mail
        IncludeSet(COLLECTION,VERSION + 10,2655), -- Corrupted Runelord's Regalia
        IncludeSet(COLLECTION,VERSION + 11,2656), -- Val'sharah Protector's Battleplate
        IncludeSet(COLLECTION,VERSION + 12,2657), -- Sylvan Stalker's Leathers
        IncludeSet(COLLECTION,VERSION + 13,2658), -- Tidecaller's Chainmail
        IncludeSet(COLLECTION,VERSION + 14,2659), -- Void-Bound Raiment
        IncludeSet(COLLECTION,VERSION + 15,2660), -- Void-Bound Battlegear
        IncludeSet(COLLECTION,VERSION + 16,2669), -- Solemn Watchman's Garb
        IncludeSet(COLLECTION,VERSION + 17,2676), -- Void-Bound Chains
        IncludeSet(COLLECTION,VERSION + 18,2677), -- Void-Bound Warplate
        IncludeSet(COLLECTION,VERSION + 19,2678), -- Kvaldir Scout Leathers
        IncludeSet(COLLECTION,VERSION + 20,2679), -- Helarjar Berserker Warplate
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100100
    sets = {
        -- Buccaneer's Slops
        IncludeSet(COLLECTION,VERSION,2340,2346,3487), -- Trading Post - Red (10.0.5), Trading Post - Blue (10.2.5), Trading Post - Orange (10.2.6)
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100105
    sets = {
        IncludeSet(COLLECTION,VERSION,2339), -- Bones of the Bloodhunter (Added in patch 10.1.5 "Fractures in Time")
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100200
    sets = {
        -- Sky-Captain's Regalia
        IncludeSet(COLLECTION,VERSION,3189,3190), -- Sky-Captain's Formal Attire, Trading Post

        -- Wastewander Kit
        IncludeSet(COLLECTION,VERSION,3306), -- Wastewander Tracker's Kit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100205
    sets = {
        IncludeSet(COLLECTION,VERSION,2343), -- Battleplate of the Honored Valarjar (Added in patch 10.2.5 "Seeds of Renewal")
        IncludeSet(COLLECTION,VERSION,3362), -- Dark Ranger General's Kit

        -- Love Witch's Attire
        IncludeSet(COLLECTION,VERSION,3356,3358,3357), -- Twilight Witch's Attire, In-Game Shop, Trading Post - Sky Witch

        -- Spring Reveler's Collection
        IncludeSet(COLLECTION,VERSION,3360,3445,3449,3447), -- Spring Reveler's Cornsilk Collection, Trading Post - Dandelion, Trading Post - Cornsilk, World Drop
        IncludeSet(COLLECTION,VERSION,3361,3444,3446,3448), -- Spring Reveler's Cornsilk Collection, Trading Post - Dandelion, World Drop, Trading Post - Cornsilk
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 100206
    sets = {
        -- Gladiator's Ragged Armor
        IncludeSet(COLLECTION,VERSION,3451,3452), -- Gladiator's Battered Armor, Trading Post
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)


    COLLECTION, VERSION = SetCollector.TRADING, 100207
    sets = {
        -- Snugglefin Murloc Romper
        IncludeSet(COLLECTION,VERSION,3634,3635), -- Purple Snugglefin Murloc Romper, Purple

        -- Tropical Ensemble
        IncludeSet(COLLECTION,VERSION,3636,3637,3638,3639), -- Sunny Tropical Beachwear, Blue, Pink, Yellow

        -- Diver Suit
        IncludeSet(COLLECTION,VERSION,3649,3651,3650,3652), -- CopperDiver Suit, Green, Dark, Copper

        -- Tropical Swimwear Ensemble
        IncludeSet(COLLECTION,VERSION,3644,3646,3645,3647), -- Sunny Tropical Swimwear, Pink, Blue, Yellow
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

