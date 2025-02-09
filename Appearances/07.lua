-- Appearances from Legion (v.7.x)

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
        CreateSet(COLLECTION,10701,"CR_PLATE_100",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_PLATE_100",TRANSMOG,A(27327,80888),A(27329,80890),A(27325,80885),A(27330,80892),A(27326,80887),A(27323,80891),A(27328,80889),A(27324,80886))
        ),
        CreateSet(COLLECTION,10702,"PLACEHOLDER",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("PLACEHOLDER",TRANSMOG,A(27133,80856),A(27135,80858),A(27131,80853),A(27136,80860),A(27132,80855),A(27129,80859),A(27134,80857),A(27130,80854))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 70000
    local LOCATION_01, LOCATION_02, LOCATION_03, LOCATION_04 = "LOC_DG_0701", "LOC_DG_0702", "LOC_DG_0703", "LOC_DG_0704"
    local sets = {
        CreateSet(COLLECTION,70001,"DG_CLOTH_0701",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0701",TRANSMOG,A(27191),A(27194),A(27195),A(27193),A(27190),A(27187),A(27192),A(27215))
        ),
        CreateSet(COLLECTION,70001,"DG_LEATHER_0701",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0701",TRANSMOG,A(26906),A(26908),A(26904),A(26909),A(26905),A(26902),A(26907),A(26903))
        ),
        CreateSet(COLLECTION,70001,"DG_MAIL_0701",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0701",TRANSMOG,A(27284),A(27281),A(27286),A(27282),A(27279),A(27285),A(27264))
        ),
        CreateSet(COLLECTION,70001,"DG_PLATE_0701",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0701",TRANSMOG,A(27079),A(27081),A(27077),A(27082),A(27078),A(27075),A(27080),A(27076))
        ),
        CreateSet(COLLECTION,70002,"DG_CLOTH_0701",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0702",TRANSMOG,A(27544),A(27547),A(27549),A(27548),A(27543),A(27540),A(27545),A(27215))
        ),
        CreateSet(COLLECTION,70002,"DG_LEATHER_0701",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0702",TRANSMOG,A(26925),A(26927),A(26923),A(26928),A(26924),A(26921),A(26926),A(26922))
        ),
        CreateSet(COLLECTION,70002,"DG_MAIL_0701",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0702",TRANSMOG,A(27267),A(27268),A(27265),A(27270),A(27266),A(27263),A(27269),A(27264))
        ),
        CreateSet(COLLECTION,70002,"DG_PLATE_0701",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0702",TRANSMOG,A(27100),A(27102),A(27098),A(27103),A(27099),A(27096),A(27101),A(27097))
        ),
        CreateSet(COLLECTION,70003,"DG_CLOTH_0701",CLOTH,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0703",TRANSMOG,A(27218),A(27221),A(27222),A(27220),A(27217),A(27214),A(27219),A(27215))
        ),
        CreateSet(COLLECTION,70003,"DG_LEATHER_0701",LEATHER,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0703",TRANSMOG,A(27249),A(27251),A(27247),A(27252),A(27248),A(27245),A(27250),A(27246))
        ),
        CreateSet(COLLECTION,70003,"DG_MAIL_0701",MAIL,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0703",TRANSMOG,A(27464),A(27460),A(27465),A(27461),A(27458),A(27463),A(27459))
        ),
        CreateSet(COLLECTION,70003,"DG_PLATE_0701",PLATE,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_DG_0703",TRANSMOG,A(27117),A(27119),A(27115),A(27120),A(27116),A(27113),A(27118),A(27114))
        ),
        CreateSet(COLLECTION,70004,"DG_CLOTH_0701",CLOTH,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0704",TRANSMOG,A(33901),A(33904),A(33903),A(33898),A(33896),A(33900),A(33897))
        ),
        CreateSet(COLLECTION,70004,"DG_LEATHER_0701",LEATHER,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0704",TRANSMOG,A(33974),A(33976),A(33972),A(33977),A(33973),A(33970),A(33975),A(33971))
        ),
        CreateSet(COLLECTION,70004,"DG_MAIL_0701",MAIL,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0704",TRANSMOG,A(34008),A(34010),A(34006),A(34011),A(34007),A(34004),A(34009),A(34005))
        ),
        CreateSet(COLLECTION,70004,"DG_PLATE_0701",PLATE,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0704",TRANSMOG,A(34050),A(34052),A(34048),A(34053),A(34049),A(34046),A(34051),A(34047))
        ),
        -- Seat of the Triumvirate
        IncludeSet(SetCollector.DUNGEON,70300,1468), -- Venerated Triumvirate Battleplate
        IncludeSet(SetCollector.DUNGEON,70300,1469), -- Sterling Triumvirate Chainmail
        IncludeSet(SetCollector.DUNGEON,70300,1470), -- Burnished Triumvirate Armor
        IncludeSet(SetCollector.DUNGEON,70300,1471), -- Light-Woven Triumvirate Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 70001
    sets = {
        IncludeSet(COLLECTION,70100,4247), -- Drake Hunter's Kit
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 70000
    local sets = {
        -- Legion Invasions
        IncludeSet(SetCollector.EXPANSION,70001,157), -- Felforged Armor
        IncludeSet(SetCollector.EXPANSION,70001,158), -- Fel-Chain Armor
        IncludeSet(SetCollector.EXPANSION,70001,159), -- Felshroud Armor
        IncludeSet(SetCollector.EXPANSION,70001,160), -- Fel-Infused Armor

        -- Legion Order Hall
        IncludeSet(SetCollector.EXPANSION,70001,330), -- Regalia of the High Priest
        IncludeSet(SetCollector.EXPANSION,70001,430), -- Raiment of the Farseer
        IncludeSet(SetCollector.EXPANSION,70001,447), -- Battlelord's Plate
        IncludeSet(SetCollector.EXPANSION,70001,448), -- Vestments of the Black Harvest
        IncludeSet(SetCollector.EXPANSION,70001,464), -- Battlegear of the Uncrowned
        IncludeSet(SetCollector.EXPANSION,70001,496), -- Battleplate of the Silver Hand
        IncludeSet(SetCollector.EXPANSION,70001,497), -- Grandmaster's Finery
        IncludeSet(SetCollector.EXPANSION,70001,516), -- Vesture of Tirisgarde
        IncludeSet(SetCollector.EXPANSION,70001,532), -- Guise of the Unseen Path
        IncludeSet(SetCollector.EXPANSION,70001,548), -- Battlegear of the Shattered Abyss
        IncludeSet(SetCollector.EXPANSION,70001,549), -- Dreamgrove Raiment
        IncludeSet(SetCollector.EXPANSION,70001,550), -- Deathlord's Battleplate
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000
    local sets = {
        -- Time's Keeper
        IncludeSet(SetCollector.OTHER,70205,1456), -- Timewarden's Plate
        IncludeSet(SetCollector.OTHER,70205,1457), -- Chronoscryer's Finery
        IncludeSet(SetCollector.OTHER,70205,1458), -- Epoch Sentinel's Mail
        IncludeSet(SetCollector.OTHER,70205,1459), -- Riftscarred Vestments
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    COLLECTION, VERSION = SetCollector.OTHER, 70001
    sets = {
        -- Timewalking: Vrykul Battlegear
        IncludeSet(COLLECTION,70001,4248), -- Drekirjar Warrior's Battlegear
        IncludeSet(COLLECTION,70001,4246), -- Invasion Stalkers Guise
        IncludeSet(COLLECTION,70001,4245), -- Broken Shore Battlemender's Gear
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000

    local sets = {
        -- Legion Season 1 and 2
        IncludeSet(SetCollector.PVP,70001,1093,1095,1159), -- Vindictive Combatant's Silk Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1094,1137,1096), -- Vindictive Combatant's Silk Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1097,1099,1171), -- Vindictive Combatant's Dragonhide Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1098,1168,1100), -- Vindictive Combatant's Dragonhide Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1101,1103,1158), -- Vindictive Combatant's Felweave Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1102,1104,1160), -- Vindictive Combatant's Felweave Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1105,1107,1165), -- Vindictive Combatant's Dreadplate Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1106,1108,1163), -- Vindictive Combatant's Dreadplate Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1109,1170,1111), -- Vindictive Combatant's Felskin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1110,1112,1167), -- Vindictive Combatant's Felskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1113,409,1115), -- Vindictive Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1114,410,1116), -- Vindictive Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1117,1119,1169), -- Vindictive Combatant's Ironskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1118,1120,1172), -- Vindictive Combatant's Ironskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1121,1164,1123), -- Vindictive Combatant's Scaled Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1122,1124,1166), -- Vindictive Combatant's Scaled Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1125,1068,1127), -- Vindictive Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,1126,1128,1067), -- Vindictive Gladiator's Leather Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1129,1131,1161), -- Vindictive Combatant's Ringmail Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1130,1132,1162), -- Vindictive Combatant's Ringmail Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1133,1135,1070), -- Vindictive Gladiator's Plate Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,1134,1069,1136), -- Vindictive Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70001,388,392,1071), -- Vindictive Combatant's Satin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70001,390,393,1072), -- Vindictive Combatant's Satin Armor, Elite, Combatant I
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Legion Season 3 and 4
        IncludeSet(SetCollector.PVP,70200,389,395,1278), -- Cruel Combatant's Satin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,391,1277,394), -- Cruel Combatant's Satin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1225,1227,1270), -- Cruel Combatant's Plate Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1226,1269,1228), -- Cruel Combatant's Plate Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1229,1272,1231), -- Cruel Combatant's Felweave Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1230,1232,1271), -- Cruel Combatant's Felweave Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1233,1235,1274), -- Cruel Combatant's Ringmail Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1234,1236,1273), -- Cruel Combatant's Ringmail Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1237,1239,1276), -- Cruel Combatant's Leather Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1238,1275,1240), -- Cruel Combatant's Leather Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1241,1243,1280), -- Cruel Combatant's Scaled Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1242,1279,1244), -- Cruel Combatant's Scaled Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1245,1282,1247), -- Cruel Combatant's Ironskin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1246,1248,1281), -- Cruel Combatant's Ironskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1249,1251,1284), -- Cruel Combatant's Silk Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1250,1252,1283), -- Cruel Combatant's Silk Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1253,1285,1256), -- Cruel Combatant's Chain Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1254,1255,1286), -- Cruel Combatant's Chain Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1257,1288,1259), -- Cruel Combatant's Dragonhide Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70200,1258,1260,1287), -- Cruel Combatant's Dragonhide Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1261,1264,1289), -- Cruel Combatant's Felskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1262,1263,1290), -- Cruel Combatant's Felskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1265,1267,1292), -- Cruel Combatant's Dreadplate Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70200,1266,1291,1268), -- Cruel Combatant's Dreadplate Armor, Combatant I, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    sets = {
        -- Legion Season 5, 6, and 7
        IncludeSet(SetCollector.PVP,70300,1400,1348,1352), -- Fierce Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1401,1349,1353), -- Fierce Gladiator's Dreadplate Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1402,1354,1358), -- Fierce Gladiator's Felskin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1403,1359,1355), -- Fierce Gladiator's Felskin Armor, Elite, Combatant I
        IncludeSet(SetCollector.PVP,70300,1404,1360,1380), -- Fierce Gladiator's Dragonhide Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1405,1361,1381), -- Fierce Gladiator's Dragonhide Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1406,1362,1382), -- Fierce Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1407,1363,1383), -- Fierce Gladiator's Chain Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1408,1364,1384), -- Fierce Gladiator's Silk Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1409,1365,1385), -- Fierce Gladiator's Silk Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1410,1366,1386), -- Fierce Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1411,1367,1387), -- Fierce Gladiator's Ironskin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1412,1368,1388), -- Fierce Gladiator's Scaled Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1413,1369,1389), -- Fierce Gladiator's Scaled Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1414,1370,1390), -- Fierce Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1415,1371,1391), -- Fierce Gladiator's Satin Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1416,1372,1392), -- Fierce Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1417,1373,1393), -- Fierce Gladiator's Leather Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1418,1374,1394), -- Fierce Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1419,1375,1395), -- Fierce Gladiator's Ringmail Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1420,1376,1396), -- Fierce Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1421,1377,1397), -- Fierce Gladiator's Felweave Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1422,1378,1399), -- Fierce Gladiator's Plate Armor, Combatant I, Elite
        IncludeSet(SetCollector.PVP,70300,1423,1398), -- Fierce Gladiator's Plate Armor, Elite
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()

    local COLLECTION, VERSION = SetCollector.RAID, 70000

    -- Trial of Valor
    local sets = {
        IncludeSet(COLLECTION,70100,171,173,172,174), -- Regalia of the Chosen Dead, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,70100,175,177,176,178), -- Garb of the Chosen Dead, Mythic, Heroic, Raid Finder
        IncludeSet(COLLECTION,70100,179,180,181,182), -- Chains of the Chosen Dead, Heroic, Mythic, Raid Finder
        IncludeSet(COLLECTION,70100,183,185,184,186), -- Funerary Plate of the Chosen Dead, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 70001
    sets = {
        -- The Nighthold
        IncludeSet(SetCollector.RAID,70001,308,309,322,311), -- Vestments of the Purifier, Heroic, Raid Finder, Mythic
        IncludeSet(SetCollector.RAID,70001,315,941,316,321), -- Legacy of Azj'aqir, Raid Finder, Heroic, Mythic
        IncludeSet(SetCollector.RAID,70001,933,935,934,936), -- Regalia of Shackled Elements, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,937,938,939,940), -- Warplate of the Obsidian Aspect, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,942,944,943,945), -- Doomblade Battlegear, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,978,980,979,981), -- Battleplate of the Highlord, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,982,983,984,985), -- Vestments of Enveloped Dissonance, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,986,988,987,989), -- Regalia of Everburning Knowledge, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,990,992,991,993), -- Eagletalon Battlegear, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,994,995,996,997), -- Garb of the Astral Warden, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70001,998,1000,999,1001), -- Vestment of Second Sight, Mythic, Heroic, Raid Finder    
        IncludeSet(SetCollector.RAID,70001,1002,1004,1003,1005), -- Dreadwyrm Battleplate, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 70200
    sets = {
        -- Tomb of Sargeras
        IncludeSet(SetCollector.RAID,70200,1293,1294,1295,1296,2305), -- Titanic Onslaught Armor, Heroic, Mythic, Raid Finder, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1297,1299,1298,1300,2304), -- Diabolic Raiment, Mythic, Heroic, Raid Finder, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1301,1302,1303,1304,2303), -- Regalia of the Skybreaker, Raid Finder, Heroic, Mythic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1305,1306,1307,1308,2302), -- Fanged Slayer's Armor, Raid Finder, Heroic, Mythic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1309,1342,1310,1312,2301), -- Vestments of Blind Absolution, Raid Finder, Mythic, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1313,1314,1315,1316,2300), -- Radiant Lightbringer Armor, Mythic, Raid Finder, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1317,1318,1319,1320,2299), -- Xuen's Battlegear, Mythic, Raid Finder, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1321,1323,1322,1324,2298), -- Regalia of the Arcane Tempest, Raid Finder, Mythic, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1325,1326,1327,1328,2297), -- Wildstalker Armor, Mythic, Raid Finder, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1329,1330,1331,1332,2296), -- Stormheart Raiment, Mythic, Raid Finder, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1333,1335,1334,1336,2295), -- Demonbane Armor, Raid Finder, Mythic, Heroic, Mage Tower
        IncludeSet(SetCollector.RAID,70200,1337,1338,1339,1340,2294), -- Gravewarden Armaments, Mythic, Raid Finder, Heroic, Mage Tower
        
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 70300
    sets = {
        -- Antorus, the Burning Throne
        IncludeSet(SetCollector.RAID,70300,1472,1473,1474,1475), -- Dreadwake Armor, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1476,1477,1478,1479), -- Felreaper Vestments, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1480,1482,1481,1483), -- Bearmantle Battlegear, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1484,1485,1486,1487), -- Serpentstalker Guise, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1488,1489,1490,1491), -- Runebound Regalia, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1492,1494,1493,1495), -- Chi-Ji's Battlegear, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1496,1497,1498,1499), -- Light's Vanguard Battleplate, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1500,1501,1502,1503), -- Gilded Seraph's Raiment, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1504,1506,1505,1507), -- Regalia of the Dashing Scoundrel, Mythic, Heroic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1508,1509,1510,1511), -- Garb of Venerated Spirits, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1512,1513,1514,1515), -- Grim Inquisitor's Regalia, Heroic, Mythic, Raid Finder
        IncludeSet(SetCollector.RAID,70300,1516,1518,1517,1519), -- Juggernaut Battlegear, Mythic, Heroic, Raid Finder
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion07Appearances(expansion)
    if expansion.v07 then
        -- Common
        --GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion07Status()
    return SetCollector:GetExpansionStatus("7")
end

function SetCollector:SetVersion07Status()
    SetCollector:SetExpansionStatus("7")
end