-- Appearances from The Burning Crusade (v.2.x)

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
        CreateSet(COLLECTION,10001,"PLACEHOLDER",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(5657,8336)),
            CreateVariant("2",TRANSMOG,A(5772,8514)),
            CreateVariant("3",TRANSMOG,A(5773,8515)),
            CreateVariant("4",TRANSMOG,A(5656,8335))
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(5657,8336)),
            CreateVariant("2",TRANSMOG,A(5772,8514)),
            CreateVariant("3",TRANSMOG,A(5773,8515)),
            CreateVariant("4",TRANSMOG,A(5656,8335))
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(6209,9308),A(),A(6207,9306),A(6210,9309),A(6208,9307)),   -- Fel Iron
            CreateVariant("2",TRANSMOG,A(),A(),A(6206,9305),A(),A(6203,9301),A(5539,9302),A(6205,9304),A(6204,9303)),   -- Adamantite
            CreateVariant("3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   -- Swift Steel
            CreateVariant("4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),   --
            CreateVariant("5",TRANSMOG,A()),   --
            CreateVariant("6",TRANSMOG,A(),A(),A(),A(),A(),A(),A())   --
        ),
        CreateSet(COLLECTION,10001,"PLACEHOLDER",PLATE,ANY_FACTION,NO_LOCATION,
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
        CreateSet(COLLECTION,10201,"LG_MELEE_70",SetCollector.AZZINOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_70",TRANSMOG,A(8460,15136,21,32837),A(8461,15137,22,32838))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 20000
    local sets = {
        IncludeSet(COLLECTION,20000,1447), -- Righteous Battleplate
        IncludeSet(COLLECTION,20000,1448), -- Der'izu Armor
        IncludeSet(COLLECTION,20000,1449), -- Obsidian Prowler's Garb
        IncludeSet(COLLECTION,20000,1450), -- Mana-Etched Regalia
        IncludeSet(COLLECTION,20000,1526), -- Goldspine Plate
        IncludeSet(COLLECTION,20000,1527), -- Crimson Sentinel Garb
        IncludeSet(COLLECTION,20000,1528), -- Tundraspite Armor
        IncludeSet(COLLECTION,20000,1529), -- Mindwrack Raiment
        IncludeSet(COLLECTION,20000,1824), -- Armor of the Amaranthine Path
        IncludeSet(COLLECTION,20000,1825), -- Chainmail of the Timeless Hunt
        IncludeSet(COLLECTION,20000,1826), -- Restless Dreambound Battlegear
        IncludeSet(COLLECTION,20000,1827), -- Tranquil Spiritbind Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 20000
    local sets = {
        -- Season 1
        IncludeSet(COLLECTION,20000,381), -- Gladiator's Plate Armor
        IncludeSet(COLLECTION,20000,970), -- Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20000,971), -- Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20000,972), -- Gladiator's Leather Armor
        IncludeSet(COLLECTION,20000,973), -- Gladiator's Satin Armor
        IncludeSet(COLLECTION,20000,974), -- Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20000,975), -- Gladiator's Silk Armor
        IncludeSet(COLLECTION,20000,976), -- Gladiator's Chain Armor
        IncludeSet(COLLECTION,20000,977), -- Gladiator's Dragonhide Armor
        -- Season 2
        IncludeSet(COLLECTION,20003,380), -- Merciless Gladiator's Satin Armor
        IncludeSet(COLLECTION,20003,962), -- Merciless Gladiator's Plate Armor
        IncludeSet(COLLECTION,20003,963), -- Merciless Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20003,964), -- Merciless Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20003,965), -- Merciless Gladiator's Leather Armor
        IncludeSet(COLLECTION,20003,966), -- Merciless Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20003,967), -- Merciless Gladiator's Silk Armor
        IncludeSet(COLLECTION,20003,968), -- Merciless Gladiator's Chain Armor
        IncludeSet(COLLECTION,20003,969), -- Merciless Gladiator's Dragonhide Armor
        -- Season 3
        IncludeSet(COLLECTION,20100,379), -- Vengeful Gladiator's Satin Armor
        IncludeSet(COLLECTION,20100,954), -- Vengeful Gladiator's Plate Armor
        IncludeSet(COLLECTION,20100,955), -- Vengeful Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20100,956), -- Vengeful Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20100,957), -- Vengeful Gladiator's Leather Armor
        IncludeSet(COLLECTION,20100,958), -- Vengeful Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20100,959), -- Vengeful Gladiator's Silk Armor
        IncludeSet(COLLECTION,20100,960), -- Vengeful Gladiator's Chain Armor
        IncludeSet(COLLECTION,20100,961), -- Vengeful Gladiator's Dragonhide Armor
        -- Season 4
        IncludeSet(COLLECTION,20400,378), -- Brutal Gladiator's Satin Armor
        IncludeSet(COLLECTION,20400,946), -- Brutal Gladiator's Plate Armor
        IncludeSet(COLLECTION,20400,947), -- Brutal Gladiator's Felweave Armor
        IncludeSet(COLLECTION,20400,948), -- Brutal Gladiator's Ringmail Armor
        IncludeSet(COLLECTION,20400,949), -- Brutal Gladiator's Leather Armor
        IncludeSet(COLLECTION,20400,950), -- Brutal Gladiator's Scaled Armor
        IncludeSet(COLLECTION,20400,951), -- Brutal Gladiator's Silk Armor
        IncludeSet(COLLECTION,20400,952), -- Brutal Gladiator's Chain Armor
        IncludeSet(COLLECTION,20400,953), -- Brutal Gladiator's Dragonhide Armor
        IncludeSet(COLLECTION,20400,1202), -- Brutal Gladiator's Dreadplate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 20000

    local sets = {
        -- Gruul's Lair
        IncludeSet(COLLECTION,20000,354), -- Incarnate Regalia
        IncludeSet(COLLECTION,20000,849), -- Warbringer Armor
        IncludeSet(COLLECTION,20000,864), -- Voidheart Raiment
        IncludeSet(COLLECTION,20000,872), -- Cyclone Regalia
        IncludeSet(COLLECTION,20000,890), -- Netherblade
        IncludeSet(COLLECTION,20000,898), -- Aldor Regalia
        IncludeSet(COLLECTION,20000,906), -- Justicar Armor
        IncludeSet(COLLECTION,20000,913), -- Demon Stalker Armor
        IncludeSet(COLLECTION,20000,922), -- Malorne Raiment
        -- Serpentshrine Cavern
        IncludeSet(COLLECTION,20003,353), -- Avatar Regalia
        IncludeSet(COLLECTION,20003,848), -- Destroyer Armor
        IncludeSet(COLLECTION,20003,863), -- Corruptor Raiment
        IncludeSet(COLLECTION,20003,871), -- Cataclysm Regalia
        IncludeSet(COLLECTION,20003,889), -- Deathmantle
        IncludeSet(COLLECTION,20003,897), -- Crystalforge Armor
        IncludeSet(COLLECTION,20003,905), -- Tirisfal Regalia
        IncludeSet(COLLECTION,20003,918), -- Rift Stalker Armor
        IncludeSet(COLLECTION,20003,921), -- Nordrassil Raiment
        -- Black Temple
        IncludeSet(COLLECTION,20100,351), -- Absolution Regalia
        IncludeSet(COLLECTION,20100,847), -- Onslaught Armor
        IncludeSet(COLLECTION,20100,862), -- Malefic Raiment
        IncludeSet(COLLECTION,20100,870), -- Skyshatter Regalia
        IncludeSet(COLLECTION,20100,888), -- Slayer's Armor
        IncludeSet(COLLECTION,20100,896), -- Lightbringer Armor
        IncludeSet(COLLECTION,20100,904), -- Tempest Regalia
        IncludeSet(COLLECTION,20100,912), -- Gronnstalker's Armor
        IncludeSet(COLLECTION,20100,920), -- Thunderheart Raiment
        -- Sunwell Plateau
        IncludeSet(COLLECTION,20400,352), -- Vestments of Absolution
        IncludeSet(COLLECTION,20400,869), -- Skyshatter Raiment
        IncludeSet(COLLECTION,20400,887), -- Slayer's Battlegear
        IncludeSet(COLLECTION,20400,895), -- Lightbringer Battlegear
        IncludeSet(COLLECTION,20400,903), -- Tempest Garb
        IncludeSet(COLLECTION,20400,911), -- Gronnstalker's Battlegear
        IncludeSet(COLLECTION,20400,919), -- Thunderheart Regalia
        IncludeSet(COLLECTION,20400,931), -- Onslaught Battlegear
        IncludeSet(COLLECTION,20400,932), -- Malefic Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 20000

    local sets = {
        -- The Burning Crusade: Dungeon
        IncludeSet(COLLECTION,20000,4125,4126,4127,4128), -- Wastewalker Battlegear, Reputation Vendors - Red, Dungeons - Brown, Purple
        IncludeSet(COLLECTION,20000,4129,4130,4131,4132), -- Seer's Mail Battlegear, Dungeons - Blue, Purple, Reputation Vendors - Red
        IncludeSet(COLLECTION,20000,4133,4135,4134,4136), -- Telhamant Anchorite's Raiment, Dungeons - Silver, Reputation Vendors - Red, Silver
        IncludeSet(COLLECTION,20000,4137,4138,4139,4140), -- Mana-Etched Vestments, Dungeons - Purple, Reputation Vendors - Red, Dungeons - White
        IncludeSet(COLLECTION,20000,4141,4142,4143), -- Dreadweave Raiment, Dungeons - Green, Reputation Vendors - Red
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