-- Shared Appearance variables and functions
-- https://warcraft.wiki.gg/wiki/ClassId

SetCollector.DEATHKNIGHT        = 0x0020
SetCollector.DEMONHUNTER        = 0x0800
SetCollector.DRUID              = 0x0400
SetCollector.EVOKER             = 0x1000
SetCollector.HUNTER             = 0x0004
SetCollector.MAGE               = 0x0080
SetCollector.MONK               = 0x0200
SetCollector.PALADIN            = 0x0002
SetCollector.PRIEST             = 0x0010
SetCollector.ROGUE              = 0x0008
SetCollector.SHAMAN             = 0x0040
SetCollector.WARLOCK            = 0x0100
SetCollector.WARRIOR            = 0x0001
SetCollector.ANY_CLASS          = 0x0000

-- Some transmog are restricted to classes based on intended armor type
SetCollector.CLOTH				= SetCollector.MAGE + SetCollector.PRIEST + SetCollector.WARLOCK
SetCollector.LEATHER			= SetCollector.ROGUE + SetCollector.DRUID + SetCollector.MONK + SetCollector.DEMONHUNTER
SetCollector.MAIL				= SetCollector.HUNTER + SetCollector.SHAMAN + SetCollector.EVOKER
SetCollector.PLATE				= SetCollector.WARRIOR + SetCollector.PALADIN + SetCollector.DEATHKNIGHT

-- Some transmog have unusual class restrictions
SetCollector.AZZINOTH           = SetCollector.WARRIOR + SetCollector.ROGUE + SetCollector.DEATHKNIGHT + SetCollector.MONK + SetCollector.DEMONHUNTER
SetCollector.DRAGONWRATH        = SetCollector.PRIEST + SetCollector.SHAMAN + SetCollector.MAGE + SetCollector.WARLOCK + SetCollector.DRUID + SetCollector.EVOKER

-- Factions
SetCollector.ALLIANCE 			= PLAYER_FACTION_GROUP[PLAYER_FACTION_GROUP.Alliance]
SetCollector.HORDE 			    = PLAYER_FACTION_GROUP[PLAYER_FACTION_GROUP.Horde]
SetCollector.ANY_FACTION        = "Any"

-- Collection Types
SetCollector.OUTFITS 			= { ID = 1, Code = "OU", Description = "OUTFITS" }
SetCollector.ARTIFACT 			= { ID = 2, Code = "AR", Description = "ARTIFACT" }
SetCollector.LEGENDARY 		    = { ID = 3, Code = "ZZ", Description = "LEGENDARY" }
SetCollector.RAID 				= { ID = 4, Code = "TR", Description = "RAID" }
SetCollector.DUNGEON 			= { ID = 5, Code = "DG", Description = "DUNGEON" }
SetCollector.CHALLENGE 		    = { ID = 6, Code = "CD", Description = "CHALLENGE" }
SetCollector.PVP 				= { ID = 7, Code = "PV", Description = "PVP" }
SetCollector.EXPANSION 			= { ID = 8, Code = "EX", Description = "EXPANSION" }
SetCollector.CRAFTED 			= { ID = 9, Code = "CR", Description = "CRAFTED" }
SetCollector.OTHER				= { ID = 10, Code = "OT", Description = "OTHER" }
SetCollector.TRIAL_STYLE    	= { ID = 11, Code = "TS", Description = "TRIAL_STYLE" }
SetCollector.CUSTOM			    = { ID = 12, Code = "CU", Description = "CUSTOM" }
SetCollector.HOLIDAY			= { ID = 13, Code = "HO", Description = "HOLIDAY" }
SetCollector.TRADING			= { ID = 14, Code = "TP", Description = "TRADING" }

SetCollector.OBTAIN			    = true
SetCollector.NO_OBTAIN 			= false

SetCollector.TRANSMOG 			= true
SetCollector.NO_TRANSMOG 		= false

local WOW_VERSION = select(4, GetBuildInfo())

local function is_numeric(x)
    if tonumber(x) ~= nil then
        return true
    end
    return false
end

function SetCollector:CreateAppearance(ID, sourceID, slotID, itemID, category)
	local t = {
        ID = ID or 0,
        sourceID = sourceID or 0,
        slotID = slotID or 0,
		itemID = itemID or 0,
        category = category or 0
    }
	return t
end

function SetCollector:CreateAppearanceFromItemID(itemID)
    local slotID = 0
    local appearanceID, sourceID = C_TransmogCollection.GetItemInfo(itemID)
    if sourceID then
        slotID = select(1, C_TransmogCollection.GetSourceInfo(sourceID))
    end
    local t = {
        ID = appearanceID or 0,
        sourceID = sourceID or 0,
        slotID = slotID or 0,
        itemID = itemID
    }
    return t
end

function SetCollector:CreateTooltipID(collection, id, title)
    local identifier
    if collection == RAID then
        identifier = "T"..id
    elseif collection == PVP then
        identifier = "PVP"
    end
    return identifier
end

function ShortFaction(faction)
    if not faction then
        return "AN" -- Any
    end
    if faction == PLAYER_FACTION_GROUP[PLAYER_FACTION_GROUP.Horde] then
        return "HO"
    end
    if faction == PLAYER_FACTION_GROUP[PLAYER_FACTION_GROUP.Alliance] then
        return "AL"
    end
    return "AN"
end

function SetCollector:IncludeSet(collection, uid, setID, ...)
    local setInfo = (setID and C_TransmogSets.GetSetInfo(setID)) or nil;
    if setInfo then
        local description = setInfo.label or ""
        local faction = ShortFaction(setInfo.requiredFaction)
        if SetCollector:GetDebug() then
            description = description.." ("..setInfo.expansionID..")"
        end
        local set = {
            ID = collection.Code..string.format("%06d", uid)..string.format("%06d", setID)..faction,
            setID = setInfo.setID,
            Collection = collection.Description,
            Title = setInfo.name,
            TooltipID = SetCollector:CreateTooltipID(collection, uid, setID),
            ClassMask = setInfo.classMask,
            Faction = setInfo.requiredFaction or "Any",
            Location = description,
            UIOrder = setInfo.uiOrder,
            Variants = { SetCollector:IncludeVariant(setID, setInfo) }
        }

        SetCollector.db.global.setMap["SET " .. setID] = {setID = setID, collection = collection.Description, baseSetId = setID}

        for i = 1, select('#', ...) do
            local variant = select(i, ...)
            if is_numeric(variant) then
                local variantInfo = (variant and C_TransmogSets.GetSetInfo(variant)) or nil;
                table.insert(set.Variants, SetCollector:IncludeVariant(variant, variantInfo))

                SetCollector.db.global.setMap["SET " .. variant] = {setID = variant, collection = collection.Description, baseSetId = setID}
            else
                table.insert(set.Variants, variant)
            end
        end
        local function compare(a, b)
            return a.Order < b.Order
        end
        table.sort(set.Variants, compare)
        return set
    end
end

function SetCollector:IncludeVariant(setID, setInfo, ...)
    local description, order = '', 0
    if setInfo then
        description = setInfo.description or setInfo.name
        order = setInfo.uiOrder
    end
    local variant = {
        Title = description,
        Transmog = SetCollector.TRANSMOG,
        Order = order,
        Appearances = {}
    }
    local appearances = C_TransmogSets.GetSetPrimaryAppearances(setID)
    if appearances then
        variant.Count = #appearances
        for pos in pairs(appearances) do
            local itemID = C_TransmogCollection.GetSourceItemID(appearances[pos].appearanceID)
            local sourceInfo = C_TransmogCollection.GetSourceInfo(appearances[pos].appearanceID);
            local category = C_TransmogCollection.GetCategoryForItem(appearances[pos].appearanceID);
            if (sourceInfo) then
                local slotID = C_Transmog.GetSlotForInventoryType(sourceInfo.invType)
                table.insert(variant.Appearances, SetCollector:CreateAppearance(sourceInfo.visualID, sourceInfo.sourceID, slotID, itemID, category))
            end
        end
        local function compare(a, b)
            return a.category < b.category
        end
        table.sort(variant.Appearances, compare)
    end
    return variant
end

function SetCollector:CreateSet(collection, uid, title, classMask, faction, location, ...)
    local set = {
        ID = collection.Code..string.format("%06d", uid)..ShortFaction(faction),
        setID = nil,
        Collection = collection.Description,
        Title = title,
        TooltipID = SetCollector:CreateTooltipID(collection, uid, title),
        ClassMask = classMask,
        Faction = faction or "Any",
        Location = location,
        UIOrder = uid,
        Variants = {...}
    }
    return set
end

function SetCollector:CreateVariant(title, transmog, ...)
    local variant = {
        Title = title,
        Transmog = transmog,
        Order = 99999,
        Appearances = {...}
    }
    variant.Count = select('#', ...)
    return variant
end

function SetCollector:AddSetToDatabase(version, collection, set)
	if WOW_VERSION >= version then
        SetCollector.db.global.collections[collection.ID].Sets[set.ID] = set
        if set.Variants then
            for i=1, #set.Variants do
                if set.Variants[i].Appearances then
                    for j=1, #set.Variants[i].Appearances do
                        local index = set.Variants[i].Appearances[j].ID
                        SetCollector.db.global.collections.Appearances[index] = { collection = collection.ID, set = set.ID, variant = j }
                    end
                end
            end
        end
    end
end

function SetCollector:AddSetsToDatabase(version, collection, sets, ...)
    if WOW_VERSION >= version then
        if sets then
            for index, set in ipairs(sets) do
                SetCollector:AddSetToDatabase(version, collection, set)
            end
        end

        local n = select('#', ...)
        if n > 0 then
            for i=1, n do
                SetCollector:AddSetToDatabase(version, collection, select(i, ...))
            end
        end
    end
end
