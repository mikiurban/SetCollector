-- Appearances from Wrath of the Lich King (v.3.x)

--
-- LOCAL VARIABLES
--

local ALL			= SetCollector.ALL
local ANY			= SetCollector.ANY

-- Armor Type
local CLOTH			= SetCollector.CLOTH
local LEATHER		= SetCollector.LEATHER
local MAIL			= SetCollector.MAIL
local PLATE			= SetCollector.PLATE

-- Classes
local DEATHKNIGHT	= SetCollector.DEATHKNIGHT
local DEMONHUNTER	= SetCollector.DEMONHUNTER
local DRUID 		= SetCollector.DRUID
local HUNTER 		= SetCollector.HUNTER
local MAGE 			= SetCollector.MAGE
local MONK 			= SetCollector.MONK
local PALADIN 		= SetCollector.PALADIN
local PRIEST 		= SetCollector.PRIEST
local ROGUE 		= SetCollector.ROGUE
local SHAMAN 		= SetCollector.SHAMAN
local WARLOCK 		= SetCollector.WARLOCK
local WARRIOR 		= SetCollector.WARRIOR

-- Factions
local ALLIANCE 		= SetCollector.ALLIANCE
local HORDE 		= SetCollector.HORDE

-- Roles
local TANK 			= SetCollector.TANK
local HEALER 		= SetCollector.HEALER
local CASTER 		= SetCollector.CASTER
local RANGED 		= SetCollector.RANGED
local MELEE 		= SetCollector.MELEE

-- Obtainable
local OBTAIN		= SetCollector.OBTAIN
local NOOBTAIN 		= SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG 		= SetCollector.TRANSMOG
local NOTRANSMOG 	= SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(a, s, i, ...)
	return SetCollector:A(a, s, i, ...)
end


local function GetLegendaries()
	local col = SetCollector.LEGENDARY
	local set = ""
				
	set = SetCollector:AddSet(70000,nil,col,3,"LG_HEALER_80",ANY,ANY,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"LG_HEALER_80",TRANSMOG,A(11613,22178,46017))
end


local function GetDeathKnightAppearances()
	local col = ""
	local set = ""
				
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,101,"DK_TR_MELEE_10",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12300,24551),A(12302,24553),A(12298,24549),A(12299,24550),A(12301,24552))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12569,25005),A(12567,25003),A(12571,25007),A(12570,25006),A(12568,25004))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12463,25190),A(12474,25192),A(12444,25188),A(12491,25189),A(12448,25191))
				
	set = SetCollector:AddSet(70000,nil,col,91,"DK_TR_MELEE_A_09",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11905,23576),A(11923,23579),A(11746,23577),A(11791,23580),A(11757,23578))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11905,23588),A(11923,23586),A(11746,23590),A(11791,23589),A(11757,23587))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11905,23583),A(11923,23585),A(11746,23581),A(11791,23582),A(11757,23584))
				
	set = SetCollector:AddSet(70000,nil,col,91,"DK_TR_MELEE_H_09",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11904,23603),A(11921,23605),A(11827,23601),A(11960,23602),A(11838,23604))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11904,23598),A(11921,23596),A(11827,23600),A(11960,23599),A(11838,23597))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11904,23593),A(11921,23595),A(11827,23591),A(11960,23592),A(11838,23594))
				
	set = SetCollector:AddSet(70000,nil,col,81,"DK_TR_MELEE_08",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11400,21810),A(11403,21812),A(11399,21808),A(11401,21809),A(11402,21811))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10325,22239),A(10328,22241),A(10326,22236),A(10329,22238),A(11644,22240))
				
	set = SetCollector:AddSet(70000,nil,col,71,"DK_TR_MELEE_07",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10191,18994),A(10193,18996),A(10189,18992),A(10190,18993),A(10192,18995))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10418,19521),A(10420,19524),A(10415,19518),A(10416,19519),A(10419,19523))
end


local function GetDruidAppearances()
	local col = ""
	local set = ""
				
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10,"DR_TR_CASTER_10",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12306,24900,50821),A(12308,24898,50819),A(12304,24902,50823),A(12305,24901,50822),A(12307,24899,50820))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12262,25027,51149),A(12340,25025,51147),A(12572,25023,51145),A(12239,25026,51148),A(12221,25024,51146))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12484,25168,51290),A(12506,25170,51292),A(12598,25172,51294),A(12450,25169,51291),A(12494,25171,51293))

	--[[set = SetCollector:AddSet(70000,nil,col,10,"DR_TR_MELEE_10",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,50826,50824,50828,50827,50825)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,51143,51140,51141,51144,51142)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,51296,51299,51298,51295,51297)

	set = SetCollector:AddSet(70000,nil,col,10,"DR_TR_HEALER_10",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,50108,50113,50106,50107,50109)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,51137,51135,51139,51138,51136)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,51302,51304,51300,51301,51303)]]--
	
	set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_CASTER_A_09",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11915,23288,48158),A(11896,23291,48161),A(11751,23289,48159),A(11984,23292,48162),A(11777,23290,48160))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11915,23294,48164),A(11896,23297,48167),A(11751,23296,48166),A(11984,23293,48163),A(11777,23295,48165))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11915,23301,48171),A(11896,23298,48168),A(11751,23299,48169),A(11984,23302,48172),A(11777,23300,48170))

	--[[set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_MELEE_A_09",LEATHER,DRUID,MELEE,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,48214,48217,48216,48213,48215)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,48211,48208,48209,48212,48210)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,48204,48207,48206,48203,48205)

	set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_HEALER_A_09",LEATHER,DRUID,HEALER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,48102,48131,48129,48132,48130)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,48134,48137,48136,48133,48135)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,48141,48138,48139,48142,48140)]]--
	
	set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_CASTER_H_09",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11916,23318,48174),A(11931,23321,48177),A(11829,23319,48176),A(11985,23322,48173),A(11858,23320,48175))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11916,23324,48181),A(11931,23327,48178),A(11829,23326,48179),A(11985,23323,48182),A(11858,23325,48180))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11916,23331,48184),A(11931,23328,48187),A(11829,23329,48186),A(11985,23332,48183),A(11858,23330,48185))

	--[[set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_MELEE_H_09",LEATHER,DRUID,MELEE,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,48188,48191,48189,48192,48190)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,48194,48197,48196,48193,48195)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,48201,48198,48199,48202,48200)

	set = SetCollector:AddSet(70000,nil,col,9,"DR_TR_HEALER_H_09",LEATHER,DRUID,HEALER,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,48154,48157,48156,48153,48155)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,48151,48148,48149,48152,48150)
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,48144,48147,48146,48143,48145)]]--

	set = SetCollector:AddSet(70000,nil,col,8,"DR_TR_CASTER_08",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11405,22428,46313),A(11408,21820,45352),A(11407,21822,45354),A(11404,21819,45351),A(11406,21821,45353))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11673,22311,46191),A(11669,22316,46196),A(11671,22314,46194),A(11670,22309,46189),A(11672,22312,46192))
	
	--[[set = SetCollector:AddSet(70000,nil,col,8,"DR_TR_MELEE_08",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,45356,45359,45358,45355,45357)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,46161,46157,46159,46158,46160)

	set = SetCollector:AddSet(70000,nil,col,8,"DR_TR_HEALER_08",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,45346,45349,45348,45345,45347)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,46184,46187,46186,46183,46185)]]--
	
	set = SetCollector:AddSet(70000,nil,col,7,"DR_TR_CASTER_07",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10162,18948,39545),A(10165,18951,39548),A(10167,18950,39547),A(10166,18947,39544),A(10164,18949,39546))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10378,19450,40467),A(10382,19453,40470),A(10380,19452,40469),A(10377,19449,40466),A(10379,19451,40468))
	
	--[[set = SetCollector:AddSet(70000,nil,col,7,"DR_TR_MELEE_07",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,39553,39556,39554,39557,39555)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,40473,40494,40471,40472,40493)

	set = SetCollector:AddSet(70000,nil,col,7,"DR_TR_HEALER_07",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,39531,39542,39538,39543,39539)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,40461,40465,40463,40460,40462)]]--
end


local function GetHunterAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,100,"HU_TR_RANGED_10",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12310,24561,50115),A(12312,24563,50117),A(12313,24564,50118),A(12309,24560,50114),A(12311,24562,50116))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12234,25031,51153),A(12261,25029,51151),A(12272,25028,51150),A(12350,25032,51154),A(12224,25030,51152))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12596,25164,51286),A(12481,25166,51288),A(12597,25167,51289),A(12453,25163,51285),A(12466,25165,51287))

	set = SetCollector:AddSet(70000,nil,col,90,"HU_TR_RANGED_A_09",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11910,23378,48250),A(11926,23381,48253),A(11710,23379,48251),A(11986,23382,48254),A(11775,23380,48252))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11910,23385,48257),A(11926,23387,48259),A(11710,23383,48255),A(11986,23384,48256),A(11775,23386,48258))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11910,23390,48262),A(11926,23388,48260),A(11710,23392,48264),A(11986,23391,48263),A(11775,23389,48261))
				
	set = SetCollector:AddSet(70000,nil,col,90,"HU_TR_RANGED_H_09",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11909,23405,48277),A(11927,23407,48279),A(11988,23403,48275),A(11987,23404,48276),A(11848,23406,48278))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11909,23400,48272),A(11927,23398,48270),A(11796,23402,48274),A(11987,23401,48273),A(11848,23399,48271))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11909,23395,48267),A(11927,23397,48269),A(11796,23393,48265),A(11987,23394,48266),A(11848,23396,48268))

	set = SetCollector:AddSet(70000,nil,col,80,"HU_TR_RANGED_08",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11411,21829,45361),A(11413,21831,45363),A(11414,21832,45364),A(11410,21828,45360),A(11412,21830,45362))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11659,22265,46143),A(11660,22267,46145),A(11658,22263,46141),A(11561,22264,46142),A(11565,22266,46144))

	set = SetCollector:AddSet(70000,nil,col,70,"HU_TR_RANGED_07",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10173,18962,39578),A(10176,18965,39581),A(10174,18963,39579),A(10177,18966,39582),A(10175,18964,39580))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10397,19478,40505),A(10399,19480,40507),A(10395,19476,40503),A(10396,19477,40504),A(10398,19479,40506))
end


local function GetMageAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,100,"MA_TR_CASTER_10",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12388,24659,50276),A(12391,24662,50279),A(12390,24661,50278),A(12387,24658,50275),A(12389,24660,50277))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12574,25036,51158),A(12573,25033,51155),A(12426,25034,51156),A(12256,25037,51159),A(12215,25035,51157))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12592,25159,51281),A(12595,25162,51284),A(12594,25161,51283),A(12591,25158,51280),A(12593,25160,51282))
	set = SetCollector:AddSet(70000,nil,col,90,"MA_TR_CASTER_A_09",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11918,22963,47748),A(11932,22966,47751),A(11758,22964,47749),A(11792,22967,47752),A(11944,22965,47750))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11918,22969,47754),A(11932,22972,47757),A(11758,22971,47756),A(11792,22968,47753),A(11944,22970,47755))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11918,22976,47761),A(11932,22973,47758),A(11758,22974,47759),A(11792,22977,47762),A(11944,22975,47760))
	set = SetCollector:AddSet(70000,nil,col,90,"MA_TR_CASTER_H_09",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11945,22989,47774),A(11947,22992,47777),A(11836,22991,47776),A(11854,22988,47773),A(11946,22990,47775))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11945,22986,47771),A(11947,22983,47768),A(11836,22984,47769),A(11854,22987,47772),A(11946,22985,47770))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11945,22979,47764),A(11947,22982,47767),A(11836,22981,47766),A(11854,22978,47763),A(11946,22980,47765))
	set = SetCollector:AddSet(70000,nil,col,80,"MA_TR_CASTER_08",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11415,21833,45365),A(11418,21836,45369),A(11417,21835,45368),A(11652,22254,46131),A(11416,21834,45367))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11650,22252,46129),A(10463,22257,46134),A(11651,22253,46130),A(10461,22255,46132),A(11653,22256,46133))
	set = SetCollector:AddSet(70000,nil,col,70,"MA_TR_CASTER_07",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10146,18914,39491),A(10149,18917,39494),A(10147,18915,39492),A(10150,18918,39495),A(10148,18916,39493))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10358,19406,40416),A(10361,19409,40419),A(10360,19408,40418),A(10357,19405,40415),A(10359,19407,40417))
end


local function GetPaladinAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,101,"PA_TR_MELEE_10",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12411,24693),A(12409,24691),A(12413,24695),A(12412,24694),A(12410,24692))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12280,25040),A(12240,25038),A(12263,25042),A(12248,25041),A(12225,25039))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12498,25155),A(12452,25157),A(12485,25153),A(12469,25154),A(12456,25156))
	set = SetCollector:AddSet(70000,nil,col,91,"PA_TR_MELEE_A_09",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11907,23677),A(11925,23679),A(11763,23675),A(12005,23676),A(11738,23678))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11907,23687),A(11925,23685),A(11763,23689),A(12005,23688),A(11738,23686))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11907,23682),A(11925,23684),A(11763,23680),A(12005,23681),A(11738,23683))
	set = SetCollector:AddSet(70000,nil,col,91,"PA_TR_MELEE_H_09",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11908,23702),A(11924,23700),A(11842,23704),A(12006,23703),A(11819,23701))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11908,23697),A(11924,23695),A(11842,23699),A(12006,23698),A(11819,23696))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11908,23692),A(11924,23694),A(11842,23690),A(12006,23691),A(11819,23693))
	set = SetCollector:AddSet(70000,nil,col,81,"PA_TR_MELEE_08",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11421,21844),A(11422,21847),A(11424,21842),A(11419,21843),A(11420,21846))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11668,22277),A(11664,22273),A(11666,22275),A(11667,22276),A(11665,22274))
	set = SetCollector:AddSet(70000,nil,col,71,"PA_TR_MELEE_07",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10194,19010),A(10197,19012),A(10195,19008),A(10198,19009),A(10196,19005))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10427,19543),A(10429,19545),A(10425,19541),A(10426,19542),A(10428,19544))
end


local function GetPriestAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,101,"PR_TR_CASTER_10",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12416,24702),A(12419,24968),A(12418,24704),A(12415,24701),A(12417,24703))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12254,25062),A(12438,25060),A(12341,25058),A(12344,25061),A(12575,25059))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12475,25133),A(12588,25135),A(12507,25137),A(12509,25134),A(12589,25136))
	set = SetCollector:AddSet(70000,nil,col,91,"PR_TR_CASTER_A_09",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11983,23229),A(11934,23232),A(11723,23231),A(11980,23228),A(11733,23230))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11919,23234),A(11934,23237),A(11723,23236),A(11980,23233),A(11733,23235))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11919,23241),A(11934,23238),A(11723,23239),A(11980,23242),A(11733,23240))
	set = SetCollector:AddSet(70000,nil,col,91,"PR_TR_CASTER_H_09",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11920,23224),A(11935,23227),A(11807,23226),A(11982,23223),A(11815,23225))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11920,23221),A(11935,23218),A(11807,23219),A(11982,23222),A(11815,23220))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11920,23214),A(11935,23217),A(11807,23216),A(11982,23213),A(11815,23215))
	set = SetCollector:AddSet(70000,nil,col,81,"PR_TR_CASTER_08",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11427,21858),A(11431,21860),A(11430,21862),A(11428,21859),A(11429,21861))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11678,22292),A(11675,22286),A(11676,22289),A(11674,22284),A(11677,22291))
	set = SetCollector:AddSet(70000,nil,col,71,"PR_TR_CASTER_07",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10157,18933),A(10160,18937),A(10158,18935),A(10161,18938),A(10159,18936))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10157,19439),A(10374,19442),A(10373,19441),A(10371,19437),A(10372,19440))
end


local function GetRogueAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,100,"RO_TR_MELEE_10",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12296,24547),A(12303,24554),A(12294,24545),A(12295,24546),A(12297,24548))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12288,25065),A(12244,25063),A(12252,25067),A(12260,25066),A(12222,25064))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12505,25130),A(12467,25132),A(12473,25128),A(12482,25129),A(12495,25131))
				
	set = SetCollector:AddSet(70000,nil,col,90,"RO_TR_MELEE_A_09",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11914,23348),A(11929,23351),A(11730,23349),A(11936,23352),A(11716,23350))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11914,23355),A(11929,23357),A(11730,23353),A(11936,23354),A(11716,23356))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11914,23360),A(11929,23358),A(11730,23362),A(11936,23361),A(11716,23359))
				
	set = SetCollector:AddSet(70000,nil,col,90,"RO_TR_MELEE_H_09",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11913,23375),A(11930,23377),A(11813,23373),A(11966,23374),A(11802,23376))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11913,23370),A(11930,23368),A(11813,23372),A(11966,23371),A(11802,23369))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11913,23365),A(11930,23367),A(11813,23363),A(11966,23364),A(11802,23366))
				
	set = SetCollector:AddSet(70000,nil,col,80,"RO_TR_MELEE_08",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11434,21865),A(11436,21867),A(11432,21863),A(11433,21864),A(11435,21866))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11647,22249),A(11649,22251),A(11645,22247),A(11646,22248),A(11648,22250))
				
	set = SetCollector:AddSet(70000,nil,col,70,"RO_TR_MELEE_07",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10170,18959),A(10172,18961),A(10168,18957),A(10169,18958),A(10171,18960))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10392,19472),A(10394,19475),A(10389,19469),A(10390,19470),A(10393,19473))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,100,"SH_TR_CASTER_10",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12538,24921),A(12550,24923),A(12547,24919),A(12524,24859),A(12548,24920),A(12529,24869),A(12549,24922),A(12559,24985))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12355,25080),A(12279,25082),A(12345,25078),A(12265,24502),A(12282,25079),A(12258,24492),A(12223,25081),A(12219,24476))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12458,25115),A(26844,25113),A(12510,25117),A(12488,24797),A(12500,25116),A(12479,24784),A(12587,25114),A(12471,24771))
				
	set = SetCollector:AddSet(70000,nil,col,90,"SH_TR_CASTER_A_09",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11911,23440),A(11898,23442),A(11785,23438),A(11742,22890),A(11943,23439),A(11722,22899),A(11747,23441))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11911,23445),A(11898,23447),A(11785,23443),A(11737,22530),A(11943,23444),A(11722,22504),A(11747,23446))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11911,23450),A(11898,23448),A(11785,23452),A(11737,22539),A(11943,23451),A(11722,22505),A(11747,23449))
				
	set = SetCollector:AddSet(70000,nil,col,90,"SH_TR_CASTER_H_09",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11912,23465),A(11928,23467),A(11853,23463),A(11970,23464),A(11828,23466))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11912,23460),A(11928,23458),A(11853,23462),A(11970,23434),A(11828,23459))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11912,23455),A(11928,23457),A(11853,23453),A(11970,23429),A(11828,23456))
				
	set = SetCollector:AddSet(70000,nil,col,80,"SH_TR_CASTER_08",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11438,21874),A(11440,21876),A(11441,21877),A(11437,21873),A(11439,21875))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11681,22329),A(11683,22331),A(11679,22326),A(11680,22327),A(11439,22330))
				
	set = SetCollector:AddSet(70000,nil,col,70,"SH_TR_CASTER_07",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10178,18974),A(10181,18976),A(10179,18972),A(10114,18785),A(10182,18973),A(10089,18746),A(10180,18975),A(10067,18710))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10402,19489),A(10404,19491),A(10400,19487),A(10292,19346),A(10401,19488),A(10316,19349),A(10403,19490),A(10228,19066))
end


local function GetWarlockAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,101,"WK_TR_CASTER_10",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12371,24637),A(12374,24640),A(12373,24639),A(12370,24636),A(12372,24638))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12579,25086),A(12576,25083),A(12577,25084),A(12580,25087),A(12578,25085))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12586,25109),A(12465,25112),A(12459,25111),A(12476,25108),A(12493,25110))
	set = SetCollector:AddSet(70000,nil,col,91,"WK_TR_CASTER_A_09",CLOTH,WARLOCK,CASTER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11948,22999),A(11949,23002),A(11893,23001),A(11950,22998),A(11778,23000))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11948,23004),A(11949,23007),A(11893,23006),A(11950,23003),A(11778,23005))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11948,22993),A(11949,22996),A(11893,23006),A(11950,23003),A(11778,23005))
	set = SetCollector:AddSet(70000,nil,col,91,"WK_TR_CASTER_H_09",CLOTH,WARLOCK,CASTER,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11917,23016),A(11933,23013),A(11951,23014),A(11952,23017),A(11847,23015))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11917,23019),A(11933,23022),A(11951,23021),A(11952,23018),A(11847,23020))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11917,23011),A(11933,23008),A(11951,23009),A(23012,23012),A(11847,23010))
	set = SetCollector:AddSet(70000,nil,col,81,"WK_TR_CASTER_08",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11443,21883),A(11447,21887),A(11446,21886),A(11444,21884),A(11445,21885))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11657,22262),A(11655,22259),A(11656,22260),A(11654,22258),A(11566,22261))
	set = SetCollector:AddSet(70000,nil,col,71,"WK_TR_CASTER_07",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10151,18919),A(10154,18922),A(10152,18920),A(10155,18923),A(10153,18921))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10363,19411),A(10366,19414),A(10365,19413),A(10362,19410),A(10364,19412))
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,101,"WR_TR_MELEE_10",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12291,24542,50080),A(12293,24544,50082),A(12289,24540,50078),A(12290,24541,50079),A(12292,24543,50081))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12243,25090,51212),A(12253,25088,51210),A(12233,25092,51214),A(12271,25091,51213),A(12226,25089,51211))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12582,25105,51227),A(12585,25107,51229),A(12581,25103,51225),A(12583,25104,51226),A(12584,25106,51228))
	
	set = SetCollector:AddSet(70000,nil,col,101,"WR_TR_TANK_10",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12291,24926,50848),A(12293,24924,50846),A(12289,24928,50850),A(12290,24927,50849),A(12292,24925,50847))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12243,25096,51218),A(12253,25093,51215),A(12233,25097,51219),A(12271,25095,51217),A(12226,25094,51216))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12582,25099,51221),A(12585,25102,51224),A(12581,25098,51220),A(12583,25100,51222),A(12584,25101,51223))
	
	set = SetCollector:AddSet(70000,nil,col,91,"WR_TR_MELEE_A_09",PLATE,WARRIOR,TANK,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11903,23540,48429),A(11922,23553,48448),A(11712,23545,48436),A(11894,23554,48449),A(11734,23550,48445))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11903,23541,48430),A(11922,23559,48454),A(11712,23555,48450),A(11894,23557,48452),A(11734,23551,48446))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11903,23543,48433),A(11922,23560,48455),A(11712,23556,48451),A(11894,23558,48453),A(11734,23552,48447))
	
	set = SetCollector:AddSet(70000,nil,col,91,"WR_TR_MELEE_A_09",PLATE,WARRIOR,MELEE,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11903,23498,48371),A(11922,23501,48374),A(11712,23499,48372),A(11894,23502,48375),A(11734,23500,48373))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11903,23505,48378),A(11922,23507,48380),A(11712,23503,48376),A(11894,23504,48377),A(11734,23506,48379))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11903,23510,48383),A(11922,23508,48381),A(11712,23512,48385),A(11894,23511,48384),A(11734,23509,48382))
	
	set = SetCollector:AddSet(70000,nil,col,91,"WR_TR_MELEE_H_09",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11906,23515),A(11965,23517),A(11798,23513),A(11856,23514),A(11814,23516))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11906,23525),A(11965,23527),A(11798,23523),A(11856,23524),A(11814,23526))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11906,23520),A(11965,23522),A(11798,23518),A(11856,23519),A(11814,23521))
	
	set = SetCollector:AddSet(70000,nil,col,81,"WR_TR_MELEE_08",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11450,21890,45425),A(11453,21893,45428),A(11449,21889,45424),A(11451,21891,45426),A(11452,21892,45427))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11663,22287,46166),A(11662,22288,46167),A(11661,22283,46162),A(11560,22285,46164),A(11563,22290,46169))
	
	set = SetCollector:AddSet(70000,nil,col,81,"WR_TR_MELEE_08",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11450,21896,45431),A(11453,21898,45433),A(11449,21894,45429),A(11451,21895,45430),A(11452,21897,45432))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11663,22272,46151),A(11662,22270,46149),A(11661,22268,46146),A(11560,22269,46148),A(11563,22271,46150))
	
	set = SetCollector:AddSet(70000,nil,col,71,"WR_TR_MELEE_07",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10184,18988,39610),A(10187,18991,39613),A(10185,18989,39611),A(10188,18997,39622),A(10186,18990,39612))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10408,19514,40546),A(10410,19516,40548),A(10406,19512,40544),A(10407,19513,40545),A(10409,19515,40547))
	
	set = SetCollector:AddSet(70000,nil,col,71,"WR_TR_MELEE_07",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10184,18983,39605),A(10187,18986,39608),A(10185,18984,39606),A(10188,18987,39609),A(10186,18985,39607))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10408,19501,40528),A(10410,19503,40530),A(10406,19498,40525),A(10407,19500,40527),A(10409,19502,40529))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion03Appearances()
	GetLegendaries()

	GetDeathKnightAppearances()
	GetDruidAppearances()
	GetHunterAppearances()
	GetMageAppearances()
	GetPaladinAppearances()
	GetPriestAppearances()
	GetRogueAppearances()
	GetShamanAppearances()
	GetWarlockAppearances()
	GetWarriorAppearances()
end