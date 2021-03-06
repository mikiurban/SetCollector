-- Appearances from Warlords of Draenor (v.6.x)

--
-- LOCAL VARIABLES
--

local ALL            = SetCollector.ALL
local ANY            = SetCollector.ANY

-- Armor Type
local CLOTH            = SetCollector.CLOTH
local LEATHER        = SetCollector.LEATHER
local MAIL            = SetCollector.MAIL
local PLATE            = SetCollector.PLATE
local ANY_ARMOR			= SetCollector.ANY_ARMOR

-- Classes
local DEATHKNIGHT    = SetCollector.DEATHKNIGHT
local DEMONHUNTER    = SetCollector.DEMONHUNTER
local DRUID         = SetCollector.DRUID
local HUNTER         = SetCollector.HUNTER
local MAGE             = SetCollector.MAGE
local MONK             = SetCollector.MONK
local PALADIN         = SetCollector.PALADIN
local PRIEST         = SetCollector.PRIEST
local ROGUE         = SetCollector.ROGUE
local SHAMAN         = SetCollector.SHAMAN
local WARLOCK         = SetCollector.WARLOCK
local WARRIOR         = SetCollector.WARRIOR
local ANY_CLASS 		= SetCollector.ANY_CLASS

-- Factions
local ALLIANCE         = SetCollector.ALLIANCE
local HORDE         = SetCollector.HORDE
local ANY_FACTION	= SetCollector.ANY_FACTION

-- Obtainable
local OBTAIN        = SetCollector.OBTAIN
local NOOBTAIN         = SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG         = SetCollector.TRANSMOG
local NOTRANSMOG     = SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end

local function GetRaidAppearances()
    local col = SetCollector.RAID
    local set, loc = ""

    -- Hellfire Citadel
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RAID_CLOTH_0602",CLOTH,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25848,72878),A(25844,73228),A(25841,73118),A(25846,73200),A(25842,72970))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RAID_LEATHER_0602",LEATHER,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25986,73106),A(25982,73232),A(25978,73046),A(25984,73208),A(25979,72978))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RAID_MAIL_0602",MAIL,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25949,73212),A(25950,73174),A(25947,73188),A(25952,73110),A(25948,73236),A(25945,72986),A(25951,73216),A(25946,73082))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RAID_PLATE_0602",PLATE,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25936,73300),A(25932,73240),A(25929,73034),A(25934,73224),A(25930,72890))
    
    -- Blackrock Foundry
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RAID_CLOTH_0601",CLOTH,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22599,67988),A(22595,68000),A(22597,67996),A(22596,66924),A(22598,67992),A(22593,66925),A(22600,68004),A(22594,68007))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RAID_LEATHER_0601",LEATHER,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23048,66901),A(23052,68031),A(23057,66911),A(23054,68011),A(23050,68027))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RAID_MAIL_0601",MAIL,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22684,68055),A(22686,68047),A(22682,68051),A(22683,68039),A(22680,66917),A(22679,66941),A(22685,68035),A(22681,68043))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RAID_PLATE_0601",PLATE,ANY_CLASS,ANY_FACTION,loc)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22643,66883),A(22639,68063),A(22636,66886),A(22641,68059),A(22637,68071))
end


local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""

    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_CLOTH_06",CLOTH,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_CLOTH_06",TRANSMOG,A(22461),A(),A(),A(),A(),A(22455),A(),A()) -- Felflame
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_LEATHER_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_MAIL_06",MAIL,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_MAIL_06",TRANSMOG,A(22435),A(),A(22449),A(22430),A(),A(22431),A(22436),A()) -- Sharpeye
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_PLATE_06",PLATE,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_PLATE_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
end


local function GetExpansionAppearances()
    local col = SetCollector.EXPANSION
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CLOTH",TRANSMOG,A(23099),A(23096),A(23097),A(24893),A(23098),A(23807),A(23100),A(23806))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",LEATHER,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LEATHER",TRANSMOG,A(22857),A(22859),A(22855),A(22852),A(22856),A(22853),A(22858),A(22854))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",MAIL,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MAIL",TRANSMOG,A(22945),A(22944),A(22947),A(22950),A(22946),A(22949),A(23810),A(22948))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLATE",TRANSMOG,A(23274),A(23278),A(23265),A(24323),A(23271),A(23259),A(23277),A(23262))
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"GA_ALLIANCE_SET",ANY_ARMOR,ANY_CLASS,ALLIANCE)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471)) --,A(185)) -- Shield not available for all classes
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"GA_HORDE_SET",ANY_ARMOR,ANY_CLASS,HORDE)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
                
    --set = SetCollector:AddSetLegacy(70000,nil,col,10600,"OTH_SHIPYARD_100",ANY_ARMOR,ANY_CLASS,ALLIANCE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26891,73444))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26888,73447))
    --set = SetCollector:AddSetLegacy(70000,nil,col,10600,"OTH_SHIPYARD_100",ANY_ARMOR,ANY_CLASS,HORDE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26892,73445))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26889,73446))
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,100,"CR_PLATE_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CR_PLATE_100",TRANSMOG,A(27327,80888),A(27329,80890),A(27325,80885),A(27330,80892),A(27326,80887),A(27323,80891),A(27328,80889),A(27324,80886))
end


local function GetOtherAppearances()
    local col = SetCollector.OTHER
    local set = ""

    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_CLOTH_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_CLOTH_100",TRANSMOG,A(31376,79535),A(31379,79537),A(31718,79539),A(31374,79538),A(31380,79532),A(31375,79533),A(31372,79531),A(31377,79536),A(31373,79534))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_LEATHER_100",LEATHER,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_LEATHER_100",TRANSMOG,A(31393,79520),A(31396,79521),A(31718,79539),A(31394,79541),A(31397,79516),A(31392,79519),A(31390,79522),A(31395,79518),A(31391,79517))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_MAIL_100",MAIL,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_MAIL_100",TRANSMOG,A(31385,79527),A(31387,79529),A(31718,79539),A(31383,79530),A(31388,79524),A(31384,79525),A(31381,79523),A(31386,79528),A(31382,79526))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_PLATE_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_PLATE_100",TRANSMOG,A(31310,79511),A(31312,79513),A(31718,79539),A(31308,79508),A(31313,79515),A(31309,79509),A(31306,79510),A(31311,79512),A(31307,79514))
    --set = SetCollector:AddSetLegacy(70000,nil,col,1008,"OTH_LOCKET_100",ANY_ARMOR,ANY_CLASS,ALLIANCE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_LOCKET_100",TRANSMOG,A(31906,80788))
    --set = SetCollector:AddSetLegacy(70000,nil,col,1008,"OTH_SHOES_100",ANY_ARMOR,ANY_CLASS,HORDE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_SHOES_100",TRANSMOG,A(25398,51820,97901))
    set = SetCollector:AddSetLegacy(70000,nil,col,1007,"OT_ELR_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OT_ELR_100",TRANSMOG,A(26087,69593),A(26841,69650),A(26842,73423))
end


local function GetDeathKnightAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"DK_RAID_0602",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(26468,70017),A(26470,70059),A(26466,69963),A(26471,70088),A(26467,70000),A(26464,70072),A(26469,70038),A(26465,69976))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(26460,70018),A(26462,70060),A(26458,69964),A(26463,70090),A(26459,70001),A(26456,70082),A(26461,70039),A(26457,69978))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26061,70019),A(26062,70061),A(26051,69965),A(26064,70091),A(26052,70002),A(26049,70083),A(26063,70040),A(26050,69979))
                
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DK_RAID_0601",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23890,64429),A(23891,64426),A(23888,64427),A(23892,62722),A(23889,64428),A(23886,62828),A(23893,64425),A(23887, 62802))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23898,67192),A(23899,67186),A(23896,67188),A(23901,62724),A(23897,67190),A(23894,62830),A(23900,67184),A(23895, 62804))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24087,67193),A(24089,67187),A(24085,67189),A(24092,67180),A(24086,67191),A(24081,67183),A(24088,67185),A(24082, 67182))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"DK_PVP_18",PLATE,DEATHKNIGHT,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71615),A(25919,71617),A(25915,71613),A(25916,71614),A(25918,71616))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71497),A(25919,71499),A(25915,71495),A(25916,71496),A(25918,71498))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,71336),A(26454,71338),A(26450,71334),A(26451,71335),A(26453,71337))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"DK_PVP_18",PLATE,DEATHKNIGHT,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,71993),A(25927,71995),A(25923,71991),A(25924,71992),A(25926,71994))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71875),A(25927,71877),A(25923,71873),A(25924,71874),A(225926,71876))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,71714),A(26098,71716),A(26094,71712),A(26095,71713),A(26097,71715))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DK_PVP_17",PLATE,DEATHKNIGHT,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70704),A(25927,70706),A(25923,70702),A(25924,70703),A(25926,70705))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70586),A(25927,70588),A(25923,70584),A(25924,70585),A(25926,70587))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,70425),A(26098,70427),A(26094,70423),A(26095,70424),A(26097,70426))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DK_PVP_17",PLATE,DEATHKNIGHT,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71082),A(25919,71084),A(25915,71080),A(25916,71081),A(25918,71083))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,70964),A(25919,70966),A(25915,70962),A(25916,70963),A(25918,70965))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,70803),A(26454,70805),A(26450,70801),A(26451,70802),A(26453,70804))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"DK_PVP_16",PLATE,DEATHKNIGHT,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64104),A(23973,64106),A(23969,64102),A(23970,64103),A(23972,64105))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,63986),A(23973,63988),A(23969,63984),A(23970,63985),A(23972,63987))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24141,64511),A(24143,64513),A(24139,64509),A(24140,64510),A(24142,64512))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"DK_PVP_16",PLATE,DEATHKNIGHT,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67674),A(23981,67676),A(23977,67672),A(23978,67673),A(23980,67675))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67569),A(23981,67571),A(23977,67567),A(23978,67568),A(23980,67570))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24150,60168),A(24152,60170),A(24148,60166),A(24149,60167),A(24151,60169))
end


local function GetDruidAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"DR_RAID_0602",LEATHER,DRUID,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25588,69761),A(25590,69799),A(25592,69707),A(25591,69828),A(25587,69740),A(25584,69808),A(25589,69782),A(25585,69716))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25579,69762),A(25581,69800),A(25583,69708),A(25582,69829),A(25578,69741),A(25575,69810),A(25580,69783),A(25576,69718))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25619,69763),A(25621,69801),A(25622,69709),A(25623,69830),A(25618,69742),A(25612,69811),A(25620,69784),A(25613,69719))
                
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DR_RAID_0601",LEATHER,DRUID,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23649,64432),A(23651,64434),A(23647,62671),A(23652,62855),A(23648,64431),A(23645,62411),A(23650,64433),A(23646,62431))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23668,67124),A(23670,67128),A(23672,67120),A(23671,62856),A(23667,67122),A(23664,62413),A(23669,67126),A(23665,62433))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23658,67970),A(23661,67129),A(23653,67121),A(23662,67119),A(23657,67123),A(23654,67112),A(23660,67127),A(23655,67113))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"DR_PVP_18",LEATHER,DRUID,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71619,126190),A(25976,71622,126193),A(25972,71621,126192),A(25973,71618,126189),A(25975,71620,126191))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71501,126033),A(25976,71504,126036),A(25972,71503,126035),A(25973,71500,126032),A(25975,71502,126034))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25570,71340,125831),A(25572,71343,125834),A(25574,71342,125833),A(25569,71339,125830),A(25571,71341,125832))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"DR_PVP_18",LEATHER,DRUID,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,71997,126667),A(25967,72000,126670),A(25963,71999,126669),A(25964,71996,126666),A(25966,71998,126668))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,71879,126510),A(25967,71882,126513),A(25963,71881,126512),A(25964,71878,126509),A(25966,71880,126511))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25561,71718,126310),A(25563,71721,126313),A(25565,71720,126312),A(25560,71717,126309),A(25562,71719,126311))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DR_PVP_17",LEATHER,DRUID,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70708,125076),A(25967,70711,125079),A(25963,70710,125078),A(25964,70707,125075),A(25966,70709,125077))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70590,124919),A(25967,70593,124922),A(25963,70592,124921),A(25964,70589,124918),A(25966,70591,124920))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25561,70429,124717),A(25563,70432,124720),A(25565,70431,124719),A(25560,70428,124716),A(25562,70430,124718))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"DR_PVP_17",LEATHER,DRUID,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71086,125553),A(25976,71089,125556),A(25972,71088,125555),A(25973,71085,125552),A(25975,71087,125554))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,70968,125396),A(25976,70971,125399),A(25972,70970,125398),A(25973,70967,125395),A(25975,70969,125397))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25570,70807,125196),A(25572,70810,125199),A(25574,70809,125198),A(25569,70806,125195),A(25571,70808,125197))
                
    loc = "LOC_PVP_0601"  
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"DR_PVP_16",LEATHER,DRUID,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64108,115203),A(23787,64111,115206),A(23783,64110,115205),A(23784,64107,115202),A(23786,64109,115204))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,63990,115055),A(23787,63993,115058),A(23783,63992,115057),A(23784,63989,115054),A(23786,63991,115056))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24738,64515,115635),A(24740,64518,115638),A(24742,64517,115637),A(24737,64514,115634),A(24739,64516,115636))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"DR_PVP_16",LEATHER,DRUID,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67678,119980),A(23795,67681,119983),A(23791,67680,119982),A(23792,67677,119979),A(23794,67679,119981))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67573,119845),A(23795,67576,119848),A(23791,67575,119847),A(23792,67572,119844),A(23794,67574,119846))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24729,60172),A(24731,60175),A(24733,60174),A(24728,60171),A(24730,60173))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"HU_RAID_0602",MAIL,HUNTER,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25749,69886),A(25751,69925),A(25747,69843),A(25752,69943),A(25748,69872),A(25745,69935),A(25750,69904),A(25746,69846))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25741,69887),A(25743,69926),A(25739,69844),A(25744,69945),A(25740,69873),A(25737,69937),A(25742,69905),A(25738,69847))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25716,69888),A(25719,69927),A(25714,69845),A(25717,69946),A(25715,69874),A(25712,69938),A(25718,69906),A(25713,69848))
    
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(60000,nil,col,10602,"HU_RAID_0601",MAIL,HUNTER,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(60000,nil,col,set,"NORMAL",TRANSMOG,A(23777,64435),A(23779,64437),A(23775,64438),A(23780,62815),A(23776,64439),A(23773,62601),A(23778,64436),A(23774,62637))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"HEROIC",TRANSMOG,A(23769,67205),A(23771,67209),A(23767,67211),A(23772,62817),A(23768,67213),A(23765,62603),A(23770,67207),A(23766,62639))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"MYTHIC",TRANSMOG,A(23914,67206),A(23920,67210),A(23912,67212),A(23921,67203),A(23913,67214),A(23910,67196),A(23919,67208),A(23911,67197))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"HU_PVP_18",MAIL,HUNTER,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71625,126196),A(25958,71627,126198),A(25955,71623,126194),A(25956,71624,126195),A(25959,71626,126197))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71507,126039),A(25958,71509,126041),A(25955,71505,126037),A(25956,71506,126038),A(25959,71508,126040))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25757,71346,125837),A(25759,71348,125839),A(25755,71344,125835),A(25756,71345,125836),A(25758,71347,125838))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"HU_PVP_18",MAIL,HUNTER,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,72003,126673),A(25942,72005,126675),A(25939,72001,126671),A(25940,72002,126672),A(25943,72004,126674))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,71885,126516),A(25942,71887,126518),A(25939,71883,126514),A(25940,71884,126515),A(25943,71886,126517))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25733,71724,126316),A(25735,71726,126318),A(25731,71722,126314),A(25732,71723,126315),A(25734,71725,126317))

    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"HU_PVP_17",MAIL,HUNTER,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,70714,125082),A(25942,70716,125084),A(25939,70712,125080),A(25940,70713,125081),A(25943,70715,125083))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,70596,124925),A(25942,70598,124927),A(25939,70594,124923),A(25940,70595,124924),A(25943,70597,124926))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25733,70435,124723),A(25735,70437,124725),A(25731,70433,124721),A(25732,70434,124722),A(25734,70436,124724))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"HU_PVP_17",MAIL,HUNTER,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71092,125559),A(25958,71094,125561),A(25955,71090,125557),A(25956,71091,125558),A(25959,71093,125560))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,70974,125402),A(25958,70976,125404),A(25955,70972,125400),A(25956,70973,125401),A(25959,70975,125403))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25757,70813,125202),A(25759,70815,125204),A(25755,70811,125200),A(25756,70812,125201),A(25758,70814,125203))

    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"HU_PVP_16",MAIL,HUNTER,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24281,64114,115209),A(24283,64116,115211),A(24279,64112,115207),A(24280,64113,115208),A(24282,64115,115210))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24281,63996,115061),A(24283,63998,115063),A(24279,63994,115059),A(24280,63995,115060),A(24282,63997,115062))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24211,64521,115641),A(24213,64523,115643),A(24209,64519,115639),A(24210,64520,115640),A(24212,64522,115642))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"HU_PVP_16",MAIL,HUNTER,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24294,67684,119986),A(24296,67686,119988),A(24292,67682,119984),A(24293,67683,119985),A(24295,67685,119987))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24294,67579,119851),A(24296,67581,119853),A(24292,67577,119849),A(24293,67578,119850),A(24295,67580,119852))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24219,60178,111114),A(24221,60180,111116),A(24217,60176,111112),A(24218,60177,111113),A(24220,60179,111115))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"MA_RAID_0602",CLOTH,MAGE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25454,69686),A(25450,69578),A(25447,69671),A(25452,69613),A(25448,69555))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25426,69688),A(25422,69579),A(25419,69672),A(25424,69614),A(25420,69557))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25533,69689),A(25539,69580),A(25526,69673),A(25531,69615),A(25527,69558))
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MA_RAID_0601",CLOTH,MAGE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23413,64443),A(23416,64441),A(23415,64440),A(23417,62425),A(23412,64442),A(23409,62867),A(23414,64444),A(23410,62812))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23422,67108),A(23425,67104),A(23424,67102),A(23426,62427),A(23421,67106),A(23418,62868),A(23423,67110),A(23419,62813))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23604,67109),A(23607,67105),A(23606,67103),A(23608,67094),A(23603,67107),A(23600,62869),A(23605,67111),A(23601,62814))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"MA_PVP_18",CLOTH,MAGE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71634,126211),A(25856,71637,126214),A(25858,71636,126213),A(25853,71633,126210),A(25855,71635,126212))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71537,126078),A(25856,71540,126081),A(25858,71539,126080),A(25853,71536,126077),A(25855,71538,126079))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25442,71384,125884),A(25444,71387,125887),A(25446,71386,125886),A(25441,71383,125883),A(25443,71385,125885))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"MA_PVP_18",CLOTH,MAGE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72012,126688),A(25837,72015,126691),A(25839,72014,126690),A(25834,72011,126687),A(25836,72013,126689))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71915,126555),A(25837,71918,126558),A(25839,71917,126557),A(25834,71914,126554),A(25836,71916,126556))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25433,71762,126363),A(25435,71765,126366),A(25437,71764,126365),A(25432,71761,126362),A(25434,71763,126364))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MA_PVP_17",CLOTH,MAGE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70723,125097),A(25837,70726,125100),A(25839,70725,125099),A(25834,70722,125096),A(25836,70724,125098))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70626,124964),A(25837,70629,124967),A(25839,70628,124966),A(25834,70625,124963),A(25836,70627,124965))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25433,70473,124770),A(25435,70476,124773),A(25437,70475,124772),A(25432,70472,124769),A(25434,70474,124771))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MA_PVP_17",CLOTH,MAGE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71101,125574),A(25856,71104,125577),A(25858,71103,125576),A(25853,71100,125573),A(25855,71102,125575))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71004,125441),A(25856,71007,125444),A(25858,71006,125443),A(25853,71003,125440),A(25855,71005,125442))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25442,70851,125249),A(25444,70854,125252),A(25446,70853,125251),A(25441,70850,125248),A(25443,70852,125250))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"MA_PVP_16",CLOTH,MAGE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64121,115221),A(24395,64124,115224),A(24394,64123,115223),A(24391,64120,115220),A(24393,64122,115222))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64017,115091),A(24395,64020,115094),A(24394,64019,115093),A(24391,64016,115090),A(24393,64018,115092))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24104,64545,115678),A(24106,64548,115681),A(24108,64547,115680),A(24103,64544,115677),A(24105,64546,115679))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"MA_PVP_16",CLOTH,MAGE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67691,119998),A(24404,67694,120001),A(24403,67693,120000),A(24400,67690,119997),A(24402,676922,119999))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67593,119874),A(24404,67596,119877),A(24403,67595,119876),A(24400,67592,119873),A(24402,67594,119875))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24113,60206,111151),A(24115,60209,111154),A(24117,60208,111153),A(24112,60205,111150),A(24114,60207,111152))
end


local function GetMonkAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"MO_RAID_0602",LEATHER,MONK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(26104,69764),A(26105,69802),A(26108,69710),A(26107,69824),A(26103,69743),A(26100,69812),A(26106,69785),A(26101,69724))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(26113,69755),A(26115,69803),A(26117,69711),A(26116,69826),A(26112,69744),A(26109,69814),A(26114,69786),A(26110,69726))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26141,69766),A(26144,69804),A(26146,69712),A(26145,69827),A(26140,69745),A(26137,69815),A(26143,69787),A(26138,69727))
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MO_RAID_0601",LEATHER,MONK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23479,64446),A(23481,64449),A(23477,64448),A(23482,62799),A(23478,64445),A(23475,62746),A(23480,64447),A(23476,62719))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23471,67242),A(23473,67248),A(23469,67246),A(23474,62801),A(23470,67240),A(23427,62748),A(23472,67244),A(23468,62721))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23640,67243),A(23642,67249),A(23638,67247),A(23643,67237),A(23639,67241),A(23636,67235),A(23641,67245),A(23637,67234))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"MO_PVP_18",LEATHER,MONK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71642),A(25976,71644),A(25972,71645),A(25973,71641),A(25975,71643))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71553),A(25976,71555),A(25972,71556),A(25973,71552),A(25975,71554))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,71408),A(26133,71410),A(26136,71411),A(26131,71407),A(26134,71409))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"MO_PVP_18",LEATHER,MONK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72020),A(25967,72022),A(25963,72023),A(25964,72019),A(25966,72021))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,71931),A(25967,71933),A(25963,71934),A(25964,71930),A(25966,71932))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,71786),A(26123,71788),A(26126,71789),A(26121,71785),A(26124,71787))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MO_PVP_17",LEATHER,MONK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70731),A(25967,70733),A(25963,70734),A(25964,70730),A(25966,70732))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70642),A(25967,70644),A(25963,70645),A(25964,70641),A(25966,70643))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,70497),A(26123,70499),A(26126,70500),A(26121,70496),A(26124,70498))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"MO_PVP_17",LEATHER,MONK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71109),A(25976,71111),A(25972,71112),A(25973,71108),A(25975,71110))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71020),A(25976,71022),A(25972,71023),A(25973,71019),A(25975,71021))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,70875),A(26133,70877),A(26136,70878),A(26131,70874),A(26134,70876))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"MO_PVP_16",LEATHER,MONK,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64129),A(23787,64131),A(23783,64132),A(23784,64128),A(23786,64130))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64028),A(23787,64030),A(23787,64030),A(23783,64031),A(23784,64027))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23932,64559),A(23936,64561),A(23935,64562),A(23933,64558),A(23934,64560))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"MO_PVP_16",LEATHER,MONK,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67699),A(23795,67701),A(23791,67702),A(23792,67698),A(23794,67700))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67604),A(23795,67606),A(23791,67607),A(23792,67603),A(23794,67605))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23944,60220),A(23955,60222),A(23940,60223),A(23941,60219),A(23954,60221))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"PA_RAID_0602",PLATE,PALADIN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25700,70020),A(25701,70062),A(25698,69966),A(25703,70092),A(25699,70003),A(25696,70068),A(25702,70041),A(25697,69980))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25708,70021),A(25709,70063),A(25706,69967),A(25711,70094),A(25707,70004),A(25704,70070),A(25710,70042),A(25705,69982))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25778,70022),A(25779,70064),A(25776,69968),A(25781,70095),A(25777,70005),A(25774,70071),A(25780,70043),A(25775,69983))
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PA_RAID_0601",PLATE,PALADIN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23009,64458),A(23011,64455),A(23007,64456),A(23529,62674),A(23008,64457),A(23005,62884),A(23010,64459),A(23006,62453))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23001,67303),A(23003,67297),A(22999,67299),A(23004,62676),A(23000,67301),A(22997,62886),A(23002,67305),A(22998,62455))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23221,67304),A(23223,67298),A(23219,67300),A(23724,67293),A(23220,67302),A(23217,67295),A(23222,67306),A(23218,67291))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"PA_PVP_18",PLATE,PALADIN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71648),A(25919,71650),A(25915,71646),A(25916,71647),A(25918,71649))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71559),A(25919,71561),A(25915,71557),A(25916,71558),A(25918,71560))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,71414),A(25693,71416),A(25690,71412),A(25691,71413),A(25694,71415))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"PA_PVP_18",PLATE,PALADIN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72026),A(25927,72028),A(25923,72024),A(25924,72025),A(25926,72027))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71937),A(25927,71939),A(25923,71935),A(25924,71936),A(25926,71938))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,71792),A(25685,71794),A(25682,71790),A(25683,71791),A(25686,71793))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PA_PVP_17",PLATE,PALADIN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70737),A(25927,70739),A(25923,70735),A(25924,70736),A(25926,70738))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70648),A(25927,70650),A(25923,70646),A(25924,70647),A(25926,70649))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,70503),A(25685,70505),A(25682,70501),A(25683,70502),A(25686,70504))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PA_PVP_17",PLATE,PALADIN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71115),A(25919,71117),A(25915,71113),A(25916,71114),A(25918,71116))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71026),A(25919,71028),A(25915,71024),A(25916,71025),A(25918,71027))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,70881),A(25693,70883),A(25690,70879),A(25691,70880),A(25694,70882))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"PA_PVP_16",PLATE,PALADIN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64135),A(23973,64137),A(23969,64133),A(23970,64134),A(23972,64136))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,64034),A(23973,64036),A(23969,64032),A(23970,64033),A(23972,64035))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23710,64565),A(23712,64567),A(23708,64563),A(23709,64564),A(23711,64566))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"PA_PVP_16",PLATE,PALADIN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67705),A(23981,67707),A(23977,67703),A(23978,67704),A(23980,67706))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67610),A(23981,67612),A(23977,67608),A(23978,67609),A(23980,67611))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23718,60226),A(23720,60228),A(23716,60224),A(23717,60225),A(23719,60227))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"PR_RAID_0602",CLOTH,PRIEST,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25908,69600),A(25911,69657),A(25909,69636),A(25912,69682),A(25907,69581),A(25904,69663),A(25910,69616),A(25905,69559))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25890,69601),A(25893,69658),A(25891,69637),A(25894,69684),A(25889,69582),A(25886,69665),A(25892,69617),A(25887,69561))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25872,69602),A(25874,69659),A(25876,69638),A(25875,69685),A(25871,69583),A(25868,69666),A(25873,69618),A(25869,69562))
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PR_RAID_0601",CLOTH,PRIEST,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23821,64453),A(23819,64451),A(23823,64450),A(23818,62707),A(23820,64452),A(23815,62446),A(23822,64454),A(23816,62659))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23832,67263),A(23835,67259),A(23834,67257),A(23836,62709),A(23831,67261),A(23828,62448),A(23833,67265),A(23829,62661))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24029,67264),A(24031,67260),A(24033,67258),A(24032,67254),A(24028,67262),A(24025,67250),A(24030,67266),A(24026,67252))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"PR_PVP_18",CLOTH,PRIEST,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71655),A(25856,71658),A(25858,71657),A(25853,71654),A(25855,71656))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71574),A(25856,71577),A(25858,71576),A(25853,71573),A(25855,71575))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,71437),A(25902,71440),A(25900,71439),A(25898,71436),A(25901,71438))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"PR_PVP_18",CLOTH,PRIEST,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72033),A(25837,72036),A(25839,71954),A(25834,72032),A(25836,72034))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71952),A(25837,71955),A(25839,71954),A(25834,71951),A(25836,71953))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,71815),A(25884,71818),A(25882,71817),A(25880,71814),A(25883,71816))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PR_PVP_17",CLOTH,PRIEST,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70744),A(25837,70747),A(25839,70746),A(25834,70743),A(25836,70745))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70663),A(25837,70666),A(25839,70665),A(25834,70662),A(25836,70664))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,70526),A(25884,70529),A(25882,70528),A(25880,70525),A(25883,70527))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"PR_PVP_17",CLOTH,PRIEST,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71122),A(25856,71125),A(25858,71124),A(25853,71121),A(25855,71123))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71041),A(25856,71044),A(25858,71043),A(25853,71040),A(25855,71042))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,70904),A(25902,70907),A(25900,70906),A(25898,70903),A(25901,70905))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"PR_PVP_16",CLOTH,PRIEST,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64142),A(24395,64145),A(24394,64144),A(24391,64141),A(24393,64143))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64044),A(24395,64047),A(24394,64046),A(24391,64043),A(24393,64045))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24923,64578),A(24925,64581),A(24927,64580),A(24922,64577),A(24924,64579))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"PR_PVP_16",CLOTH,PRIEST,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67712),A(24404,67715),A(24403,67714),A(24400,67711),A(24402,67713))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67620),A(24404,67623),A(24403,67622),A(24400,67619),A(24402,67621))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24913,60239),A(24916,60242),A(24918,60241),A(24912,60238),A(24915,60240))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"RO_RAID_0602",LEATHER,ROGUE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25802,69767),A(25805,69805),A(25800,69713),A(25804,69820),A(25801,69746),A(25798,69816),A(25803,69788),A(25799,69728))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25810,69768),A(25813,69806),A(25808,69714),A(25812,69822),A(25809,69747),A(25806,69818),A(25811,69789),A(25807,69730))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25819,69769),A(25821,69807),A(25817,69715),A(25822,69823),A(25818,69748),A(25814,69819),A(25820,69790),A(25816,69731))
                
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"RO_RAID_0601",LEATHER,ROGUE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23127,64462),A(23132,64464),A(23129,64460),A(23133,62408),A(23130,64461),A(23126,62858),A(23131,64463),A(23128,62881))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23140,67317),A(23135,67321),A(23138,67313),A(23134,62410),A(23137,67315),A(23141,62860),A(23136,67319),A(23139,62883))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23489,67318),A(23491,67322),A(23487,67314),A(23492,67308),A(23488,67316),A(23485,67311),A(23490,67320),A(23486,67312))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RO_PVP_18",LEATHER,ROGUE,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71661),A(25976,71663),A(25972,71659),A(25973,71660),A(25975,71662))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71580),A(25976,71582),A(25972,71578),A(25973,71579),A(25975,71581))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,71443),A(25797,71445),A(25792,71441),A(25793,71442),A(25795,71444))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"RO_PVP_18",LEATHER,ROGUE,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72039),A(25967,72041),A(25963,72037),A(25964,72038),A(25966,72040))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,72039),A(25967,71960),A(25963,71956),A(25964,71957),A(25966,71959))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,71821),A(25789,71823),A(25784,71819),A(25785,71820),A(25787,71822))
                
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"RO_PVP_17",LEATHER,ROGUE,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70750),A(25967,70752),A(25963,70748),A(25964,70749),A(25966,70751))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70669),A(25967,70671),A(25963,70667),A(25964,70668),A(25966,70670))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,70532),A(25789,70534),A(25784,70530),A(25785,70531),A(25787,70533))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"RO_PVP_17",LEATHER,ROGUE,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25794,71128),A(25976,71130),A(25972,71126),A(25973,71127),A(25975,71129))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71047),A(25976,71049),A(25972,71045),A(25973,71046),A(25975,71048))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,70910),A(25797,70912),A(25792,70908),A(25793,70909),A(25795,70911))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RO_PVP_16",LEATHER,ROGUE,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64148),A(23787,64150),A(23783,64146),A(23784,64147),A(23786,64149))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64050),A(23787,64052),A(23783,64048),A(23784,64049),A(23786,64051))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23732,64584),A(23734,64586),A(23730,64582),A(23731,64583),A(23733,64585))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"RO_PVP_16",LEATHER,ROGUE,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67718),A(23795,67720),A(23791,67716),A(23792,67717),A(23794,67719))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67626),A(23795,67628),A(23791,67624),A(23792,67625),A(23794,67625))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23741,60245),A(23743,60247),A(23739,60243),A(23740,60244),A(23742,60246))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    -- Hellfire Citadel
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"SH_RAID_0602",MAIL,SHAMAN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(26019,69889),A(26021,69928),A(26023,69910),A(26022,69947),A(26018,69875),A(26016,69931),A(26020,69907),A(26472,69849))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(26036,69890),A(26038,69929),A(26040,69911),A(26039,69949),A(26035,69876),A(26033,69933),A(26037,69908),A(26474,69851))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26000,69891),A(26002,69930),A(26004,69912),A(26003,69950),A(25999,69877),A(25996,69934),A(26001,69909),A(25997,69852))
    --     Blackrock Foundry
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"SH_RAID_0601",MAIL,SHAMAN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23360,64469),A(23361,64466),A(23363,64467),A(23367,62870),A(23368,64468),A(23364,62790),A(23365,64465),A(23366,62837))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23370,67287),A(23371,67281),A(23373,67283),A(23377,62872),A(23378,67285),A(23374,62792),A(23375,67279),A(23376,62839))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23678,67288),A(23679,67282),A(23688,67284),A(23687,67277),A(23677,67286),A(23674,67274),A(23689,67280),A(23675,67276))
    
    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"SH_PVP_18",MAIL,SHAMAN,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71666),A(25958,71668),A(25955,71664),A(25956,71665),A(25959,71667))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71585),A(25958,71587),A(25955,71583),A(25956,71584),A(25959,71586))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,71448),A(26030,71450),A(26031,71446),A(26026,71447),A(26572,71449))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"SH_PVP_18",MAIL,SHAMAN,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,72044),A(25942,72046),A(25939,72042),A(25940,72043),A(25943,72045))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,71963),A(25942,71965),A(25939,71961),A(25940,71962),A(25943,71964))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,71826),A(26011,71828),A(26015,71824),A(26008,71825),A(26574,71827))
    
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"SH_PVP_17",MAIL,SHAMAN,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,70755),A(25942,70757),A(25939,70753),A(25940,70754),A(25943,70756))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,70674),A(25942,70676),A(25939,70672),A(25940,70673),A(25943,70675))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,70537),A(26011,70539),A(26015,70535),A(26008,70536),A(26572,70538))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"SH_PVP_17",MAIL,SHAMAN,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71133),A(25958,71135),A(25955,71131),A(25956,71132),A(25959,71134))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71052),A(25958,71054),A(25955,71050),A(25956,71051),A(25959,71053))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,70915),A(26030,70917),A(26031,70913),A(26026,70914),A(26572,70916))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"SH_PVP_16",MAIL,SHAMAN,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24281,64153),A(24283,64155),A(24279,64151),A(24280,64152),A(24282,64154))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24281,64055),A(24283,64057),A(24279,64053),A(24280,64054),A(24282,64056))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24756,64589),A(24757,64591),A(24754,64587),A(24755,64588),A(24758,64590))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"SH_PVP_16",MAIL,SHAMAN,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24294,67723),A(24296,67725),A(24292,67721),A(24293,67722),A(24295,67724))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24294,67631),A(24296,67634),A(24292,67629),A(24293,67630),A(24295,67632))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24765,60250),A(24767,60252),A(24763,60248),A(24764,60249),A(24766,60251))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    -- Hellfire Citadel
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"WK_RAID_0602",CLOTH,WARLOCK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(26169,69603),A(26171,69660),A(26173,69639),A(26168,69584),A(26172,69678),A(26165,69667),A(26170,69619),A(26166,69563))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(26160,69604),A(26162,69661),A(26164,69640),A(26159,69585),A(26163,69680),A(26156,69669),A(26161,69620),A(26157,69564))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26214,69605),A(26216,69662),A(26218,69641),A(26213,69586),A(26217,69681),A(26210,69670),A(26215,69621),A(26211,69565))
    -- Blackrock Foundry
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WK_RAID_0601",CLOTH,WARLOCK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23850,64476),A(23853,64479),A(23852,64478),A(23854,62843),A(23849,64475),A(23846,62809),A(23851,64477),A(23847,62624))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23841,67225),A(23844,67231),A(23843,67229),A(23845,62845),A(23840,67223),A(23837,62811),A(23842,67227),A(23838,62626))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23866,67226),A(23869,67232),A(23868,67230),A(23870,67220),A(23865,67224),A(23862,67219),A(23867,67228),A(23863,67217))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"WK_PVP_18",CLOTH,WARLOCK,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71672),A(25856,71675),A(25858,71674),A(25853,71671),A(25855,71673))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71600),A(25856,71603),A(25858,71602),A(25853,71599),A(25855,71601))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,71463),A(26189,71466),A(26191,71465),A(26186,71462),A(26188,71464))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"WK_PVP_18",CLOTH,WARLOCK,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72050),A(25837,72053),A(25839,72052),A(25834,72049),A(25836,72051))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71978),A(25837,71981),A(25839,71980),A(25834,71977),A(25836,71979))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,71841),A(26180,71844),A(26182,71843),A(26177,71840),A(26179,71842))
    
    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WK_PVP_17",CLOTH,WARLOCK,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70761),A(25837,70764),A(25839,70763),A(25834,70760),A(25836,70762))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70689),A(25837,70692),A(25839,70691),A(25834,70688),A(25836,70690))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,70552),A(26180,70555),A(26182,70554),A(26177,70551),A(26179,70553))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WK_PVP_17",CLOTH,WARLOCK,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71139),A(25856,71142),A(25858,71141),A(25853,71138),A(25855,71140))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71067),A(25856,71070),A(25858,71069),A(25853,71066),A(25855,71068))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,70930),A(26189,70933),A(26191,70932),A(26186,70929),A(26188,70931))
                
    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"WK_PVP_16",CLOTH,WARLOCK,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64157),A(24395,64160),A(24394,64159),A(24391,64156),A(24393,64158))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64072),A(24395,64075),A(24394,64074),A(24391,64071),A(24393,64073))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24131,64611),A(24133,64614),A(24135,64613),A(24130,64610),A(24132,64612))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"WK_PVP_16",CLOTH,WARLOCK,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67727),A(24404,67730),A(24403,67729),A(24400,67726),A(24402,67728))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67642),A(24404,67645),A(24403,67644),A(24400,67641),A(24402,67643))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24122,60274),A(24124,60277),A(24126,60276),A(24121,60273),A(24123,60275))

end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10604,"WR_RAID_0602",PLATE,WARRIOR,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(25500,70023),A(25501,70065),A(25498,69969),A(25502,70084),A(25499,70006),A(25496,70076),A(25503,70044),A(25497,69972))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(25492,70024),A(25493,70066),A(25490,69970),A(25494,70086),A(25491,70007),A(25488,70078),A(25495,70045),A(25489,69974))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25649,70025),A(25650,70067),A(25647,69971),A(25651,70087),A(25648,70008),A(25645,70079),A(25652,70046),A(25646,69975))
    
    loc = "LOC_RAID_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WR_RAID_0601",PLATE,WARRIOR,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(23069,64474),A(23071,64471),A(23067,64472),A(23072,62627),A(23068,64473),A(23150,62450),A(23070,64470),A(23066,62852))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(23113,67174),A(23115,67168),A(23111,67170),A(23116,62629),A(23112,67172),A(23109,62452),A(23114,67166),A(23110,62854))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23151,67175),A(23152,67169),A(23156,67171),A(23159,67159),A(23157,67173),A(23154,67158),A(23158,67167),A(23155,67164))

    col = SetCollector.PVP
    loc = "LOC_PVP_0603"
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"WR_PVP_18",PLATE,WARRIOR,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71678),A(25919,71680),A(25915,71676),A(25916,71677),A(25918,71679))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71606),A(25919,71608),A(25915,71604),A(25916,71605),A(25918,71607))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,71469),A(25519,71471),A(25516,71467),A(25517,71468),A(25521,71470))
    set = SetCollector:AddSetLegacy(70000,nil,col,10603,"WR_PVP_18",PLATE,WARRIOR,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72056),A(25927,72058),A(25923,72054),A(25924,72055),A(25926,72057))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71984),A(25927,71986),A(25923,71982),A(25924,71983),A(25926,71985))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,71847),A(25509,71849),A(25506,71845),A(25507,71846),A(25511,71848))

    loc = "LOC_PVP_0602"
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WR_PVP_17",PLATE,WARRIOR,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70767),A(25927,70769),A(25923,70765),A(25924,70766),A(25926,70768))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70695),A(25927,70697),A(25923,70693),A(25924,70694),A(25926,70696))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,70558),A(25509,70560),A(25506,70556),A(25507,70557),A(25511,70559))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"WR_PVP_17",PLATE,WARRIOR,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71145),A(25919,71147),A(25915,71143),A(25916,71144),A(25918,71146))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71073),A(25919,71075),A(25915,71071),A(25916,71072),A(25918,71074))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,70936),A(25519,70938),A(25516,70934),A(25517,70935),A(25521,70937))

    loc = "LOC_PVP_0601"
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"WR_PVP_16",PLATE,WARRIOR,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64163),A(23973,64165),A(23969,64161),A(23970,64162),A(23972,64164))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,64078),A(23973,64080),A(23969,64076),A(23970,64077),A(23972,64079))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23753,64617),A(23755,64619),A(23751,64615),A(23752,64616),A(23754,64618))
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"WR_PVP_16",PLATE,WARRIOR,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67733),A(23981,67735),A(23977,67731),A(23978,67732),A(23980,67734))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67648),A(23981,67650),A(23977,67646),A(24400,67647),A(24402,67649))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23761,60280),A(23763,60282),A(23759,60278),A(23760,60279),A(23762,60281))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion06Appearances(expansion)
    if expansion.v06 then
        -- Common
        GetRaidAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetCraftedAppearances()
        GetOtherAppearances()
        -- Class-specific
        GetDeathKnightAppearances()
        GetDruidAppearances()
        GetHunterAppearances()
        GetMageAppearances()
        GetMonkAppearances()
        GetPaladinAppearances()
        GetPriestAppearances()
        GetRogueAppearances()
        GetShamanAppearances()
        GetWarlockAppearances()
        GetWarriorAppearances()
    end
end


function SetCollector:GetVersion06Status()
    return SetCollector:GetExpansionStatus("6")
end


function SetCollector:SetVersion06Status()
    SetCollector:SetExpansionStatus("6")
end