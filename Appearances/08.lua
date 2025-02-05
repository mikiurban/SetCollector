-- Appearances from Battle for Azeroth (v.8.x)

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

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 80000
    local LOCATION_01, LOCATION_02, LOCATION_03 = "LOC_DG_0801", "LOC_DG_0802", "LOC_DG_0803"
    local sets = {
        -- Kul'Tiras
        CreateSet(COLLECTION,80001,"DG_CLOTH_0801",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0801",TRANSMOG,A(37957),A(37959),A(37955),A(37960),A(37956),A(37953),A(37958),A(37954))
        ),
        CreateSet(COLLECTION,80001,"DG_LEATHER_0801",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0801",TRANSMOG,A(37466),A(37468),A(37464),A(37463),A(37465),A(37461),A(37467),A(37462))
        ),
        CreateSet(COLLECTION,80001,"DG_MAIL_0801",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0801",TRANSMOG,A(37528),A(37530),A(37525),A(37532),A(37527),A(37531),A(37529),A(37524))
        ),
        CreateSet(COLLECTION,80001,"DG_PLATE_0801",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0801",TRANSMOG,A(36613),A(36617),A(36637),A(36633),A(36641),A(36609),A(36645),A(36629))
        ),
        -- Zandalar
        CreateSet(COLLECTION,80002,"DG_CLOTH_0801",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0802",TRANSMOG,A(37167),A(37169),A(37165),A(37163),A(37166),A(37162),A(37168),A(37164))
        ),
        CreateSet(COLLECTION,80002,"DG_LEATHER_0801",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0802",TRANSMOG,A(37342),A(37344),A(37340),A(37345),A(37341),A(37338),A(37343),A(37339))
        ),
        CreateSet(COLLECTION,80002,"DG_MAIL_0801",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0802",TRANSMOG,A(38128),A(38130),A(38125),A(38131),A(38127),A(38157),A(38129),A(38124))
        ),
        CreateSet(COLLECTION,80002,"DG_PLATE_0801",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0802",TRANSMOG,A(36933),A(36945),A(36929),A(36925),A(36934),A(36917),A(36941),A(36921))
        ),
        -- Operation: Mechagon
        CreateSet(COLLECTION,80003,"DG_CLOTH_0801",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0803",TRANSMOG,A(37968),A(37964),A(37969),A(37965),A(37962),A(37967),A(37963))
        ),
        CreateSet(COLLECTION,80003,"DG_LEATHER_0801",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0803",TRANSMOG,A(37481),A(37477),A(37482),A(37478),A(37469),A(37480),A(37476))
        ),
        CreateSet(COLLECTION,80003,"DG_MAIL_0801",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0803",TRANSMOG,A(37514),A(37506),A(37504),A(37507),A(37502),A(37513),A(37503))
        ),
        CreateSet(COLLECTION,80003,"DG_PLATE_0801",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0803",TRANSMOG,A(36619),A(36639),A(36635),A(36643),A(36611),A(36647),A(36631))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    sets = {
        -- Shrine of the Storm
        IncludeSet(SetCollector.OTHER,80001,1637,CLOTH,ANY_CLASS,ANY_FACTION), -- Vestments of the Tidesages
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 80000
    local sets = {

        -- Arathi Warfront (in PvP Set)

        -- Island Expeditions (May be appearances from earlier sets)
        CreateSet(COLLECTION,80004,"ISLAND_EXPEDITIONS",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(15699),A(15702),A(15701),A(15703),A(15698),A(15695),A(15700),A(15696)),
            CreateVariant("2",TRANSMOG,A(5954),A(5957),A(2044),A(1190),A(5956),A(2059),A(5955),A(5283)),
            CreateVariant("3",TRANSMOG,A(39765),A(26513),A(26625),A(26521),A(26517)),
            CreateVariant("4",TRANSMOG,A(15963),A(15966),A(15965),A(15967),A(15962),A(15959),A(15964),A(15960)),
            CreateVariant("5",TRANSMOG,A(31884),A(31888),A(31887),A(31883),A(31880),A(31885),A(31881))
        ),
        CreateSet(COLLECTION,80003,"ISLAND_EXPEDITIONS",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("6",TRANSMOG,A(15745),A(15748),A(15747),A(15749),A(15744),A(15741),A(15746),A(15742))
        ),
        CreateSet(COLLECTION,80004,"ISLAND_EXPEDITIONS",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(28024),A(28025),A(28022),A(28027),A(28023),A(28020),A(28026),A(28021)),
            CreateVariant("2",TRANSMOG,A(31640),A(31642),A(31644),A(31643),A(31639),A(31636),A(31641),A(31637)),
            CreateVariant("3",TRANSMOG,A(18799),A(18803),A(18801),A(18804),A(18718),A(18798),A(18802),A(18800)),
            CreateVariant("4",TRANSMOG,A(18973),A(18970),A(18971),A(19007),A(18974),A(19164),A(18974),A(19019)),
            CreateVariant("5",TRANSMOG,A(15842),A(15844),A(15840),A(15845),A(15841),A(15838),A(15843),A(15839))
        ),
        CreateSet(COLLECTION,80003,"ISLAND_EXPEDITIONS",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("6",TRANSMOG,A(28409),A(38655),A(38651),A(38656),A(38652),A(38649),A(38654),A(38650)),
            CreateVariant("7",TRANSMOG,A(15117),A(15115),A(15119),A(15114),A(15118),A(15121),A(15116),A(15120))
        ),
        CreateSet(COLLECTION,80003,"ISLAND_EXPEDITIONS",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(38627),A(38624),A(8628),A(8701),A(8700),A(38631),A(8699),A(38632)),
            CreateVariant("2",TRANSMOG,A(15066),A(15068),A(13613),A(15069),A(15065),A(13593),A(15067),A(15064)),
            CreateVariant("3",TRANSMOG,A(31650),A(31652),A(31648),A(31653),A(31649),A(31646),A(31651),A(31647))
        ),
        CreateSet(COLLECTION,80004,"ISLAND_EXPEDITIONS",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("1",TRANSMOG,A(22632),A(22634),A(22630),A(22635),A(22631),A(22628),A(22633),A(22629)),
            CreateVariant("2",TRANSMOG,A(16686),A(16688),A(16684),A(16689),A(16685),A(16682),A(16687),A(16683)),
            CreateVariant("3",TRANSMOG,A(20077),A(20079),A(20075),A(20080),A(20076),A(20073),A(20078),A(20074)),
            CreateVariant("4",TRANSMOG,A(28397),A(28399),A(28395),A(28400),A(28396),A(28393),A(28398),A(28394)),
            CreateVariant("5",TRANSMOG,A(15665),A(15667),A(15669),A(15668),A(15664),A(15661),A(15666),A(15662))
        ),
        CreateSet(COLLECTION,80003,"ISLAND_EXPEDITIONS",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("6",TRANSMOG,A(38642),A(38643),A(15490),A(15519),A(15504),A(36033),A(15485),A(38644)),
            CreateVariant("7",TRANSMOG,A(15144),A(15146),A(15142),A(15147),A(15143),A(15140),A(15145),A(15141))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 80300
    local sets = {
        CreateSet(COLLECTION,80001,"LG_120",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("RANK_1_TO_5",TRANSMOG,A(40845,105938)),
            CreateVariant("RANK_6_TO_11",TRANSMOG,A(40846,105939)),
            CreateVariant("RANK_12_PLUS",TRANSMOG,A(40847,105940))
        )
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 80000
    local sets = {
        -- Kul'Tiran Leveling Sets
        CreateSet(COLLECTION,80001,"OTH_CLOTH_A_110",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_A_1",TRANSMOG,A(35986),A(35988),A(35984),A(35989),A(35985),A(35982),A(35987),A(35983)), -- Stormsong
            CreateVariant("ZONE_A_2",TRANSMOG,A(35994),A(35996),A(35992),A(35997),A(35993),A(35990),A(35995),A(35991)), -- Tiragarde Sound
            CreateVariant("ZONE_A_3",TRANSMOG,A(35978),A(35980),A(35976),A(35981),A(35977),A(35974),A(35979),A(35975)) -- Drustvar
        ),
        CreateSet(COLLECTION,80001,"OTH_LEATHER_A_110",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_A_1",TRANSMOG,A(36281),A(36283),A(36279),A(36284),A(36280),A(36277),A(36282),A(36278)), -- Stormsong
            CreateVariant("ZONE_A_2",TRANSMOG,A(36289),A(36291),A(36287),A(36292),A(36288),A(36285),A(36290),A(36286)), -- Tiragarde Sound
            CreateVariant("ZONE_A_3",TRANSMOG,A(36273),A(36275),A(36271),A(36276),A(36272),A(36269),A(36274),A(36270)) -- Drustvar
        ),
        CreateSet(COLLECTION,80001,"OTH_MAIL_A_110",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_A_1",TRANSMOG,A(36063),A(36065),A(36061),A(36066),A(36062),A(36059),A(36064),A(36060)), -- Stormsong
            CreateVariant("ZONE_A_2",TRANSMOG,A(36073),A(36075),A(36071),A(36076),A(36072),A(36069),A(36074),A(36070)), -- Tiragarde Sound
            CreateVariant("ZONE_A_3",TRANSMOG,A(36081),A(36083),A(36079),A(36084),A(36080),A(36077),A(36082),A(36078)) -- Drustvar
        ),
        CreateSet(COLLECTION,80001,"OTH_PLATE_A_110",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_A_1",TRANSMOG,A(36175),A(36177),A(36173),A(36178),A(36174),A(36171),A(36176),A(36172)), -- Stormsong
            CreateVariant("ZONE_A_2",TRANSMOG,A(36167),A(36169),A(36165),A(36170),A(36189),A(36163),A(36168),A(36164)), -- Tiragarde Sound
            CreateVariant("ZONE_A_3",TRANSMOG,A(36159),A(36161),A(36157),A(36162),A(36158),A(36155),A(36160),A(36156)) -- Drustvar
        ),
        -- Zandalar Leveling Sets
        CreateSet(COLLECTION,80002,"OTH_CLOTH_H_110",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_H_1",TRANSMOG,A(36317),A(36359),A(36356),A(36357),A(36355),A(36353),A(36352),A(36354)), -- Vol'dun
            CreateVariant("ZONE_H_2",TRANSMOG,A(36358),A(36322),A(36318),A(36323),A(36324),A(36319),A(36320),A(36321)), -- Nazmir
            CreateVariant("ZONE_H_3",TRANSMOG,A(36363),A(36366),A(36365),A(36367),A(36362),A(36360),A(36364),A(36361)) -- Zuldazar
        ),
        CreateSet(COLLECTION,80002,"OTH_LEATHER_H_110",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_H_1",TRANSMOG,A(35938),A(35940),A(35936),A(35941),A(35937),A(35934),A(35939),A(35935)), -- Vol'dun
            CreateVariant("ZONE_H_2",TRANSMOG,A(35960),A(35962),A(35958),A(35963),A(35959),A(35956),A(35961),A(35957)), -- Nazmir
            CreateVariant("ZONE_H_3",TRANSMOG,A(35951),A(35953),A(35949),A(35954),A(35950),A(35947),A(35952),A(35948)) -- Zuldazar
        ),
        CreateSet(COLLECTION,80002,"OTH_MAIL_H_110",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_H_1",TRANSMOG,A(36013),A(36015),A(36011),A(36016),A(36012),A(36009),A(36014),A(36010)), -- Vol'dun
            CreateVariant("ZONE_H_2",TRANSMOG,A(36029),A(36031),A(36027),A(36032),A(36028),A(36025),A(36030),A(36026)), -- Nazmir
            CreateVariant("ZONE_H_3",TRANSMOG,A(36021),A(36023),A(36372),A(36024),A(36020),A(36017),A(36022),A(36018)) -- Zuldazar
        ),
        CreateSet(COLLECTION,80002,"OTH_PLATE_H_110",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("ZONE_H_1",TRANSMOG,A(36047),A(36049),A(36045),A(36050),A(36046),A(36043),A(36048),A(36044)), -- Vol'dun
            CreateVariant("ZONE_H_2",TRANSMOG,A(36037),A(36039),A(36035),A(36040),A(36036),A(36033),A(36038),A(36034)), -- Nazmir
            CreateVariant("ZONE_H_3",TRANSMOG,A(36055),A(36057),A(36053),A(36058),A(36054),A(36051),A(36056),A(36052)) -- Zuldazar
        ),

        -- Benthic Gear
        CreateSet(COLLECTION,80003,"OTH_CLOTH_1202",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BENTHIC",TRANSMOG,A(40596),A(40604),A(40580),A(40612),A(40592),A(40608),A(40600),A(40588)),
            CreateVariant("RECOLOR",TRANSMOG,A(40595),A(40603),A(40579),A(40611),A(40591),A(40607),A(40599),A(40587))
        ),
        CreateSet(COLLECTION,80003,"OTH_LEATHER_1202",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BENTHIC",TRANSMOG,A(40644),A(40652),A(40624),A(40660),A(40640),A(40656),A(40648),A(40636)),
            CreateVariant("RECOLOR",TRANSMOG,A(40643),A(40651),A(40623),A(40659),A(40639),A(40655),A(40647),A(40635))
        ),
        CreateSet(COLLECTION,80003,"OTH_MAIL_1202",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BENTHIC",TRANSMOG,A(40683),A(40691),A(40663),A(40699),A(40679),A(40695),A(40687),A(40675)),
            CreateVariant("RECOLOR",TRANSMOG,A(40684),A(40692),A(40664),A(40700),A(40680),A(40696),A(40688),A(40676))
        ),
        CreateSet(COLLECTION,80003,"OTH_PLATE_1202",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BENTHIC",TRANSMOG,A(40565),A(40557),A(40541),A(40569),A(40549),A(40561),A(40553),A(40545)),
            CreateVariant("RECOLOR",TRANSMOG,A(40564),A(40556),A(40540),A(40568),A(40548),A(40560),A(40552),A(40544))
        ),

        -- Black Empire Sets (Skip, same as Ny'alotha Raid Finder Set)

        -- Transmog Only Sets
        -- Promotion: Recruit-A-Friend
        IncludeSet(SetCollector.OTHER,80205,1902,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Renowned Explorer's Attire
        -- Woolies
        IncludeSet(SetCollector.OTHER,80205,1903,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Wendigo Woolies
        -- Progenitor's Attire
        IncludeSet(SetCollector.OTHER,80205,1913,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Vestments of the Eternal Traveler
        -- Fae Trappings
        IncludeSet(SetCollector.OTHER,80305,1914,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Sprite Darter's Wings

        IncludeSet(COLLECTION,10814,1822,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Brawler's Garb
        IncludeSet(COLLECTION,10815,1823,ANY_ARMOR,ANY_CLASS,HORDE), -- Brawler's Garb
        
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvpAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 80300
    local sets = {
        -- Battle Season 1 and Arathi Warfront
        IncludeSet(COLLECTION,80001,1654,CLOTH,ANY_CLASS,ALLIANCE,1656,1655,1738), -- Dread Gladiator's Vestment, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1657,LEATHER,ANY_CLASS,ALLIANCE,1659,1658,1737), -- Dread Gladiator's Leathers, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1660,MAIL,ANY_CLASS,ALLIANCE,1662,1661,1736), -- Dread Gladiator's Chain, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1663,PLATE,ANY_CLASS,ALLIANCE,1665,1664,1735), -- Dread Gladiator's Plate, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1666,CLOTH,ANY_CLASS,HORDE,1668,1667,1734), -- Dread Gladiator's Vestment, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1669,LEATHER,ANY_CLASS,HORDE,1671,1670,1733), -- Dread Gladiator's Leathers, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1672,MAIL,ANY_CLASS,HORDE,1674,1673,1732), -- Dread Gladiator's Chain, Warfront, Aspirant, Elite
        IncludeSet(COLLECTION,80001,1675,PLATE,ANY_CLASS,HORDE,1677,1676,1731), -- Dread Gladiator's Plate, Warfront, Aspirant, Elite
        -- Battle Season 2 and Darkshore Warfront
        IncludeSet(COLLECTION,80100,1745,PLATE,ANY_CLASS,HORDE,1746,1750,1751), -- Sinister Gladiator's Plate, Aspirant, Elite, Gladiator
        IncludeSet(COLLECTION,80100,1752,MAIL,ANY_CLASS,HORDE,1753,1757,1758), -- Sinister Gladiator's Chain, Aspirant, Elite, Gladiator
        IncludeSet(COLLECTION,80100,1759,LEATHER,ANY_CLASS,HORDE,1764,1760,1765), -- Sinister Gladiator's Leathers, Elite, Aspirant, Gladiator
        IncludeSet(COLLECTION,80100,1766,CLOTH,ANY_CLASS,HORDE,1767,1771,1772), -- Sinister Gladiator's Vestment, Aspirant, Elite, Gladiator
        IncludeSet(COLLECTION,80100,1775,PLATE,ANY_CLASS,ALLIANCE,1776,1780,1781), -- Sinister Gladiator's Plate, Aspirant, Elite, Gladiator
        IncludeSet(COLLECTION,80100,1782,MAIL,ANY_CLASS,ALLIANCE,1783,1787,1788), -- Sinister Gladiator's Chain, Aspirant, Elite, Gladiator
        IncludeSet(COLLECTION,80100,1789,LEATHER,ANY_CLASS,ALLIANCE,1794,1790,1795), -- Sinister Gladiator's Leathers, Elite, Aspirant, Gladiator
        IncludeSet(COLLECTION,80100,1796,CLOTH,ANY_CLASS,ALLIANCE,1797,1801,1802), -- Sinister Gladiator's Vestment, Aspirant, Elite, Gladiator
        -- Battle Season 3
        IncludeSet(COLLECTION,80200,1846,CLOTH,ANY_CLASS,ALLIANCE,1851,1847), -- Notorious Aspirant's Vestment, Aspirant, Elite
        IncludeSet(COLLECTION,80200,1852,LEATHER,ANY_CLASS,ALLIANCE,1857,1853), -- Notorious Aspirant's Leathers, Aspirant, Elite
        IncludeSet(COLLECTION,80200,1858,MAIL,ANY_CLASS,ALLIANCE,1863,1859), -- Notorious Aspirant's Chain, Aspirant, Elite
        IncludeSet(COLLECTION,80200,1864,PLATE,ANY_CLASS,ALLIANCE,1869,1865), -- Notorious Aspirant's Plate, Aspirant, Elite
        IncludeSet(COLLECTION,80200,1879,PLATE,ANY_CLASS,HORDE,1878,1874), -- Notorious Gladiator's Plate, Elite, Aspirant
        IncludeSet(COLLECTION,80200,1885,MAIL,ANY_CLASS,HORDE,1884,1880), -- Notorious Gladiator's Chain, Elite, Aspirant
        IncludeSet(COLLECTION,80200,1891,LEATHER,ANY_CLASS,HORDE,1890,1886), -- Notorious Gladiator's Leathers, Elite, Aspirant
        IncludeSet(COLLECTION,80200,1897,CLOTH,ANY_CLASS,HORDE,1896,1892), -- Notorious Gladiator's Vestment, Elite, Aspirant
        -- Season 4
        IncludeSet(COLLECTION,80300,1951,PLATE,ANY_CLASS,ALLIANCE,1950), -- Corrupted Gladiator's Plate, Elite
        IncludeSet(COLLECTION,80300,1951,PLATE,ANY_CLASS,HORDE,1972), -- Corrupted Gladiator's Plate, Elite
        IncludeSet(COLLECTION,80300,1957,MAIL,ANY_CLASS,ALLIANCE,1956), -- Corrupted Gladiator's Chain, Elite
        IncludeSet(COLLECTION,80300,1957,MAIL,ANY_CLASS,HORDE,1973), -- Corrupted Gladiator's Chain, Elite
        IncludeSet(COLLECTION,80300,1963,LEATHER,ANY_CLASS,ALLIANCE,1962), -- Corrupted Gladiator's Leathers, Elite
        IncludeSet(COLLECTION,80300,1963,LEATHER,ANY_CLASS,HORDE,1974), -- Corrupted Gladiator's Leathers, Elite
        IncludeSet(COLLECTION,80300,1969,CLOTH,ANY_CLASS,ALLIANCE,1968), -- Corrupted Gladiator's Vestment, Elite
        IncludeSet(COLLECTION,80300,1969,CLOTH,ANY_CLASS,HORDE,1975), -- Corrupted Gladiator's Vestment, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 80001

    local sets = {
        -- Uldir
        IncludeSet(COLLECTION,80001,1638,CLOTH,ANY_CLASS,ANY_FACTION,1639,1640,1641), -- Eternal Curator's Vestment, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,80001,1642,LEATHER,ANY_CLASS,ANY_FACTION,1644,1643,1645), -- Eternal Curator's Garb, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,80001,1646,MAIL,ANY_CLASS,ANY_FACTION,1647,1648,1649), -- Eternal Curator's Chains, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,80001,1650,PLATE,ANY_CLASS,ANY_FACTION,1651,1652,1653), -- Eternal Curator's Protectorate, Heroic, Mythic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80100
    sets = {
        -- Battle of Dazar'alor
        IncludeSet(COLLECTION,80100,1806,CLOTH,ANY_CLASS,ANY_FACTION,1807,1808,1809), -- Soul Reaper's Raiment, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,80100,1810,LEATHER,ANY_CLASS,ANY_FACTION,1812,1811,1813), -- Boneblade Battlegear, Heroic, Raid Finder, Mythic
        IncludeSet(COLLECTION,80100,1814,MAIL,ANY_CLASS,ANY_FACTION,1815,1816,1817), -- Death-Devourer Vestments, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,80100,1818,PLATE,ANY_CLASS,ANY_FACTION,1819,1820,1821), -- Gravelord's Direplate, Raid Finder, Heroic, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80200
    sets = {
        -- The Eternal Palace
        IncludeSet(COLLECTION,80200,1830,PLATE,ANY_CLASS,ANY_FACTION,1834,1838,1842), -- Naga Lord's Warplate, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,80200,1831,MAIL,ANY_CLASS,ANY_FACTION,1839,1835,1843), -- Queen's Guard Scalemail, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,80200,1832,LEATHER,ANY_CLASS,ANY_FACTION,1836,1840,1844), -- Razorfin Regalia, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,80200,1833,CLOTH,ANY_CLASS,ANY_FACTION,1837,1841,1845), -- Frilled Harbinger's Vestments, Heroic, Mythic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80300
    sets = {
        -- Ny'alotha, the Waking City
        IncludeSet(COLLECTION,80300,1982,PLATE,ANY_CLASS,ANY_FACTION,1983,1984,1985), -- Cosmic Aberration's Plate, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,80300,1986,MAIL,ANY_CLASS,ANY_FACTION,1987,1988,1989), -- Lurking Defiler's Scalemail, Raid Finder, Heroic, Mythic
        IncludeSet(COLLECTION,80300,1990,LEATHER,ANY_CLASS,ANY_FACTION,1992,1991,1993), -- Treacherous Schemer's Leathers, Heroic, Raid Finder, Mythic
        IncludeSet(COLLECTION,80300,1994,CLOTH,ANY_CLASS,ANY_FACTION,1995,1996,1997), -- Oblivion Cultist's Robes, Raid Finder, Heroic, Mythic
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion08Appearances(expansion)
    if expansion.v08 then
        GetLegendaries()
        GetRaidAppearances()
        GetDungeonAppearances()
        GetPvpAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
    end
end

function SetCollector:GetVersion08Status()
    return SetCollector:GetExpansionStatus("8")
end

function SetCollector:SetVersion08Status()
    SetCollector:SetExpansionStatus("8")
end