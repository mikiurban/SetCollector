-- Appearances from Midnight (v.12.x)

--
-- LOCAL VARIABLES
--

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
    -- local COLLECTION, VERSION = SetCollector.CRAFTED, 120000
    -- local sets = {

    -- }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    -- local COLLECTION, VERSION = SetCollector.DUNGEON, 120000
    -- local sets = {

    -- }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 120000
    local sets = {
      -- Elegant Silvermoon Court
      IncludeSet(COLLECTION,VERSION,5384,5387,5386,5388,5383), -- Farstrider's Elegant Regalia, White, Blue, Green, Black

      -- Silvermoon Court Dignitary
      IncludeSet(COLLECTION,VERSION,5392,5389,5391,5393,5390), -- Bloodknight Dignitary's Trappings, White, Blue, Black, Green

      -- Silvermoon Augur's Garments
      IncludeSet(COLLECTION,VERSION,5570,5567,5569,5571,5568), -- Augur's Umbral Garments, Green, Blue, Black, White

      -- Silvermoon Court Socialite
      IncludeSet(COLLECTION,VERSION,5398,5394,5396,5395,5397), -- Haven Socialite's Attire, White, Blue, Black, Green

      -- Silvermoon Courtier's Vestments
      IncludeSet(COLLECTION,0,5557,5560,5559,5561,5558), -- Courtier's Lucent Vestments, Black, Blue, White, Green

      -- Harandar Gear
      IncludeSet(COLLECTION,120000,5626,5350,5546), -- Sprawling Garb, Renown, Delves
      IncludeSet(COLLECTION,120000,5627,5351,5547), -- Osseoclad's Wear, Renown, Delves
      IncludeSet(COLLECTION,120000,5628,5548,5352), -- Elder Moss Outfit, Delves, Renown
      IncludeSet(COLLECTION,120000,5629,5353,5549), -- Rampant Thorn Armor, Renown, Delves

      -- Preyseeker's Armor
      IncludeSet(COLLECTION,120000,5614,5618), -- Preyseeker's Refined Armor, Prey
      IncludeSet(COLLECTION,120000,5615,5619), -- Preyseeker's Sleek Armor, Prey
      IncludeSet(COLLECTION,120000,5616,5620), -- Preyseeker's Rugged Armor, Prey
      IncludeSet(COLLECTION,120000,5617,5621), -- Preyseeker's Polished Armor, Prey
      -- Elaborate Mageweave
      IncludeSet(COLLECTION,120000,5369,5371,5370,5372), -- Elaborate Golden Mageweave, Red, Purple, Yellow

      -- Haranir Starting Experience
      IncludeSet(COLLECTION,120000,5336), -- Haranir Militia Wear

      -- Thalassian Armor
      IncludeSet(COLLECTION,120000,5638,5639,5641,5640,5612), -- Thalassian Mail Armor, Rare Monsters, World Drop, Rare Crafted, Quest Rewards
      IncludeSet(COLLECTION,120000,5630,5632,5631,5633,5610), -- Thalassian Cloth Armor, Rare Crafted, Rare Monsters, World Drop, Quest Rewards
      IncludeSet(COLLECTION,120000,5634,5637,5611,5636,5635), -- Thalassian Leather Armor, World Drop, Quest Rewards, Rare Crafted, Rare Monsters
      IncludeSet(COLLECTION,120000,5642,5644,5613,5643,5645), -- Thalassian Plate Armor, Rare Crafted, Quest Rewards, Rare Monsters, World Drop

      -- Harandar Armor
      IncludeSet(COLLECTION,120000,5626,5350,5546,5622), -- Deepvine Weavings, Renown, Delves, World Quests
      IncludeSet(COLLECTION,120000,5627,5623,5351,5547), -- Verdant Tracker Wrappings, World Quests, Renown, Delves
      IncludeSet(COLLECTION,120000,5628,5548,5624,5352), -- Rootspeaker's Embrace, Delves, World Quests, Renown
      IncludeSet(COLLECTION,120000,5629,5353,5549,5625), -- Steelbark Carapace, Renown, Delves, World Quests

      -- Voidbreaker's Attire
      IncludeSet(COLLECTION,120000,5614), -- Voidbreaker's Threads
      IncludeSet(COLLECTION,120000,5615), -- Voidbreaker's Leathers
      IncludeSet(COLLECTION,120000,5616), -- Voidbreaker's Chainmail
      IncludeSet(COLLECTION,120000,5617), -- Voidbreaker's Bastion

      -- Twilight Ascension
      IncludeSet(COLLECTION,120000,3892,5373), -- Ascension Arrestor's Regalia, Twilight Ascension Vendors and Rare Creatures
      IncludeSet(COLLECTION,120000,3891,5374), -- Ascension Arrestor's Garb, Twilight Ascension Vendors and Rare Creatures
      IncludeSet(COLLECTION,120000,3890,5375), -- Ascension Arrestor's Wear, Twilight Ascension Vendors and Rare Creatures
      IncludeSet(COLLECTION,120000,3889,5376), -- Ascension Arrestor's Armor, Twilight Ascension Vendors and Rare Creatures

      -- Tangled Raiment
      IncludeSet(COLLECTION,120000,5626,5350,5546,5622), -- Valeguard Vestments, Renown, Delves, World Quests
      IncludeSet(COLLECTION,120000,5627,5623,5351,5547), -- Grotto Garb, World Quests, Renown, Delves
      IncludeSet(COLLECTION,120000,5628,5548,5624,5352), -- Rootward Regalia, Delves, World Quests, Renown
      IncludeSet(COLLECTION,120000,5629,5353,5549,5625), -- Blossoming Battleplate, Renown, Delves, World Quests

      -- Hara'ti Attire
      IncludeSet(COLLECTION,120000,5626,5350), -- Hara'ti Rootdancer's Garb, Renown
      IncludeSet(COLLECTION,120000,5627,5351), -- Hara'ti Rootwarden's Wear, Renown
      IncludeSet(COLLECTION,120000,5628,5352), -- Hara'ti Scout's Outfit, Renown
      IncludeSet(COLLECTION,120000,5629,5353), -- Hara'ti Guardian's Armor, Renown

      -- Dragonhawk Rider
      IncludeSet(COLLECTION,120000,5165,5164), -- Lightstrider Raiment, Void

      -- Reponse Team's Armor
      IncludeSet(COLLECTION,120000,5617,5621,5707), -- Response Team's Plate Armor, Prey, Black
      IncludeSet(COLLECTION,120000,5615,5619,5709), -- Response Team's Leather Armor, Prey, Black
      IncludeSet(COLLECTION,120000,5616,5620,5708), -- Response Team's Mail Armor, Prey, Black
      IncludeSet(COLLECTION,120000,5614,5618,5710), -- Response Team's Cloth Armor, Prey, Black
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 120005
    sets = {
      -- (blank)
      IncludeSet(COLLECTION,120005,5688), -- Sire's Ornate Attire

      -- Azshara's Raiment
      IncludeSet(COLLECTION,120005,5667,5668), -- Azshara's Deepscale Raiment, White

      -- WoW's 20th Anniversary
      IncludeSet(COLLECTION,120005,3871,3850), -- Void's Judgment Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3864,5551), -- Void Rider's Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3872,5555), -- Battlegear of Voidrath, Void Assaults
      IncludeSet(COLLECTION,120005,3865,5556), -- Vestments of Voidcendence, Void Assaults
      IncludeSet(COLLECTION,120005,3873,3848), -- Void Nemesis' Raiment, Void Assaults
      IncludeSet(COLLECTION,120005,3866,3855), -- Void Storms Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3867,3854), -- Voidfang Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3868,3853), -- Voidwind Regalia, Void Assaults
      IncludeSet(COLLECTION,120005,3861,5554), -- Battlegear of the Void Acolyte, Void Assaults
      IncludeSet(COLLECTION,120005,3869,5553), -- Voidstalker's Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3862,3859), -- Void-Warder's Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3870,5552), -- Voidrage Armor, Void Assaults
      IncludeSet(COLLECTION,120005,3863,3858), -- Voidwalker's Armor, Void Assaults
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 120007
    sets = {

        }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.EXPANSION, 120100
    sets = {
      -- Amani Gear
      IncludeSet(COLLECTION,120100,5716,5823,5827,5898,5893,5834), -- Pyrewalker's Panoply, Aspirant and War Mode, Dungeons, Delves, World Quests, Prey
      IncludeSet(COLLECTION,120100,5717,5833,5828,5900,5824,5894), -- Miststalker's Harness, Prey, Dungeons, Delves, Aspirant and War Mode, World Quests
      IncludeSet(COLLECTION,120100,5718,5832,5829,5901,5895), -- Galerider's Battlegear, Prey, Dungeons, Delves, World Quests
      IncludeSet(COLLECTION,120100,5719,5896,5830,5902,5831), -- Pledgebearer's Warplate, World Quests, Dungeons, Delves, Prey

      -- Preyhunter's Armor
      IncludeSet(COLLECTION,120100,5719,5830,5831), -- Preyhunter's Polished Armor, Dungeons, Prey
      IncludeSet(COLLECTION,120100,5717,5824,5833,5828), -- Preyhunter's Sleek Armor, Aspirant and War Mode, Prey, Dungeons
      IncludeSet(COLLECTION,120100,5718,5832,5829), -- Preyhunter's Rugged Armor, Prey, Dungeons
      IncludeSet(COLLECTION,120100,5716,5834,5823,5827), -- Preyhunter's Refined Armor, Prey, Aspirant and War Mode, Dungeons

    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 120000
    local sets = {
      -- Candlelight Kobold Romper (in-game store)
      IncludeSet(COLLECTION,120000,5405,5407,5406,5408), -- Tan Candlelight Kobold Romper, Brown, Blue, Tan
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 120005
    sets = {
      -- Painted Battle Garb
      IncludeSet(COLLECTION,120005,5657,5659,5658,5660), -- Dawnchaser's Painted Battle Garb, Gold, Dark, White

      -- Gilneas Streetwear
      IncludeSet(COLLECTION,120005,5653,5654,5655,5656), -- Ambermill Rebel Streetware, Green, Gold, Purple
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 120007
    sets = {
      -- Timewalking
      IncludeSet(COLLECTION, VERSION,5410), -- Ensemble: Winter's Dreaming Garb
      -- Petalweave (In-game Shop)
      IncludeSet(COLLECTION,120007,5691,5692,5693,5694), -- Azure Petalweave, Red, Pink, Blue
      -- 2026 "World of Warcraft Blizzcon Bundle"
      IncludeSet(COLLECTION,120007,5715), -- Dawnfire Phoenix
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 120100
    sets = {
      -- Shen'dorei Battlegarb (WoW Forever pre-sale)
      IncludeSet(COLLECTION,120100,5700,5701,5702,5703), -- Shen'dorei Skyseer's Garb, Green, White, Grey
      -- WoW Forever collector edition
      IncludeSet(COLLECTION,120100,5914), -- Veteran Adventurer's Outdoor Wear
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 120000
    local sets = {
      -- Midnight Season 1
      IncludeSet(COLLECTION,120000,5350,5469), -- Galactic Aspirant's Silk Armor, Aspirant
      IncludeSet(COLLECTION,120000,5575,5588), -- Galactic Gladiator's Chain Armor, Elite
      IncludeSet(COLLECTION,120000,5579,5592), -- Galactic Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120000,5583,5596), -- Galactic Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120000,5351,5470), -- Galactic Aspirant's Leather Armor, Aspirant
      IncludeSet(COLLECTION,120000,5572,5585), -- Galactic Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120000,5576,5589), -- Galactic Gladiator's Chain Armor, Elite
      IncludeSet(COLLECTION,120000,5580,5593), -- Galactic Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120000,5584,5597), -- Galactic Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120000,5352,5471), -- Galactic Aspirant's Chain Armor, Aspirant
      IncludeSet(COLLECTION,120000,5573,5586), -- Galactic Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120000,5577,5590), -- Galactic Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120000,5581,5594), -- Galactic Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120000,5353,5472), -- Galactic Aspirant's Plate Armor, Aspirant
      IncludeSet(COLLECTION,120000,5574,5587), -- Galactic Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120000,5578,5591), -- Galactic Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120000,5582,5595), -- Galactic Gladiator's Chain Armor, Elite

      -- Voidstorm Gear
      IncludeSet(COLLECTION,120000,5476), -- Galactic Warmonger's Chain Armor
      IncludeSet(COLLECTION,120000,5474), -- Galactic Warmonger's Silk Armor
      IncludeSet(COLLECTION,120000,5475), -- Galactic Warmonger's Leather Armor
      IncludeSet(COLLECTION,120000,5477), -- Galactic Warmonger's Plate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.PVP, 120100
    sets = {
      -- Midnight Season 2
      IncludeSet(COLLECTION,120100,5734,5740), -- Venomous Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120100,5769,5775), -- Venomous Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120100,5719,5896,5830,5902,5826,5831), -- Venomous Skirmisher's Plate Armor, World Quests, Dungeons, Delves, Aspirant and War Mode, Prey
      IncludeSet(COLLECTION,120100,5727,5733), -- Venomous Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120100,5762,5768), -- Venomous Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120100,5716,5823), -- Venomous Skirmisher's Silk Armor, Aspirant and War Mode
      IncludeSet(COLLECTION,120100,5813,5819), -- Venomous Gladiator's Plate Armor, Elite
      IncludeSet(COLLECTION,120100,5755,5761), -- Venomous Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120100,5790,5796), -- Venomous Gladiator's Chain Armor, Elite
      IncludeSet(COLLECTION,120100,5806,5812), -- Venomous Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120100,5717,5824), -- Venomous Skirmisher's Leather Armor, Aspirant and War Mode
      IncludeSet(COLLECTION,120100,5783,5789), -- Venomous Gladiator's Chain Armor, Elite
      IncludeSet(COLLECTION,120100,5799,5805), -- Venomous Gladiator's Leather Armor, Elite
      IncludeSet(COLLECTION,120100,5741,5747), -- Venomous Gladiator's Chain Armor, Elite
      IncludeSet(COLLECTION,120100,5776,5782), -- Venomous Gladiator's Silk Armor, Elite
      IncludeSet(COLLECTION,120100,5718,5832,5825,5829,5901,5895), -- Venomous Skirmisher's Chain Armor, Prey, Aspirant and War Mode, Dungeons, Delves, World Quests
      IncludeSet(COLLECTION,120100,5748,5754), -- Venomous Gladiator's Leather Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 120000
    local sets = {
      -- The Voidspire
      IncludeSet(COLLECTION,120000,5446,5447,5445,5448), -- Luminant Verdict's Vestments, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5462,5461,5463,5464), -- Reign of the Abyssal Immolator, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120000,5418,5419,5417,5420), -- Relentless Rider's Lament, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5434,5435,5433,5436), -- Primal Sentry's Camouflage, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5450,5449,5451,5452), -- Blind Oath's Burden, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120000,5466,5467,5465,5468), -- Rage of the Night Ender, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5422,5423,5421,5424), -- Devouring Reaver's Sheathe, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5438,5437,5439,5440), -- Voidbreaker's Accordance, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120000,5454,5455,5453,5456), -- Motley of the Grim Jest, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5426,5425,5427,5428), -- Sprouts of the Luminous Bloom, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120000,5442,5443,5441,5444), -- Way of Ra-den's Chosen, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5458,5459,5457,5460), -- Mantle of the Primal Core, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120000,5430,5431,5429,5432), -- Livery of the Black Talon, Heroic, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 120100
    sets = {
      -- The Venomous Abyss
      IncludeSet(COLLECTION,120100,5866,5867,5865,5868), -- Radiance of the Consecrated Flame, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5882,5881,5883,5884), -- Damned Necrolyte's Shattered Restraints, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120100,5838,5839,5837,5840), -- Baleful Grave-Knight's Crucible, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5854,5855,5853,5856), -- Skulking Viper's Ambush, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5870,5869,5871,5872), -- Cosmic Penitent's Raiment, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120100,5886,5887,5885,5888), -- Jade Warlord's Dominion, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5842,5843,5841,5844), -- Abyssal Doomhound's Pursuit, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5858,5857,5859,5860), -- Primal Leywarden's Attire, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120100,5874,5875,5873,5876), -- Chosen Bloodslayer's Hexweave, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5846,5845,5847,5848), -- Bark of the Enigmatic Dreamwatcher, Raid Finder, Heroic, Mythic
      IncludeSet(COLLECTION,120100,5862,5863,5861,5864), -- Guile of the Monkey King, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5878,5879,5877,5880), -- Ophidian Oracle's Prophecy, Heroic, Raid Finder, Mythic
      IncludeSet(COLLECTION,120100,5850,5851,5849,5852), -- Echo of Calamity, Heroic, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 120000
    local sets = {

    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 120007
    sets = {

    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 120007
    sets = {
      -- Badlands Justice
      IncludeSet(COLLECTION,120007,5695,5697,5699,5696,5698), -- Midnight Outlaw, Purple, Black, Red, Orange
      -- Painted Battle Garb
      IncludeSet(COLLECTION,120007,5657,5713), -- Sun Festival's Painted Battle Garb, Orange
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.TRADING, 120100
    sets = {
      -- Assassin's Attire
      IncludeSet(COLLECTION,120100,5889,5890,5891,5892), -- Moonlit Assassin's Attire, Green, Red, White
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion12Appearances(expansion)
    if expansion.v12 then
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        GetTradingPostAppearances()
    end
end
