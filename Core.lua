local DEBUG = false

SetCollector = LibStub("AceAddon-3.0"):NewAddon("SetCollector", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

local WOW_VERSION = select(4,GetBuildInfo())

local InventorySlots = {
    ['INVTYPE_HEAD'] = 1,
    ['INVTYPE_SHOULDER'] = 3,
    ['INVTYPE_BODY'] = 4,
    ['INVTYPE_CHEST'] = 5,
    ['INVTYPE_ROBE'] = 5,
    ['INVTYPE_WAIST'] = 6,
    ['INVTYPE_LEGS'] = 7,
    ['INVTYPE_FEET'] = 8,
    ['INVTYPE_WRIST'] = 9,
    ['INVTYPE_HAND'] = 10,
    ['INVTYPE_CLOAK'] = 15,
    ['INVTYPE_WEAPON'] = 16,
    ['INVTYPE_SHIELD'] = 17,
    ['INVTYPE_2HWEAPON'] = 16,
    ['INVTYPE_WEAPONMAINHAND'] = 16,
    ['INVTYPE_RANGED'] = 16,
    ['INVTYPE_RANGEDRIGHT'] = 16,
    ['INVTYPE_WEAPONOFFHAND'] = 17,
    ['INVTYPE_HOLDABLE'] = 17,
    ['INVTYPE_TABARD'] = 19,
}

local model = CreateFrame("DressUpModel","SetCollectorTooltipDressUpModel",UIParent)

--
--  Startup Functions
--

function SetCollector:OnInitialize()
	SetCollector:SetupDB(true)
	SetCollector:SetupUI(true)
	if SetCollector:GetDebug() then SetCollector:Print("Initialized"); end
	
    LibStub("AceConfig-3.0"):RegisterOptionsTable("SetCollector", SetCollector:GetOptions())
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SetCollector", "Set Collector")
	
	SetCollector:RegisterEvent("PLAYER_LOGIN")
end

function SetCollector:OnEnable()
  if SetCollector:GetDebug() then SetCollector:Print("Enabled"); end
end

function SetCollector:OnDisable()
  if SetCollector:GetDebug() then SetCollector:Print("Disabled"); end
end

function SetCollector:GetAppearanceInfo(itemLink)
	if itemLink then
        local appearanceID, sourceID, itemID, setIDs
        itemID = C_Item.GetItemInfoInstant(itemLink)
        appearanceID, sourceID = C_TransmogCollection.GetItemInfo(itemLink)
        if sourceID then
            setIDs = C_TransmogSets.GetSetsContainingSourceID(sourceID)
        end
        return appearanceID, sourceID, itemID, setIDs
    end
end

function SetCollector:IsDebugging()									-- Redundant?
	DEBUG = SetCollector:GetDebug()
	return DEBUG
end

--
--  Local Functions
--

local function pairsByKeys(t, d)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	if d == "ASC" then
	  table.sort(a, function(a,b) return a<b end)
	else
	  table.sort(a, function(a,b) return a>b end)
	end
	local i = 0      -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end

--
--  Global Functions
--

function SetCollector:GetDebug()
	DEBUG = SetCollector.db.global.debug
	return DEBUG
end

function SetCollector:SetDebug(debug)
	if debug == nil then
		SetCollector.db.global.debug = not SetCollector.db.global.debug
	else
		SetCollector.db.global.debug = debug
	end
end

function SetCollector:GetOptionsShowSet()
	return SetCollector.db.global.tooltips.show_set
end

function SetCollector:SetOptionsShowSet()
	if SetCollector.db.global.tooltips.show_set then SetCollector.db.global.tooltips.show_set = false
	else SetCollector.db.global.tooltips.show_set = true
	end
end

function SetCollector:GetOptionsShowSetLocation()
	return SetCollector.db.global.tooltips.show_location
end

function SetCollector:SetOptionsShowSetLocation()
	if SetCollector.db.global.tooltips.show_location then SetCollector.db.global.tooltips.show_location = false
	else SetCollector.db.global.tooltips.show_location = true
	end
end

function SetCollector:SortList(t, f, d)
	if f == "key" then return pairsByKeys(t, d)		-- Allow for explicit request to sort by key
	-- Future sort alternatives here
	else return pairsByKeys(t, d)									-- Default to sort by key
	end
end

function SetCollector:UpdateCollections()
	local collections = SetCollector:GetCollectionsList()
	SetCollector:UpdateScrollFrame(collections, DEBUG)
end

function SetCollector:PLAYER_LOGIN()
    local DEBUG = SetCollector:GetDebug()
    if DEBUG then SetCollector:Print("Running PLAYER_LOGIN processes"); end
    SetCollector:InitializeFilter(DEBUG)
    SetCollector:InitializeModel(DEBUG)
end

--
-- Slash Commands
--

SetCollector:RegisterChatCommand("setcollector", "MySlashProcessorFunc")
SetCollector:RegisterChatCommand("sc", "MySlashProcessorFunc")

function SetCollector:OptionsSetDebug()
	if SetCollector.db.global.debug then SetCollector.db.global.debug = false
	else SetCollector.db.global.debug = true
	end
	local message
	if SetCollector:GetDebug() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
	SetCollector:Print(L[message])
end


function SetCollector:ToggleExpansion(parameters)
	local expansions = SetCollector.db.global.expansions
	if parameters == "0" then
		expansions.v00 = not expansions.v00
	elseif parameters == "1" then
		expansions.v01 = not expansions.v01
	elseif parameters == "2" then
		expansions.v02 = not expansions.v02
	elseif parameters == "3" then
		expansions.v03 = not expansions.v03
	elseif parameters == "4" then
		expansions.v04 = not expansions.v04
	elseif parameters == "5" then
		expansions.v05 = not expansions.v05
	elseif parameters == "6" then
		expansions.v06 = not expansions.v06
	elseif parameters == "7" then
		expansions.v07 = not expansions.v07
	elseif parameters == "8" then
		expansions.v08 = not expansions.v08
	elseif parameters == "9" then
		expansions.v09 = not expansions.v09
	elseif parameters == "10" then
		expansions.v10 = not expansions.v10
	elseif parameters == "11" then
		expansions.v11 = not expansions.v11
	end
	SetCollector:Print(L["RELOAD"])
end

function SetCollector:PrintItem(itemID)
    local sLink = select(2,C_Item.GetItemInfo(itemID))
    SetCollector:Print(sLink)
end

function SetCollector:ListSet(input)
    local setID, parameters = input:match("^(%S*)%s*(.-)$")
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        for i, set in ipairs(sets) do
            local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
            if (set.setID == tonumber(setID) or set.baseSetID == tonumber(setID)) then
                if (set.baseSetID == nil) then
                    SetCollector:Print(set.setID.." "..(setInfo.name or nil))
                else
                    SetCollector:Print(set.setID.." "..(setInfo.name or nil).." ("..set.baseSetID..")")
                end
            end
        end
    end
end

function SetCollector:ListAllSets()
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        for i, set in ipairs(sets) do
            local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
            if (set.baseSetID == nil) then
                SetCollector:Print(set.setID.." "..(setInfo.name or nil))
            else
                SetCollector:Print(set.setID.." "..(setInfo.name or nil).." ("..set.baseSetID..")")
            end
        end
    end
end

function SetCollector:ListBaseSets()
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        for i, set in ipairs(sets) do
            if (set.baseSetID == nil) then
                local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
                SetCollector:Print(set.setID.." "..(setInfo.name or nil))
            end
        end
    end
end

function SetCollector:ListSetSources(setID)
    local setInfo = (setID and C_TransmogSets.GetSetInfo(setID)) or nil;
    local sources = C_TransmogSets.GetSetPrimaryAppearances(setID);
    SetCollector:Print(setID.." "..(setInfo.name or nil))
    local function position(slot)
        if slot == INVSLOT_HEAD then
            return 1
        elseif slot == INVSLOT_SHOULDER then
            return 2
        elseif slot == INVSLOT_BACK then
            return 3
        elseif slot == INVSLOT_CHEST then
            return 4
        elseif slot == INVSLOT_WRIST then
            return 5
        elseif slot == INVSLOT_HAND then
            return 6
        elseif slot == INVSLOT_WAIST then
            return 7
        elseif slot == INVSLOT_LEGS then
            return 8
        elseif slot == INVSLOT_FEET then
            return 9
        end
        return slot + 10
    end
    local printable = {}
    for pos in pairs(sources) do
        local searchKey = sources[pos].appearanceID
        local sourceInfo = C_TransmogCollection.GetSourceInfo(searchKey);
        if (sourceInfo) then
            local slot = C_Transmog.GetSlotForInventoryType(sourceInfo.invType);
            if (slot) then
                printable[position(slot)] = sourceInfo.visualID..","..searchKey.." ("..slot..")"
            else
                printable[position(slot)] = sourceInfo.visualID..","..searchKey
            end
        else
            SetCollector:Print("ID: "..searchKey.." (No sourceinfo)")
        end
    end
    for i=1, #printable do
        SetCollector:Print(printable[i])
    end
end

local function BitAND(a,b)--Bitwise and
    local p,c=1,0
    while a>0 and b>0 do
        local ra,rb=a%2,b%2
        if ra+rb>1 then c=c+p end
        a,b,p=(a-ra)/2,(b-rb)/2,p*2
    end
    return c
end

function ParseClassMask(bits)
    -- 0 == All classes can wear
    if bits == nil or bits == 0 then
        return "ANY_CLASS"
    end

    local cleanBits = BitAND(bits, math.pow(2, GetNumClasses()) - 1)

    -- 0 == All classes can wear
    if cleanBits == 0 then
        return "ANY_CLASS"
    end

    local map = { 
        WARRIOR = 0x001,
        PALADIN = 0x002,
        HUNTER = 0x004,
        ROGUE = 0x008,
        PRIEST = 0x010,
        DEATHKNIGHT = 0x020,
        SHAMAN = 0x040,
        MAGE = 0x080,
        WARLOCK = 0x100,
        MONK = 0x200,
        DRUID = 0x400,
        DEMONHUNTER = 0x800,
        DRAKTHYR = 0x1000
    }
    
    -- Check for exact match between class
    for char, mask in pairs(map) do
        if cleanBits == mask then
            return char .. ""
        end
    end

    -- Right now, the remaining code is useless. Just pass "Any Class" and depend on cloth\mail\etc to filter.
    return "ANY_CLASS"

    -- -- Check for "any" match between class
    -- local any_map = { 
    --     ANY_PLATE = 0x001 + 0x002 + 0x020,
    --     ANY_LEATHER = 0x008 + 0x200 + 0x800 + 0x400,
    --     ANY_CLOTH = 0x010 + 0x080 + 0x100,
    --     ANY_MAIL = 0x004 + 0x040 + 0x1000
    -- }
    -- for char, mask in pairs(any_map) do
    --     if cleanBits == mask then
    --         return char .. ""
    --     end
    -- end
    -- -- hmm, weird case, better itemize
    -- local parse = cleanBits .. ": "
    -- for char, mask in pairs(map) do
    --     if (BitAND(cleanBits, mask) == mask) then
    --         parse = parse .. char .. " "
    --     end
    -- end
    -- return parse
end

function ParseArmorMask(bits)
    -- 0 == All classes can wear
    if bits == 0 then
        return "ANY_ARMOR"
    end

    local cleanBits = BitAND(bits, math.pow(2, GetNumClasses()) - 1)

    -- 0 == All classes can wear
    if cleanBits == 0 then
        return "ANY_ARMOR"
    end

    local map = { 
        PLATE = 0x001 + 0x002 + 0x020,
        LEATHER = 0x008 + 0x200 + 0x400 + 0x800,
        CLOTH = 0x010 + 0x080 + 0x100,
        MAIL = 0x004 + 0x040 + 0x1000
    }
    
    for char, mask in pairs(map) do
        if (BitAND(cleanBits, mask) > 0) then
            return char .. ""
        end
    end
    -- hmm, weird case, better itemize
    local parse = cleanBits .. ": "
    for char, mask in pairs(map) do
        if (BitAND(cleanBits, mask) == mask) then
            parse = parse .. char .. " "
        end
    end
    return parse .. ""
end

function SetCollector:ExportSetData()
    local tree = {}
    local exportTree = {}
    local sets = C_TransmogSets.GetAllSets()
    if (sets) then
        for i, set in ipairs(sets) do
            local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil
            if (setInfo == nil) then
                -- SetCollector:Print("Skipping set "..set.setID)
            else
                local setID = setInfo.setID or 0
                local baseSetID = set.baseSetID or setID
                local collection = "(missing)"
                if (SetCollector.db.global.setMap["SET " .. setID] ~= nil) then
                    collection = SetCollector.db.global.setMap["SET " .. setID].collection
                end 
                local strArmorMask = ParseArmorMask(setInfo.classMask)
                local strClassMask = ParseClassMask(setInfo.classMask)
                local strFaction = string.upper(setInfo.requiredFaction or "ANY_FACTION")
                local strDesc = (setInfo.description or "(blank)")
                local strLabel = (setInfo.label or "(blank)")

                if (tree[setInfo.patchID] == nil) then
                    tree[setInfo.patchID] = {}
                end
                if (tree[setInfo.patchID][collection] == nil) then
                    tree[setInfo.patchID][collection] = {}
                end
                if (tree[setInfo.patchID][collection][baseSetID] == nil) then
                    tree[setInfo.patchID][collection][baseSetID] = {}
                    tree[setInfo.patchID][collection][baseSetID][baseSetID] = ""
                end

                tree[setInfo.patchID][collection][baseSetID][setID] = strDesc

                -- Build: IncludeSet(COLLECTION,11000,2601,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2614,2615,2616), -- Haunted Frostbrood Remains
               
                local heading = " -- " .. strLabel -- "Dragonflight Season 1"
                local lua2 = {"IncludeSet(SetCollector." .. collection, setInfo.patchID, baseSetID, strArmorMask, strClassMask, strFaction}
                local lua2comment = {"), -- " .. setInfo.name}

                for tempId, desc in pairs(tree[setInfo.patchID][collection][baseSetID]) do
                    if (baseSetID ~= tempId) then
                        table.insert(lua2, tempId)
                        table.insert(lua2comment, desc)
                    end
                end
                lua2 = table.concat(lua2,",") .. table.concat(lua2comment,", ")

                if (exportTree[setInfo.patchID] == nil) then
                    exportTree[setInfo.patchID] = {}
                end

                if (exportTree[setInfo.patchID][setInfo.patchID] == nil) then
                    exportTree[setInfo.patchID][setInfo.patchID] = {}
                end

                if (exportTree[setInfo.patchID][setInfo.patchID][heading] == nil) then
                    exportTree[setInfo.patchID][setInfo.patchID][heading] = {}
                end

                exportTree[setInfo.patchID][setInfo.patchID][heading][baseSetID] = lua2
            end
        end
    end

    SetCollector.db.global.export = exportTree
    SetCollector:Print("Done exporting")
end

function SetCollector:MySlashProcessorFunc(input)
	local command, parameters = input:match("^(%S*)%s*(.-)$")
	if command == "" then
        SetCollector:ToggleUI()

	elseif command == "show" then
		SetCollector:ShowUI()
		
	elseif command == "hide" then
		SetCollector:HideUI()
		
	elseif command == "docked" then
		SetCollector:SetUIDockedAndUpdate()
		
	elseif command == "button" then
		SetCollector:ToggleMinimapButton()

	elseif command == "version" then
		SetCollector:ToggleExpansion(parameters)
		
	elseif command == "debug" then
		SetCollector:OptionsSetDebug()
		
	elseif command == "resetdb" then
        SetCollector:ResetDB()
        
    elseif command == "item" then
        if (parameters) then
            SetCollector:PrintItem(parameters)
        end
        
    elseif command == "export" then
        SetCollector:ExportSetData()
        
    elseif command == "set" then
        if (parameters ~= nil) then
            SetCollector:ListSet(parameters)
        --elseif (parameters == "sources") then
        --    SetCollector:ListSetSources(parameters)
        end
        
    elseif command == "sources" then
        if (parameters ~= nil) then
            SetCollector:ListSetSources(parameters)
        end
        
    elseif command == "sets" then
        -- TODO: add parameters for count and starting setID (or pagination)
        if (parameters == "all") then
            SetCollector:ListAllSets()
        else
            SetCollector:ListBaseSets()
        end
		
	else
    	SetCollector:Print(L["SLASH_HELP"])
		
  end
end
