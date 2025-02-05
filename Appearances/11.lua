-- Appearances from The War Within (v.11.x)

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
    local COLLECTION, VERSION = SetCollector.CRAFTED, 110000
    local sets = {

    }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 110000
    local sets = {

    }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 110000
    local sets = {
        -- Osidion <Ensemble Vendor>
        -- Cartographer's Orientation
        IncludeSet(COLLECTION,VERSION,3552,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3554,3555,3556,3553), -- Mossy Cartographer's Orientation, Red, Purple, Green, Teal
        -- Artisan's Talent
        IncludeSet(COLLECTION,VERSION,3547,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3548,3549,3550,3551), -- Sooty Artisan's Talent, Purple, Green, Blue, Black
        -- Quotidian Wear
        IncludeSet(COLLECTION,VERSION,3530,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3527,3528,3529,3531), -- Taupe Quotidian Wear, Yellow, Red, Green, Blue
        -- Patron's Elegance
        IncludeSet(COLLECTION,VERSION,3534,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3533,3535,3536,3532), -- Court Patron's Elegance, Purple, Blue, Black, Red
        -- Toiler's Uniform
        IncludeSet(COLLECTION,VERSION,3545,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3542,3543,3544,3546), -- Toiler's Navy Uniform, Red, Green, Burgundy, Blue
        -- Peddler's Trinkets
        IncludeSet(COLLECTION,VERSION,3537,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3540,3541,3538,3539), -- Occult Peddler's Trinkets, Blue, Black, Purple, Green
        -- Educator's Knowledge
        IncludeSet(COLLECTION,VERSION,3525,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3526,3522,3523,3524), -- Midnight Educator's Knowledge, Black, Red, Purple, Green


        -- Honorary Councilmember's Mandate
        IncludeSet(COLLECTION,VERSION,3519,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3874,4229,3883), -- Awakened Ambassador's Silver Drapery, Unique Creatures, Silver, Awakened
        -- Hallowfall Quests
        IncludeSet(COLLECTION,VERSION,3518,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3876), -- Misplaced Arathi Attire, Dark
        -- Coreway Regalia
        IncludeSet(COLLECTION,VERSION,3891,LEATHER,ANY_CLASS,ANY_FACTION), -- Coreway Regalia
        -- Threads of Awakening
        IncludeSet(COLLECTION,VERSION,3892,CLOTH,ANY_CLASS,ANY_FACTION), -- Threads of Awakening
        -- Algari Chainmail
        IncludeSet(COLLECTION,VERSION,3890,MAIL,ANY_CLASS,ANY_FACTION), -- Algari Chainmail
        -- Dorn Defender Armaments
        IncludeSet(COLLECTION,VERSION,3889,PLATE,ANY_CLASS,ANY_FACTION), -- Dorn Defender Armaments
        -- (blank)
        IncludeSet(COLLECTION,VERSION,3520,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Finery of the Assembly
        IncludeSet(COLLECTION,VERSION,3521,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Thread-Bearer's Carapace
        -- Underground Gear
        IncludeSet(COLLECTION,VERSION,3640,CLOTH,ANY_CLASS,ANY_FACTION), -- Delver's Cloth Armor
        IncludeSet(COLLECTION,VERSION,3642,MAIL,ANY_CLASS,ANY_FACTION), -- Delver's Mail Armor
        IncludeSet(COLLECTION,VERSION,3641,LEATHER,ANY_CLASS,ANY_FACTION), -- Delver's Leather Armor
        IncludeSet(COLLECTION,VERSION,3643,PLATE,ANY_CLASS,ANY_FACTION), -- Delver's Plate Armor
        -- Spreading the Light
        IncludeSet(COLLECTION,VERSION,3518,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3877,3876), -- Darkened Arathi Attire, Purple, Dark
        -- Hallowfall Gear
        IncludeSet(COLLECTION,VERSION,3879,PLATE,ANY_CLASS,ANY_FACTION), -- Aegis of Hidden Stars, Aspirant, Delves
        IncludeSet(COLLECTION,VERSION,3880,LEATHER,ANY_CLASS,ANY_FACTION), -- Myconic Shell, Delves, Aspirant
        IncludeSet(COLLECTION,VERSION,3878,MAIL,ANY_CLASS,ANY_FACTION), -- Chains of the Stygian Sea, Aspirant, Delves
        IncludeSet(COLLECTION,VERSION,3881,CLOTH,ANY_CLASS,ANY_FACTION), -- Unkindled Waxweave Panoply, Aspirant, Delves
        -- Hallowfall Arathi Renown
        IncludeSet(COLLECTION,VERSION,3518,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Expeditionary Arathi Attire
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 110005
    sets = {
        -- Rare Monster Hunting
        IncludeSet(COLLECTION,VERSION,4149,PLATE,ANY_CLASS,ANY_FACTION), -- Khaz Algar Trophymaster's Plate Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4150,MAIL,ANY_CLASS,ANY_FACTION), -- Khaz Algar Trophymaster's Mail Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4151,LEATHER,ANY_CLASS,ANY_FACTION), -- Khaz Algar Trophymaster's Leather Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4152,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Khaz Algar Trophymaster's Cloth Armor, Rare Monsters
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 110007
    sets = {
        -- Siren Isle
        IncludeSet(COLLECTION,VERSION,3518,ANY_ARMOR,ANY_CLASS,ANY_FACTION,4228,4227), -- Sacred Wayfarer's Attire, Yellow, Black
        -- Plunderlord's Stormridden Finery
        IncludeSet(COLLECTION,VERSION,4175,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Plunderlord's Stormridden Finery
        -- Clockwork Collection
        IncludeSet(COLLECTION,VERSION,4208,ANY_ARMOR,ANY_CLASS,ANY_FACTION,4210,4209,4211), -- Violet Clockwork Attire, Green, Gold, Purple
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 110000
    local sets = {
        -- Heritage Armor
        IncludeSet(COLLECTION,VERSION,3700,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3702,3701), -- Heritage of Khaz Algar, Gundargaz, Freywold
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 110005
    sets = {
        -- WoW's 20th Anniversary
        IncludeSet(COLLECTION,VERSION,3871,PLATE,PALADIN,ANY_FACTION), -- Eternal Judgment Armor
        IncludeSet(COLLECTION,VERSION,3864,PLATE,DEATHKNIGHT,ANY_FACTION), -- Pale Rider's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3872,PLATE,WARRIOR,ANY_FACTION), -- Eternal Battlegear of Wrath
        IncludeSet(COLLECTION,VERSION,3865,CLOTH,PRIEST,ANY_FACTION), -- Eternal Vestments of Transcendence
        IncludeSet(COLLECTION,VERSION,3873,CLOTH,WARLOCK,ANY_FACTION), -- Eternal Nemesis Raiment
        IncludeSet(COLLECTION,VERSION,3866,MAIL,SHAMAN,ANY_FACTION), -- The Eternal Ten Storms Armor
        IncludeSet(COLLECTION,VERSION,3867,LEATHER,ROGUE,ANY_FACTION), -- Eternal Bloodfang Armor
        IncludeSet(COLLECTION,VERSION,3868,CLOTH,MAGE,ANY_FACTION), -- Eternal Netherwind Regalia
        IncludeSet(COLLECTION,VERSION,3861,LEATHER,MONK,ANY_FACTION), -- Eternal Battlegear of the August Acolyte
        IncludeSet(COLLECTION,VERSION,3869,MAIL,HUNTER,ANY_FACTION), -- Dragonstalker's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3862,MAIL,EVOKER,ANY_FACTION), -- Earth-Warder's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3870,LEATHER,DRUID,ANY_FACTION), -- Eternal Stormrage Armor
        IncludeSet(COLLECTION,VERSION,3863,LEATHER,DEMONHUNTER,ANY_FACTION), -- Netherwalker's Eternal Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 110007
    sets = {
        -- Timewalking: Cataclysm: PVP
        IncludeSet(COLLECTION,VERSION,4234,LEATHER,ANY_CLASS,ANY_FACTION), -- Vestments of the Twisted Grove
        IncludeSet(COLLECTION,VERSION,4235,PLATE,ANY_CLASS,ANY_FACTION), -- Twilight Zealot's Battleplate
        IncludeSet(COLLECTION,VERSION,4236,MAIL,ANY_CLASS,ANY_FACTION), -- Twilight Hunter's Guise
        IncludeSet(COLLECTION,VERSION,4238,CLOTH,ANY_CLASS,ANY_FACTION), -- Twilight Acolyte's Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 110000
    local sets = {
        -- The War Within Season 1
        IncludeSet(SetCollector.PVP,110000,3655,PLATE,ANY_CLASS,ANY_FACTION,3696), -- Forged Aspirant's Plate Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3656,MAIL,ANY_CLASS,ANY_FACTION,3697), -- Forged Aspirant's Chain Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3657,LEATHER,ANY_CLASS,ANY_FACTION,3698), -- Forged Aspirant's Leather Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3658,CLOTH,ANY_CLASS,ANY_FACTION,3699), -- Forged Aspirant's Silk Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3821,CLOTH,MAGE,ANY_FACTION,3834), -- Forged Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3822,PLATE,DEATHKNIGHT,ANY_FACTION,3835), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3823,LEATHER,DEMONHUNTER,ANY_FACTION,3836), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3824,LEATHER,DRUID,ANY_FACTION,3837), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3825,MAIL,EVOKER,ANY_FACTION,3838), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3826,MAIL,HUNTER,ANY_FACTION,3839), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3827,LEATHER,MONK,ANY_FACTION,3840), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3828,PLATE,PALADIN,ANY_FACTION,3841), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3829,CLOTH,PRIEST,ANY_FACTION,3842), -- Forged Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3830,LEATHER,ROGUE,ANY_FACTION,3843), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3831,MAIL,SHAMAN,ANY_FACTION,3844), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3832,PLATE,WARRIOR,ANY_FACTION,3845), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3833,CLOTH,WARLOCK,ANY_FACTION,3846), -- Forged Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 110000
    local sets = {
        -- Nerub-ar Palace
        IncludeSet(COLLECTION,VERSION,3711,PLATE,DEATHKNIGHT,ANY_FACTION,3718,3719,3720), -- Exhumed Centurion's Relics, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3723,LEATHER,DEMONHUNTER,ANY_FACTION,3721,3722,3724), -- Husk of the Hypogeal Nemesis, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3727,LEATHER,DRUID,ANY_FACTION,3726,3725,3728), -- Mane of the Greatlynx, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3731,MAIL,EVOKER,ANY_FACTION,3730,3729,3732), -- Destroyer's Scarred Wards, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3735,MAIL,HUNTER,ANY_FACTION,3733,3734,3736), -- Lightless Scavenger's Necessities, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3739,CLOTH,MAGE,ANY_FACTION,3738,3737,3740), -- Sparks of Violet Rebirth, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3743,LEATHER,MONK,ANY_FACTION,3742,3741,3744), -- Gatecrasher's Fortitude, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3747,PLATE,PALADIN,ANY_FACTION,3745,3746,3748), -- Entombed Seraph's Radiance, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3751,CLOTH,PRIEST,ANY_FACTION,3750,3749,3752), -- Shards of Living Luster, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3755,LEATHER,ROGUE,ANY_FACTION,3754,3753,3756), -- K'areshi Phantom's Bindings, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3759,MAIL,SHAMAN,ANY_FACTION,3757,3758,3760), -- Waves of the Forgotten Reservoir, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3763,CLOTH,WARLOCK,ANY_FACTION,3762,3761,3764), -- Rites of the Hexflame Coven, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3767,PLATE,WARRIOR,ANY_FACTION,3766,3765,3768), -- Warsculptor's Masterwork, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 110000
    local sets = {
        -- Plunderlord's Finery
        IncludeSet(COLLECTION,VERSION,3443,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3875), -- Plunderlord's Radiant Finery, Yellow
        -- Harvest Golem
        IncludeSet(COLLECTION,VERSION,3885,ANY_ARMOR,ANY_CLASS,ANY_FACTION,3886,3887,3888), -- Battered Harvest Golem, Purple, Green, Blue
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 110007
    sets = {
        -- Ornate Lunar Festival Attire
        IncludeSet(COLLECTION,VERSION,4213,ANY_ARMOR,ANY_CLASS,ANY_FACTION,4214,4215,4216), -- Ornate Teal Lunar Festival Attire, Pink, Purple, Teal
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion11Appearances(expansion)
    if expansion.v11 then
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        GetTradingPostAppearances()
    end
end

function SetCollector:GetVersion11Status()
    return SetCollector:GetExpansionStatus("11")
end

function SetCollector:SetVersion11Status()
    SetCollector:SetExpansionStatus("11")
end

