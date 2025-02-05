-- Appearances from Wrath of the Lich King (v.3.x)

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

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000
    local sets = {
        CreateSet(COLLECTION,10301,"LG_HEALER_80",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_HEALER_80",TRANSMOG,I(46017))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 30000
    local sets = {
        -- Season 5
        IncludeSet(COLLECTION,30001,375,CLOTH,PRIEST,ANY_FACTION,377,376), -- Savage Gladiator's Satin Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,788,PLATE,WARRIOR,ANY_FACTION,797,806), -- Savage Gladiator's Plate Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,789,CLOTH,WARLOCK,ANY_FACTION,807,798), -- Savage Gladiator's Felweave Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,790,MAIL,SHAMAN,ANY_FACTION,799,808), -- Savage Gladiator's Ringmail Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,791,LEATHER,ROGUE,ANY_FACTION,800,809), -- Savage Gladiator's Leather Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,792,PLATE,PALADIN,ANY_FACTION,810,801), -- Savage Gladiator's Scaled Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,793,CLOTH,MAGE,ANY_FACTION,802,811), -- Savage Gladiator's Silk Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,794,MAIL,HUNTER,ANY_FACTION,803,812), -- Savage Gladiator's Chain Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,795,LEATHER,DRUID,ANY_FACTION,813,804), -- Savage Gladiator's Dragonhide Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,796,PLATE,DEATHKNIGHT,ANY_FACTION,805,814), -- Savage Gladiator's Dreadplate Armor, Honor, PVP Rare
        -- Season 6
        IncludeSet(COLLECTION,30100,374,CLOTH,PRIEST,ANY_FACTION), -- Furious Gladiator's Satin Armor
        IncludeSet(COLLECTION,30100,779,PLATE,WARRIOR,ANY_FACTION), -- Furious Gladiator's Plate Armor
        IncludeSet(COLLECTION,30100,780,CLOTH,WARLOCK,ANY_FACTION), -- Furious Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30100,781,MAIL,SHAMAN,ANY_FACTION), -- Furious Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30100,782,LEATHER,ROGUE,ANY_FACTION), -- Furious Gladiator's Leather Armor
        IncludeSet(COLLECTION,30100,783,PLATE,PALADIN,ANY_FACTION), -- Furious Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30100,784,CLOTH,MAGE,ANY_FACTION), -- Furious Gladiator's Silk Armor
        IncludeSet(COLLECTION,30100,785,MAIL,HUNTER,ANY_FACTION), -- Furious Gladiator's Chain Armor
        IncludeSet(COLLECTION,30100,786,LEATHER,DRUID,ANY_FACTION), -- Furious Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30100,787,PLATE,DEATHKNIGHT,ANY_FACTION), -- Furious Gladiator's Dreadplate Armor
        -- Season 7
        IncludeSet(COLLECTION,30200,373,CLOTH,PRIEST,ANY_FACTION), -- Relentless Gladiator's Satin Armor
        IncludeSet(COLLECTION,30200,770,PLATE,WARRIOR,ANY_FACTION), -- Relentless Gladiator's Plate Armor
        IncludeSet(COLLECTION,30200,771,CLOTH,WARLOCK,ANY_FACTION), -- Relentless Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30200,772,MAIL,SHAMAN,ANY_FACTION), -- Relentless Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30200,773,LEATHER,ROGUE,ANY_FACTION), -- Relentless Gladiator's Leather Armor
        IncludeSet(COLLECTION,30200,774,PLATE,PALADIN,ANY_FACTION), -- Relentless Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30200,775,CLOTH,MAGE,ANY_FACTION), -- Relentless Gladiator's Silk Armor
        IncludeSet(COLLECTION,30200,776,MAIL,HUNTER,ANY_FACTION), -- Relentless Gladiator's Chain Armor
        IncludeSet(COLLECTION,30200,777,LEATHER,DRUID,ANY_FACTION), -- Relentless Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30200,778,PLATE,DEATHKNIGHT,ANY_FACTION), -- Relentless Gladiator's Dreadplate Armor
        -- Season 8
        IncludeSet(COLLECTION,30300,372,CLOTH,PRIEST,ANY_FACTION), -- Wrathful Gladiator's Satin Armor
        IncludeSet(COLLECTION,30300,761,PLATE,WARRIOR,ANY_FACTION), -- Wrathful Gladiator's Plate Armor
        IncludeSet(COLLECTION,30300,762,CLOTH,WARLOCK,ANY_FACTION), -- Wrathful Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30300,763,MAIL,SHAMAN,ANY_FACTION), -- Wrathful Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30300,764,LEATHER,ROGUE,ANY_FACTION), -- Wrathful Gladiator's Leather Armor
        IncludeSet(COLLECTION,30300,765,PLATE,PALADIN,ANY_FACTION), -- Wrathful Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30300,766,CLOTH,MAGE,ANY_FACTION), -- Wrathful Gladiator's Silk Armor
        IncludeSet(COLLECTION,30300,767,MAIL,HUNTER,ANY_FACTION), -- Wrathful Gladiator's Chain Armor
        IncludeSet(COLLECTION,30300,768,LEATHER,DRUID,ANY_FACTION), -- Wrathful Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30300,769,PLATE,DEATHKNIGHT,ANY_FACTION), -- Wrathful Gladiator's Dreadplate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000

    local sets = { 
        -- Timewalking Vendor
        IncludeSet(COLLECTION,30000,4147,PLATE,ANY_CLASS,ANY_FACTION), -- Ymirjar Deathbringer's Battleplate
        IncludeSet(COLLECTION,30000,4145,PLATE,ANY_CLASS,ANY_FACTION), -- Jotunheim Berserker's Battleplate
        IncludeSet(COLLECTION,30000,4148,CLOTH,ANY_CLASS,ANY_FACTION), -- Coldarra Spellbinder's Regalia
        IncludeSet(COLLECTION,30001,4144,LEATHER,ANY_CLASS,ANY_FACTION), -- Drakkari Stalker's Trappings
        IncludeSet(COLLECTION,30001,4146,MAIL,ANY_CLASS,ANY_FACTION), -- Brunnhildar Scout's Kit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Naxxramas
        IncludeSet(COLLECTION,30001,361,CLOTH,PRIEST,ANY_FACTION,362), -- Valorous Regalia of Faith, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,644,MAIL,SHAMAN,ANY_FACTION,645), -- Valorous Earthshatter Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,661,PLATE,WARRIOR,ANY_FACTION,662), -- Valorous Dreadnaught Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,678,CLOTH,WARLOCK,ANY_FACTION,679), -- Valorous Plagueheart Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,694,LEATHER,ROGUE,ANY_FACTION,695), -- Valorous Bonescythe Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,710,PLATE,PALADIN,ANY_FACTION,711), -- Valorous Redemption Plate, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,726,CLOTH,MAGE,ANY_FACTION,727), -- Valorous Frostfire Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,742,MAIL,HUNTER,ANY_FACTION,743), -- Valorous Cryptstalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,829,LEATHER,DRUID,ANY_FACTION,830), -- Valorous Dreamwalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,845,PLATE,DEATHKNIGHT,ANY_FACTION,846), -- Valorous Scourgeborne Plate, 25 Player (Normal)
        -- Ulduar
        IncludeSet(COLLECTION,30100,363,CLOTH,PRIEST,ANY_FACTION,364), -- Conqueror's Sanctification Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,642,MAIL,SHAMAN,ANY_FACTION,643), -- Conqueror's Worldbreaker Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,659,PLATE,WARRIOR,ANY_FACTION,660), -- Conqueror's Siegebreaker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,676,CLOTH,WARLOCK,ANY_FACTION,677), -- Conqueror's Deathbringer Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,692,LEATHER,ROGUE,ANY_FACTION,693), -- Conqueror's Terrorblade Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,708,PLATE,PALADIN,ANY_FACTION,709), -- Conqueror's Aegis Plate, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,724,CLOTH,MAGE,ANY_FACTION,725), -- Conqueror's Kirin Tor Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,740,MAIL,HUNTER,ANY_FACTION,741), -- Conqueror's Scourgestalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,827,LEATHER,DRUID,ANY_FACTION,828), -- Conqueror's Nightsong Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,843,PLATE,DEATHKNIGHT,ANY_FACTION,844), -- Conqueror's Darkruned Plate, 25 Player (Normal)
        -- Trial of the Crusader
        IncludeSet(COLLECTION,30200,349,CLOTH,PRIEST,ALLIANCE), -- Velen's Regalia
        IncludeSet(COLLECTION,30200,350,CLOTH,PRIEST,HORDE), -- Zabra's Regalia
        IncludeSet(COLLECTION,30200,640,MAIL,SHAMAN,ALLIANCE), -- Nobundo's Garb
        IncludeSet(COLLECTION,30200,641,MAIL,SHAMAN,HORDE), -- Thrall's Garb
        IncludeSet(COLLECTION,30200,657,PLATE,WARRIOR,HORDE), -- Hellscream's Battlegear
        IncludeSet(COLLECTION,30200,658,PLATE,WARRIOR,ALLIANCE), -- Wrynn's Battlegear
        IncludeSet(COLLECTION,30200,674,CLOTH,WARLOCK,ALLIANCE), -- Kel'Thuzad's Regalia
        IncludeSet(COLLECTION,30200,675,CLOTH,WARLOCK,HORDE), -- Gul'dan's Regalia
        IncludeSet(COLLECTION,30200,690,LEATHER,ROGUE,ALLIANCE), -- VanCleef's Battlegear
        IncludeSet(COLLECTION,30200,691,LEATHER,ROGUE,HORDE), -- Garona's Battlegear
        IncludeSet(COLLECTION,30200,706,PLATE,PALADIN,ALLIANCE), -- Turalyon's Plate
        IncludeSet(COLLECTION,30200,707,PLATE,PALADIN,HORDE), -- Liadrin's Plate
        IncludeSet(COLLECTION,30200,722,CLOTH,MAGE,ALLIANCE), -- Khadgar's Regalia
        IncludeSet(COLLECTION,30200,723,CLOTH,MAGE,HORDE), -- Sunstrider's Regalia
        IncludeSet(COLLECTION,30200,738,MAIL,HUNTER,HORDE), -- Windrunner's Pursuit
        IncludeSet(COLLECTION,30200,739,MAIL,HUNTER,ALLIANCE), -- Windrunner's Battlegear
        IncludeSet(COLLECTION,30200,825,LEATHER,DRUID,ALLIANCE), -- Malfurion's Battlegear
        IncludeSet(COLLECTION,30200,826,LEATHER,DRUID,HORDE), -- Runetotem's Battlegear
        IncludeSet(COLLECTION,30200,841,PLATE,DEATHKNIGHT,HORDE), -- Koltira's Battlegear
        IncludeSet(COLLECTION,30200,842,PLATE,DEATHKNIGHT,ALLIANCE), -- Thassarian's Battlegear
        -- Icecrown Citadel
        IncludeSet(COLLECTION,30300,346,CLOTH,PRIEST,ANY_FACTION,347,348), -- Sanctified Crimson Acolyte Regalia, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,637,MAIL,SHAMAN,ANY_FACTION,638,639), -- Frost Witch's Regalia, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,655,PLATE,WARRIOR,ANY_FACTION,656,298), -- Sanctified Ymirjar Lord's Battlegear, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,671,CLOTH,WARLOCK,ANY_FACTION,673,672), -- Sanctified Dark Coven's Regalia, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,687,LEATHER,ROGUE,ANY_FACTION,689,688), -- Sanctified Shadowblade's Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,703,PLATE,PALADIN,ANY_FACTION,704,705), -- Sanctified Lightsworn Plate, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,719,CLOTH,MAGE,ANY_FACTION,721,720), -- Sanctified Bloodmage's Regalia, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,735,MAIL,HUNTER,ANY_FACTION,737,736), -- Sanctified Ahn'Kahar Blood Hunter's Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,822,LEATHER,DRUID,ANY_FACTION,824,823), -- Sanctified Lasherweave Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,838,PLATE,DEATHKNIGHT,ANY_FACTION,839,840), -- Sanctified Scourgelord's Plate, 25 Player (Normal), 25 Player (Heroic)
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion03Appearances(expansion)
    if expansion.v03 then
        -- Common
        GetLegendaries()
        GetPvPAppearances()
        GetRaidAppearances()
        GetOtherAppearances()
    end
end

function SetCollector:GetVersion03Status()
    return SetCollector:GetExpansionStatus("3")
end

function SetCollector:SetVersion03Status()
    SetCollector:SetExpansionStatus("3")
end