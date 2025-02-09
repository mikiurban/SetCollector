-- Appearances from Wrath of the Lich King (v.3.x)

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

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000
    local sets = {
        CreateSet(COLLECTION,10301,"LG_HEALER_80",ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_HEALER_80",TRANSMOG,I(46017))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 30000
    local sets = {
        -- Season 5
        IncludeSet(COLLECTION,30001,375,377,376), -- Savage Gladiator's Satin Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,788,797,806), -- Savage Gladiator's Plate Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,789,807,798), -- Savage Gladiator's Felweave Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,790,799,808), -- Savage Gladiator's Ringmail Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,791,800,809), -- Savage Gladiator's Leather Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,792,810,801), -- Savage Gladiator's Scaled Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,793,802,811), -- Savage Gladiator's Silk Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,794,803,812), -- Savage Gladiator's Chain Armor, Honor, PVP Rare
        IncludeSet(COLLECTION,30001,795,813,804), -- Savage Gladiator's Dragonhide Armor, PVP Rare, Honor
        IncludeSet(COLLECTION,30001,796,805,814), -- Savage Gladiator's Dreadplate Armor, Honor, PVP Rare
        -- Season 6
        IncludeSet(COLLECTION,30100,374), -- Furious Gladiator's Satin Armor
        IncludeSet(COLLECTION,30100,779), -- Furious Gladiator's Plate Armor
        IncludeSet(COLLECTION,30100,780), -- Furious Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30100,781), -- Furious Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30100,782), -- Furious Gladiator's Leather Armor
        IncludeSet(COLLECTION,30100,783), -- Furious Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30100,784), -- Furious Gladiator's Silk Armor
        IncludeSet(COLLECTION,30100,785), -- Furious Gladiator's Chain Armor
        IncludeSet(COLLECTION,30100,786), -- Furious Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30100,787), -- Furious Gladiator's Dreadplate Armor
        -- Season 7
        IncludeSet(COLLECTION,30200,373), -- Relentless Gladiator's Satin Armor
        IncludeSet(COLLECTION,30200,770), -- Relentless Gladiator's Plate Armor
        IncludeSet(COLLECTION,30200,771), -- Relentless Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30200,772), -- Relentless Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30200,773), -- Relentless Gladiator's Leather Armor
        IncludeSet(COLLECTION,30200,774), -- Relentless Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30200,775), -- Relentless Gladiator's Silk Armor
        IncludeSet(COLLECTION,30200,776), -- Relentless Gladiator's Chain Armor
        IncludeSet(COLLECTION,30200,777), -- Relentless Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30200,778), -- Relentless Gladiator's Dreadplate Armor
        -- Season 8
        IncludeSet(COLLECTION,30300,372), -- Wrathful Gladiator's Satin Armor
        IncludeSet(COLLECTION,30300,761), -- Wrathful Gladiator's Plate Armor
        IncludeSet(COLLECTION,30300,762), -- Wrathful Gladiator's Felweave Armor
        IncludeSet(COLLECTION,30300,763), -- Wrathful Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,30300,764), -- Wrathful Gladiator's Leather Armor
        IncludeSet(COLLECTION,30300,765), -- Wrathful Gladiator's Scaled Armor
        IncludeSet(COLLECTION,30300,766), -- Wrathful Gladiator's Silk Armor
        IncludeSet(COLLECTION,30300,767), -- Wrathful Gladiator's Chain Armor
        IncludeSet(COLLECTION,30300,768), -- Wrathful Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,30300,769), -- Wrathful Gladiator's Dreadplate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000

    local sets = { 
        -- Timewalking Vendor
        IncludeSet(COLLECTION,30000,4147), -- Ymirjar Deathbringer's Battleplate
        IncludeSet(COLLECTION,30000,4145), -- Jotunheim Berserker's Battleplate
        IncludeSet(COLLECTION,30000,4148), -- Coldarra Spellbinder's Regalia
        IncludeSet(COLLECTION,30001,4144), -- Drakkari Stalker's Trappings
        IncludeSet(COLLECTION,30001,4146), -- Brunnhildar Scout's Kit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Naxxramas
        IncludeSet(COLLECTION,30001,361,362), -- Valorous Regalia of Faith, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,644,645), -- Valorous Earthshatter Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,661,662), -- Valorous Dreadnaught Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,678,679), -- Valorous Plagueheart Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,694,695), -- Valorous Bonescythe Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,710,711), -- Valorous Redemption Plate, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,726,727), -- Valorous Frostfire Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,742,743), -- Valorous Cryptstalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,829,830), -- Valorous Dreamwalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30001,845,846), -- Valorous Scourgeborne Plate, 25 Player (Normal)
        -- Ulduar
        IncludeSet(COLLECTION,30100,363,364), -- Conqueror's Sanctification Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,642,643), -- Conqueror's Worldbreaker Regalia, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,659,660), -- Conqueror's Siegebreaker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,676,677), -- Conqueror's Deathbringer Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,692,693), -- Conqueror's Terrorblade Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,708,709), -- Conqueror's Aegis Plate, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,724,725), -- Conqueror's Kirin Tor Garb, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,740,741), -- Conqueror's Scourgestalker Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,827,828), -- Conqueror's Nightsong Battlegear, 25 Player (Normal)
        IncludeSet(COLLECTION,30100,843,844), -- Conqueror's Darkruned Plate, 25 Player (Normal)
        -- Trial of the Crusader
        IncludeSet(COLLECTION,30200,349), -- Velen's Regalia
        IncludeSet(COLLECTION,30200,350), -- Zabra's Regalia
        IncludeSet(COLLECTION,30200,640), -- Nobundo's Garb
        IncludeSet(COLLECTION,30200,641), -- Thrall's Garb
        IncludeSet(COLLECTION,30200,657), -- Hellscream's Battlegear
        IncludeSet(COLLECTION,30200,658), -- Wrynn's Battlegear
        IncludeSet(COLLECTION,30200,674), -- Kel'Thuzad's Regalia
        IncludeSet(COLLECTION,30200,675), -- Gul'dan's Regalia
        IncludeSet(COLLECTION,30200,690), -- VanCleef's Battlegear
        IncludeSet(COLLECTION,30200,691), -- Garona's Battlegear
        IncludeSet(COLLECTION,30200,706), -- Turalyon's Plate
        IncludeSet(COLLECTION,30200,707), -- Liadrin's Plate
        IncludeSet(COLLECTION,30200,722), -- Khadgar's Regalia
        IncludeSet(COLLECTION,30200,723), -- Sunstrider's Regalia
        IncludeSet(COLLECTION,30200,738), -- Windrunner's Pursuit
        IncludeSet(COLLECTION,30200,739), -- Windrunner's Battlegear
        IncludeSet(COLLECTION,30200,825), -- Malfurion's Battlegear
        IncludeSet(COLLECTION,30200,826), -- Runetotem's Battlegear
        IncludeSet(COLLECTION,30200,841), -- Koltira's Battlegear
        IncludeSet(COLLECTION,30200,842), -- Thassarian's Battlegear
        -- Icecrown Citadel
        IncludeSet(COLLECTION,30300,346,347,348), -- Sanctified Crimson Acolyte Regalia, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,637,638,639), -- Frost Witch's Regalia, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,655,656,298), -- Sanctified Ymirjar Lord's Battlegear, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,671,673,672), -- Sanctified Dark Coven's Regalia, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,687,689,688), -- Sanctified Shadowblade's Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,703,704,705), -- Sanctified Lightsworn Plate, 25 Player (Normal), 25 Player (Heroic)
        IncludeSet(COLLECTION,30300,719,721,720), -- Sanctified Bloodmage's Regalia, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,735,737,736), -- Sanctified Ahn'Kahar Blood Hunter's Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,822,824,823), -- Sanctified Lasherweave Battlegear, 25 Player (Heroic), 25 Player (Normal)
        IncludeSet(COLLECTION,30300,838,839,840), -- Sanctified Scourgelord's Plate, 25 Player (Normal), 25 Player (Heroic)
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