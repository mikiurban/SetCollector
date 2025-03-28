--
-- Defaults
--

local defaults = {
	char = {
		filters = {
			favorites = false,
			obtainable = false,
			transmog = false,
			hidden = false
		},
		sets = {}
	},
	global = {
        debug = false,
        docked = true,
		expansions = {
			v00 = true,
			v01 = true,
			v02 = true,
			v03 = true,
			v04 = true,
			v05 = true,
			v06 = true,
			v07 = true,
			v08 = true,
			v09 = true,
			v10 = true,
			v11 = true
		},
		minimap = {
			hide = false
        },
        position = "left",
        tooltips = {
            show_set = true,
            show_location = true
        },
		collections = {},
		export = {},
		setMap = {}
	}
}

--
--  Local Variables
--

local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)
local WOW_VERSION = select(4,GetBuildInfo())

-- Collection Types
local OUTFITS     = { ID =  1, Code = "OU", Description = "OUTFITS" }
local ARTIFACT    = { ID =  2, Code = "AR", Description = "ARTIFACT" }
local LEGENDARY   = { ID =  3, Code = "ZZ", Description = "LEGENDARY" }
local RAID        = { ID =  4, Code = "TR", Description = "RAID" }
local DUNGEON     = { ID =  5, Code = "DG", Description = "DUNGEON" }
local CHALLENGE   = { ID =  6, Code = "CD", Description = "CHALLENGE" }
local PVP         = { ID =  7, Code = "PV", Description = "PVP" }
local EXPANSION   = { ID =  8, Code = "EX", Description = "EXPANSION" }
local CRAFTED     = { ID =  9, Code = "CR", Description = "CRAFTED" }
local OTHER       = { ID = 10, Code = "OT", Description = "OTHER" }
local TRIAL_STYLE = { ID = 11, Code = "TS", Description = "TRIAL_STYLE" }
local CUSTOM      = { ID = 12, Code = "CU", Description = "CUSTOM" }
local HOLIDAY     = { ID = 13, Code = "HO", Description = "HOLIDAY" }
local TRADING     = { ID = 14, Code = "TP", Description = "TRADING" }

local OBTAIN		= true
local NO_OBTAIN 		= false

local TRANSMOG 		= true
local NO_TRANSMOG 	= false

--
--  Helpers
--

local function GetCount(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local function CreateCollections()
	local collections = {
		[OUTFITS.ID] 		= { Title = OUTFITS.Description, Sets = { } },
		[ARTIFACT.ID] 	= { Title = ARTIFACT.Description, Sets = { } },
		[LEGENDARY.ID] 	= { Title = LEGENDARY.Description, Sets = { } },
		[RAID.ID] 			= { Title = RAID.Description, Sets = { } },
		[DUNGEON.ID] 		= { Title = DUNGEON.Description, Sets = { } },
		[CHALLENGE.ID] 	= { Title = CHALLENGE.Description, Sets = { } },
		[PVP.ID] 				= { Title = PVP.Description, Sets = { } },
		[EXPANSION.ID] 	= { Title = EXPANSION.Description, Sets = { } },
		[CRAFTED.ID] 		= { Title = CRAFTED.Description, Sets = { } },
		[OTHER.ID] 			= { Title = OTHER.Description, Sets = { } },
		[TRIAL_STYLE.ID]= { Title = TRIAL_STYLE.Description, Sets = { } },
		[CUSTOM.ID] 		= { Title = CUSTOM.Description, Sets = { } },
		[HOLIDAY.ID] 		= { Title = HOLIDAY.Description, Sets = { } },
		[TRADING.ID] 		= { Title = TRADING.Description, Sets = { } },
		Appearances = { }
	}
	return collections
end

--
--  Global Functions
--

function SetCollector:GetCollectionsList()
	local db = SetCollector.db.global.collections
	local collections = {}

	for i=1, #db do
		collections[i] = {
			Title = db[i].Title,
			sets = {}
		}
		if db[i].Sets then
			local sortedList = SetCollector:SortList(db[i].Sets, "key", "DESC")
			for j,value in sortedList do
				collections[i].sets[j] = {
                    Title = db[i].Sets[j].Title,
                    Location = db[i].Sets[j].Location
				}
			end
		end
	end

	return collections
end

function SetCollector:GetAppearanceSources(appearanceID)
	-- Taken from WardrobeCollectionFrame_GetSortedAppearanceSources(appearanceID)
	local comparison = function(source1, source2)
		if ( source1.isCollected ~= source2.isCollected ) then
			return source1.isCollected;
		end

		-- if ( source1.quality and source2.quality ) then
		-- 	if ( source1.quality ~= source2.quality ) then
		-- 		return source1.quality > source2.quality;
		-- 	end
		-- else
		-- 	return source1.quality;
		-- end

		return source1.sourceID > source2.sourceID;
	end

	if appearanceID then
		local sourceIDs = C_TransmogCollection.GetAllAppearanceSources(appearanceID);
        local sources = { }
        for i=1, #sourceIDs do
            local categoryID, visualID, canEnchant, icon, isCollected, itemLink, transmogLink = C_TransmogCollection.GetAppearanceSourceInfo(sourceIDs[i])
            sources[i] = {}
            sources[i]["isCollected"] = isCollected
            sources[i]["sourceID"] = sourceIDs[i]
        end
		--local sources = C_TransmogCollection.GetAppearanceSources(appearanceID); -- now requires additional parameters
		if sources then table.sort(sources, comparison) end
		return sources;
	end
end

function SetCollector:GetCollectedCount(collection, set, variant)
	local collectedCount = 0
	local db = SetCollector.db.global
	if db.collections[collection].Sets[set].Variants[variant] then
		local appearances = db.collections[collection].Sets[set].Variants[variant].Appearances or { }
		for i=1, #appearances do
			local isCollected
			if appearances[i].ID then
				local sources = C_TransmogCollection.GetAllAppearanceSources(appearances[i].ID)
				--local sources = SetCollector:GetAppearanceSources(appearances[i].ID)
				if sources then
					for j=1, #sources do
                        --if sources[j] and sources[j].isCollected then
                        local info = C_TransmogCollection.GetAppearanceInfoBySource(sources[j])
                        if info and info.sourceIsCollected then
						    isCollected = true
						end
					end
				end
			end
			if isCollected then collectedCount = collectedCount + 1 end
		end
	end
	--if sourcesCount == 0 and collectedCount == 0 then collectedCount = "*" end

	return collectedCount
end

function SetCollector:GetCompletedVariantCount(collection, set)
	local completedVariantCount = 0
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local isVariantCollected = SetCollector:IsVariantCollected(collection, set, i)
		if isVariantCollected then
			completedVariantCount = completedVariantCount + 1
		end
	end
	return completedVariantCount
end

function SetCollector:IsSourceCollected(sourceID)
  if sourceID then
    return select(5, C_TransmogCollection.GetAppearanceSourceInfo(sourceID))
  end
  return false
end

function SetCollector:IsAppearanceCollected(appearanceID)
	local anyCollected = false
	if appearanceID then
		local sources = C_TransmogCollection.GetAllAppearanceSources(appearanceID)
		if sources then
			for j=1, #sources do
				local isCollected = SetCollector:IsSourceCollected(sources[j])
				if not anyCollected and isCollected then
					anyCollected = true
				end
			end
		end
	end
	return anyCollected
end

function SetCollector:GetCollectedAppearanceSourceID(appearanceID)
	if appearanceID then
		local sources = C_TransmogCollection.GetAllAppearanceSources(appearanceID)
		if sources then
			for j=1, #sources do
				local isCollected = SetCollector:IsSourceCollected(sources[j])
				if isCollected then
					return sources[j]
				end
			end
		end
	end
	return nil
end

function SetCollector:IsSetFullyCollected(collection, set)
	local db = SetCollector.db.global.collections
	local completedVariantCount = SetCollector:GetCompletedVariantCount(collection, set)
	local variantCount = #db[collection].Sets[set].Variants
	if completedVariantCount > 0 and completedVariantCount == variantCount then
		return true
	end
	return false
end

function SetCollector:IsSetPartiallyCollected(collection, set)
	local db = SetCollector.db.global.collections
	local completedVariantCount = SetCollector:GetCompletedVariantCount(collection, set)
	local variantCount = #db[collection].Sets[set].Variants
	if completedVariantCount > 0 then
		return true
	end
	return false
end

function SetCollector:IsVariantCollected(collection, set, variant)
	local db = SetCollector.db.global.collections
	local collectedCount = SetCollector:GetCollectedCount(collection, set, variant)
	local appearanceCount = #db[collection].Sets[set].Variants[variant].Appearances
	if collectedCount > 0 and collectedCount == appearanceCount then
		return true
	end
end

function SetCollector:IsSetObtainable(collection, set)
	local isObtainable = false
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local collected = SetCollector:GetCollectedCount(collection, set, i)
		if collected ~= "*" then
			isObtainable = true
			break
		end
	end
	return isObtainable
end

function SetCollector:GetSetTooltip(self)
	if self.Collection ~= nil and self.Collection ~= 0 then
		local db = SetCollector.db.global.collections
		local collection = db[self.Collection].Title
		local set = L[db[self.Collection].Sets[self.Set].Title] or L["MISSING_LOCALIZATION"]

		local isObtainable = SetCollector:IsSetObtainable(self.Collection, self.Set)

		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
		GameTooltip:SetText(set, 1, 1, 1)

		for i=1, #db[self.Collection].Sets[self.Set].Variants do
			local collected = SetCollector:GetCollectedCount(self.Collection, self.Set, i)
			local appearances = #db[self.Collection].Sets[self.Set].Variants[i].Appearances
			if collected ~= "*" or not SetCollector.db.char.filters.obtainable then
				local line = ""
                local title = db[self.Collection].Sets[self.Set].Variants[i].Title
				if appearances then
					line = "- "..collected.."/"..appearances.." "..(L[title] or title)
				else
					line = "- "..collected.."/? "..(L[title] or title)
				end
				GameTooltip:AddLine(line)
			end
		end

		if not isObtainable then
			GameTooltip:AddLine(L["NO_OBTAIN"], 1, 0, 0)
		end

		local rightclick = L["RIGHT_CLICK_FAVORITE"] or L["MISSING_LOCALIZATION"]
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(rightclick, 1, 1, 1)

		local shiftrightclick = L["SHIFT_RIGHT_CLICK_HIDDEN"] or L["MISSING_LOCALIZATION"]
		GameTooltip:AddLine(shiftrightclick, 1, 1, 1)

		GameTooltip:Show()
	end
end

function SetCollector:BitAND(a,b)--Bitwise and
	local p,c=1,0
	while a>0 and b>0 do
			local ra,rb=a%2,b%2
			if ra+rb>1 then c=c+p end
			a,b,p=(a-ra)/2,(b-rb)/2,p*2
	end
	return c
end

function SetCollector:SetIsFilteredOutByClassMask(collection, set)
	local db = SetCollector.db.global.collections
	local mask = db[collection].Sets[set].ClassMask
	local cleanMask = SetCollector:BitAND(mask, math.pow(2, GetNumClasses()) - 1) -- Sometimes the class mask includes non-existent classes
	if cleanMask == 0 then
		return false
	end
	local _, _, classId = UnitClass("player")
	local classFlag = math.pow(2, classId - 1) -- classId is ones based, we need zeroes based.  WAR = 1 (2^(1-1) = 1), PAL = 2 (2^(2-1) = 2), etc
	return SetCollector:BitAND(cleanMask, classFlag) == 0
end

function SetCollector:SetIsFilteredOutByFaction(collection, set, faction)
	local db = SetCollector.db.global.collections
	local setFaction = db[collection].Sets[set].Faction
	if (setFaction == SetCollector.ANY_FACTION or setFaction == faction or faction == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:IsObtainableSet(collection, set)
	local isObtainable = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isObtainable = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Obtainable
	end
	return isObtainable
end

function SetCollector:IsTransmogSet(collection, set)
	local isTransmog = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isTransmog = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Transmog
	end
	return isTransmog
end

function SetCollector:IsFavoriteSet(set)
	local isFavorite = false
	if SetCollector.db.char.sets[set] then
		isFavorite = SetCollector.db.char.sets[set].favorite
	end
	return isFavorite
end

function SetCollector:SetFavoriteSet(self)
	local db = SetCollector.db.char
	if not db.sets[self.Set] then
		db.sets[self.Set] = {
			favorite = false
		}
	end
	db.sets[self.Set].favorite = not db.sets[self.Set].favorite
	if not db.sets[self.Set].variants or #db.sets[self.Set].variants == 0 then
		db.sets[self.Set].variants = {}
		local variants = SetCollector.db.global.collections[self.Collection].Sets[self.Set].Variants
		for i=1, #variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	else
		for i=1, #db.sets[self.Set].variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	end
	if db.sets[self.Set].favorite then
		self.Favorite:Show()
	else
		self.Favorite:Hide()
	end
end

function SetCollector:IsHiddenSet(set)
	local isHidden = false
	if SetCollector.db.char.sets[set] then
		isHidden = SetCollector.db.char.sets[set].hidden
	end
	return isHidden
end

function SetCollector:SetHiddenSet(self)
	local db = SetCollector.db.char
	if not db.sets[self.Set] then
		db.sets[self.Set] = {
			hidden = false
		}
	end
	db.sets[self.Set].hidden = not db.sets[self.Set].hidden
end

function SetCollector:SetFavoriteVariant(set, variant)
	local char = SetCollector.db.char
	if char.sets[set] and char.sets[set].variants[variant] then
		char.sets[set].variants[variant].favorite = not char.sets[set].variants[variant].favorite
	else
		char.sets[set].variants[variant] = {
			favorite = true
		}
	end
end

--
-- Setup Database
--

function SetCollector:AddAppearances(debug)
	--if debug then	SetCollector:Print("Adding Appearances to database") end
	SetCollector.db.global.collections = CreateCollections()
	--if debug then SetCollector:Print("Added "..#SetCollector.db.global.collections.." collections.") end

	-- FUTURE: Older expansion sets disabled by default. Can be enabled in settings.
	local expansions = SetCollector.db.global.expansions
	SetCollector:GetVersion00Appearances(expansions)	-- Starter Area(s)/Holidays
	SetCollector:GetVersion01Appearances(expansions)	-- Vanilla
	SetCollector:GetVersion02Appearances(expansions)	-- Burning Crusade
	SetCollector:GetVersion03Appearances(expansions)	-- Wrath of the Lich King
	SetCollector:GetVersion04Appearances(expansions)	-- Cataclysm
	SetCollector:GetVersion05Appearances(expansions)	-- Mists of Pandaria
	SetCollector:GetVersion06Appearances(expansions)	-- Warlords of Draenor
	SetCollector:GetVersion07Appearances(expansions)	-- Legion
	SetCollector:GetVersion08Appearances(expansions)	-- Battle for Azeroth
	SetCollector:GetVersion09Appearances(expansions)	-- Shadowlands
	SetCollector:GetVersion10Appearances(expansions)	-- Dragonflight
	SetCollector:GetVersion11Appearances(expansions)	-- The War Within

	--if debug then SetCollector:Print("Finished adding appearances to database.") end
end

function SetCollector:IsUIDocked()
    return SetCollector.db.global.docked
end

function SetCollector:SetUIDocked()
    SetCollector.db.global.docked = not SetCollector.db.global.docked
end

function SetCollector:GetUIPosition()
    return SetCollector.db.global.position
end

function SetCollector:SetUIPosition(value)
    SetCollector.db.global.position = value
end

function SetCollector:GetExpansionStatus(version)
	local expansions = SetCollector.db.global.expansions
	if version == "0" then return expansions.v00
	elseif version == "1" then return expansions.v01
	elseif version == "2" then return expansions.v02
	elseif version == "3" then return expansions.v03
	elseif version == "4" then return expansions.v04
	elseif version == "5" then return expansions.v05
	elseif version == "6" then return expansions.v06
	elseif version == "7" then return expansions.v07
	elseif version == "8" then return expansions.v08
	elseif version == "9" then return expansions.v09
	elseif version == "10" then return expansions.v10
	elseif version == "11" then return expansions.v11
	end
end

function SetCollector:SetExpansionStatus(version)
	local expansions = SetCollector.db.global.expansions
	if version == "0" then expansions.v00 = not expansions.v00
	elseif version == "1" then expansions.v01 = not expansions.v01
	elseif version == "2" then expansions.v02 = not expansions.v02
	elseif version == "3" then expansions.v03 = not expansions.v03
	elseif version == "4" then expansions.v04 = not expansions.v04
	elseif version == "5" then expansions.v05 = not expansions.v05
	elseif version == "6" then expansions.v06 = not expansions.v06
	elseif version == "7" then expansions.v07 = not expansions.v07
	elseif version == "8" then expansions.v08 = not expansions.v08
	elseif version == "9" then expansions.v09 = not expansions.v09
	elseif version == "10" then expansions.v10 = not expansions.v10
	elseif version == "11" then expansions.v11 = not expansions.v11
	end
end

function SetCollector:SetupDB(debug)
	SetCollector.db = LibStub("AceDB-3.0"):New("SetCollectorDB", defaults, true)
	SetCollector:AddAppearances(debug)
end

function SetCollector:ResetDB()
	local debug = SetCollector:GetDebug()
	SetCollector.db:ResetDB("default")
	SetCollector:AddAppearances(debug)
	if debug then
		SetCollector:Print(L["DB_RESET"])
		SetCollector:SetDebug(debug)
	end
end

local function HideExpansionToggle(version)
	if tonumber(WOW_VERSION) >= tonumber(version) then
		return false
	end
	return true
end

function SetCollector:GetOptions()
	local options = {
		name = L["ADDON_NAME"],
		handler = SetCollector,
		type = "group",
		args = {
			description = {
				type = "description",
				order = 0,
				name = L["INT_OPT_DESC"],
			},
			header = {
				type = "header",
				order = 1,
				name = L["INT_OPT_SETTINGS"],
			},
			common = {
				type = "group",
				order = 10,
				name = L["INT_OPT_COMMON"],
				args = {
					global_header = {
						type = "header",
						order = 0,
						name = L["GLOBAL"]
                    },
                    docked = {
						type = "toggle",
						order = 1,
						name = L["INT_OPT_DOCKED_NAME"],
						desc = L["INT_OPT_DOCKED_DESC"],
						get = "IsUIDocked",
						set = "SetUIDockedAndUpdate",
						width = "full"
                    },
                    position = {
                        type = "select",
                        hidden = true,
						order = 2,
						name = L["INT_OPT_POSITION_NAME"],
						desc = L["INT_OPT_POSITION_DESC"],
						get = "GetUIPosition",
						set = function(info,val) SetCollector:SetUIPosition(val) end,
                        width = "full",
                        values = {
                            left = "Left",
                            center = "Center"
                        },
                        style = "radio"
                    },
					minimap = {
						type = "toggle",
						order = 5,
						name = L["INT_OPT_MINIMAP_NAME"],
						desc = L["INT_OPT_MINIMAP_DESC"],
						get = "IsMinimapButtonShown",
						set = "ToggleMinimapButton",
						width = "full"
					},
					char_header = {
						type = "header",
						order = 100,
						name = L["CHARACTER"]
					},
					favorites = {
						type = "toggle",
						order = 101,
						name = L["INT_OPT_FAVORITE_NAME"],
						desc = L["INT_OPT_FAVORITE_DESC"],
						get = "GetFavoritesFilter",
						set = "SetFavoritesFilter",
						width = "full"
					},
					obtainable = {
						type = "toggle",
						order = 102,
						name = L["INT_OPT_OBTAINABLE_NAME"],
						desc = L["INT_OPT_OBTAINABLE_DESC"],
						get = "GetObtainableFilter",
						set = "SetObtainableFilter",
						width = "full"
					},
					transmog = {
						type = "hidden",
						order = 103,
						name = L["INT_OPT_TRANSMOG_NAME"],
						desc = L["INT_OPT_TRANSMOG_DESC"],
						get = "GetTransmogFilter",
						set = "SetTransmogFilter",
						width = "full"
					},
					transmog = {
						type = "toggle",
						order = 104,
						name = L["INT_OPT_HIDDEN_NAME"],
						desc = L["INT_OPT_HIDDEN_DESC"],
						get = "GetHiddenFilter",
						set = "SetHiddenFilter",
						width = "full"
					},
				},
			},
			expansions = {
				type = "group",
				order = 20,
				name = L["INT_OPT_EXPANSIONS"],
				args = {
					description = {
						type = "description",
						order = 0,
						name = L["INT_OPT_RELOAD_DESC"],
					},
					header = {
						type = "header",
						order = 1,
						name = L["INT_OPT_EXPANSIONS"]
					},
					v00 = {
						type = "toggle",
						hidden = HideExpansionToggle("10000"),
						order = 10,
						name = L["INT_OPT_EXPANSION_00_NAME"],
						desc = L["INT_OPT_EXPANSION_00_DESC"],
						get = "GetVersion00Status",
						set = "SetVersion00Status",
						width = "full"
					},
					v01 = {
						type = "toggle",
						hidden = HideExpansionToggle("10000"),
						order = 11,
						name = L["INT_OPT_EXPANSION_01_NAME"],
						desc = L["INT_OPT_EXPANSION_01_DESC"],
						get = "GetVersion01Status",
						set = "SetVersion01Status",
						width = "full"
					},
					v02 = {
						type = "toggle",
						hidden = HideExpansionToggle("20000"),
						order = 12,
						name = L["INT_OPT_EXPANSION_02_NAME"],
						desc = L["INT_OPT_EXPANSION_02_DESC"],
						get = "GetVersion02Status",
						set = "SetVersion02Status",
						width = "full"
					},
					v03 = {
						type = "toggle",
						hidden = HideExpansionToggle("30000"),
						order = 13,
						name = L["INT_OPT_EXPANSION_03_NAME"],
						desc = L["INT_OPT_EXPANSION_03_DESC"],
						get = "GetVersion03Status",
						set = "SetVersion03Status",
						width = "full"
					},
					v04 = {
						type = "toggle",
						hidden = HideExpansionToggle("40000"),
						order = 14,
						name = L["INT_OPT_EXPANSION_04_NAME"],
						desc = L["INT_OPT_EXPANSION_04_DESC"],
						get = "GetVersion04Status",
						set = "SetVersion04Status",
						width = "full"
					},
					v05 = {
						type = "toggle",
						hidden = HideExpansionToggle("50000"),
						order = 15,
						name = L["INT_OPT_EXPANSION_05_NAME"],
						desc = L["INT_OPT_EXPANSION_05_DESC"],
						get = "GetVersion05Status",
						set = "SetVersion05Status",
						width = "full"
					},
					v06 = {
						type = "toggle",
						hidden = HideExpansionToggle("60000"),
						order = 16,
						name = L["INT_OPT_EXPANSION_06_NAME"],
						desc = L["INT_OPT_EXPANSION_06_DESC"],
						get = "GetVersion06Status",
						set = "SetVersion06Status",
						width = "full"
					},
					v07 = {
						type = "toggle",
						hidden = HideExpansionToggle("70000"),
						order = 17,
						name = L["INT_OPT_EXPANSION_07_NAME"],
						desc = L["INT_OPT_EXPANSION_07_DESC"],
						get = "GetVersion07Status",
						set = "SetVersion07Status",
						width = "full"
					},
					v08 = {
						type = "toggle",
						hidden = HideExpansionToggle("80000"),
						order = 18,
						name = L["INT_OPT_EXPANSION_08_NAME"],
						desc = L["INT_OPT_EXPANSION_08_DESC"],
						get = "GetVersion08Status",
						set = "SetVersion08Status",
						width = "full"
					},
					v09 = {
						type = "toggle",
						hidden = HideExpansionToggle("90000"),
						order = 19,
						name = L["INT_OPT_EXPANSION_09_NAME"],
						desc = L["INT_OPT_EXPANSION_09_DESC"],
						get = "GetVersion09Status",
						set = "SetVersion09Status",
						width = "full"
					},
					v10 = {
						type = "toggle",
						hidden = HideExpansionToggle("100000"),
						order = 20,
						name = L["INT_OPT_EXPANSION_10_NAME"],
						desc = L["INT_OPT_EXPANSION_10_DESC"],
						get = "GetVersion10Status",
						set = "SetVersion10Status",
						width = "full"
					},
					v11 = {
						type = "toggle",
						hidden = HideExpansionToggle("110000"),
						order = 21,
						name = L["INT_OPT_EXPANSION_11_NAME"],
						desc = L["INT_OPT_EXPANSION_11_DESC"],
						get = "GetVersion11Status",
						set = "SetVersion11Status",
						width = "full"
					},
				},
            },
            tooltips = {
                type = "group",
                order = 30,
                name = L["INT_OPT_TOOLTIPS"],
                args = {
                    item_header = {
                        type = "header",
                        order = 0,
                        name = L["INT_OPT_ITEM_TOOLTIPS"]
                    },
                    show_item_set = {
                        type = "toggle",
                        order = 1,
                        name = L["INT_OPT_SHOW_SET_NAME"],
                        desc = L["INT_OPT_SHOW_SET_DESC"],
                        get = "GetOptionsShowSet",
                        set = "SetOptionsShowSet",
                        width = "full"
                    },
                    show_item_set_location = {
                        type = "toggle",
                        order = 2,
                        name = L["INT_OPT_SHOW_LOCATION_NAME"],
                        desc = L["INT_OPT_SHOW_LOCATION_DESC"],
                        get = "GetOptionsShowSetLocation",
                        set = "SetOptionsShowSetLocation",
                        width = "full"
                    }
                }
            },
			advanced = {
				type = "group",
				order = 90,
				name = L["INT_OPT_TROUBLESHOOTING"],
				args = {
					debug_header = {
						type = "header",
						order = 0,
						name = L["INT_OPT_DEBUGGING"]
					},
					debug = {
						type = "toggle",
						order = 1,
						name = L["INT_OPT_DEBUG_NAME"],
						desc = L["INT_OPT_DEBUG_DESC"],
						get = "GetDebug",
						set = "OptionsSetDebug",
						width = "full"
					},
					reset_header = {
						type = "header",
						order = 2,
						name = L["INT_OPT_RESET"]
					},
					reset_desc = {
						type = "description",
						order = 3,
						name = L["INT_OPT_RESET_WARNING"]
					},
					reload_desc = {
						type = "description",
						order = 4,
						name = L["INT_OPT_RELOAD_DESC"]
					},
					reset_db = {
						type = "execute",
						order = 5,
						confirm = true,
						name = L["INT_OPT_RESET"],
						func = "ResetDB"
					}
				},
			},
			reload = {
				type = "execute",
				order = -1,
				name = L["INT_OPT_RELOAD_UI"],
				func = "ReloadUI"
			}
		},
	}
	return options
end
