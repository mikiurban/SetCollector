-- Appearances from The War Within (v.11.x)

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
        IncludeSet(COLLECTION,VERSION,3552,3554,3555,3556,3553), -- Mossy Cartographer's Orientation, Red, Purple, Green, Teal
        -- Artisan's Talent
        IncludeSet(COLLECTION,VERSION,3547,3548,3549,3550,3551), -- Sooty Artisan's Talent, Purple, Green, Blue, Black
        -- Quotidian Wear
        IncludeSet(COLLECTION,VERSION,3530,3527,3528,3529,3531), -- Taupe Quotidian Wear, Yellow, Red, Green, Blue
        -- Patron's Elegance
        IncludeSet(COLLECTION,VERSION,3534,3533,3535,3536,3532), -- Court Patron's Elegance, Purple, Blue, Black, Red
        -- Toiler's Uniform
        IncludeSet(COLLECTION,VERSION,3545,3542,3543,3544,3546), -- Toiler's Navy Uniform, Red, Green, Burgundy, Blue
        -- Peddler's Trinkets
        IncludeSet(COLLECTION,VERSION,3537,3540,3541,3538,3539), -- Occult Peddler's Trinkets, Blue, Black, Purple, Green
        -- Educator's Knowledge
        IncludeSet(COLLECTION,VERSION,3525,3526,3522,3523,3524), -- Midnight Educator's Knowledge, Black, Red, Purple, Green


        -- Honorary Councilmember's Mandate
        IncludeSet(COLLECTION,VERSION,3519,3874,4229,3883), -- Awakened Ambassador's Silver Drapery, Unique Creatures, Silver, Awakened
        -- Hallowfall Quests
        IncludeSet(COLLECTION,VERSION,3518,3876), -- Misplaced Arathi Attire, Dark
        -- Coreway Regalia
        IncludeSet(COLLECTION,VERSION,3891), -- Coreway Regalia
        -- Threads of Awakening
        IncludeSet(COLLECTION,VERSION,3892), -- Threads of Awakening
        -- Algari Chainmail
        IncludeSet(COLLECTION,VERSION,3890), -- Algari Chainmail
        -- Dorn Defender Armaments
        IncludeSet(COLLECTION,VERSION,3889), -- Dorn Defender Armaments
        -- (blank)
        IncludeSet(COLLECTION,VERSION,3520), -- Finery of the Assembly
        IncludeSet(COLLECTION,VERSION,3521), -- Thread-Bearer's Carapace
        -- Underground Gear
        IncludeSet(COLLECTION,VERSION,3640), -- Delver's Cloth Armor
        IncludeSet(COLLECTION,VERSION,3642), -- Delver's Mail Armor
        IncludeSet(COLLECTION,VERSION,3641), -- Delver's Leather Armor
        IncludeSet(COLLECTION,VERSION,3643), -- Delver's Plate Armor
        -- Spreading the Light
        IncludeSet(COLLECTION,VERSION,3518,3877,3876), -- Darkened Arathi Attire, Purple, Dark
        -- Hallowfall Gear
        IncludeSet(COLLECTION,VERSION,3879), -- Aegis of Hidden Stars, Aspirant, Delves
        IncludeSet(COLLECTION,VERSION,3880), -- Myconic Shell, Delves, Aspirant
        IncludeSet(COLLECTION,VERSION,3878), -- Chains of the Stygian Sea, Aspirant, Delves
        IncludeSet(COLLECTION,VERSION,3881), -- Unkindled Waxweave Panoply, Aspirant, Delves
        -- Hallowfall Arathi Renown
        IncludeSet(COLLECTION,VERSION,3518), -- Expeditionary Arathi Attire
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 110005
    sets = {
        -- Rare Monster Hunting
        IncludeSet(COLLECTION,VERSION,4149), -- Khaz Algar Trophymaster's Plate Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4150), -- Khaz Algar Trophymaster's Mail Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4151), -- Khaz Algar Trophymaster's Leather Armor, Rare Monsters
        IncludeSet(COLLECTION,VERSION,4152), -- Khaz Algar Trophymaster's Cloth Armor, Rare Monsters
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 110007
    sets = {
        -- Siren Isle
        IncludeSet(COLLECTION,VERSION,3518,4228,4227), -- Sacred Wayfarer's Attire, Yellow, Black
        -- Plunderlord's Stormridden Finery
        IncludeSet(COLLECTION,VERSION,4175), -- Plunderlord's Stormridden Finery
        -- Clockwork Collection
        IncludeSet(COLLECTION,VERSION,4208,4210,4209,4211), -- Violet Clockwork Attire, Green, Gold, Purple
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 110100
    sets = {
        -- Cosmetic Armor Vendor
        IncludeSet(COLLECTION,110100,4265,4334,4266,4336,4333,4335), -- Blackwater Bruiser's Attire, Green, Purple, Blue, Yellow, Red
        -- The Cartels of Undermine
        IncludeSet(COLLECTION,110100,4265,4266), -- Undermine Enforcer's Attire, Purple
        IncludeSet(COLLECTION,110100,4342,4351), -- Smartest in Town, Renown
        IncludeSet(COLLECTION,110100,4343,4352), -- Toughest in Town, Renown
        IncludeSet(COLLECTION,110100,4344,4350), -- Slickest in Town, Renown
        IncludeSet(COLLECTION,110100,4345,4353), -- Craftiest in Town, Renown

        -- Undermine Outdoor Activities
        IncludeSet(COLLECTION,110100,4342,4351,4358,4354), -- Laundered Attire, Renown, World Drops, World Quests and World Drops
        IncludeSet(COLLECTION,110100,4343,4357,4352,4361), -- Descaled Wear, World Quests and World Drops, Renown, World Drops
        IncludeSet(COLLECTION,110100,4344,4359,4355,4350), -- Upcycled Outfit, World Drops, World Quests and World Drops, Renown
        IncludeSet(COLLECTION,110100,4345,4360,4353,4356), -- Power-Washed Wardrobe, World Drops, Renown, World Quests and World Drops

        -- Undermine Gear
        IncludeSet(COLLECTION,110100,4337,4267), -- Noxious Injector Apparatus, Delves
        IncludeSet(COLLECTION,110100,4338,4268), -- Nitroclad Kit, Delves
        IncludeSet(COLLECTION,110100,4339,4269), -- Blastborne Loadout, Delves
        IncludeSet(COLLECTION,110100,4340,4270), -- Junkreaver's Apparel, Delves
        IncludeSet(COLLECTION,110100,4342,4351,4354), -- Mindboost Scholar Regalia, Renown, World Quests and World Drops
        IncludeSet(COLLECTION,110100,4343,4357,4352), -- Rustfang Rebel Gear, World Quests and World Drops, Renown
        IncludeSet(COLLECTION,110100,4344,4355,4350), -- Smoketrail Racer Suit, World Quests and World Drops, Renown
        IncludeSet(COLLECTION,110100,4345,4353,4356), -- Dustfire Outlaw Attire, Renown, World Quests and World Drops

        -- Cartels Bestie
        IncludeSet(COLLECTION,110100,4265), -- Goblin Bruiser's Attire

        -- Vestments of the Heavens
        IncludeSet(COLLECTION,110100,4206,4207), -- Radiant Vestments of the Heavens, Purple
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 110000
    local sets = {
        -- Heritage Armor
        IncludeSet(COLLECTION,VERSION,3700,3702,3701), -- Heritage of Khaz Algar, Gundargaz, Freywold
        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 110005
    sets = {
        -- WoW's 20th Anniversary
        IncludeSet(COLLECTION,VERSION,3871), -- Eternal Judgment Armor
        IncludeSet(COLLECTION,VERSION,3864), -- Pale Rider's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3872), -- Eternal Battlegear of Wrath
        IncludeSet(COLLECTION,VERSION,3865), -- Eternal Vestments of Transcendence
        IncludeSet(COLLECTION,VERSION,3873), -- Eternal Nemesis Raiment
        IncludeSet(COLLECTION,VERSION,3866), -- The Eternal Ten Storms Armor
        IncludeSet(COLLECTION,VERSION,3867), -- Eternal Bloodfang Armor
        IncludeSet(COLLECTION,VERSION,3868), -- Eternal Netherwind Regalia
        IncludeSet(COLLECTION,VERSION,3861), -- Eternal Battlegear of the August Acolyte
        IncludeSet(COLLECTION,VERSION,3869), -- Dragonstalker's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3862), -- Earth-Warder's Eternal Armor
        IncludeSet(COLLECTION,VERSION,3870), -- Eternal Stormrage Armor
        IncludeSet(COLLECTION,VERSION,3863), -- Netherwalker's Eternal Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 110007
    sets = {
        -- Timewalking: Cataclysm: PVP
        IncludeSet(COLLECTION,VERSION,4234), -- Vestments of the Twisted Grove
        IncludeSet(COLLECTION,VERSION,4235), -- Twilight Zealot's Battleplate
        IncludeSet(COLLECTION,VERSION,4236), -- Twilight Hunter's Guise
        IncludeSet(COLLECTION,VERSION,4238), -- Twilight Acolyte's Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 110000
    local sets = {
        -- The War Within Season 1
        IncludeSet(SetCollector.PVP,110000,3655,3696), -- Forged Aspirant's Plate Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3656,3697), -- Forged Aspirant's Chain Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3657,3698), -- Forged Aspirant's Leather Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3658,3699), -- Forged Aspirant's Silk Armor, Aspirant
        IncludeSet(SetCollector.PVP,110000,3821,3834), -- Forged Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3822,3835), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3823,3836), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3824,3837), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3825,3838), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3826,3839), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3827,3840), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3828,3841), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3829,3842), -- Forged Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3830,3843), -- Forged Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3831,3844), -- Forged Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3832,3845), -- Forged Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,110000,3833,3846), -- Forged Gladiator's Silk Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.PVP, 110100
    sets = {
        -- The War Within Season 2
        IncludeSet(COLLECTION,110100,4006,4019), -- Prized Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,110100,4007,4020), -- Prized Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,110100,4008,4021), -- Prized Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,110100,4009,4022), -- Prized Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,110100,4010,4023), -- Prized Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,110100,4011,4024), -- Prized Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,110100,4012,4025), -- Prized Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,110100,4013,4026), -- Prized Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,110100,4014,4027), -- Prized Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,110100,4015,4028), -- Prized Gladiator's Leather Armor, Elite
        IncludeSet(COLLECTION,110100,4016,4029), -- Prized Gladiator's Chain Armor, Elite
        IncludeSet(COLLECTION,110100,4017,4031), -- Prized Gladiator's Plate Armor, Elite
        IncludeSet(COLLECTION,110100,4018,4030), -- Prized Gladiator's Silk Armor, Elite
        IncludeSet(COLLECTION,110100,4337,4267), -- Prized Aspirant's Silk Armor, Delves
        IncludeSet(COLLECTION,110100,4338,4268), -- Prized Aspirant's Leather Armor, Delves
        IncludeSet(COLLECTION,110100,4339,4269), -- Prized Aspirant's Chain Armor, Delves
        IncludeSet(COLLECTION,110100,4340,4270), -- Prized Aspirant's Plate Armor, Delves
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 110000
    local sets = {
        -- Nerub-ar Palace
        IncludeSet(COLLECTION,VERSION,3711,3718,3719,3720), -- Exhumed Centurion's Relics, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3723,3721,3722,3724), -- Husk of the Hypogeal Nemesis, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3727,3726,3725,3728), -- Mane of the Greatlynx, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3731,3730,3729,3732), -- Destroyer's Scarred Wards, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3735,3733,3734,3736), -- Lightless Scavenger's Necessities, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3739,3738,3737,3740), -- Sparks of Violet Rebirth, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3743,3742,3741,3744), -- Gatecrasher's Fortitude, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3747,3745,3746,3748), -- Entombed Seraph's Radiance, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3751,3750,3749,3752), -- Shards of Living Luster, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3755,3754,3753,3756), -- K'areshi Phantom's Bindings, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3759,3757,3758,3760), -- Waves of the Forgotten Reservoir, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3763,3762,3761,3764), -- Rites of the Hexflame Coven, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,VERSION,3767,3766,3765,3768), -- Warsculptor's Masterwork, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 110100
    sets = {
        -- Liberation of Undermine
        IncludeSet(COLLECTION,110100,4277,4276,4275,4278), -- Cauldron Champion's Encore, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,110100,4281,4279,4280,4282), -- Fel-Dealer's Contraband, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4285,4283,4284,4286), -- Roots of Reclaiming Blight, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4289,4288,4287,4290), -- Opulent Treasurescale's Hoard, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,110100,4293,4291,4292,4294), -- Tireless Collector's Bounties, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4297,4295,4296,4298), -- Jewels of the Aspectral Emissary, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4301,4300,4299,4302), -- Ageless Serpent's Foresight, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,110100,4305,4303,4304,4306), -- Oath of the Aureate Sentry, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4309,4307,4308,4310), -- Confessor's Unshakable Virtue, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4313,4312,4311,4314), -- Spectral Gambler's Last Call, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,110100,4317,4315,4316,4318), -- Currents of the Gale Sovereign, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4321,4319,4320,4322), -- Spliced Fiendtrader's Influence, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,110100,4325,4324,4323,4326), -- Enforcer's Backalley Brawlplate, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 110000
    local sets = {
        -- Plunderlord's Finery
        IncludeSet(COLLECTION,VERSION,3443,3875), -- Plunderlord's Radiant Finery, Yellow
        -- Harvest Golem
        IncludeSet(COLLECTION,VERSION,3885,3886,3887,3888), -- Battered Harvest Golem, Purple, Green, Blue
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 110007
    sets = {
        -- Ornate Lunar Festival Attire
        IncludeSet(COLLECTION,VERSION,4213,4214,4215,4216), -- Ornate Teal Lunar Festival Attire, Pink, Purple, Teal
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 110007
    sets = {
         -- Ornaments of the Butterfly
        IncludeSet(COLLECTION,110100,4261,4262,4263,4264), -- Ornaments of the Pearlescent Butterfly, Pink, Red, Purple
        -- Garden Dweller's Collection
        IncludeSet(COLLECTION,110100,4271,4273,4272,4274), -- Forest Dweller's Rooted Attire, Purple, Pink, Blue
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

