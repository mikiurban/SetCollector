-- Appearances from Warlords of Draenor (v.6.x)

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
        CreateSet(COLLECTION,10601,"PLACEHOLDER",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("PLACEHOLDER",TRANSMOG,A(22762,65301),A(),A(22760,65302),A(),A(),A(),A(22763,65300),A())
        ),
        CreateSet(COLLECTION,60001,"PLACEHOLDER",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("PLACEHOLDER",TRANSMOG,A(23242,62930),A(23240,62931),A(23244,62932),A(23239,62936),A(23243,62937),A(23246,62933),A(23241,62934),A(23245,62935))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 70000
    local sets = {
        --[[CreateSet(COLLECTION,10601,"DG_CLOTH_06",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_CLOTH_06",TRANSMOG,A(22461),A(),A(),A(),A(),A(22455),A(),A()) -- Felflame
        ),
        CreateSet(COLLECTION,10601,"DG_LEATHER_03",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_LEATHER_03",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),
        CreateSet(COLLECTION,10601,"DG_MAIL_06",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_MAIL_06",TRANSMOG,A(22435),A(),A(22449),A(22430),A(),A(22431),A(22436),A()) -- Sharpeye
        ),
        CreateSet(COLLECTION,10601,"DG_PLATE_06",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_PLATE_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),]]
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 70000
    local sets = {
        -- Transmog Only Sets
        CreateSet(COLLECTION,60001,"GA_ALLIANCE_SET",ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471))
        ),
        CreateSet(COLLECTION,60002,"GA_HORDE_SET",ANY_CLASS,HORDE,NO_LOCATION,
            CreateVariant("GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
        ),
        IncludeSet(COLLECTION,60003,1530), -- Frostwolf Leathers
        IncludeSet(COLLECTION,60004,1531), -- Ceremonial Karabor Finery
        IncludeSet(COLLECTION,60005,1532), -- Sha'tari Defender's Plate
        IncludeSet(COLLECTION,60006,1533), -- Blackrock Sootplate
        IncludeSet(COLLECTION,60007,1534), -- Garb of the Shadowmoon
        IncludeSet(COLLECTION,60008,1535), -- Thunderlord Harness
        IncludeSet(COLLECTION,60009,1536), -- Warsong Outrider's Garb
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000
    local sets = {
        -- Transmog Only Sets
        CreateSet(COLLECTION,60001,"OT_ELR_100",CLOTH,ALLIANCE,NO_LOCATION,
            CreateVariant("OT_ELR_100",TRANSMOG,A(26087,69593),A(26841,69650),A(26842,73423))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 60001
    sets = {
        -- Draenor Crafter's Work
        IncludeSet(COLLECTION,60001,4240), -- Karabor Priest's Vestments
        IncludeSet(COLLECTION,60001,4244), -- Shadowmoon Anchorite's Guardplate
        IncludeSet(COLLECTION,60001,4242), -- Shattrath Artificer's Regalia
        IncludeSet(COLLECTION,60001,4243), -- Gorgrond Cragstalker's Hunting Gear
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000

    local sets = {
        -- Warlords Season 1
        IncludeSet(COLLECTION,60001,123,1143,57), -- Primal Gladiator's Chain Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60001,124,58,1142), -- Primal Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,125,61,1141), -- Primal Gladiator's Dragonhide Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,126,1140,62), -- Primal Gladiator's Dragonhide Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60001,127,67,1139), -- Primal Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,128,68,1138), -- Primal Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,129,73,1155), -- Primal Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,130,74,1154), -- Primal Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,131,65,1147), -- Primal Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,132,66,1146), -- Primal Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,133,63,1151), -- Primal Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,134,64,1150), -- Primal Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,135,71,1157), -- Primal Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,136,1156,72), -- Primal Gladiator's Plate Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60001,137,59,1153), -- Primal Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,138,60,1152), -- Primal Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,139,404,75), -- Primal Gladiator's Satin Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60001,140,76,403), -- Primal Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,141,69,1149), -- Primal Gladiator's Scaled Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,142,70,1148), -- Primal Gladiator's Scaled Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,143,77,1145), -- Primal Gladiator's Silk Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60001,144,1144,78), -- Primal Gladiator's Silk Armor, Elite, Combatant I
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Warlords Season 2
        IncludeSet(COLLECTION,60100,79,14,1178), -- Wild Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,80,13,1177), -- Wild Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,81,15,1187), -- Wild Gladiator's Ringmail Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60100,82,16,1188), -- Wild Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,83,25,1176), -- Wild Gladiator's Dragonhide Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60100,84,26,1175), -- Wild Gladiator's Dragonhide Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60100,85,23,1185), -- Wild Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,86,24,1186), -- Wild Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,87,27,1182), -- Wild Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,88,28,1181), -- Wild Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,89,18,1174), -- Wild Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,90,17,1173), -- Wild Gladiator's Dreadplate Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60100,91,21,1192), -- Wild Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,92,22,1191), -- Wild Gladiator's Plate Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60100,93,20,1184), -- Wild Gladiator's Scaled Paladin, Elite, Combatant I
        IncludeSet(COLLECTION,60100,94,19,1183), -- Wild Gladiator's Scaled Paladin, Combatant I, Elite
        IncludeSet(COLLECTION,60100,95,33,1190), -- Wild Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,96,34,1189), -- Wild Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,97,32,406), -- Wild Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,98,31,405), -- Wild Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60100,99,30,1180), -- Wild Gladiator's Silk Armor, Combatant I, Elite    
        IncludeSet(COLLECTION,60100,100,29,1179), -- Wild Gladiator's Silk Armor, Combatant I, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Warlords Season 3
        IncludeSet(COLLECTION,60200,101,1209,36), -- Warmongering Gladiator's Chain Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60200,102,1208,35), -- Warmongering Gladiator's Chain Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60200,103,1219,38), -- Warmongering Gladiator's Ringmail Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60200,104,37,1218), -- Warmongering Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,105,40,1207), -- Warmongering Gladiator's Dragonhide Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,106,39,1206), -- Warmongering Gladiator's Dragonhide Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,107,46,1205), -- Warmongering Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,108,45,1204), -- Warmongering Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,109,55,1221), -- Warmongering Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,110,56,1220), -- Warmongering Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,111,43,1213), -- Warmongering Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,112,44,1212), -- Warmongering Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,113,42,1217), -- Warmongering Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,114,1216,41), -- Warmongering Gladiator's Leather Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60200,115,49,1223), -- Warmongering Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,116,50,1222), -- Warmongering Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,117,51,408), -- Warmongering Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,118,52,407), -- Warmongering Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,119,1215,47), -- Warmongering Gladiator's Scaled Armor, Elite, Combatant I
        IncludeSet(COLLECTION,60200,120,48,1214), -- Warmongering Gladiator's Scaled Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,121,54,1211), -- Warmongering Gladiator's Silk Armor, Combatant I, Elite
        IncludeSet(COLLECTION,60200,122,53,1210), -- Warmongering Gladiator's Silk Armor, Combatant I, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 60001

    -- Blackrock Foundry/Highmaul
    local sets = {
        -- Raid Finder
        CreateSet(COLLECTION,60000,"RAID_CLOTH_0601",CLOTH,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(22608,66872),A(22613,66873),A(22606,66874),A(22614,66962),A(22598,66919),A(22600,66920),A(22612,66963))
        ),
        CreateSet(COLLECTION,60000,"RAID_LEATHER_0601",LEATHER,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23048,66901),A(23052,68031),A(23057,66911),A(23054,68011),A(23050,68027))
        ),
        CreateSet(COLLECTION,60000,"RAID_MAIL_0601",MAIL,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(22684,68055),A(22686,68047),A(22682,68051),A(22683,68039),A(22680,66917),A(22685,68035),A(22681,68043))
        ),
        CreateSet(COLLECTION,60000,"RAID_PLATE_0601",PLATE,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22643,66883),A(22639,68063),A(22636,66886),A(22641,68059),A(22637,68071))
        ),
        -- Blackrock Foundry
        IncludeSet(COLLECTION,60001,327,329,419), -- Soul Priest's Raiment, Mythic, Heroic
        IncludeSet(COLLECTION,60001,418,420,328), -- Windspeaker's Regalia, Mythic, Heroic
        IncludeSet(COLLECTION,60001,435,437,436), -- Blackhand's Battlegear, Mythic, Heroic
        IncludeSet(COLLECTION,60001,452,453,454), -- Shadow Council's Garb, Mythic, Heroic
        IncludeSet(COLLECTION,60001,468,470,469), -- Poisoner's Battlegear, Mythic, Heroic
        IncludeSet(COLLECTION,60001,483,485,484), -- Battlegear of Guiding Light, Mythic, Heroic
        IncludeSet(COLLECTION,60001,498,500,501), -- Battlegear of the Somber Gaze, Heroic, Mythic
        IncludeSet(COLLECTION,60001,520,521,522), -- Arcanoshatter Regalia, Heroic, Mythic
        IncludeSet(COLLECTION,60001,536,538,537), -- Rylakstalker's Battlegear, Mythic, Heroic
        IncludeSet(COLLECTION,60001,554,556,555), -- Living Wood Battlegear, Mythic, Heroic
        IncludeSet(COLLECTION,60001,569,571,570), -- Ogreskull Boneplate Battlegear, Mythic, Heroic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    -- Hellfire Citadel
    local sets = {
        -- Hellfire Citadel
        IncludeSet(COLLECTION,60200,323,324,325), -- Attire of Piety, Heroic, Mythic
        IncludeSet(COLLECTION,60200,415,416,417), -- Embrace of the Living Mountain, Heroic, Mythic
        IncludeSet(COLLECTION,60200,432,434,433), -- Battlegear of Iron Wrath, Mythic, Heroic
        IncludeSet(COLLECTION,60200,449,450,451), -- Deathrattle Regalia, Mythic, Heroic
        IncludeSet(COLLECTION,60200,465,467,466), -- Felblade Armor, Mythic, Heroic
        IncludeSet(COLLECTION,60200,480,482,481), -- Watch of the Ceaseless Vigil, Mythic, Heroic
        IncludeSet(COLLECTION,60200,502,503,505), -- Battlewrap of the Hurricane's Eye, Heroic, Mythic
        IncludeSet(COLLECTION,60200,517,518,519), -- Raiment of the Arcanic Conclave, Mythic, Heroic
        IncludeSet(COLLECTION,60200,533,535,534), -- Battlegear of the Savage Hunt, Mythic, Heroic
        IncludeSet(COLLECTION,60200,551,553,552), -- Oathclaw Wargarb, Mythic, Heroic
        IncludeSet(COLLECTION,60200,566,568,567), -- Demongaze Armor, Mythic, Heroic
        IncludeSet(COLLECTION,60200,581), -- Felfume Raiment
        IncludeSet(COLLECTION,60200,582), -- Ironpelt Garb
        IncludeSet(COLLECTION,60200,583), -- Rancorbite Armor
        IncludeSet(COLLECTION,60200,584), -- Demonbreaker Battleplate
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion06Appearances(expansion)
    if expansion.v06 then
        -- Common
        --GetCraftedAppearances()
        --GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion06Status()
    return SetCollector:GetExpansionStatus("6")
end

function SetCollector:SetVersion06Status()
    SetCollector:SetExpansionStatus("6")
end