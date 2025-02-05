-- Appearances from World of Warcraft (v.1.x)

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
        CreateSet(COLLECTION,10001,"PLACEHOLDER",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(5657,8336)),
            CreateVariant("2",TRANSMOG,A(5772,8514)),
            CreateVariant("3",TRANSMOG,A(5773,8515)),
            CreateVariant("4",TRANSMOG,A(5656,8335))
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(5657,8336)),
            CreateVariant("2",TRANSMOG,A(5772,8514)),
            CreateVariant("3",TRANSMOG,A(5773,8515)),
            CreateVariant("4",TRANSMOG,A(5656,8335))
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(),A(),A(1234,1285)),   -- Copper chain
            CreateVariant("2",TRANSMOG,A(),A(),A(982,981),A(980,979),A(1235,1286),A(981,980),A(1236,1287)),   -- Runed Copper
            CreateVariant("1",TRANSMOG,A(),A(1239,1290),A(984,983),A(),A(),A(),A(983,982),A(1450,2357)),   -- Rough Bronze
            CreateVariant("2",TRANSMOG,A(),A(1240,1291),A(986,986),A(),A(1242,1293),A(),A(1457,3967),A(1241,1292)),   -- Silvered Bronze
            CreateVariant("3",TRANSMOG,A(1363,1445),A(1365,1447),A(1369,1451),A(1362,1444),A(1244,1295),A(),A(1367,1449),A(1243,1294)),   -- Green Iron
            CreateVariant("4",TRANSMOG,A(1364,1446),A(1366,1448),A(1370,1452),A(1955,2230),A(),A(),A(1368,1450),A(1372,1454)),   -- Golden Scale
            CreateVariant("5",TRANSMOG,A(1504,2976)),   -- Mitril
            CreateVariant("6",TRANSMOG,A(),A(2544,2977),A(),A(569,2969),A(),A(),A(205,2966))   -- Mitril Scale
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(2484,2968)),   -- Steel Plate
            CreateVariant("2",TRANSMOG,A(2546,2979),A(2537,2964),A(1920,2975),A(),A(2538,2965),A(),A(2539,2967),A(2545,2978)),   -- Heavy Mitril
            CreateVariant("3",TRANSMOG,A(3539,4408),A(),A(3537,4404),A(3538,4406),A(),A(3259,4405),A(3540,4409),A(2756,4407)),   -- Thorium
            CreateVariant("4",TRANSMOG,A(3550,4421),A(3551,4422),A(3546,4417),A(3548,4419),A(),A(3547,4418),A(3552,4423),A(3549,4420)),   -- Imperial
            CreateVariant("5",TRANSMOG,A(3844,7623),A(3423,4196),A(3422,4195),A(4630,7061),A(5392,7631),A(),A(5104,7060),A(5281,7905))    -- Dark Iron
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 70000
    local sets = {
        -- Darkmoon Faire, Dungeon 1
        IncludeSet(COLLECTION,10101,359,CLOTH,ANY_CLASS,ANY_FACTION), -- Vestments of the Devout
        IncludeSet(COLLECTION,10101,1424,CLOTH,ANY_CLASS,ANY_FACTION), -- Dreadmist Raiment
        IncludeSet(COLLECTION,10101,1425,CLOTH,ANY_CLASS,ANY_FACTION), -- Magister's Regalia
        IncludeSet(COLLECTION,10101,1426,LEATHER,ANY_CLASS,ANY_FACTION), -- Wildheart Raiment
        IncludeSet(COLLECTION,10101,1427,LEATHER,ANY_CLASS,ANY_FACTION), -- Shadowcraft Armor
        IncludeSet(COLLECTION,10101,1428,MAIL,ANY_CLASS,ANY_FACTION), -- Beaststalker Armor
        IncludeSet(COLLECTION,10101,1429,MAIL,ANY_CLASS,ANY_FACTION), -- The Elements
        IncludeSet(COLLECTION,10101,1430,PLATE,ANY_CLASS,ANY_FACTION), -- Lightforge Armor
        IncludeSet(COLLECTION,10101,1431,PLATE,ANY_CLASS,ANY_FACTION), -- Battlegear of Valor
        
        -- Darkmoon Faire, Dungeon 2
        IncludeSet(COLLECTION,10102,360,CLOTH,PRIEST,ANY_FACTION), -- Vestments of the Virtuous
        IncludeSet(COLLECTION,10102,854,CLOTH,WARLOCK,ANY_FACTION), -- Deathmist Raiment
        IncludeSet(COLLECTION,10102,855,CLOTH,MAGE,ANY_FACTION), -- Sorcerer's Regalia
        IncludeSet(COLLECTION,10102,856,MAIL,HUNTER,ANY_FACTION), -- Beastmaster Armor
        IncludeSet(COLLECTION,10102,857,LEATHER,ROGUE,ANY_FACTION), -- Darkmantle Armor
        IncludeSet(COLLECTION,10102,858,LEATHER,DRUID,ANY_FACTION), -- Feralheart Raiment
        IncludeSet(COLLECTION,10102,859,PLATE,PALADIN,ANY_FACTION), -- Soulforge Armor
        IncludeSet(COLLECTION,10102,860,MAIL,SHAMAN,ANY_FACTION), -- The Five Thunders
        IncludeSet(COLLECTION,10102,861,PLATE,WARRIOR,ANY_FACTION), -- Battlegear of Heroism

        -- Dungeon 3
        CreateSet(COLLECTION,10104,"DR_DG_03",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("DR_DG_03",TRANSMOG,I(28348),I(27737),I(28202),I(27468),I(27873)) -- Moonglade Raiment
        ),
        CreateSet(COLLECTION,10105,"HU_DG_03",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HU_DG_03",TRANSMOG,I(28275),I(27801),I(28228),I(27474),I(27874)) -- Beast Lord Armor
        ),
        CreateSet(COLLECTION,10106,"MA_DG_03",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("MA_DG_03",TRANSMOG,I(28278),I(27738),I(28229),I(27508),I(27838)) -- Incanter's Regalia
        ),
        CreateSet(COLLECTION,10107,"PA_DG_03",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("PA_DG_03",TRANSMOG,I(28285),I(27739),I(28203),I(27535),I(27839)) -- Righteous Armor
        ),
        CreateSet(COLLECTION,10108,"PR_DG_03",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("PR_DG_03",TRANSMOG,I(28413),I(27775),I(28230),I(27536),I(27875)) -- Hallowed raiment
        ),
        CreateSet(COLLECTION,10109,"RO_DG_03",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("RO_DG_03",TRANSMOG,I(28414),I(27776),I(28204),I(27509),I(27908)) -- Assassination Armor
        ),
        CreateSet(COLLECTION,10110,"SH_DG_03",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("SH_DG_03",TRANSMOG,I(28349),I(27802),I(28231),I(27510),I(27909)) -- Tidefury Raiment
        ),
        CreateSet(COLLECTION,10111,"WK_DG_03",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("WK_DG_03",TRANSMOG,I(28415),I(27778),I(28232),I(27537),I(27948)) -- Oblivion Raiment
        ),
        CreateSet(COLLECTION,10112,"WR_DG_03",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("WR_DG_03",TRANSMOG,I(28350),I(27803),I(28205),I(27475),I(27977)) -- Bold Armor
        ),

        -- Dungeon 4
        CreateSet(COLLECTION,10113,"DG_CLOTH_03",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_CLOTH_03",TRANSMOG,I(28193),I(27796),I(28191),I(27465),I(27907)) -- Mana-Etched Regalia
        ),
        CreateSet(COLLECTION,10114,"DG_LEATHER_03",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_LEATHER_03",TRANSMOG,I(28224),I(27797),I(28264),I(27531),I(27837)) -- Wastewalker Armor
        ),
        CreateSet(COLLECTION,10115,"DG_MAIL_03",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_MAIL_03",TRANSMOG,I(28192),I(27713),I(28401),I(27528),I(27936)) -- Desolation Battlegear
        ),
        CreateSet(COLLECTION,10116,"DG_PLATE_03",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("DG_PLATE_03",TRANSMOG,I(28225),I(27771),I(28403),I(27497),I(27870)) -- Doomplate Battlegear
        )
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000

    local sets = {
        CreateSet(COLLECTION,10101,"LG_60_SULF",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_60_SULF",TRANSMOG,I(17182))
        ),
        CreateSet(COLLECTION,10102,"LG_60_THUN",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_60_THUN",TRANSMOG,I(19019))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 10500

    local sets = {
        -- Molten Core 
        IncludeSet(COLLECTION,VERSION,357,CLOTH,PRIEST,ANY_FACTION), -- Vestments of Prophecy
        IncludeSet(COLLECTION,VERSION,853,PLATE,WARRIOR,ANY_FACTION), -- Battlegear of Might
        IncludeSet(COLLECTION,VERSION,868,CLOTH,WARLOCK,ANY_FACTION), -- Felheart Raiment
        IncludeSet(COLLECTION,VERSION,876,MAIL,SHAMAN,ANY_FACTION), -- The Earthfury
        IncludeSet(COLLECTION,VERSION,894,LEATHER,ROGUE,ANY_FACTION), -- Nightslayer Armor
        IncludeSet(COLLECTION,VERSION,902,PLATE,PALADIN,ANY_FACTION), -- Lawbringer Armor
        IncludeSet(COLLECTION,VERSION,910,CLOTH,MAGE,ANY_FACTION), -- Arcanist Regalia
        IncludeSet(COLLECTION,VERSION,917,MAIL,HUNTER,ANY_FACTION), -- Giantstalker Armor
        IncludeSet(COLLECTION,VERSION,928,LEATHER,DRUID,ANY_FACTION), -- Cenarion Raiment
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 10600
    sets = {
        -- Blackwing Lair
        IncludeSet(COLLECTION,VERSION,356,CLOTH,PRIEST,ANY_FACTION), -- Vestments of Transcendence
        IncludeSet(COLLECTION,VERSION,852,PLATE,WARRIOR,ANY_FACTION), -- Battlegear of Wrath
        IncludeSet(COLLECTION,VERSION,867,CLOTH,WARLOCK,ANY_FACTION), -- Nemesis Raiment
        IncludeSet(COLLECTION,VERSION,875,MAIL,SHAMAN,ANY_FACTION), -- The Ten Storms
        IncludeSet(COLLECTION,VERSION,893,LEATHER,ROGUE,ANY_FACTION), -- Bloodfang Armor
        IncludeSet(COLLECTION,VERSION,901,PLATE,PALADIN,ANY_FACTION, -- Judgment Armor
            CreateVariant("RECOLOR",TRANSMOG,I(27790),I(27539),I(27897),I(27548),I(27748),I(28221),I(27489),I(27457))
        ),
        IncludeSet(COLLECTION,VERSION,909,CLOTH,MAGE,ANY_FACTION), -- Netherwind Regalia
        IncludeSet(COLLECTION,VERSION,916,MAIL,HUNTER,ANY_FACTION), -- Dragonstalker Armor
        IncludeSet(COLLECTION,VERSION,927,LEATHER,DRUID,ANY_FACTION), -- Stormrage Raiment
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 10900
    sets = {
        -- Temple of Ahn'Qiraj
        IncludeSet(COLLECTION,VERSION,358,CLOTH,PRIEST,ANY_FACTION), -- Garments of the Oracle
        IncludeSet(COLLECTION,VERSION,851,PLATE,WARRIOR,ANY_FACTION), -- Conqueror's Battlegear
        IncludeSet(COLLECTION,VERSION,866,CLOTH,WARLOCK,ANY_FACTION), -- Doomcaller's Attire
        IncludeSet(COLLECTION,VERSION,874,MAIL,SHAMAN,ANY_FACTION), -- Stormcaller's Garb
        IncludeSet(COLLECTION,VERSION,892,LEATHER,ROGUE,ANY_FACTION), -- Deathdealer's Embrace
        IncludeSet(COLLECTION,VERSION,900,PLATE,PALADIN,ANY_FACTION), -- Avenger's Battlegear
        IncludeSet(COLLECTION,VERSION,908,CLOTH,MAGE,ANY_FACTION), -- Enigma Vestments
        IncludeSet(COLLECTION,VERSION,915,MAIL,HUNTER,ANY_FACTION), -- Striker's Garb
        IncludeSet(COLLECTION,VERSION,926,LEATHER,DRUID,ANY_FACTION), -- Genesis Raiment
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 20000
    sets = {
        -- Naxxramas
        IncludeSet(COLLECTION,20000,355,CLOTH,PRIEST,ANY_FACTION), -- Vestments of Faith
        IncludeSet(COLLECTION,20000,850,PLATE,WARRIOR,ANY_FACTION), -- Dreadnaught's Battlegear
        IncludeSet(COLLECTION,20000,865,CLOTH,WARLOCK,ANY_FACTION), -- Plagueheart Raiment
        IncludeSet(COLLECTION,20000,873,MAIL,SHAMAN,ANY_FACTION), -- The Earthshatterer
        IncludeSet(COLLECTION,20000,891,LEATHER,ROGUE,ANY_FACTION), -- Bonescythe Armor
        IncludeSet(COLLECTION,20000,899,PLATE,PALADIN,ANY_FACTION), -- Redemption Armor
        IncludeSet(COLLECTION,20000,907,CLOTH,MAGE,ANY_FACTION), -- Frostfire Regalia
        IncludeSet(COLLECTION,20000,914,MAIL,HUNTER,ANY_FACTION), -- Cryptstalker Armor
        IncludeSet(COLLECTION,20000,924,LEATHER,DRUID,ANY_FACTION), -- Dreamwalker Raiment
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion01Appearances(expansion)
    if expansion.v01 then
        -- Common
        GetLegendaries()
        GetDungeonAppearances()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion01Status()
    return SetCollector:GetExpansionStatus("1")
end

function SetCollector:SetVersion01Status()
    SetCollector:SetExpansionStatus("1")
end