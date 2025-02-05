-- Appearances from Mists of Pandaria (v.5.x)

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
local ANY_ARMOR = SetCollector.ANY_ARMOR

-- Classes
local DEATHKNIGHT = SetCollector.DEATHKNIGHT
local DEMONHUNTER = SetCollector.DEMONHUNTER
local DRUID = SetCollector.DRUID
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
    local COLLECTION, VERSION = SetCollector.CRAFTED, 70000
    local sets = {
        CreateSet(COLLECTION,10501,"CR_CLOTH_90",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_CLOTH_90",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
        ),
        --[[CreateSet(COLLECTION,10501,"CR_LEATHER_90",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_LEATHER_90",TRANSMOG,A())
        ),
        CreateSet(COLLECTION,10501,"CR_MAIL_90",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_MAIL_90",TRANSMOG,A())
        ),
        CreateSet(COLLECTION,10501,"CR_PLATE_90",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_PLATE_90",TRANSMOG,A())
        ),]]
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 70000
    local sets = {
        IncludeSet(COLLECTION,50003,1436,PLATE,WARRIOR,ANY_FACTION), -- Golden King Plate
        IncludeSet(COLLECTION,50003,1437,CLOTH,WARLOCK,ANY_FACTION), -- Betrayer Regalia
        IncludeSet(COLLECTION,50003,1438,MAIL,SHAMAN,ANY_FACTION), -- Windfury Armor
        IncludeSet(COLLECTION,50003,1439,LEATHER,ROGUE,ANY_FACTION), -- Silent Assassin Armor
        IncludeSet(COLLECTION,50003,1440,CLOTH,PRIEST,ANY_FACTION), -- Light Regalia
        IncludeSet(COLLECTION,50003,1441,PLATE,PALADIN,ANY_FACTION), -- Holy Warrior Plate
        IncludeSet(COLLECTION,50003,1442,LEATHER,MONK,ANY_FACTION), -- Regal Lord Armor
        IncludeSet(COLLECTION,50003,1443,CLOTH,MAGE,ANY_FACTION), -- Elemental Triad Regalia
        IncludeSet(COLLECTION,50003,1444,MAIL,HUNTER,ANY_FACTION), -- Howling Beast Armor
        IncludeSet(COLLECTION,50003,1445,LEATHER,DRUID,ANY_FACTION), -- Cycle Armor
        IncludeSet(COLLECTION,50003,1446,PLATE,DEATHKNIGHT,ANY_FACTION), -- Lich Lord Plate

        IncludeSet(COLLECTION,50004,3371,CLOTH,ANY_CLASS,ANY_FACTION,3373,3372), -- Spirit-Waker's Vestments, Red, Green
        IncludeSet(COLLECTION,50004,3375,CLOTH,ANY_CLASS,ANY_FACTION,3376,3374), -- Mistwalker's Vestments, White, Blue
        IncludeSet(COLLECTION,50004,3377,CLOTH,ANY_CLASS,ANY_FACTION,3379,3378), -- Vestments of the Eternal Dynasty, Yellow, Blue
        IncludeSet(COLLECTION,50004,3380,CLOTH,ANY_CLASS,ANY_FACTION,3381), -- Guise of the Shado-Pan, Original
        IncludeSet(COLLECTION,50004,3388,LEATHER,ANY_CLASS,ANY_FACTION,3387,3386,3389), -- Thunderpaw Battlegear, Light, Dark, Red
        IncludeSet(COLLECTION,50004,3390,LEATHER,ANY_CLASS,ANY_FACTION,3391,3392,3393), -- Mistveil Leathers, Brown, Crimson, Indigo
        IncludeSet(COLLECTION,50004,3394,CLOTH,ANY_CLASS,ANY_FACTION,3396,3395), -- Tian Monastery Clothing, White, Red
        IncludeSet(COLLECTION,50004,3397,LEATHER,ANY_CLASS,ANY_FACTION,3399,3398), -- Snowdrift Battlegear, Red, Brown
        IncludeSet(COLLECTION,50004,3405,CLOTH,ANY_CLASS,ANY_FACTION,3403,3404), -- Kor'kron Shaman Vestments, Cool, Warm
        IncludeSet(COLLECTION,50004,3406,MAIL,ANY_CLASS,ANY_FACTION,3408,3407,3409), -- Trailseeker's Laminar Armor, Green, Gold, White
        IncludeSet(COLLECTION,50004,3410,MAIL,ANY_CLASS,ANY_FACTION,3412,3411), -- Dawnwatcher's Scale Armor, Red, Purple
        IncludeSet(COLLECTION,50004,3413,CLOTH,ANY_CLASS,ANY_FACTION,3415,3414), -- Sun Pearl Clothing, Yellow, Red
        IncludeSet(COLLECTION,50004,3416,MAIL,ANY_CLASS,ANY_FACTION,3418,3417,3419), -- Jade Guardian's Regalia, Red, Brown, Yellow
        IncludeSet(COLLECTION,50004,3423,PLATE,ANY_CLASS,ANY_FACTION,3424,3425), -- Spiritguard's Warplate, Gold, Silver
        IncludeSet(COLLECTION,50004,3426,PLATE,ANY_CLASS,ANY_FACTION,3427,3428,3429), -- Shan'ze Warplate, Purple, Red, Yellow
        IncludeSet(COLLECTION,50004,3430,PLATE,ANY_CLASS,ANY_FACTION,3432,3431,3433), -- Gatecrasher's Battleplate, Green, Blue, Red
        IncludeSet(COLLECTION,50004,3436,CLOTH,ANY_CLASS,ANY_FACTION,3435,3434,3437), -- Robes of Quiet Reflection, Green, Brown, Yellow
        IncludeSet(COLLECTION,50004,3439,CLOTH,ANY_CLASS,ANY_FACTION,3438,3368), -- Vestments of Serenity, Green, White
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000
    local sets = {
        CreateSet(COLLECTION,10501,"LG_CASTER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_CASTER_INT_90",TRANSMOG,I(102246))
        ),
        CreateSet(COLLECTION,10502,"LG_HEALER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_HEALER_INT_90",TRANSMOG,I(102247))
        ),
        CreateSet(COLLECTION,10503,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_AGI_90",TRANSMOG,I(102248))
        ),
        CreateSet(COLLECTION,10504,"LG_MELEE_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_STR_90",TRANSMOG,I(102249))
        ),
        CreateSet(COLLECTION,10505,"LG_TANK_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_TANK_AGI_90",TRANSMOG,I(102245))
        ),
        CreateSet(COLLECTION,10506,"LG_TANK_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_TANK_STR_90",TRANSMOG,I(102250))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000

    local sets = {
        -- Season 12
        IncludeSet(COLLECTION,50003,276,CLOTH,MAGE,ANY_FACTION,197,1057), -- Malevolent Gladiator's Silk Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,277,PLATE,PALADIN,ANY_FACTION,1060,196), -- Malevolent Gladiator's Scaled Armor, Elite, Honor
        IncludeSet(COLLECTION,50003,278,PLATE,WARRIOR,ANY_FACTION,193,1064), -- Malevolent Gladiator's Plate Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,280,LEATHER,ROGUE,ANY_FACTION,192,1061), -- Malevolent Gladiator's Leather Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,281,LEATHER,DRUID,ANY_FACTION,188,1055), -- Malevolent Gladiator's Dragonhide Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,282,CLOTH,PRIEST,ANY_FACTION,195,396), -- Malevolent Gladiator's Satin Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,283,CLOTH,WARLOCK,ANY_FACTION,1063,190), -- Malevolent Gladiator's Felweave Armor, Elite, Honor
        IncludeSet(COLLECTION,50003,284,MAIL,SHAMAN,ANY_FACTION,194,1062), -- Malevolent Gladiator's Ringmail Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,285,PLATE,DEATHKNIGHT,ANY_FACTION,189,1054), -- Malevolent Gladiator's Dreadplate Armor, Honor, Elite
        IncludeSet(COLLECTION,50003,286,MAIL,HUNTER,ANY_FACTION,1056,187), -- Malevolent Gladiator's Chain Armor, Elite, Honor
        IncludeSet(COLLECTION,50003,1059,LEATHER,MONK,ANY_FACTION,279), -- Malevolent Gladiator's Ironskin Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Season 13
        IncludeSet(COLLECTION,50100,254,MAIL,HUNTER,HORDE,1015), -- Tyrannical Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50100,255,LEATHER,DRUID,HORDE,1013), -- Tyrannical Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50100,256,PLATE,DEATHKNIGHT,HORDE,1011), -- Tyrannical Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50100,257,CLOTH,WARLOCK,HORDE,1027), -- Tyrannical Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50100,258,CLOTH,PRIEST,HORDE,398), -- Tyrannical Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50100,259,LEATHER,MONK,HORDE,1019), -- Tyrannical Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50100,260,LEATHER,ROGUE,HORDE,1023), -- Tyrannical Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50100,261,PLATE,WARRIOR,HORDE,1029), -- Tyrannical Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50100,262,MAIL,SHAMAN,HORDE,1025), -- Tyrannical Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50100,263,PLATE,PALADIN,HORDE,1021), -- Tyrannical Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50100,264,CLOTH,MAGE,HORDE,1017), -- Tyrannical Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,50100,265,MAIL,HUNTER,ALLIANCE,1014), -- Tyrannical Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50100,266,LEATHER,DRUID,ALLIANCE,1012), -- Tyrannical Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50100,267,PLATE,DEATHKNIGHT,ALLIANCE,1010), -- Tyrannical Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50100,268,CLOTH,WARLOCK,ALLIANCE,1026), -- Tyrannical Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50100,269,LEATHER,MONK,ALLIANCE,1018), -- Tyrannical Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50100,270,LEATHER,ROGUE,ALLIANCE,1022), -- Tyrannical Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50100,271,PLATE,WARRIOR,ALLIANCE,1028), -- Tyrannical Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50100,272,MAIL,SHAMAN,ALLIANCE,1024), -- Tyrannical Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50100,273,CLOTH,PRIEST,ALLIANCE,397), -- Tyrannical Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50100,274,PLATE,PALADIN,ALLIANCE,1020), -- Tyrannical Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50100,275,CLOTH,MAGE,ALLIANCE,1016), -- Tyrannical Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 50200
    sets = {
        -- Season 14
        IncludeSet(COLLECTION,50200,198,MAIL,HUNTER,HORDE,1035), -- Grievous Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50200,199,MAIL,HUNTER,ALLIANCE,1034), -- Grievous Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50200,200,LEATHER,DRUID,HORDE,1033), -- Grievous Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50200,201,PLATE,DEATHKNIGHT,HORDE,1031), -- Grievous Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50200,202,CLOTH,WARLOCK,HORDE,1047), -- Grievous Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50200,203,LEATHER,MONK,HORDE,1039), -- Grievous Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50200,204,LEATHER,ROGUE,HORDE,1043), -- Grievous Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50200,205,PLATE,WARRIOR,HORDE,1049), -- Grievous Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50200,206,MAIL,SHAMAN,HORDE,1045), -- Grievous Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50200,207,CLOTH,PRIEST,HORDE,402), -- Grievous Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50200,208,PLATE,PALADIN,HORDE,1041), -- Grievous Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50200,209,CLOTH,MAGE,HORDE,1037), -- Grievous Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,50200,210,LEATHER,DRUID,ALLIANCE,1032), -- Grievous Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50200,211,PLATE,DEATHKNIGHT,ALLIANCE,1030), -- Grievous Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50200,212,CLOTH,WARLOCK,ALLIANCE,1046), -- Grievous Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50200,213,LEATHER,MONK,ALLIANCE,1038), -- Grievous Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50200,214,LEATHER,ROGUE,ALLIANCE,1042), -- Grievous Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50200,215,PLATE,WARRIOR,ALLIANCE,1048), -- Grievous Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50200,216,MAIL,SHAMAN,ALLIANCE,1044), -- Grievous Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50200,217,CLOTH,PRIEST,ALLIANCE,401), -- Grievous Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50200,218,PLATE,PALADIN,ALLIANCE,1040), -- Grievous Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50200,219,CLOTH,MAGE,ALLIANCE,1036), -- Grievous Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Season 15
        IncludeSet(COLLECTION,50400,232,MAIL,HUNTER,ALLIANCE,1077), -- Prideful Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50400,233,LEATHER,DRUID,ALLIANCE,1075), -- Prideful Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50400,234,PLATE,DEATHKNIGHT,ALLIANCE,1073), -- Prideful Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50400,235,CLOTH,WARLOCK,ALLIANCE,1089), -- Prideful Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50400,236,LEATHER,MONK,ALLIANCE,1081), -- Prideful Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50400,237,LEATHER,ROGUE,ALLIANCE,1085), -- Prideful Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50400,238,PLATE,WARRIOR,ALLIANCE,1091), -- Prideful Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50400,239,MAIL,SHAMAN,ALLIANCE,1087), -- Prideful Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50400,240,CLOTH,PRIEST,ALLIANCE,399), -- Prideful Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50400,241,PLATE,PALADIN,ALLIANCE,1083), -- Prideful Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50400,242,CLOTH,MAGE,ALLIANCE,1079), -- Prideful Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,50400,243,MAIL,HUNTER,HORDE,1078), -- Prideful Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,50400,244,LEATHER,DRUID,HORDE,1076), -- Prideful Gladiator's Dragonhide Armor, Elite
        IncludeSet(COLLECTION,50400,245,PLATE,DEATHKNIGHT,HORDE,1074), -- Prideful Gladiator's Dreadplate Armor, Elite
        IncludeSet(COLLECTION,50400,246,CLOTH,WARLOCK,HORDE,1090), -- Prideful Gladiator's Felweave Armor, Elite
        IncludeSet(COLLECTION,50400,247,LEATHER,MONK,HORDE,1082), -- Prideful Gladiator's Ironskin Armor, Elite
        IncludeSet(COLLECTION,50400,248,LEATHER,ROGUE,HORDE,1086), -- Prideful Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,50400,249,PLATE,WARRIOR,HORDE,1092), -- Prideful Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,50400,250,MAIL,SHAMAN,HORDE,1088), -- Prideful Gladiator's Ringmail Armor, Elite
        IncludeSet(COLLECTION,50400,251,CLOTH,PRIEST,HORDE,400), -- Prideful Gladiator's Satin Armor, Elite
        IncludeSet(COLLECTION,50400,252,PLATE,PALADIN,HORDE,1084), -- Prideful Gladiator's Scaled Armor, Elite
        IncludeSet(COLLECTION,50400,253,CLOTH,MAGE,HORDE,1080), -- Prideful Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 50000

    local sets = {
        -- Mists of Pandaria: Dungeon
        IncludeSet(COLLECTION,50000,3365,CLOTH,ANY_CLASS,ANY_FACTION,3370,3369), -- Breezebinder's Vestments, Red, Purple
        IncludeSet(COLLECTION,50000,3383,LEATHER,ANY_CLASS,ANY_FACTION,3382,3384,3385), -- Mogubreaker Battlegear, Black, Red, Yellow
        IncludeSet(COLLECTION,50000,3400,MAIL,ANY_CLASS,ANY_FACTION,3402,3401), -- Mogu Lord's Regalia, Jade, Gold
        IncludeSet(COLLECTION,50000,3422,PLATE,ANY_CLASS,ANY_FACTION,3421,3420), -- Swarmbreaker's Battleplate, Light, Dark
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Heart of Fear
        IncludeSet(COLLECTION,50003,336,CLOTH,PRIEST,ANY_FACTION,337,429), -- Guardian Serpent Regalia, Raid Finder, Heroic
        IncludeSet(COLLECTION,50003,427,MAIL,SHAMAN,ANY_FACTION,338,428), -- Regalia of the Firebird, Heroic, Raid Finder
        IncludeSet(COLLECTION,50003,444,PLATE,WARRIOR,ANY_FACTION,446,445,3440), -- Battleplate of Resounding Rings, Raid Finder, Heroic, Timerunning
        IncludeSet(COLLECTION,50003,461,CLOTH,WARLOCK,ANY_FACTION,462,463), -- Sha Skin Regalia, Raid Finder, Heroic
        IncludeSet(COLLECTION,50003,478,LEATHER,ROGUE,ANY_FACTION,479,477), -- Battlegear of the Thousandfold Blades, Raid Finder, Heroic
        IncludeSet(COLLECTION,50003,493,PLATE,PALADIN,ANY_FACTION,494,495), -- White Tiger Battlegear, Heroic, Raid Finder
        IncludeSet(COLLECTION,50003,513,LEATHER,MONK,ANY_FACTION,515,514), -- Vestments of the Red Crane, Raid Finder, Heroic
        IncludeSet(COLLECTION,50003,529,CLOTH,MAGE,ANY_FACTION,530,531), -- Regalia of the Burning Scroll, Heroic, Raid Finder
        IncludeSet(COLLECTION,50003,545,MAIL,HUNTER,ANY_FACTION,547,546), -- Yaungol Slayer Battlegear, Heroic, Raid Finder
        IncludeSet(COLLECTION,50003,563,LEATHER,DRUID,ANY_FACTION,565,564), -- Vestments of the Eternal Blossom, Raid Finder, Heroic
        IncludeSet(COLLECTION,50003,578,PLATE,DEATHKNIGHT,ANY_FACTION,580,579), -- Plate of the Lost Catacomb, Heroic, Raid Finder
        -- Throne of Thunder
        IncludeSet(COLLECTION,50200,310,CLOTH,PRIEST,ANY_FACTION,335,334), -- Regalia of the Exorcist, Raid Finder, Heroic
        IncludeSet(COLLECTION,50200,424,MAIL,SHAMAN,ANY_FACTION,425,426), -- Regalia of the Witch Doctor, Heroic, Raid Finder
        IncludeSet(COLLECTION,50200,441,PLATE,WARRIOR,ANY_FACTION,443,442), -- Battleplate of the Last Mogu, Heroic, Raid Finder
        IncludeSet(COLLECTION,50200,458,CLOTH,WARLOCK,ANY_FACTION,459,460), -- Regalia of the Thousandfold Hells, Raid Finder, Heroic
        IncludeSet(COLLECTION,50200,474,LEATHER,ROGUE,ANY_FACTION,476,475), -- Nine-Tail Battlegear, Raid Finder, Heroic
        IncludeSet(COLLECTION,50200,490,PLATE,PALADIN,ANY_FACTION,491,492), -- Battlegear of the Lightning Emperor, Heroic, Raid Finder
        IncludeSet(COLLECTION,50200,510,LEATHER,MONK,ANY_FACTION,512,511), -- Fire-Charm Vestments, Raid Finder, Heroic
        IncludeSet(COLLECTION,50200,526,CLOTH,MAGE,ANY_FACTION,527,528), -- Regalia of the Chromatic Hydra, Heroic, Raid Finder
        IncludeSet(COLLECTION,50200,542,MAIL,HUNTER,ANY_FACTION,544,543), -- Battlegear of the Saurok Stalker, Heroic, Raid Finder
        IncludeSet(COLLECTION,50200,560,LEATHER,DRUID,ANY_FACTION,562,561), -- Vestments of the Haunted Forest, Raid Finder, Heroic
        IncludeSet(COLLECTION,50200,575,PLATE,DEATHKNIGHT,ANY_FACTION,577,576), -- Battleplate of the All-Consuming Maw, Heroic, Raid Finder
        -- Siege of Orgrimmar
        IncludeSet(COLLECTION,50400,331,CLOTH,PRIEST,ANY_FACTION,332,333), -- Regalia of Ternion Glory, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,421,MAIL,SHAMAN,ANY_FACTION,422,423), -- Regalia of Celestial Harmony, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,438,PLATE,WARRIOR,ANY_FACTION,440,439), -- Battleplate of the Prehistoric Marauder, Raid Finder, Mythic
        IncludeSet(COLLECTION,50400,455,CLOTH,WARLOCK,ANY_FACTION,456,457), -- Regalia of the Horned Nightmare, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,471,LEATHER,ROGUE,ANY_FACTION,473,472), -- Barbed Assassin Battlegear, Raid Finder, Mythic
        IncludeSet(COLLECTION,50400,487,PLATE,PALADIN,ANY_FACTION,488,489), -- Vestments of Winged Triumph, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,506,LEATHER,MONK,ANY_FACTION,507,508), -- Vestments of the Seven Sacred Seals, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,523,CLOTH,MAGE,ANY_FACTION,524,525), -- Chronomancer Regalia, Mythic, Raid Finder
        IncludeSet(COLLECTION,50400,539,MAIL,HUNTER,ANY_FACTION,541,540), -- Battlegear of the Unblinking Vigil, Raid Finder, Mythic
        IncludeSet(COLLECTION,50400,557,LEATHER,DRUID,ANY_FACTION,559,558), -- Vestments of the Shattered Vale, Raid Finder, Mythic
        IncludeSet(COLLECTION,50400,572,PLATE,DEATHKNIGHT,ANY_FACTION,574,573), -- Battleplate of Cyclopean Dread, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion05Appearances(expansion)
    if expansion.v05 then
        -- Common
        GetCraftedAppearances()
        GetExpansionAppearances()
        GetLegendaries()
        GetPvPAppearances()
        GetRaidAppearances()
        GetDungeonAppearances()
    end
end

function SetCollector:GetVersion05Status()
    return SetCollector:GetExpansionStatus("5")
end

function SetCollector:SetVersion05Status()
    SetCollector:SetExpansionStatus("5")
end