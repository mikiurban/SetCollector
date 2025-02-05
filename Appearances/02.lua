-- Appearances from The Burning Crusade (v.2.x)

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
            CreateVariant("1",TRANSMOG,A(6209,9308),A(),A(6207,9306),A(6210,9309),A(6208,9307)),   -- Fel Iron
            CreateVariant("2",TRANSMOG,A(),A(),A(6206,9305),A(),A(6203,9301),A(5539,9302),A(6205,9304),A(6204,9303)),   -- Adamantite
            CreateVariant("3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   -- Swift Steel
            CreateVariant("4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   --
            CreateVariant("5",TRANSMOG,A()),   --
            CreateVariant("6",TRANSMOG,A(),A(),A(),A(),A(),A(),A())   --
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(),A(),A(6206,9305),A(),A(6203,9301),A(5539,9302),A(6205,9304),A(6204,9303)),   -- Fel Iron
            CreateVariant("2",TRANSMOG,A(),A(),A(4240,9318),A(4247,9317),A(4241,9319),A(),A(),A()),   -- Adamantite
            CreateVariant("3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   -- Red Havoc
            CreateVariant("4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   -- Felsteel
            CreateVariant("5",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())    -- of the protector
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000

    local sets = {
        CreateSet(COLLECTION,10201,"LG_MELEE_70",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_70",TRANSMOG,A(8460,15136,21,32837),A(8461,15137,22,32838))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 20000
    local sets = {
        IncludeSet(COLLECTION,20000,1447,PLATE,ANY_CLASS,ANY_FACTION), -- Righteous Battleplate
        IncludeSet(COLLECTION,20000,1448,MAIL,ANY_CLASS,ANY_FACTION), -- Der'izu Armor
        IncludeSet(COLLECTION,20000,1449,LEATHER,ANY_CLASS,ANY_FACTION), -- Obsidian Prowler's Garb
        IncludeSet(COLLECTION,20000,1450,CLOTH,ANY_CLASS,ANY_FACTION), -- Mana-Etched Regalia
        IncludeSet(COLLECTION,20000,1526,PLATE,ANY_CLASS,ANY_FACTION), -- Goldspine Plate
        IncludeSet(COLLECTION,20000,1527,MAIL,ANY_CLASS,ANY_FACTION), -- Crimson Sentinel Garb
        IncludeSet(COLLECTION,20000,1528,LEATHER,ANY_CLASS,ANY_FACTION), -- Tundraspite Armor
        IncludeSet(COLLECTION,20000,1529,CLOTH,ANY_CLASS,ANY_FACTION), -- Mindwrack Raiment
        IncludeSet(COLLECTION,20000,1824,PLATE,ANY_CLASS,ANY_FACTION), -- Armor of the Amaranthine Path
        IncludeSet(COLLECTION,20000,1825,MAIL,ANY_CLASS,ANY_FACTION), -- Chainmail of the Timeless Hunt
        IncludeSet(COLLECTION,20000,1826,LEATHER,ANY_CLASS,ANY_FACTION), -- Restless Dreambound Battlegear
        IncludeSet(COLLECTION,20000,1827,CLOTH,ANY_CLASS,ANY_FACTION), -- Tranquil Spiritbind Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 20000
    local sets = {
        -- Season 1
        IncludeSet(COLLECTION,20000,381,PLATE,WARRIOR,ANY_FACTION), -- Gladiator's Plate Armor
        IncludeSet(COLLECTION,20000,970,CLOTH,WARLOCK,ANY_FACTION), -- Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20000,971,MAIL,SHAMAN,ANY_FACTION), -- Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20000,972,LEATHER,ROGUE,ANY_FACTION), -- Gladiator's Leather Armor
        IncludeSet(COLLECTION,20000,973,CLOTH,PRIEST,ANY_FACTION), -- Gladiator's Satin Armor
        IncludeSet(COLLECTION,20000,974,PLATE,PALADIN,ANY_FACTION), -- Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20000,975,CLOTH,MAGE,ANY_FACTION), -- Gladiator's Silk Armor
        IncludeSet(COLLECTION,20000,976,MAIL,HUNTER,ANY_FACTION), -- Gladiator's Chain Armor
        IncludeSet(COLLECTION,20000,977,LEATHER,DRUID,ANY_FACTION), -- Gladiator's Dragonhide Armor
        -- Season 2
        IncludeSet(COLLECTION,20003,380,CLOTH,PRIEST,ANY_FACTION), -- Merciless Gladiator's Satin Armor
        IncludeSet(COLLECTION,20003,962,PLATE,WARRIOR,ANY_FACTION), -- Merciless Gladiator's Plate Armor
        IncludeSet(COLLECTION,20003,963,CLOTH,WARLOCK,ANY_FACTION), -- Merciless Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20003,964,MAIL,SHAMAN,ANY_FACTION), -- Merciless Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20003,965,LEATHER,ROGUE,ANY_FACTION), -- Merciless Gladiator's Leather Armor
        IncludeSet(COLLECTION,20003,966,PLATE,PALADIN,ANY_FACTION), -- Merciless Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20003,967,CLOTH,MAGE,ANY_FACTION), -- Merciless Gladiator's Silk Armor
        IncludeSet(COLLECTION,20003,968,MAIL,HUNTER,ANY_FACTION), -- Merciless Gladiator's Chain Armor
        IncludeSet(COLLECTION,20003,969,LEATHER,DRUID,ANY_FACTION), -- Merciless Gladiator's Dragonhide Armor
        -- Season 3
        IncludeSet(COLLECTION,20100,379,CLOTH,PRIEST,ANY_FACTION), -- Vengeful Gladiator's Satin Armor
        IncludeSet(COLLECTION,20100,954,PLATE,WARRIOR,ANY_FACTION), -- Vengeful Gladiator's Plate Armor
        IncludeSet(COLLECTION,20100,955,CLOTH,WARLOCK,ANY_FACTION), -- Vengeful Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20100,956,MAIL,SHAMAN,ANY_FACTION), -- Vengeful Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20100,957,LEATHER,ROGUE,ANY_FACTION), -- Vengeful Gladiator's Leather Armor
        IncludeSet(COLLECTION,20100,958,PLATE,PALADIN,ANY_FACTION), -- Vengeful Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20100,959,CLOTH,MAGE,ANY_FACTION), -- Vengeful Gladiator's Silk Armor
        IncludeSet(COLLECTION,20100,960,MAIL,HUNTER,ANY_FACTION), -- Vengeful Gladiator's Chain Armor
        IncludeSet(COLLECTION,20100,961,LEATHER,DRUID,ANY_FACTION), -- Vengeful Gladiator's Dragonhide Armor
        -- Season 4
        IncludeSet(COLLECTION,20400,378,CLOTH,PRIEST,ANY_FACTION), -- Brutal Gladiator's Satin Armor
        IncludeSet(COLLECTION,20400,946,PLATE,WARRIOR,ANY_FACTION), -- Brutal Gladiator's Plate Armor
        IncludeSet(COLLECTION,20400,947,CLOTH,WARLOCK,ANY_FACTION), -- Brutal Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20400,948,MAIL,SHAMAN,ANY_FACTION), -- Brutal Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20400,949,LEATHER,ROGUE,ANY_FACTION), -- Brutal Gladiator's Leather Armor
        IncludeSet(COLLECTION,20400,950,PLATE,PALADIN,ANY_FACTION), -- Brutal Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20400,951,CLOTH,MAGE,ANY_FACTION), -- Brutal Gladiator's Silk Armor
        IncludeSet(COLLECTION,20400,952,MAIL,HUNTER,ANY_FACTION), -- Brutal Gladiator's Chain Armor
        IncludeSet(COLLECTION,20400,953,LEATHER,DRUID,ANY_FACTION), -- Brutal Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,20400,1202,PLATE,DEATHKNIGHT,ANY_FACTION), -- Brutal Gladiator's Dreadplate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 20000

    local sets = {
        -- Gruul's Lair
        IncludeSet(COLLECTION,20000,354,CLOTH,PRIEST,ANY_FACTION), -- Incarnate Regalia
        IncludeSet(COLLECTION,20000,849,PLATE,WARRIOR,ANY_FACTION), -- Warbringer Armor
        IncludeSet(COLLECTION,20000,864,CLOTH,WARLOCK,ANY_FACTION), -- Voidheart Raiment
        IncludeSet(COLLECTION,20000,872,MAIL,SHAMAN,ANY_FACTION), -- Cyclone Regalia
        IncludeSet(COLLECTION,20000,890,LEATHER,ROGUE,ANY_FACTION), -- Netherblade
        IncludeSet(COLLECTION,20000,898,CLOTH,MAGE,ANY_FACTION), -- Aldor Regalia
        IncludeSet(COLLECTION,20000,906,PLATE,PALADIN,ANY_FACTION), -- Justicar Armor
        IncludeSet(COLLECTION,20000,913,MAIL,HUNTER,ANY_FACTION), -- Demon Stalker Armor
        IncludeSet(COLLECTION,20000,922,LEATHER,DRUID,ANY_FACTION), -- Malorne Raiment
        -- Serpentshrine Cavern
        IncludeSet(COLLECTION,20003,353,CLOTH,PRIEST,ANY_FACTION), -- Avatar Regalia
        IncludeSet(COLLECTION,20003,848,PLATE,WARRIOR,ANY_FACTION), -- Destroyer Armor
        IncludeSet(COLLECTION,20003,863,CLOTH,WARLOCK,ANY_FACTION), -- Corruptor Raiment
        IncludeSet(COLLECTION,20003,871,MAIL,SHAMAN,ANY_FACTION), -- Cataclysm Regalia
        IncludeSet(COLLECTION,20003,889,LEATHER,ROGUE,ANY_FACTION), -- Deathmantle
        IncludeSet(COLLECTION,20003,897,PLATE,PALADIN,ANY_FACTION), -- Crystalforge Armor
        IncludeSet(COLLECTION,20003,905,CLOTH,MAGE,ANY_FACTION), -- Tirisfal Regalia
        IncludeSet(COLLECTION,20003,918,MAIL,HUNTER,ANY_FACTION), -- Rift Stalker Armor
        IncludeSet(COLLECTION,20003,921,LEATHER,DRUID,ANY_FACTION), -- Nordrassil Raiment
        -- Black Temple
        IncludeSet(COLLECTION,20100,351,CLOTH,PRIEST,ANY_FACTION), -- Absolution Regalia
        IncludeSet(COLLECTION,20100,847,PLATE,WARRIOR,ANY_FACTION), -- Onslaught Armor
        IncludeSet(COLLECTION,20100,862,CLOTH,WARLOCK,ANY_FACTION), -- Malefic Raiment
        IncludeSet(COLLECTION,20100,870,MAIL,SHAMAN,ANY_FACTION), -- Skyshatter Regalia
        IncludeSet(COLLECTION,20100,888,LEATHER,ROGUE,ANY_FACTION), -- Slayer's Armor
        IncludeSet(COLLECTION,20100,896,PLATE,PALADIN,ANY_FACTION), -- Lightbringer Armor
        IncludeSet(COLLECTION,20100,904,CLOTH,MAGE,ANY_FACTION), -- Tempest Regalia
        IncludeSet(COLLECTION,20100,912,MAIL,HUNTER,ANY_FACTION), -- Gronnstalker's Armor
        IncludeSet(COLLECTION,20100,920,LEATHER,DRUID,ANY_FACTION), -- Thunderheart Raiment
        -- Sunwell Plateau
        IncludeSet(COLLECTION,20400,352,CLOTH,PRIEST,ANY_FACTION), -- Vestments of Absolution
        IncludeSet(COLLECTION,20400,869,MAIL,SHAMAN,ANY_FACTION), -- Skyshatter Raiment
        IncludeSet(COLLECTION,20400,887,LEATHER,ROGUE,ANY_FACTION), -- Slayer's Battlegear
        IncludeSet(COLLECTION,20400,895,PLATE,PALADIN,ANY_FACTION), -- Lightbringer Battlegear
        IncludeSet(COLLECTION,20400,903,CLOTH,MAGE,ANY_FACTION), -- Tempest Garb
        IncludeSet(COLLECTION,20400,911,MAIL,HUNTER,ANY_FACTION), -- Gronnstalker's Battlegear
        IncludeSet(COLLECTION,20400,919,LEATHER,DRUID,ANY_FACTION), -- Thunderheart Regalia
        IncludeSet(COLLECTION,20400,931,PLATE,WARRIOR,ANY_FACTION), -- Onslaught Battlegear
        IncludeSet(COLLECTION,20400,932,CLOTH,WARLOCK,ANY_FACTION), -- Malefic Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 20000

    local sets = {
        -- The Burning Crusade: Dungeon
        IncludeSet(COLLECTION,20000,4125,LEATHER,ANY_CLASS,ANY_FACTION,4126,4127,4128), -- Wastewalker Battlegear, Reputation Vendors - Red, Dungeons - Brown, Purple
        IncludeSet(COLLECTION,20000,4129,MAIL,ANY_CLASS,ANY_FACTION,4130,4131,4132), -- Seer's Mail Battlegear, Dungeons - Blue, Purple, Reputation Vendors - Red
        IncludeSet(COLLECTION,20000,4133,PLATE,ANY_CLASS,ANY_FACTION,4135,4134,4136), -- Telhamant Anchorite's Raiment, Dungeons - Silver, Reputation Vendors - Red, Silver
        IncludeSet(COLLECTION,20000,4137,CLOTH,ANY_CLASS,ANY_FACTION,4138,4139,4140), -- Mana-Etched Vestments, Dungeons - Purple, Reputation Vendors - Red, Dungeons - White
        IncludeSet(COLLECTION,20000,4141,CLOTH,ANY_CLASS,ANY_FACTION,4142,4143), -- Dreadweave Raiment, Dungeons - Green, Reputation Vendors - Red
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances(expansion)
    if expansion.v02 then
        -- Common
        GetLegendaries()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        GetDungeonAppearances()
    end
end


function SetCollector:GetVersion02Status()
    return SetCollector:GetExpansionStatus("2")
end


function SetCollector:SetVersion02Status()
    SetCollector:SetExpansionStatus("2")
end