-- Appearances not necessarily associated with a specific expansion (e.g., Starter and Holiday sets)

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

local function GetHeritageAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70305
    local sets = {
        IncludeSet(COLLECTION,VERSION,1522,ANY_ARMOR,ANY_CLASS,HORDE), -- Highmountain's Heritage
        IncludeSet(COLLECTION,VERSION,1523,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Shal'dorei
        IncludeSet(COLLECTION,VERSION,1524,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of the Ren'dorei
        IncludeSet(COLLECTION,VERSION,1525,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of the Lightforged
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80001
    sets = {
        IncludeSet(COLLECTION,VERSION,1803,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Heritage of the Bronzebeard
        IncludeSet(COLLECTION,VERSION,1804,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Heritage of the Sin'dorei

        -- Allied Races
        IncludeSet(COLLECTION,VERSION,1679,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of the Dark Iron
        IncludeSet(COLLECTION,VERSION,1680,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Warsong
        IncludeSet(COLLECTION,VERSION,1681,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Blackrock
        IncludeSet(COLLECTION,VERSION,1682,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Frostwolves
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80105
    sets = {
        IncludeSet(COLLECTION,VERSION,1741,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of Kul Tiras
        IncludeSet(COLLECTION,VERSION,1742,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Zandalari
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80200
    sets = {
        IncludeSet(COLLECTION,VERSION,1828,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of Gnomeregan
        IncludeSet(COLLECTION,VERSION,1829,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Shu'halo
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80300
    sets = {
        IncludeSet(COLLECTION,VERSION,1976,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of Gilneas
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 80305
    sets = {
        IncludeSet(COLLECTION,VERSION,1977,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of Kezan
        IncludeSet(COLLECTION,VERSION,1980,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Heritage of the Mechagnome
        IncludeSet(COLLECTION,VERSION,1981,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of the Vulpera
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100007
    sets = {
        IncludeSet(COLLECTION,VERSION,2833,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of Draenor
        IncludeSet(COLLECTION,VERSION,2834,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of Draenor
        IncludeSet(COLLECTION,VERSION,2835,ANY_ARMOR,ANY_CLASS,HORDE), -- Heritage of Draenor
        IncludeSet(COLLECTION,VERSION,2830,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Lion's Heritage
        IncludeSet(COLLECTION,VERSION,2831,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Lion's Heritage
        IncludeSet(COLLECTION,VERSION,2832,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Lion's Heritage
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100105
    sets = {
        -- Kirin Tor Regalia
        IncludeSet(COLLECTION,VERSION,3085,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- High Scholar's Arcana
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100107
    sets = {
        IncludeSet(COLLECTION,VERSION,3086,ANY_ARMOR,ANY_CLASS,HORDE), -- Forsaken Champion's Attire
        IncludeSet(COLLECTION,VERSION,3130,ANY_ARMOR,ANY_CLASS,ALLIANCE), -- Kaldorei Protector's Adornment, Raiment of Amirdrassil
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100207
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    sets = {
        IncludeSet(COLLECTION,VERSION,3346,ANY_ARMOR,ANY_CLASS,ALLIANCE,3347), -- Endurance of Temple Telhamat, Orange
        IncludeSet(COLLECTION,VERSION,3350,ANY_ARMOR,ANY_CLASS,HORDE,3515), -- Loyalty of the Darkspear, Red
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

end

local function GetHolidayAppearances()
    local COLLECTION, VERSION = SetCollector.HOLIDAY, 70000
    local sets = {
        CreateSet(COLLECTION,10001,"HO_FESTIVE_DRESS",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("GREEN",NO_TRANSMOG,I(21157)),
            CreateVariant("PINK",NO_TRANSMOG,I(21538)),
            CreateVariant("PURPLE",NO_TRANSMOG,I(21539)),
            CreateVariant("RED",NO_TRANSMOG,I(151771))
        ),
        CreateSet(COLLECTION,10002,"HO_FESTIVE_SUIT",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BLACK",NO_TRANSMOG,I(21541)),
            CreateVariant("BLUE",NO_TRANSMOG,I(21544)),
            CreateVariant("TEAL",NO_TRANSMOG,I(21543)),
            CreateVariant("RED",NO_TRANSMOG,I(151772))
        ),
        CreateSet(COLLECTION,10003,"HO_LOVELY_DRESS",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BLACK",NO_TRANSMOG,I(151770)),
            CreateVariant("BLUE",NO_TRANSMOG,I(151768)),
            CreateVariant("PURPLE",NO_TRANSMOG,I(151767)),
            CreateVariant("RED",NO_TRANSMOG,I(151769))
        ),
        CreateSet(COLLECTION,10004,"HO_DINNER_SUIT",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BLUE",NO_TRANSMOG,I(151765)),
            CreateVariant("PURPLE",NO_TRANSMOG,I(151764)),
            CreateVariant("RED",NO_TRANSMOG,I(151766))
        ),
        CreateSet(COLLECTION,10005,"HO_ELEGANT_DRESS",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_ELEGANT_DRESS",NO_TRANSMOG,I(151806))
        ),
        CreateSet(COLLECTION,10006,"HO_TUXEDO",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_TUXEDO",NO_TRANSMOG,I(6833),I(151804))
        ),
        CreateSet(COLLECTION,10007,"HO_MIDSUMMER_REVELER",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_MIDSUMMER_REVELER",NO_TRANSMOG,I(23324),I(34685),I(34683))
        ),
        CreateSet(COLLECTION,10008,"HO_BREWFEST_DRESS",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BLUE",NO_TRANSMOG,I(33968),I(33863),I(33966)),
            CreateVariant("BROWN",NO_TRANSMOG,I(33864),I(33863),I(33966)),
            CreateVariant("GREEN",NO_TRANSMOG,I(33967),I(33863),I(33966)),
            CreateVariant("PURPLE",NO_TRANSMOG,I(33969),I(33863),I(33966))
        ),
        CreateSet(COLLECTION,10009,"HO_BREWFEST_REGALIA",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("BLUE",NO_TRANSMOG,I(33968),I(33862),I(33868)),
            CreateVariant("BROWN",NO_TRANSMOG,I(33864),I(33862),I(33868)),
            CreateVariant("GREEN",NO_TRANSMOG,I(33967),I(33862),I(33868)),
            CreateVariant("PURPLE",NO_TRANSMOG,I(33969),I(33862),I(33868))
        ),
        CreateSet(COLLECTION,10010,"HO_PILGRIMS_ATTIRE",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_PILGRIMS_ATTIRE",NO_TRANSMOG,I(46723),I(46800),I(44788))
        ),
        CreateSet(COLLECTION,10011,"HO_PILGRIMS_DRESS",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_PILGRIMS_DRESS",NO_TRANSMOG,I(46723),I(44785),I(44788))
        ),
        CreateSet(COLLECTION,10012,"HO_PILGRIMS_ROBE",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("HO_PILGRIMS_ROBE",NO_TRANSMOG,I(46723),I(46824),I(44788))
        ),
        CreateSet(COLLECTION,10013,"HO_WINTER_GARB",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("GREEN",NO_TRANSMOG,I(21525),I(151792),I(151791)),
            CreateVariant("RED",NO_TRANSMOG,I(21524),I(151790),I(151791))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetStarterAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000
    local sets = {
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,DEATHKNIGHT,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(9034,16090),A(9036,16092),A(7003,16094),A(9032,16088),A(9035,16091),A(9031,16087),A(9033,16089),A(9037,16093),A(9030,16086))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,DEMONHUNTER,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(28231,76664),A(2352,60968),A(28233,76668),A(28232,76669),A(28228,76667),A(28225,76671),A(28230,76665),A(28226,76670),A(28700,60967))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,DRUID,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(1977,2258),A(1978,2259),A(1312,1372))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,HUNTER,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(28522,28823),A(186,47),A(182,43),A(889,9213))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,MAGE,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(6201,9299),A(6197,9298),A(1312,1372))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,MONK,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(15996,36894),A(17120,39119),A(17123,39104),A(15997,36895),A(16274,37506))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,PALADIN,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(28520,28830),A(6200,9297),A(12832,25751),A(156,17),A(802,746))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,PRIEST,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(1970,2250),A(168,29),A(167,28),A(155,16))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,ROGUE,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(28776,28825),A(165,26),A(164,25),A(665,590))
            --CreateVariant("STARTER",NO_TRANSMOG,A(12107,24270),A(12078,24263),A(12125,24269),A(12124,24268),A(12126,24271),A(665,590))	-- Worgen
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,SHAMAN,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(12833,25752),A(6197,25753),A(156,17),A(802,746))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,WARLOCK,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(172,33),A(396,264),A(173,34),A(155,16))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,WARRIOR,ALLIANCE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(28524,28822),A(159,20),A(160,21),A(154,15),A(802,746))
        ),
        CreateSet(COLLECTION,10001,"STARTER",ANY_ARMOR,WARRIOR,HORDE,NO_LOCATION,
            CreateVariant("STARTER",NO_TRANSMOG,A(23206,28833),A(183,44),A(184,45),A(154,15),A(802,746))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion00Appearances(expansion)
	if expansion.v00 then
		GetHolidayAppearances()
		GetStarterAppearances()
        GetHeritageAppearances()
	end
end

function SetCollector:GetVersion00Status()
	return SetCollector:GetExpansionStatus("0")
end

function SetCollector:SetVersion00Status()
	SetCollector:SetExpansionStatus("0")
end