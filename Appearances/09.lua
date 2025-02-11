-- Appearances from Shadowlands (v.9.x)

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

-- Collection Types
local OUTFITS = SetCollector.OUTFITS
local ARTIFACT = SetCollector.ARTIFACT
local LEGENDARY = SetCollector.LEGENDARY
local RAID = SetCollector.RAID
local DUNGEON = SetCollector.DUNGEON
local CHALLENGE = SetCollector.CHALLENGE
local PVP = SetCollector.PVP
local EXPANSION = SetCollector.EXPANSION
local CRAFTED = SetCollector.CRAFTED
local OTHER = SetCollector.OTHER
local CUSTOM = SetCollector.CUSTOM
local HOLIDAY = SetCollector.HOLIDAY

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
    local COLLECTION, VERSION = SetCollector.CRAFTED, 90000
    local sets = {
        CreateSet(COLLECTION,90001,"CR_CLOTH_0901",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_CLOTH_0901",TRANSMOG,A(42985,107361),A(41987,107363),A(41980,107357),A(41989,107365),A(41984,107360),A(41988,107364),A(41986,107362),A(41983,107359))
        ),
        CreateSet(COLLECTION,90001,"CR_LEATHER_0901",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_LEATHER_0901",TRANSMOG,A(42262,106608),A(42166,106610),A(42161,106739),A(42168,106612),A(42164,106607),A(42167,106611),A(42165,106609),A(42163,106588))
        ),
        CreateSet(COLLECTION,90001,"CR_MAIL_0901",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_MAIL_0901",TRANSMOG,A(42440,106656),A(42450,106658),A(42420,106653),A(42460,106660),A(42435,106655),A(42455,106659),A(42445,106657),A(42430,106654))
        ),
        CreateSet(COLLECTION,90001,"CR_PLATE_0901",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_PLATE_0901",TRANSMOG,A(42044,115026),A(42046,115028),A(42040,115023),A(42048,115030),A(42043,115025),A(42047,115029),A(42045,115027),A(42042,115024))
        )
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function Get90000DungeonAppearances(collection)
    local VERSION = 90000
    local LOCATION_01, LOCATION_02, LOCATION_03, LOCATION_04 = "LOC_DG_0901", "LOC_DG_0902", "LOC_DG_0903", "LOC_DG_0904"
    local sets = {
        -- De Other Side/Mists of Tirna Scithe
        CreateSet(collection,90001,"DG_CLOTH_0901",CLOTH,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42610,111439),A(42612,111440),A(42606,111654),A(42614,111441),A(42609,111442),A(42613,111660),A(42611,111667),A(42608,111643))
        ),
        CreateSet(collection,90001,"DG_LEATHER_0901",LEATHER,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42684,111579),A(42686,111661),A(42680,111580),A(42688,111582),A(42683,111655),A(42687,111581),A(42685,111645),A(42682,111668))
        ),
        CreateSet(collection,90001,"DG_MAIL_0901",MAIL,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42653,111443),A(41914,111444),A(41908,111669),A(41916,111446),A(41911,111646),A(41915,111445),A(41913,111656),A(41910,111662))
        ),
        CreateSet(collection,90001,"DG_PLATE_0901",PLATE,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42650,111447),A(42218,111448),A(42220,111663),A(42224,111670),A(42221,111450),A(42222,111647),A(42223,111449),A(42219,111657))
        ),
        -- Halls of Atonement/Sanguine Depths
        CreateSet(collection,90002,"DG_CLOTH_0901",CLOTH,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42601,111557),A(42603,111556),A(42597,111517),A(42605,111544),A(42600,111533),A(42604,111526),A(42602,111538),A(42599,111531))
        ),
        CreateSet(collection,90002,"DG_LEATHER_0901",LEATHER,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42693,111521),A(42695,111555),A(42689,111535),A(42697,111547),A(42692,111532),A(42696,111527),A(42694,111523),A(42691,111537))
        ),
        CreateSet(collection,90002,"DG_MAIL_0901",MAIL,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(41930,111520),A(41932,111525),A(41926,111519),A(41934,111546),A(41929,111541),A(41933,111543),A(41931,111539),A(41928,111530))
        ),
        CreateSet(collection,90002,"DG_PLATE_0901",PLATE,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42235,111516),A(42236,111524),A(42238,111518),A(42242,111545),A(42239,111540),A(42240,111542),A(42241,111522),A(42237,111536))
        ),
        -- Plaguefall/Theater of Pain
        CreateSet(collection,90003,"DG_CLOTH_0901",CLOTH,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42619,111481),A(42621,111511),A(42615,111500),A(42623,111514),A(42618,111585),A(42622,111512),A(42620,111483),A(42617,111478))
        ),
        CreateSet(collection,90003,"DG_LEATHER_0901",LEATHER,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42711,111482),A(42713,111485),A(42707,111503),A(42715,111588),A(42710,111479),A(42714,111513),A(42712,111509),A(42709,111505))
        ),
        CreateSet(collection,90003,"DG_MAIL_0901",MAIL,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(41897,111507),A(41899,111486),A(41894,111502),A(41901,111488),A(41896,111506),A(41900,111587),A(41898,111484),A(41895,111504))
        ),
        CreateSet(collection,90003,"DG_PLATE_0901",PLATE,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42067,111490),A(42068,111510),A(42210,111501),A(42214,111515),A(42211,111492),A(42212,111586),A(42213,111508),A(42209,111491))
        ),
        -- Spires of Ascension/The Necrotic Wake
        CreateSet(collection,90004,"DG_CLOTH_0901",CLOTH,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42628,111458),A(42630,111465),A(42624,112875),A(42632,111498),A(42627,111471),A(42631,112886),A(42629,112884),A(42626,112879))
        ),
        CreateSet(collection,90004,"DG_LEATHER_0901",LEATHER,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42720,112883),A(42722,111496),A(42716,111468),A(42724,111466),A(42719,112880),A(42723,112888),A(42721,112885),A(42718,111457))
        ),
        CreateSet(collection,90004,"DG_MAIL_0901",MAIL,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(43201,111463),A(43203,111459),A(43197,112877),A(43205,112891),A(43200,112882),A(43204,112887),A(43202,111495),A(43199,111469))
        ),
        CreateSet(collection,90004,"DG_PLATE_0901",PLATE,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42244,111494),A(42245,111472),A(42247,112876),A(42251,112890),A(42248,112881),A(42249,111460),A(42250,111464),A(42246,112878))
        )
    }
    AddSetsToDatabase(VERSION, collection, sets)
end

local function Get90100DungeonAppearances(collection)
    local VERSION = 90100
    local LOCATION_05 = "LOC_DG_0905"
    local sets = {
        -- Tazavesh, the Veiled Market
        CreateSet(collection,90005,"DG_CLOTH_0901",CLOTH,ANY_FACTION,LOCATION_05,
            CreateVariant("LOC_DG_0905",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),
        CreateSet(collection,90005,"DG_LEATHER_0901",LEATHER,ANY_FACTION,LOCATION_05,
            CreateVariant("LOC_DG_0905",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),
        CreateSet(collection,90005,"DG_MAIL_0901",MAIL,ANY_FACTION,LOCATION_05,
            CreateVariant("LOC_DG_0905",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),
        CreateSet(collection,90005,"DG_PLATE_0901",PLATE,ANY_FACTION,LOCATION_05,
            CreateVariant("LOC_DG_0905",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        ),
    }
    AddSetsToDatabase(VERSION, collection, sets)
end

local function GetDungeonAppearances()
    local COLLECTION = SetCollector.DUNGEON
    Get90000DungeonAppearances(COLLECTION)
    --Get90100DungeonAppearances(COLLECTION)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 90000

    --local KYRIAN, VENTHYR, NECROLORD, NIGHTFAE = "LOC_KYRIAN", "LOC_VENTHYR", "LOC_NECROLORD", "LOC_NIGHTFAE"
    local sets = {

        -- Pre-patch Set
        CreateSet(COLLECTION,90000,"EX_CLOTH_A_0900",CLOTH,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_CLOTH_A_0900",TRANSMOG,A(37358,114695),A(37230,114692),A(37227,114629),A(37202,114632),A(37200,114653),A(37204,114698),A(37226,114701),A(37205,114644),A(37199,114638))
        ),
        CreateSet(COLLECTION,90000,"EX_LEATHER_A_0900",LEATHER,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_LEATHER_A_0900",TRANSMOG,A(36816,114728),A(36818,114725),A(36813,114704),A(36814,114635),A(36812,114659),A(36815,114641),A(36810,114734),A(36817,114650),A(36811,114731))
        ),
        CreateSet(COLLECTION,90000,"EX_MAIL_A_0900",MAIL,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_MAIL_A_0900",TRANSMOG,A(37262,114740),A(37265,114737),A(37260,114707),A(37259,114746),A(37256,114656),A(37261,114743),A(37257,114752),A(37263,114647),A(37258,114749))
        ),
        CreateSet(COLLECTION,90000,"EX_PLATE_A_0900",PLATE,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_PLATE_A_0900",TRANSMOG,A(37802,114764),A(37804,114758),A(37855,114710),A(37800,114770),A(37805,114755),A(37801,114767),A(37798,114776),A(37803,114761),A(37799,114773))
        ),
        CreateSet(COLLECTION,90000,"EX_CLOTH_H_0900",CLOTH,HORDE,NO_LOCATION,
            CreateVariant("EX_CLOTH_H_0900",TRANSMOG,A(36756,114782),A(36760,114779),A(36958,114713),A(36754,114662),A(36770,114680),A(37071,114785),A(36745,114788),A(36783,114674),A(36767,114671))
        ),
        CreateSet(COLLECTION,90000,"EX_LEATHER_H_0900",LEATHER,HORDE,NO_LOCATION,
            CreateVariant("EX_LEATHER_H_0900",TRANSMOG,A(37424,114794),A(37425,114791),A(36794,114716),A(37396,114668),A(37401,114689),A(37423,114797),A(37421,114803),A(37379,114677),A(37422,114800))
        ),
        CreateSet(COLLECTION,90000,"EX_MAIL_H_0900",MAIL,HORDE,NO_LOCATION,
            CreateVariant("EX_MAIL_H_0900",TRANSMOG,A(38075,114812),A(38077,114806),A(36794,114719),A(38013,114665),A(38078,114686),A(38074,114815),A(38071,114821),A(38076,114810),A(38072,114818))
        ),
        CreateSet(COLLECTION,90000,"EX_PLATE_H_0900",PLATE,HORDE,NO_LOCATION,
            CreateVariant("EX_PLATE_H_0900",TRANSMOG,A(36850,114830),A(36808,114824),A(38337,114722),A(36849,114836),A(36793,114683),A(37082,114833),A(36847,114842),A(37094,114827),A(36848,114839))
        ),

        -- Covenants
        -- Night Fae
        IncludeSet(COLLECTION,90001,2047,2050,2048,2049), -- Winterborn Regalia, Winterborn, Renown, Queen's Conservatory
        IncludeSet(COLLECTION,90001,2051,2053,2052,2054), -- Night Courtier's Raiment, Winterborn, Queen's Conservatory, Renown
        IncludeSet(COLLECTION,90001,2055,2056,2057,2058), -- Winterborn Guise, Queen's Conservatory, Renown, Winterborn
        IncludeSet(COLLECTION,90001,2059,2061,2060,2062), -- Conservator's Warbark, Winterborn, Renown, Queen's Conservatory

        -- Kyrian
        IncludeSet(COLLECTION,90001,2015,2016,2017,2018), -- Vestments of the Discordant, Renown, Path of Ascension, Path of Ascension
        IncludeSet(COLLECTION,90001,2019,2020,2021,2022), -- Garb of the Discordant, Renown, Path of Ascension, Path of Ascension
        IncludeSet(COLLECTION,90001,2023,2025,2024,2026), -- Chain of the Reverent, Renown, Path of Ascension, Path of Ascension
        IncludeSet(COLLECTION,90001,2029,2028,2027,2030), -- Warplate of the Harmonious, Path of Ascension, Path of Ascension, Renown

        -- Venthyr
        IncludeSet(COLLECTION,90001,2066,2065,2064,2063), -- Soulbreaker's Ebony Vestments, Ember Court, Travel Network, Renown
        IncludeSet(COLLECTION,90001,2070,2068,2067,2069), -- Ebony Death Shroud Armor, Ember Court, Renown, Travel Network
        IncludeSet(COLLECTION,90001,2071,2073,2072,2074), -- Fearstalker's Crimson Battlegear, Travel Network, Ember Court, Renown
        IncludeSet(COLLECTION,90001,2075,2077,2076,2078), -- Dread Sentinel's Crimson Battleplate, Ember Court, Travel Network, Renown

        -- Necrolord
        IncludeSet(COLLECTION,90001,2032,2031,2033,2034), -- Horror of Maldraxxus, Renown, Unity, Abominable Stitching
        IncludeSet(COLLECTION,90001,2035,2037,2036,2038), -- Zeal of Maldraxxus, Abominable Stitching, Renown, Unity
        IncludeSet(COLLECTION,90001,2041,2040,2039,2042), -- Alacrity of Maldraxxus, Abominable Stitching, Unity, Renown
        IncludeSet(COLLECTION,90001,2043,2044,2045,2046), -- Mettle of Maldraxxus, Renown, Abominable Stitching, Unity
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90100
    sets = {
        -- Grove Guardian's Regalia
        IncludeSet(COLLECTION,90100,2205,2203,2202,2204), -- Garb of Pure Spirit, Korthia, Renown Quartermaster, Death's Advance

        -- Aspirant's Regalia
        IncludeSet(COLLECTION,90100,2208,2206,2207,2209), -- Devoted Aspirant's Regalia, Death's Advance, Korthia, Renown Quartermaster

        -- Necromantic Vestments
        IncludeSet(COLLECTION,90100,2212,2211,2210,2213), -- Rogue Necromancer's Vestments, Renown Quartermaster, Death's Advance, Korthia

        -- Court Attire
        IncludeSet(COLLECTION,90100,2214,2215,2216,2217), -- Sinful Venthyr Attire, Death's Advance, Korthia, Renown Quartermaster

        -- Inquisitor's Vestments
        IncludeSet(COLLECTION,90100,2218,2220,2219,2221), -- Sinful Inquisitor's Vestments, Korthia, Death's Advance, Renown Quartermaster        
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90205
    sets = {
        IncludeSet(COLLECTION,90205,2481), -- Blood Knight's Dedication
        IncludeSet(COLLECTION,90205,2484), -- Dark Ranger's Attire
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 90000
    local sets = {
        CreateSet(COLLECTION,VERSION,"LG_CLOTH_0901",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_CLOTH_0901",NO_TRANSMOG,I(173245),I(173247),I(173242),I(173241),I(173248),I(173249),I(173244),I(173246),I(173243))
        ),
        CreateSet(COLLECTION,VERSION,"LG_LEATHER_0901",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_LEATHER_0901",NO_TRANSMOG,I(172317),I(172319),I(172314),I(172321),I(172316),I(172320),I(172318),I(172315))
        ),
        CreateSet(COLLECTION,VERSION,"LG_MAIL_0901",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MAIL_0901",NO_TRANSMOG,I(172325),I(172327),I(172322),I(172329),I(172324),I(172328),I(172326),I(172327))
        ),
        CreateSet(COLLECTION,VERSION,"LG_PLATE_0901",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_PLATE_0901",NO_TRANSMOG,I(171415),I(171417),I(171412),I(171409),I(171414),I(171418),I(171416),I(171413))
        )
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 90000
    local sets = {
        -- Leveling Sets
        CreateSet(COLLECTION,VERSION,"OTH_CLOTH_10900",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42005,107437),A(42007,107446),A(42059,107424),A(42000,107425),A(42009,109278),A(42004,107435),A(42008,107449),A(42006,109267),A(42003,107430)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(41965,109103),A(41967,109112),A(41961,109349),A(41959,109091),A(41969,109118),A(41963,109101),A(41968,109115),A(41966,109107),A(41962,109096)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(41975,109303),A(41977,109312),A(41972,109353),A(41970,109291),A(41979,109318),A(41974,109301),A(41978,109315),A(41976,109307),A(41973,109296)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(41995,109071),A(41997,109080),A(42423,109351,41951),A(41990,109123),A(41999,109086),A(41994,109069),A(41998,109083),A(41996,109075),A(41993,109128))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_LEATHER_10900",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42261,107439),A(42158,107444),A(42059,107424),A(42153,107428),A(42160,107455),A(42156,107433),A(42159,107451),A(42157,109269),A(42155,107432)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42259,109105),A(42015,109110),A(41961,109349),A(42010,109094),A(42017,109121),A(42013,109099),A(42016,109117),A(42014,109109),A(42012,109098)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42260,109305),A(42150,109310),A(41972,109353),A(42145,109294),A(42152,109321),A(42148,109299),A(42151,109317),A(42149,109309),A(42147,109298)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(41964,109073),A(41956,109078),A(42423,109351),A(41950,112817),A(41958,109089),A(41953,109067),A(41957,109085),A(41954,109077),A(41952,109130))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_MAIL_10900",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42439,107438),A(42449,107447),A(42059,107424),A(42419,107427),A(42459,107454),A(42434,107436),A(42454,107450),A(42444,109268),A(42429,107431)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42437,109104),A(42447,109113),A(41961,109349),A(42417,109093),A(42457,109120),A(42432,109102),A(42452,109116),A(42442,109108),A(42427,109097)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42436,109304),A(42446,109313),A(41972,109353),A(42416,109293),A(42456,109320),A(42431,109302),A(42451,109316),A(42441,109308),A(42426,109297)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(42438,109072),A(42448,109081),A(42423,109351),A(42418,109061),A(42458,109088),A(42433,109070),A(42453,109084),A(42443,109076),A(42428,109129))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_PLATE_10900",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42062,107423),A(42064,107445),A(42059,107424),A(42058,107426),A(42066,107453),A(42061,107434),A(42065,107448),A(42063,109266),A(42060,107429)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42027,109090),A(42022,109111),A(41961,109349),A(42018,109092),A(42030,109119),A(42021,109100),A(42029,109114),A(42028,109106),A(42020,109095)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42035,109290),A(42037,109311),A(41972,109353),A(42031,109292),A(42039,109319),A(42034,109300),A(42038,109314),A(42036,109306),A(42033,109295)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(42053,109058),A(42055,109079),A(42423,109351),A(42049,109124),A(42057,109087),A(42052,109068),A(42056,109082),A(42054,109074),A(42051,109127))
        ),
        -- CreateVariant("Forgehand's Mail",TRANSMOG,A(181596,43200))
        -- Observer's Trappings
        IncludeSet(SetCollector.OTHER,90100,2200), -- Celestial Observer's Ensemble
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90100
    sets = {
        -- Korthia Catchup Gear
        CreateSet(COLLECTION,VERSION,"OTH_CLOTH_10902",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_KORTHIA",TRANSMOG,A(55591),A(55592),A(55593),A(55594),A(55595),A(55597),A(55598),A(55599),A(55596))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_LEATHER_10902",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_KORTHIA",TRANSMOG,A(55583),A(),A(55582),A(55584),A(55588),A(55585),A(55587),A(55589),A(55586))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_MAIL_10902",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_KORTHIA",TRANSMOG,A(55574),A(55573),A(55576),A(55580),A(55575),A(55581),A(55577),A(55578),A(55579))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_PLATE_10902",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_KORTHIA",TRANSMOG,A(55565),A(55566),A(),A(55567),A(55571),A(55572),A(55568),A(55569),A(55570))
        ),
    }
    --AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Eternity's End, 9.2
    VERSION = 90200
    sets = {
        -- Zerith Mortis Catchup Gear
        CreateSet(COLLECTION,VERSION,"OTH_CLOTH_10904",CLOTH,ANY_FACTION,"LOC_ZERETH_MORTIS",
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56683),A(56684),A(56685),A(56689),A(56690),A(56686),A(56687),A(56688)), -- 56682 back
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56674),A(56675),A(56676),A(56680),A(56681),A(56677),A(56678),A(56679)),
            --CreateVariant("PLACEHOLDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56701),A(56702),A(57175),A(56703),A(56707),A(56708),A(56704),A(56705),A(56706))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_LEATHER_10904",LEATHER,ANY_FACTION,"LOC_ZERETH_MORTIS",
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56841),A(56843),A(56842),A(56847),A(56848),A(56844),A(56845),A(56846)), --  back 56840
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56832),A(56833),A(56834),A(56835),A(56836),A(56837),A(56838),A(56839)),
            --CreateVariant("PLACEHOLDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),
            CreateVariant("PLACEHOLDER",TRANSMOG,A(56859),A(56860),A(57175),A(56861),A(56865),A(56866),A(56862),A(56863),A(56864))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_MAIL_10904",MAIL,ANY_FACTION,"LOC_ZERETH_MORTIS",
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57206),A(57207),A(57157),A(57208),A(57212),A(57213),A(57209),A(57210),A(57211)), -- 57205 back
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57197),A(57198),A(),A(57199),A(57203),A(57204),A(57200),A(57201),A(57202)),
            --CreateVariant("PLACEHOLDER",TRANSMOG,A(57233),A(57234),A(),A(57235),A(57230),A(57231),A(57236),A(57237),A(57238)), -- 57232 back
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57224),A(57225),A(57175),A(57226),A(57230),A(57231),A(57227),A(57228),A(57229))
        ),
        CreateSet(COLLECTION,VERSION,"OTH_PLATE_10904",PLATE,ANY_FACTION,"LOC_ZERETH_MORTIS",
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57149),A(57150),A(57152),A(57151),A(57153),A(57154),A(57155),A(57156),A(57157)), --  back
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57140),A(57141),A(57148),A(57142),A(57146),A(57147),A(57143),A(57144),A(57145)),
            --CreateVariant("PLACEHOLDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A()),
            CreateVariant("PLACEHOLDER",TRANSMOG,A(57167),A(57168),A(57175),A(57169),A(57173),A(57174),A(57170),A(57171),A(57172))
        ),
        IncludeSet(COLLECTION,90105,2292), -- Ravencrest's Battleplate

        --[[IncludeSet(COLLECTION,10903,2292), -- Ravencrest's Battleplate
        IncludeSet(COLLECTION,10903,2306),
        IncludeSet(COLLECTION,10903,2307),
        IncludeSet(COLLECTION,10903,2308),
        IncludeSet(COLLECTION,10903,2309),
        IncludeSet(COLLECTION,10903,2200),]] -- Celestial Observer's Ensemble Cosmetic
    }
    --AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90200
    sets = {
            -- Wrappings of the Phoenix
            IncludeSet(SetCollector.OTHER,90205,2482), -- Fireplume Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 90000

    local sets = {
        -- Shadowlands Season 1
        IncludeSet(SetCollector.PVP,90002,2170,2174), -- Sinful Aspirant's Vestment, Aspirant
        IncludeSet(SetCollector.PVP,90002,2171,2175), -- Sinful Aspirant's Leathers, Aspirant
        IncludeSet(SetCollector.PVP,90002,2172,2176), -- Sinful Aspirant's Chain, Aspirant
        IncludeSet(SetCollector.PVP,90002,2173,2177), -- Sinful Aspirant's Plate, Aspirant
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90100
    sets = {
        -- Shadowlands Season 2
        IncludeSet(SetCollector.PVP,90100,2224,2228,2246), -- Unchained Aspirant's Vestment, Elite, Aspirant
        IncludeSet(SetCollector.PVP,90100,2226,2230,2248), -- Unchained Aspirant's Chain, Elite, Aspirant
        IncludeSet(SetCollector.PVP,90100,2225,2229,2247), -- Unchained Aspirant's Leathers, Elite, Aspirant
        IncludeSet(SetCollector.PVP,90100,2227,2231,2249), -- Unchained Aspirant's Plate, Elite, Aspirant
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90200
    sets = {
        -- Shadowlands Seasons 3 and 4
        IncludeSet(SetCollector.PVP,90200,2498,2569), -- Eternal Gladiator's Dreadplate Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2504,2570), -- Eternal Gladiator's Felskin Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2510,2571), -- Eternal Gladiator's Dragonhide Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2516,2572), -- Eternal Gladiator's Chain Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2522,2573), -- Eternal Gladiator's Silk Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2528,2574), -- Eternal Gladiator's Ironskin Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2534,2575), -- Eternal Gladiator's Scaled Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2540,2576), -- Eternal Gladiator's Satin Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2546,2577), -- Eternal Gladiator's Leather Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2552,2578), -- Eternal Gladiator's Ringmail Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2558,2579), -- Eternal Gladiator's Felweave Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2564,2580), -- Eternal Gladiator's Plate Armor, Elite
        IncludeSet(SetCollector.PVP,90200,2565), -- Eternal Aspirant's Vestment
        IncludeSet(SetCollector.PVP,90200,2566), -- Eternal Aspirant's Leathers
        IncludeSet(SetCollector.PVP,90200,2567), -- Eternal Aspirant's Chain
        IncludeSet(SetCollector.PVP,90200,2568), -- Eternal Aspirant's Plate
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 90000

    local sets = {
        -- Castle Nathria
        IncludeSet(SetCollector.RAID,90002,2150,2152,2151,2153), -- Grand Sentinel's Greatplate, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90002,2154,2155,2156,2157), -- Inexorable Castigator's Guise, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,90002,2158,2160,2159,2161), -- Depraved Beguiler's Visage, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90002,2162,2164,2163,2165), -- Sin Slayer's Leathers, Heroic, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90100
    sets = {
        -- Sanctum of Domination
        IncludeSet(SetCollector.RAID,90100,2250,2251,2252,2253), -- Soulforged Dreadplate, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,90100,2254,2256,2255,2257), -- Tower Ascendant's Battlegear, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90100,2258,2260,2259,2261), -- Sanctum Assailant's Trappings, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90100,2262,2263,2264,2265), -- Dark Supplicant's Garb, Raid Finder, Heroic, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90200
    sets = {
        -- Sepulcher of the First Ones
        IncludeSet(SetCollector.RAID,90200,2348,2350,2349,2351), -- The First Eidolon's Soulsteel, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2354,2356,2355,2357), -- Mercurial Punisher's Painweave, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2360,2362,2361,2363), -- Tapestry of the Fixed Stars, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2366,2368,2367,2369), -- Godstalker's Battlegear, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2372,2374,2373,2375), -- Erudite Occultist's Vestments, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2378,2380,2379,2381), -- Garb of the Grand Upwelling, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2384,2386,2385,2387), -- Luminous Chevalier's Gallantry, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2390,2392,2391,2393), -- Habiliments of the Empyrean, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2396,2398,2397,2399), -- Soulblade Shadowhide, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2402,2404,2403,2405), -- Theurgic Starspeaker's Regalia, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2408,2410,2409,2411), -- Shroud of the Demon Star, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,90200,2414,2416,2415,2417), -- Armaments of the Infinite Infantry, Heroic, Raid Finder, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion09Appearances(expansion)
    if expansion.v09 then
        GetLegendaries()
        GetRaidAppearances()
        GetPvPAppearances()
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
    end
end

function SetCollector:GetVersion09Status()
    return SetCollector:GetExpansionStatus("9")
end

function SetCollector:SetVersion09Status()
    SetCollector:SetExpansionStatus("9")
end
