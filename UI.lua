local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)
local icon = LibStub("LibDBIcon-1.0")

local NO_CLASS_FILTER = -1

local COLLECTION_LIST_WIDTH = 260

local WHITE		= "|cFFFFFFFF"

local EQUIPMENT = {
	INVSLOT_AMMO,
	INVSLOT_HEAD,
	INVSLOT_NECK,
	INVSLOT_SHOULDER,
	INVSLOT_BODY, --shirt
	INVSLOT_CHEST,
	INVSLOT_WAIST,
	INVSLOT_LEGS,
	INVSLOT_FEET,
	INVSLOT_WRIST,
	INVSLOT_HAND,
	INVSLOT_FINGER1,
	INVSLOT_FINGER2,
	INVSLOT_TRINKET1,
	INVSLOT_TRINKET2,
	INVSLOT_BACK,
	INVSLOT_MAINHAND,
	INVSLOT_OFFHAND,
	INVSLOT_RANGED,
	INVSLOT_TABARD
}

local SHOW_CLASS_SPEC 			= 0
local SHOW_ONLY_FAVORITES 	= false
local SHOW_ONLY_OBTAINABLE 	= false
local SHOW_ONLY_TRANSMOG 		= false
local SHOW_HIDDEN 					= false

local COLLECTION_COLLAPSED 	= { false, false, false, false, false, false, false, false }			-- Currently there are eight possible collections

local SELECTED_BUTTON = nil

local SORT_BY = "key"					-- Default Sort Value
local SORT_DIR = "DESC"				-- Default Sort Direction

local ALL					=	{ Code = "A", Description = "All" }
local ANY					=	{ Code = "Z", Description = "Any" }

local CLOTH				= { Code = "C", Description = "CLOTH" }
local LEATHER			= { Code = "L", Description = "LEATHER" }
local MAIL				= { Code = "M", Description = "MAIL" }
local PLATE				= { Code = "P", Description = "PLATE" }
local ANY_ARMOR			= { Code = "Z", Description = "Any" }

--
--  Local Functions
--

local function GetClassArmorType(class)
	if		class == "DEATHKNIGHT"	then return PLATE.Description
	elseif	class == "DEMONHUNTER"	then return LEATHER.Description
	elseif	class == "DRUID"		then return LEATHER.Description
	elseif	class == "EVOKER"		then return MAIL.Description
	elseif	class == "HUNTER"		then return MAIL.Description
	elseif	class == "MAGE"			then return CLOTH.Description
	elseif	class == "MONK"			then return LEATHER.Description
	elseif	class == "PALADIN"		then return PLATE.Description
	elseif	class == "PRIEST"		then return CLOTH.Description
	elseif	class == "ROGUE"		then return LEATHER.Description
	elseif	class == "SHAMAN"		then return MAIL.Description
	elseif	class == "WARLOCK"		then return CLOTH.Description
	elseif	class == "WARRIOR"		then return PLATE.Description
	else return ANY.Description
	end
end

--
--  Setup Frame
--

local frame = CreateFrame("Frame", "SetCollectorFrame", UIParent, "ButtonFrameTemplate")

local function SetUIPosition()
    if SetCollector.db and not SetCollector.db.global.docked then
        if SetCollector.db.global.position == "center" then
            frame:SetPoint("CENTER",0,0)
        else
            frame:SetPoint("TOPLEFT",17,-115)
        end
    end
end

local function SetDocked(docked)
    frame:SetAttribute("UIPanelLayout-defined", docked)			-- Allows frame to shift other frames when opened or be shifted when others are opened.
    frame:SetAttribute("UIPanelLayout-enabled", docked)			-- http://www.wowwiki.com/Creating_standard_left-sliding_frames
    frame:SetAttribute("UIPanelLayout-area", "left")
    frame:SetAttribute("UIPanelLayout-pushable", 5)
    frame:SetAttribute("UIPanelLayout-width", width)
    frame:SetAttribute("UIPanelLayout-whileDead", true)
end

local function SetMovable(movable)
    frame:SetMovable(movable)
    frame:EnableMouse(movable)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

    SetUIPosition()
end

local function SetDefaultUILocation()
    SetDocked(true)
    SetMovable(false)
end

local function ResetUILocation()
	if (frame:IsVisible()) then
		SetCollector:HideUI(false)
	end
    SetDocked(SetCollector:IsUIDocked())
    SetMovable(not SetCollector:IsUIDocked())
end

function SetCollector:SetUIDockedAndUpdate()
    SetCollector:SetUIDocked()
    ResetUILocation()
end

SetDefaultUILocation()
frame:SetWidth(703)
frame:SetHeight(606)


local title = CreateFrame("Frame", "$parentTitle", frame)
title:SetWidth(300)
title:SetHeight(14)
title:SetPoint("TOP", 0, -4)
title:SetFrameLevel(100)
title:SetAttribute("parentKey", "Title")
	
if frame.TitleContainer then
	frame.TitleContainer.TitleText:SetText(L["ADDON_NAME"])
else
	frame.TitleText:SetText(L["ADDON_NAME"])
end

tinsert(UISpecialFrames, frame:GetName())							-- Hides frame when Escape is pressed or Game menu selected.

  	
local helpButton = CreateFrame("Button","$parentTutorialButton",frame,"MainHelpPlateButton")
helpButton:SetPoint("TOPLEFT",frame, 39, 20)

--
--  ScrollFrame
--

local leftInset = CreateFrame("Frame","$parentLeftInset",frame,"InsetFrameTemplate")
leftInset:SetWidth(COLLECTION_LIST_WIDTH)
leftInset:SetHeight(496)
leftInset:SetPoint("TOPLEFT", 4, -60)
leftInset:SetPoint("BOTTOMLEFT", 4, 26)
leftInset:SetAttribute("parentKey","LeftInset")
leftInset:SetAttribute("useParentLevel","true")

local scrollFrame = CreateFrame("ScrollFrame","SetCollectorScrollFrame",frame,"SetCollectorCollectionsScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT","$parentLeftInset","TOPLEFT",2,-5)
scrollFrame:SetPoint("BOTTOMRIGHT","$parentLeftInset","BOTTOMRIGHT", -4, 3)

local function IsShownInList(button)
	top = SetCollectorFrame.CollectionsFrame:GetTop()
	bottom = SetCollectorFrame.CollectionsFrame:GetBottom()
	buttonTop = button:GetTop()
	buttonBottom = button:GetBottom()
	if buttonBottom < top and buttonTop > bottom then
		return true
	end
	return false
end

local function GetCollectionButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Collections;
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorCollectionTemplate");
		buttons[index] = button;
	end
	return buttons[index];
end

function SetCollectorCollectionButton_OnClick(self)
	PlaySound(SOUNDKIT.UI_TRANSMOG_PAGE_TURN);
	COLLECTION_COLLAPSED[self.Collection] = not COLLECTION_COLLAPSED[self.Collection]
	SetCollector:UpdateCollections()
end

local function GetSetButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Sets;
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorSetTemplate");
		buttons[index] = button;
	end
	return buttons[index];
end

local function UnsetHighlight(button, ...)
	if ( button ) then			
		button.Text:SetTextColor(1.0, 0.82, 0);
		button.Texture:Hide()
	end
	SELECTED_BUTTON = nil
end

local function SetHighlight(button, ...)
	local collection 	= button.Collection
	local set 				= button.Set
	if ( button ) then UnsetHighlight(SELECTED_BUTTON) end
	button.Text:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	button.Texture:Show()
	SELECTED_BUTTON = button
end

function SetCollectorSetButton_OnClick(self, button, ...)
	if ( IsShownInList(self) ) then
        PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
        if ( button == "LeftButton" ) then
            if ( self ~= SELECTED_BUTTON ) then
                SetCollector:SetVariantTabs(self.Collection, self.Set, nil, self.Outfit)
                SetHighlight(self)
            else
                SetCollector:SetVariantTabs()
                --ClearItemButtons()
                UnsetHighlight(self)
            end
        elseif ( not IsShiftKeyDown() and button == "RightButton" ) then
            if ( self.Set and self.Set ~= "" ) then
            SetCollector:SetFavoriteSet(self)
            if ( self == SELECTED_BUTTON ) then
                    SetCollector:SetVariantTabs(self.Collection, self.Set)
                end
            end
        elseif ( IsShiftKeyDown() and button == "RightButton" ) then
            if ( self.Set and self.Set ~= "" ) then
            SetCollector:SetHiddenSet(self)
            if ( self == SELECTED_BUTTON ) then
                    SetCollector:SetVariantTabs(self.Collection, self.Set)
                    UnsetHighlight(self)
                end
                SetCollector:UpdateCollections()
            end
        else
            SetCollector:Print(button)
        end
	end
end

function SetCollectorSetButton_OnEnter(self)
	if ( IsShownInList(self) and self.Collection and self.Set ) then 
		self.Text:SetFontObject("GameFontHighlightLeft")
		SetCollector:GetSetTooltip(self)
	end
end

function SetCollectorSetButton_OnLeave(self)
	self.Text:SetFontObject("GameFontNormalLeft")
	GameTooltip:Hide()
end

--
--  Model
--

local rightInset = CreateFrame("Frame","$parentRightInset",frame,"InsetFrameTemplate")
rightInset:SetPoint("TOPRIGHT", -6, -60)
rightInset:SetPoint("BOTTOMLEFT", leftInset, "BOTTOMRIGHT", 20, 0)
rightInset:SetAttribute("parentKey","RightInset")
rightInset:SetAttribute("useParentLevel","true")

local setDisplay = CreateFrame("Frame","SetCollectorSetDisplay",rightInset)
setDisplay:SetPoint("TOPLEFT",rightInset,"TOPLEFT", 3, -3)
setDisplay:SetPoint("BOTTOMRIGHT",rightInset,"BOTTOMRIGHT", -3, 3)
setDisplay:SetAttribute("parentKey","SetCollectorSetDisplay")
setDisplay.Texture = setDisplay:CreateTexture("setTexture","BACKGROUND")
setDisplay.Texture:SetAllPoints(setDisplay)
setDisplay.Texture:SetTexture("Interface\\PetBattles\\MountJournal-BG",false)
setDisplay.Texture:SetTexCoord(0,0.78515625,0,1)

local shadowOverlay = CreateFrame("Frame",nil,setDisplay,"ShadowOverlayTemplate")
shadowOverlay:SetAllPoints(true)
shadowOverlay:SetAttribute("useParentLevel","true")
shadowOverlay:SetAttribute("parentKey","ShadowOverlay")

local progressDisplay = CreateFrame("Button","SetCollectorSummaryButton",setDisplay)
progressDisplay:SetWidth(56)
progressDisplay:SetHeight(56)
progressDisplay:SetPoint("BOTTOM","$parent","BOTTOM",0,15)
progressDisplay.Summary = progressDisplay:CreateFontString("$parentSummary","OVERLAY","GameFontNormalLarge")
progressDisplay.Summary:SetPoint("CENTER", 0, 2)
progressDisplay.Summary:SetText(" ")
progressDisplay.Background = progressDisplay:CreateTexture("$parentBackground","BACKGROUND")
progressDisplay.Background:SetTexture(0,0,0,0.7)
progressDisplay.Background:SetPoint("TOPLEFT",3,-3)
progressDisplay.Background:SetPoint("BOTTOMRIGHT",-3,3)
progressDisplay.Texture = progressDisplay:CreateTexture("$parentTexture","OVERLAY")
progressDisplay.Texture:SetAtlas("collections-itemborder-uncollected")
progressDisplay.Texture:SetPoint("TOPLEFT",0,0)
progressDisplay.Texture:SetPoint("BOTTOMRIGHT",0,0)
progressDisplay:SetFrameLevel(10)
progressDisplay:RegisterForClicks("AnyDown")
progressDisplay:SetScript("OnClick", SetCollectorSummaryButton_OnClick)
progressDisplay:Hide()

local modelFrame = CreateFrame("DressUpModel","$parentModelFrame",setDisplay,"ModelWithZoomTemplate") --"ModelWithControlsTemplate")
modelFrame:SetPoint("TOPLEFT", setDisplay, "TOPLEFT", 0, 0)
modelFrame:SetPoint("BOTTOMRIGHT", setDisplay, "BOTTOMRIGHT", 0, 0)
modelFrame:SetAttribute("parentKey","ModelFrame")
modelFrame:SetAttribute("useParentLevel","true")

function SetCollector:InitializeModel()
	modelFrame:SetUnit("PLAYER")
end



--
--  Appearance Buttons
--

local function SetItem_OnClick(self, button, ...)
	if ( IsShiftKeyDown() and button == "LeftButton" ) then
		ChatEdit_InsertLink(self.link)
	elseif ( IsShiftKeyDown() and button == "RightButton" ) then
		if (string.find(self.ItemID, "item")) then
			local itemID = string.match(self.ItemID,"item:(%d+)") or "0"
			local bonusID = string.match(self.ItemID,":1:(%d+)") or "0"
			ChatEdit_InsertLink("http://www.wowhead.com/item="..itemID.."&bonus="..bonusID)
		else
			ChatEdit_InsertLink("http://www.wowhead.com/item="..self.ItemID)
		end
	end
end

local function SetItem_OnEnter(self, motion)
	if self.link then
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
		GameTooltip:SetHyperlink(self.link)
		GameTooltip:Show()
	end
end

local function SetItem_OnLeave(self, motion)
	GameTooltip:Hide()
end

local prevItem
for i=1, #EQUIPMENT do
local itemButton = CreateFrame("Button","$parentItem"..i,modelFrame,"SetCollectorItemTemplate")
	if i == 1 then
		itemButton:SetPoint("TOPLEFT",modelFrame,"TOPLEFT", 7, -73)
	elseif i == 10 then
		itemButton:SetPoint("TOPRIGHT",modelFrame,"TOPRIGHT", -7, -73)
	else
		itemButton:SetPoint("TOPLEFT",prevItem,"BOTTOMLEFT", 0, -7)
	end
	itemButton:RegisterForClicks("AnyDown")
	itemButton:SetScript("OnClick",SetItem_OnClick)
	itemButton:SetScript("OnEnter",SetItem_OnEnter)
	itemButton:SetScript("OnLeave",SetItem_OnLeave)
	itemButton:Hide()
	prevItem = itemButton
end

local function SetItemButton(button, appearanceID, sourceID, itemID)
  if button then
    local id, app, src, isCollected, icon, sLink = itemID, appearanceID, sourceID, false, nil, nil
		local tempIcon, tempLink = nil, nil
		if id then
			app, src = C_TransmogCollection.GetItemInfo(id)
		end
		if src and src > 0 then
			_, _, _, tempIcon, isCollected, tempLink = C_TransmogCollection.GetAppearanceSourceInfo(src)
			icon = icon or tempIcon
			sLink = sLink or tempLink
		end
		local sources = C_TransmogCollection.GetAllAppearanceSources(app)
		if sources and not isCollected then
			for _, source in ipairs(sources) do
				_, _, _, tempIcon, isCollected, tempLink = C_TransmogCollection.GetAppearanceSourceInfo(source)
				icon = icon or tempIcon
				sLink = sLink or tempLink
				if isCollected then
					break
				end
			end
		end

		if icon then
			button.icon:SetTexture(icon)
		end

    if sLink then
			local iRarity = C_Item.GetItemQualityByID(sLink)
			if iRarity then
				local r, g, b, _ = C_Item.GetItemQualityColor(iRarity)
				button.glow:SetVertexColor(r, g, b)
			end

      if not id then
        id = C_Item.GetItemInfoInstant(sLink)
      end

      if id and id > 0 then
        button.link = sLink
        button.ItemID = id

				if isCollected then
          button.icon:SetVertexColor(1, 1, 1, 1)
          button.icon:SetDesaturated(false)
          button.glow:Show()
        else
          button.icon:SetVertexColor(1, 0.25, 0.25, 0.5)
					button.icon:SetDesaturated(true)
					button.glow:Hide()
        end

        button:Show()
      end
    end
  else
    button:Hide()
  end
end


local function ClearItemButtons(button)
	if button then
		for i=button, #EQUIPMENT do
			_G["SetCollectorSetDisplayModelFrameItem"..i]:Hide()
		end
	else
		for i=1, #EQUIPMENT do
			_G["SetCollectorSetDisplayModelFrameItem"..i]:Hide()
		end
	end
end



--
--  Variant Tabs
--

local function VariantTab_OnClick(self, button, ...)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
	if ( button == "LeftButton" ) then 
		SetCollector:SetVariantTab(_G["SetCollectorSetDisplay"], self:GetID());
	elseif ( button == "RightButton" ) then
		SetCollector:SetFavoriteVariant(self.Set, self:GetID())
		SetCollector:UpdateCollections()
		SetCollector:SetVariantTabs(self.Collection, self.Set, PanelTemplates_GetSelectedTab(self:GetParent()), self.Outfit)
	end
end

local WOW_VERSION = select(4, GetBuildInfo())
if WOW_VERSION >= 100000 then
	TabTemplate = "SetCollectorTabButtonTemplate"
else
	TabTemplate = "CharacterFrameTabButtonTemplate"
end

for i=1, 5 do
	local variantTab = CreateFrame("Button","$parentTab"..i,setDisplay,TabTemplate)
	variantTab:SetID(i)
	variantTab:SetText(i)
	if i == 1 then
		variantTab:SetPoint("TOPLEFT", SetCollectorSetDisplay, "TOPLEFT", 5, 0)
	else
		local prev = i - 1
		variantTab:SetPoint("LEFT", "$parentTab"..prev, "RIGHT", -16, 0)
	end
	variantTab:RegisterForClicks("AnyDown")
	variantTab:SetScript("OnClick",VariantTab_OnClick)
	variantTab:Hide()
end
PanelTemplates_SetNumTabs(_G["SetCollectorSetDisplay"], 5)

function SetCollector:SetVariantTabs(collection, set, variant, outfit)
	local db = SetCollector.db.global.collections
	local char = SetCollector.db.char
	if ( collection and collection == 0 ) then
		-- Outfit Handling
		for i=1, 5 do
			local variantTab = _G["SetCollectorSetDisplayTab"..i]
			variantTab:SetText(i)
			variantTab.Collection = collection
			variantTab.Set = set
			variantTab.Outfit = outfit
			variantTab.Preview = false
			variantTab:Hide()
		end
		PanelTemplates_SetNumTabs(_G["SetCollectorSetDisplay"], 5)
		SetCollector:SetVariantTab(_G["SetCollectorSetDisplay"], 1)
		
	elseif ( collection and set and set ~= 0 and #db[collection].Sets[set].Variants > 1 ) then
		for i=1, 5 do
			local collected = SetCollector:GetCollectedCount(collection, set, i)
			local variantTab = _G["SetCollectorSetDisplayTab"..i]
			if ( db[collection].Sets[set].Variants[i] ) then
				variantTab.Collection = collection
				variantTab.Set = set
				variantTab.Preview = false
				if ( not variantTab.FavoriteTexture ) then
					variantTab.FavoriteTexture = variantTab:CreateTexture("$parentFavorite","OVERLAY")
					variantTab.FavoriteTexture:SetAtlas("PetJournal-FavoritesIcon")
					variantTab.FavoriteTexture:SetPoint("LEFT",nil,"LEFT",-10,0)
				end
				if ( SHOW_ONLY_FAVORITE == true and not char.sets[set].variants[i].favorite ) then
					variantTab:Hide()
				else
                    variantTab:SetText(L[db[collection].Sets[set].Variants[i].Title])
                    variantTab.FavoriteTexture:Hide()
					if char.sets[set] and char.sets[set].variants then
						if char.sets[set].variants[i] and char.sets[set].variants[i].favorite then
							variantTab:SetText("      "..L[db[collection].Sets[set].Variants[i].Title])
							variantTab.FavoriteTexture:Show()
						end
					end
					variantTab:Show()
				end
			else
				variantTab:Hide()
			end
			PanelTemplates_TabResize(variantTab, 0, nil, 36, variantTab:GetParent().maxTabWidth or 88)
			if collected == "*" and SHOW_ONLY_OBTAINABLE then
				variantTab:Hide()
			end
		end
		PanelTemplates_SetNumTabs(_G["SetCollectorSetDisplay"], #db[collection].Sets[set].Variants)
		SetCollector:SetVariantTab(_G["SetCollectorSetDisplay"], variant or 1)
	else
		for i=1, 5 do
			local variantTab = _G["SetCollectorSetDisplayTab"..i]
			variantTab:SetText(i)
			variantTab.Collection = collection
			variantTab.Set = set
			variantTab.Preview = false
			variantTab:Hide()
		end
		PanelTemplates_SetNumTabs(_G["SetCollectorSetDisplay"], 5)
		SetCollector:SetVariantTab(_G["SetCollectorSetDisplay"], 1)
	end
end

local function GetSourceID(appearanceID)
    return SetCollector:GetCollectedAppearanceSourceID(appearanceID) or 0
end

function SetCollector:UpdateSelectedVariantTab(self)
	if frame:IsShown() then
			local selected = PanelTemplates_GetSelectedTab(self)
			if selected and SetCollector:GetDebug() then
					SetCollector:Print("Updating Selected Variant Tab: " .. selected)
			end

			local collection = _G["SetCollectorSetDisplayTab" .. selected].Collection
			local set = _G["SetCollectorSetDisplayTab" .. selected].Set
			local outfit = _G["SetCollectorSetDisplayTab" .. selected].Outfit

			ClearItemButtons(1)

			local inc = 0
			if collection and set then
					local items, acq = {}, 0
					modelFrame:Undress()
					if outfit and collection == 0 then
							local itemTransmogInfoList = C_TransmogCollection.GetOutfitItemTransmogInfoList(outfit)
							for i = 1, #itemTransmogInfoList do
									local sourceID = itemTransmogInfoList[i].appearanceID
									if sourceID and sourceID > 0 then
											local categoryID, appearanceID, _, _, isCollected =
													C_TransmogCollection.GetAppearanceSourceInfo(sourceID)
											if isCollected then
													acq = acq + 1
											end
											if categoryID then
													inc = inc + 1
													items[inc] = {
															categoryID = categoryID,
															appearanceID = appearanceID,
															sourceID = sourceID
													}
											end
									end
							end
					elseif (collection > 0) then
							local db = SetCollector.db.global.collections
							local num = #db[collection].Sets[set].Variants[selected].Appearances
							for i = 1, num do
									local sourceID = db[collection].Sets[set].Variants[selected].Appearances[i].sourceID
									local appearanceID = db[collection].Sets[set].Variants[selected].Appearances[i].ID
									local itemID = db[collection].Sets[set].Variants[selected].Appearances[i].itemID
									if sourceID == 0 then
											sourceID = GetSourceID(appearanceID)
									end
									if sourceID and sourceID > 0 then
											local categoryID, appearanceID = C_TransmogCollection.GetAppearanceSourceInfo(sourceID)
											local isCollected = SetCollector:IsAppearanceCollected(appearanceID)
											if isCollected then
													acq = acq + 1
											end
											if categoryID then
													inc = inc + 1
													items[inc] = {
															categoryID = categoryID,
															appearanceID = appearanceID,
															sourceID = sourceID,
															itemID = itemID
													}
											end
									end
							end
					end

					local function compare(a, b)
							return a.categoryID < b.categoryID
					end
					table.sort(items, compare)
					for i = 1, #items do
							modelFrame:TryOn(items[i].sourceID)
							SetItemButton(_G["SetCollectorSetDisplayModelFrameItem" .. i], items[i].appearanceID, items[i].sourceID, items[i].itemID)
					end

					SetCollectorSummaryButtonSummary:SetText(string.format(L["ITEMS_COLLECTED"], acq, inc))
					if acq ~= "*" and acq > 0 then
							SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-collected")
					else
							SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-uncollected")
					end
					SetCollectorSummaryButton:Show()
			else
					modelFrame:Dress()
					ClearItemButtons(inc + 1)
					SetCollectorSummaryButton:Hide()
			end
	end
end


function SetCollector:SetVariantTab(self, tab)
    PanelTemplates_SetTab(self, tab);
    SetCollector:UpdateSelectedVariantTab(self);
end



--
--  Filter
--


local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
filterButton:SetAttribute("enableMouse","true")
filterButton:SetAttribute("parentKey","setFilter")

local function GetFilters()
	--SHOW_CLASS_SPEC 			= SetCollector.db.char.filters.specialization
	SHOW_ONLY_FAVORITES 	= SetCollector.db.char.filters.favorites
	SHOW_ONLY_OBTAINABLE 	= SetCollector.db.char.filters.obtainable
	SHOW_ONLY_TRANSMOG 		= SetCollector.db.char.filters.transmog
	SHOW_HIDDEN 					= SetCollector.db.char.filters.hidden
end

local function SetFilters()
	--SetCollector.db.char.filters.specialization		= SHOW_CLASS_SPEC
	SetCollector.db.char.filters.favorites				= SHOW_ONLY_FAVORITES
	SetCollector.db.char.filters.obtainable				= SHOW_ONLY_OBTAINABLE
	SetCollector.db.char.filters.transmog					= SHOW_ONLY_TRANSMOG
	SetCollector.db.char.filters.hidden						= SHOW_HIDDEN
end

function SetCollector:GetFavoritesFilter()
	return SHOW_ONLY_FAVORITES
end

function SetCollector:SetFavoritesFilter()
	SHOW_ONLY_FAVORITES = not SHOW_ONLY_FAVORITES
	SetFilters()
end

function SetCollector:GetObtainableFilter()
	return SHOW_ONLY_OBTAINABLE
end

function SetCollector:SetObtainableFilter()
	SHOW_ONLY_OBTAINABLE = not SHOW_ONLY_OBTAINABLE
	SetFilters()
end

function SetCollector:GetTransmogFilter()
	return SHOW_ONLY_TRANSMOG
end

function SetCollector:SetTransmogFilter()
	SHOW_ONLY_TRANSMOG = not SHOW_ONLY_TRANSMOG
	SetFilters()
end

function SetCollector:GetHiddenFilter()
	return SHOW_HIDDEN
end

function SetCollector:SetHiddenFilter()
	SHOW_HIDDEN = not SHOW_HIDDEN
	SetFilters()
end

local function SetFilterOptions(classIndex)
	SHOW_CLASS_SPEC = classIndex
end

--local function GetFilterOptions()
--	if SHOW_CLASS_SPEC == 0 or SHOW_CLASS_SPEC == nil then
--		local currentSpec = GetSpecialization();
--		if currentSpec == nil then currentSpec = 0 end
--		SHOW_CLASS_SPEC = currentSpec + 2
--	end
--	return SHOW_CLASS_SPEC;
--end

--[[local function UpdateFilterString()
	local name = ALL;
	local currFilter = GetFilterOptions();

	if currFilter == LE_LOOT_FILTER_CLASS then
		name = UnitClass("player");
	elseif currFilter == NO_CLASS_FILTER then
		name = ALL_CLASSES
	--else -- Spec
	--	local _, specName, _, icon = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1);
	--	name = specName;
	end
	
	UIDropDownMenu_SetText(filterButton, name);
end]]

local function SetFilter(self, classIndex)
	if ( classIndex == "favorites" ) then
		SHOW_ONLY_FAVORITES = not SHOW_ONLY_FAVORITES
	elseif ( classIndex == "obtainable" ) then
		SHOW_ONLY_OBTAINABLE = not SHOW_ONLY_OBTAINABLE
	elseif ( classIndex == "transmog" ) then
		SHOW_ONLY_TRANSMOG = not SHOW_ONLY_TRANSMOG
	elseif ( classIndex == "hidden" ) then
		SHOW_HIDDEN = not SHOW_HIDDEN
	--else
	--	SetFilterOptions(classIndex);
	end
	SetFilters()
	if frame:IsShown() then
		--SetCollector:Print("Setting Filter, Updating UI")
		SetCollector:UpdateCollections();
		--UpdateFilterString()
	
		-- Clear Selection
		UnsetHighlight(SELECTED_BUTTON)
		SELECTED_BUTTON = nil
		SetCollector:SetVariantTabs()
		ClearItemButtons()
	end
end

local function InitFilter()
	local info = UIDropDownMenu_CreateInfo();
	--local currFilter = GetFilterOptions();
    local className = UnitClass("player");
    
	--UpdateFilterString()
	info.func = SetFilter;
	
	--info.text = className;
	--info.checked = (currFilter ~= LE_LOOT_FILTER_ALL);
	--info.arg1 = LE_LOOT_FILTER_CLASS;
	--UIDropDownMenu_AddButton(info);
	
	--local numSpecs = GetNumSpecializations();
	--for i = 1, numSpecs do
	--	local _, name, _, icon = GetSpecializationInfo(i);
	--	info.text = name;
	--	info.arg1 = LE_LOOT_FILTER_SPEC1 + i - 1;
	--	info.checked = currFilter == (LE_LOOT_FILTER_SPEC1 + i - 1);
	--	info.leftPadding = 10;
	--	UIDropDownMenu_AddButton(info);
	--end

	--info.text = className -- ALL_SPECS;
	--info.checked = currFilter == LE_LOOT_FILTER_CLASS;
	--info.arg1 = LE_LOOT_FILTER_CLASS;
	--info.func = SetFilter;
	--UIDropDownMenu_AddButton(info);

	--info.text = ALL_CLASSES;
	--info.checked = currFilter == NO_CLASS_FILTER;
	--info.arg1 = NO_CLASS_FILTER;
	--info.func = SetFilter;
	--UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = FAVORITES_FILTER;
	info.checked = SHOW_ONLY_FAVORITES;
	info.arg1 = "favorites";
	UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = L["OBTAIN_FILTER"] or L["MISSING_LOCALIZATION"];
	info.checked = SHOW_ONLY_OBTAINABLE;
	info.arg1 = "obtainable";
	UIDropDownMenu_AddButton(info);
	
	--[[info.leftPadding = nil;
	info.text = L["TRANSMOG_FILTER"] or L["MISSING_LOCALIZATION"];
	info.checked = SHOW_ONLY_TRANSMOG;
	info.arg1 = "transmog";
	UIDropDownMenu_AddButton(info);]]--
	
	info.leftPadding = nil;
	info.text = L["HIDDEN_FILTER"] or L["MISSING_LOCALIZATION"];
	info.checked = SHOW_HIDDEN;
	info.arg1 = "hidden";
	UIDropDownMenu_AddButton(info);
	
	--UpdateFilterString()
end

function SetCollector:DropDownMenu_Initialize(frame, func)
	-- This should be used instead of UIDropDownMenu_Initialize, which causes tainting. Code reference: Altoholic
	frame.displayMode = "MENU" 
	frame.initialize = func
end

function SetCollector:InitializeFilter(DEBUG)
	GetFilters()
	if DEBUG then SetCollector:Print("Initializing Filters") end
	SetCollector:UpdateCollections()
	local init = function() InitFilter() end
	SetCollector:DropDownMenu_Initialize(filterButton, init)
	UIDropDownMenu_SetText(filterButton, "Filter")
	--UpdateFilterString()
	if DEBUG then SetCollector:Print("Filters Initialized") end
end



--
--  Tutorial
--

local AddTutorial = {
	FramePos = { x = 0,	y = -30 },
	FrameSize = { width = 638, height = 496	},
	[1] = { ButtonPos = { x = 500,	y = 10 }, 	HighLightBox = { x = 497, y = 2, width = 200, height = 30 },		ToolTipDir = "LEFT",	ToolTipText = L["TUTORIAL_1"] },
	[2] = { ButtonPos = { x = 120,	y = -405 }, HighLightBox = { x = 8, y = -30, width = 252, height = 518 },		ToolTipDir = "DOWN",	ToolTipText = L["TUTORIAL_2"] },
	[3] = { ButtonPos = { x = 310,	y = -31 }, 	HighLightBox = { x = 285, y = -30, width = 412, height = 50 },	ToolTipDir = "LEFT",	ToolTipText = L["TUTORIAL_3"] },
	[4] = { ButtonPos = { x = 476,	y = -405 }, HighLightBox = { x = 285, y = -83, width = 412, height = 465 },	ToolTipDir = "DOWN",	ToolTipText = L["TUTORIAL_4"] },
}

local function GetTutorial()
	local helpPlate, mainHelpButton
	helpPlate = AddTutorial
	mainHelpButton = helpButton
	return helpPlate, mainHelpButton
end

function SetCollector:ToggleTutorial()
	local helpPlate, mainHelpButton = GetTutorial()
		
	if ( helpPlate and not HelpPlate_IsShowing(helpPlate) and frame:IsShown()) then
		HelpPlate_Show(helpPlate, frame:GetName(), mainHelpButton, HelpPlateSeen)
		SetCollector_HELP_VISIBLE = true
		HelpPlateSeen = true
	else
		HelpPlate_Hide(true) 								-- True indicates to animate the hide. Blank or flase suppresses the animation.
	  SetCollector_HELP_VISIBLE = false
	end
end



--
--  Portrait
--

function SetCollector:UpdatePortrait()
	local portrait = SetCollectorFramePortrait				-- Switch to frame
	local masteryIndex = GetSpecialization();
	if (masteryIndex == nil) then
		local _, class = UnitClass("player");
		portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles");
		portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS[class]));
	else
		local _, _, _, icon = GetSpecializationInfo(masteryIndex);
		portrait:SetTexCoord(0, 1, 0, 1);
		SetPortraitToTexture(portrait, icon);	
	end
end



--
--  Minimap Button
--

local function CreateMinimapButton()
	local myLDB = LibStub("LibDataBroker-1.1"):NewDataObject("SetCollectorMinimap", {
		type = "launcher",
		text = L["ADDON_NAME"],
		icon = "Interface\\Icons\\INV_Gauntlets_Mail_RaidShaman_J_01",
		OnClick = function() SetCollector:ToggleUI() end,										--  Add logic for debug handling
		OnTooltipShow = function(tt)
			tt:AddLine(WHITE..L["ADDON_NAME"])
			tt:AddLine(L["MINIMAP_TOOLTIP"])
		end,
	})
  icon:Register("SetCollectorMinimap", myLDB, SetCollector.db.global.minimap)
end

function SetCollector:ToggleMinimapButton()
	SetCollector.db.global.minimap.hide = not SetCollector.db.global.minimap.hide
	if SetCollector.db.global.minimap.hide then
		icon:Hide("SetCollectorMinimap")
	else
		icon:Show("SetCollectorMinimap")
	end
end

function SetCollector:IsMinimapButtonShown()
	return not SetCollector.db.global.minimap.hide
end


--
--  Finalize UI Setup
--

function SetCollector:UpdateScrollFrame(collections, DEBUG)
	if DEBUG then SetCollector:Print("Updating ScrollFrame") end
	if collections then
		if DEBUG then SetCollector:Print("Received list of collections.") end
		prevButton = nil
		rowIndex = 1
		
		for i=1, #collections do
			rowIndex = rowIndex + 1
			button = GetCollectionButton(rowIndex)
			if ( COLLECTION_COLLAPSED[i] == true ) then
				button:SetText(L[collections[i].Title].."...")
			else
				button:SetText(L[collections[i].Title])
			end
			button.Collection = i
			if ( prevButton ) then
				button:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
			else
				button:SetPoint("TOPLEFT", 1, -6)
			end
			button:Show()
			local archivePrevButton = prevButton
			local setsDisplayed = 0
			prevButton = button
			
			if i == 1 then
				local outfits = C_TransmogCollection.GetOutfits()
				for j=1, #outfits do
					local outfitID = outfits[j]
					
					rowIndex = rowIndex + 1
					titleButton = GetSetButton(rowIndex)
					titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 48)
					
					titleButton.Collection = 0
					titleButton.Set = 0
					titleButton.Outfit = outfitID
					titleButton:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
					titleButton:Hide()
					
					--titleButton.Check:Show()	-- It is possible to create sets without having collected all of the appearances
					titleButton.Favorite:Show()
						
					titleButton.Text:SetText(C_TransmogCollection.GetOutfitInfo(outfitID))
                    --titleButton.SubText:SetText("|cff555555"..L["OUTFITS"].."|r")
					
					local height = titleButton.Text:GetHeight() + titleButton.SubText:GetHeight() + 10
					titleButton:SetHeight(height)
                    if not COLLECTION_COLLAPSED[i] then
						titleButton:Show()
						prevButton = titleButton
						setsDisplayed = setsDisplayed + 1
					end
				end
			elseif collections[i].sets then
				local sortedList = SetCollector:SortList(collections[i].sets, SORT_BY, SORT_DIR)
				for j,value in sortedList do
					
					rowIndex = rowIndex + 1
					titleButton = GetSetButton(rowIndex)
					titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 32)
					
					titleButton.Collection = i
					titleButton.Set = j
					titleButton:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
					titleButton:Hide()
					
				  local _, class = UnitClass("player")
				  local armorType = GetClassArmorType(class)
				  
				  local faction = UnitFactionGroup("player")
					
					local isObtainable = SetCollector:IsSetObtainable(i, j)
					local isTransmog = SetCollector:IsTransmogSet(i, j)
					local isFavorite = SetCollector:IsFavoriteSet(j)
					if isFavorite then
						titleButton.Favorite:Show()
					else
						titleButton.Favorite:Hide()
					end
					local isHidden = SetCollector:IsHiddenSet(j)
					
					local isCollected = SetCollector:IsSetFullyCollected(i, j)
					if isCollected then
						titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 48)
						titleButton.Check:Show()
					else
						local isPartiallyCollected = SetCollector:IsSetPartiallyCollected(i, j)
						if isPartiallyCollected then
							titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 48)
							titleButton.Check:SetDesaturated(true)
							titleButton.Check:Show()
						end
					end
					
					if isObtainable then
						titleButton.Text:SetText(L[collections[i].sets[j].Title] or L["MISSING_LOCALIZATION"])			-- Putting Text into FontString allows for Wrapping using SetWidth
					else
						titleButton.Text:SetText("|cff999999"..(L[collections[i].sets[j].Title] or L["MISSING_LOCALIZATION"]))
					end
					
					if (collections[i].sets[j].Location and collections[i].sets[j].Location ~= "") then
						titleButton.SubText:SetText("|cff555555"..(L[collections[i].sets[j].Location] or L["MISSING_LOCALIZATION"]).."|r")
					end
					
					local height = titleButton.Text:GetHeight() + titleButton.SubText:GetHeight() + 10
					titleButton:SetHeight(height)
					
					if SetCollector:SetIsFilteredOutByArmorType(i, j, armorType) then
						-- Keep it hidden
					elseif SetCollector:SetIsFilteredOutByClass(i, j, class) then
						-- Keep it hidden
					elseif SetCollector:SetIsFilteredOutByFaction(i, j, faction) then
						-- Keep it hidden
					elseif SHOW_ONLY_OBTAINABLE == true and not isObtainable then
						-- Keep it hidden
					elseif SHOW_ONLY_TRANSMOG == true and not isTransmog then
						-- Keep it hidden
					elseif SHOW_ONLY_FAVORITES == true and not isFavorite then
						-- Keep it hidden
					elseif SHOW_HIDDEN == false and isHidden then
						-- Keep it hidden
					elseif not COLLECTION_COLLAPSED[i] then
						titleButton:Show()
						prevButton = titleButton
						setsDisplayed = setsDisplayed + 1
					end
				end	
			end
			if setsDisplayed == 0 and not COLLECTION_COLLAPSED[i] then					-- Hides the Collections button when no sets are displayed
				button:Hide()
				prevButton = archivePrevButton
			end
		end
	end
end

function SetCollector:HideUI()
	local DEBUG = SetCollector:GetDebug()
	if DEBUG then SetCollector:Print("Hiding SetCollector UI") end
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
	HideUIPanel(frame)
end

function SetCollector:ShowUI()
	local DEBUG = SetCollector:GetDebug()
	if DEBUG then SetCollector:Print("Showing SetCollector UI") end
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
	ShowUIPanel(frame)
end

function SetCollector:ToggleUI()
	local DEBUG = SetCollector:GetDebug()
	if (frame:IsVisible()) then
		SetCollector:HideUI(DEBUG)
	else
		SetCollector:ShowUI(DEBUG)
	end
end

function SetCollector:OnShow(self)
	SetCollector:UpdatePortrait(self)
end

function SetCollector:OnHide(self)
	HelpPlate_Hide()
	SetCollectorSummaryButton:Hide()
	SetCollector:SetVariantTabs()
	ClearItemButtons()
	UnsetHighlight(SELECTED_BUTTON)
end

function SetCollector:SetupUI(DEBUG)
    ResetUILocation()
	local tutorialScript = function() SetCollector:ToggleTutorial() end
	helpButton:SetScript("OnClick", tutorialScript)
	
	local onShowScript = function() SetCollector:OnShow() end
	frame:SetScript("OnShow", onShowScript)
	local onHideScript = function() SetCollector:OnHide() end
	frame:SetScript("OnHide", onHideScript)
	
	SetCollector:SetVariantTab(SetCollectorSetDisplay, 1)
	
	CreateMinimapButton()
	-- Other delayed build actions
end


function SetCollector:ReloadUI()
	ReloadUI();
end
