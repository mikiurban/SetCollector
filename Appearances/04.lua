-- Appearances from Cataclysm (v.4.x)

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
        CreateSet(COLLECTION,10401,"LG_85",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_85",TRANSMOG,I(71086))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 40000
    local sets = {
        -- Season 9
        IncludeSet(SetCollector.PVP,40000,369,CLOTH,PRIEST,ANY_FACTION,371,370), -- Bloodthirsty Gladiator's Satin Armor, Honor, Elite
        IncludeSet(SetCollector.PVP,40000,626,PLATE,WARRIOR,ANY_FACTION,627,1193), -- Bloodthirsty Gladiator's Plate Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,628,CLOTH,WARLOCK,ANY_FACTION,629,1194), -- Bloodthirsty Gladiator's Felweave Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,747,MAIL,SHAMAN,ANY_FACTION,748,1195), -- Bloodthirsty Gladiator's Ringmail Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,749,LEATHER,ROGUE,ANY_FACTION,750,1196), -- Bloodthirsty Gladiator's Leather Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,751,PLATE,PALADIN,ANY_FACTION,752,1197), -- Bloodthirsty Gladiator's Scaled Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,753,CLOTH,MAGE,ANY_FACTION,754,1198), -- Bloodthirsty Gladiator's Silk Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,755,MAIL,HUNTER,ANY_FACTION,756,1199), -- Bloodthirsty Gladiator's Chain Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,757,LEATHER,DRUID,ANY_FACTION,758,1200), -- Bloodthirsty Gladiator's Dragonhide Armor, Elite, Honor
        IncludeSet(SetCollector.PVP,40000,759,PLATE,DEATHKNIGHT,ANY_FACTION,760,1201), -- Bloodthirsty Gladiator's Dreadplate Armor, Elite, Honor
        -- Season 10
        IncludeSet(SetCollector.PVP,40200,606,PLATE,WARRIOR,ANY_FACTION,607), -- Ruthless Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,40200,608,CLOTH,WARLOCK,ANY_FACTION,609), -- Ruthless Gladiator's Felweave Armor, Elite
        IncludeSet(SetCollector.PVP,40200,610,MAIL,SHAMAN,ANY_FACTION,611), -- Ruthless Gladiator's Ringmail Armor, Elite
        IncludeSet(SetCollector.PVP,40200,612,CLOTH,PRIEST,ANY_FACTION,614), -- Ruthless Gladiator's Satin Armor, Elite
        IncludeSet(SetCollector.PVP,40200,615,LEATHER,ROGUE,ANY_FACTION,613), -- Ruthless Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,40200,616,PLATE,PALADIN,ANY_FACTION,617), -- Ruthless Gladiator's Scaled Armor, Elite
        IncludeSet(SetCollector.PVP,40200,618,CLOTH,MAGE,ANY_FACTION,619), -- Ruthless Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,40200,620,MAIL,HUNTER,ANY_FACTION,621), -- Ruthless Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,40200,622,LEATHER,DRUID,ANY_FACTION,623), -- Ruthless Gladiator's Dragonhide Armor, Elite
        IncludeSet(SetCollector.PVP,40200,624,PLATE,DEATHKNIGHT,ANY_FACTION,625), -- Ruthless Gladiator's Dreadplate Armor, Elite
        -- Season 11
        IncludeSet(SetCollector.PVP,40300,365,CLOTH,PRIEST,ANY_FACTION,366), -- Cataclysmic Gladiator's Satin Armor, Elite
        IncludeSet(SetCollector.PVP,40300,588,PLATE,WARRIOR,ANY_FACTION,589), -- Cataclysmic Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,40300,590,CLOTH,WARLOCK,ANY_FACTION,591), -- Cataclysmic Gladiator's Felweave Armor, Elite
        IncludeSet(SetCollector.PVP,40300,592,MAIL,SHAMAN,ANY_FACTION,593), -- Cataclysmic Gladiator's Ringmail Armor, Elite
        IncludeSet(SetCollector.PVP,40300,594,LEATHER,ROGUE,ANY_FACTION,595), -- Cataclysmic Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,40300,596,PLATE,PALADIN,ANY_FACTION,597), -- Cataclysmic Gladiator's Scaled Armor, Elite
        IncludeSet(SetCollector.PVP,40300,598,CLOTH,MAGE,ANY_FACTION,599), -- Cataclysmic Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,40300,600,MAIL,HUNTER,ANY_FACTION,601), -- Cataclysmic Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,40300,602,LEATHER,DRUID,ANY_FACTION,603), -- Cataclysmic Gladiator's Dragonhide Armor, Elite
        IncludeSet(SetCollector.PVP,40300,604,PLATE,DEATHKNIGHT,ANY_FACTION,605), -- Cataclysmic Gladiator's Dreadplate Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 40000

    local sets = {
        -- The Bastion of Twilight
        IncludeSet(SetCollector.RAID,40000,344,CLOTH,PRIEST,ANY_FACTION,345), -- Mercurial Regalia, Heroic
        IncludeSet(SetCollector.RAID,40000,635,MAIL,SHAMAN,ANY_FACTION,636), -- Regalia of the Raging Elements, Heroic
        IncludeSet(SetCollector.RAID,40000,653,PLATE,WARRIOR,ANY_FACTION,654), -- Earthen Battleplate, Heroic
        IncludeSet(SetCollector.RAID,40000,669,CLOTH,WARLOCK,ANY_FACTION,670), -- Shadowflame Regalia, Heroic
        IncludeSet(SetCollector.RAID,40000,685,LEATHER,ROGUE,ANY_FACTION,686), -- Wind Dancer's Regalia, Heroic
        IncludeSet(SetCollector.RAID,40000,701,PLATE,PALADIN,ANY_FACTION,702), -- Reinforced Sapphirium Battleplate, Heroic
        IncludeSet(SetCollector.RAID,40000,717,CLOTH,MAGE,ANY_FACTION,718), -- Firelord's Vestments, Heroic
        IncludeSet(SetCollector.RAID,40000,733,MAIL,HUNTER,ANY_FACTION,734), -- Lightning-Charged Battlegear, Heroic
        IncludeSet(SetCollector.RAID,40000,820,LEATHER,DRUID,ANY_FACTION,821), -- Stormrider's Vestments, Heroic
        IncludeSet(SetCollector.RAID,40000,836,PLATE,DEATHKNIGHT,ANY_FACTION,837), -- Magma Plated Battlearmor, Heroic
        -- Firelands
        IncludeSet(SetCollector.RAID,40200,342,CLOTH,PRIEST,ANY_FACTION,343), -- Regalia of the Cleansing Flame, Heroic
        IncludeSet(SetCollector.RAID,40200,633,MAIL,SHAMAN,ANY_FACTION,634), -- Volcanic Regalia, Heroic
        IncludeSet(SetCollector.RAID,40200,651,PLATE,WARRIOR,ANY_FACTION,652), -- Molten Giant Battleplate, Heroic
        IncludeSet(SetCollector.RAID,40200,667,CLOTH,WARLOCK,ANY_FACTION,668), -- Balespider's Burning Vestments, Heroic
        IncludeSet(SetCollector.RAID,40200,683,LEATHER,ROGUE,ANY_FACTION,684), -- Vestments of the Dark Phoenix, Heroic
        IncludeSet(SetCollector.RAID,40200,699,PLATE,PALADIN,ANY_FACTION,700), -- Battleplate of Immolation, Heroic
        IncludeSet(SetCollector.RAID,40200,715,CLOTH,MAGE,ANY_FACTION,716), -- Firehawk Robes of Conflagration, Heroic
        IncludeSet(SetCollector.RAID,40200,731,MAIL,HUNTER,ANY_FACTION,732), -- Flamewaker's Battlegear, Heroic
        IncludeSet(SetCollector.RAID,40200,818,LEATHER,DRUID,ANY_FACTION,819), -- Obsidian Arborweave Vestments, Heroic
        IncludeSet(SetCollector.RAID,40200,834,PLATE,DEATHKNIGHT,ANY_FACTION,835), -- Elementium Deathplate Battlearmor, Heroic
        -- Dragon Soul
        IncludeSet(SetCollector.RAID,40300,339,CLOTH,PRIEST,ANY_FACTION,341,340), -- Regalia of Dying Light, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,40300,630,MAIL,SHAMAN,ANY_FACTION,632,663), -- Spiritwalker's Regalia, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,40300,649,PLATE,WARRIOR,ANY_FACTION,650,631), -- Colossal Dragonplate Battlegear, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,40300,664,CLOTH,WARLOCK,ANY_FACTION,665,666), -- Vestments of the Faceless Shroud, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,40300,680,LEATHER,ROGUE,ANY_FACTION,682,681), -- Blackfang Battleweave, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,40300,696,PLATE,PALADIN,ANY_FACTION,698,697), -- Battleplate of Radiant Glory, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,40300,712,CLOTH,MAGE,ANY_FACTION,713,714), -- Time Lord's Regalia, Raid Finder, Heroic
        IncludeSet(SetCollector.RAID,40300,728,MAIL,HUNTER,ANY_FACTION,730,729), -- Wyrmstalker Battlegear, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,40300,815,LEATHER,DRUID,ANY_FACTION,817,816), -- Deep Earth Vestments, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,40300,831,PLATE,DEATHKNIGHT,ANY_FACTION,833,832), -- Necrotic Boneplate Armor, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion04Appearances(expansion)
    if expansion.v04 then
        -- Common
        GetLegendaries()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end


function SetCollector:GetVersion04Status()
    return SetCollector:GetExpansionStatus("4")
end


function SetCollector:SetVersion04Status()
    SetCollector:SetExpansionStatus("4")
end