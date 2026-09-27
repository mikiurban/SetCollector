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

local COLLECTION_COLLAPSED 	= { false, false, false, false, false, false, false, false }			-- Currently there are eight possible collections

local SELECTED_BUTTON = nil

local SORT_BY = "key"					-- Default Sort Value
local SORT_DIR = "DESC"				-- Default Sort Direction

--
--  Local Functions
--

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
		SetCollector:HideUI()
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
	local top = SetCollectorFrame.CollectionsFrame:GetTop()
	local bottom = SetCollectorFrame.CollectionsFrame:GetBottom()
	local buttonTop = button:GetTop()
	local buttonBottom = button:GetBottom()
	if buttonBottom < top and buttonTop > bottom then
		return true
	end
	return false
end

local function ClearCollectionList()
	local contents = SetCollectorFrame.CollectionsFrame.Contents

	for _, button in pairs(contents.Collections) do
		button:Hide()
		button:ClearAllPoints()
	end

	for _, button in pairs(contents.Sets) do
		button:Hide()
		button:ClearAllPoints()
		button.Check:Hide()
		button.Check:SetDesaturated(false)
		button.Favorite:Hide()
		button.SubText:SetText("")
		button.Texture:Hide()
	end
end

local function GetCollectionButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Collections
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorCollectionTemplate")
		buttons[index] = button
	end
	return buttons[index]
end

function SetCollectorCollectionButton_OnClick(self)
	PlaySound(SOUNDKIT.UI_TRANSMOG_PAGE_TURN)
	COLLECTION_COLLAPSED[self.Collection] = not COLLECTION_COLLAPSED[self.Collection]
	SetCollector:UpdateCollections()
end

local function GetSetButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Sets
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorSetTemplate")
		buttons[index] = button
	end
	return buttons[index]
end

local function UnsetHighlight(button, ...)
	if ( button ) then
		button.Text:SetTextColor(1.0, 0.82, 0)
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
        PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
        if ( button == "LeftButton" ) then
            if ( self ~= SELECTED_BUTTON ) then
                SetCollector:SetVariantTabs(self.Collection, self.Set, nil, self.Outfit)
                SetHighlight(self)
            else
                SetCollector:SetVariantTabs()
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

local function SetItemButton(button, appearanceID, sourceID, itemID, isCollected)
  if button then
    local id, app, src, icon, sLink = itemID, appearanceID, sourceID, nil, nil
		local info, tempApp, tempSrc = nil, nil, nil
		if id and id > 0 then
			tempApp, tempSrc = C_TransmogCollection.GetItemInfo(id)
			app = app or tempApp
			src = src or tempSrc
		end
		if src and src > 0 then
			info = C_TransmogCollection.GetAppearanceSourceInfo(src)
			icon = icon or info.icon
			sLink = sLink or info.itemLink
		end
		if app and app > 0 then
			local sources = C_TransmogCollection.GetAllAppearanceSources(app)
			if sources then
				for _, source in ipairs(sources) do
					info = C_TransmogCollection.GetAppearanceSourceInfo(source)
					icon = icon or info.icon
					sLink = sLink or info.itemLink
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
	local startPos = button or 1
	for i=startPos, #EQUIPMENT do
		_G["SetCollectorSetDisplayModelFrameItem"..i]:Hide()
	end
end

--
--  Variant Tabs
--

local function VariantTab_OnClick(self, button, ...)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
	if ( button == "LeftButton" ) then
		SetCollector:SetVariantTab(_G["SetCollectorSetDisplay"], self:GetID())
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
	if ( collection and collection > 0 and set and set ~= 0 and #db[collection].Sets[set].Variants > 1 ) then
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
			if collected == "*" and SetCollector.db.char.filters.obtainable then
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
			if selected then
					SetCollector:DebugPrint("Updating Selected Variant Tab: " .. selected)
			end

			local collection = _G["SetCollectorSetDisplayTab" .. selected].Collection
			local set = _G["SetCollectorSetDisplayTab" .. selected].Set

			ClearItemButtons()

			local slotIndex = 0
			if collection and set then
					local items, collectedCount = {}, 0
					modelFrame:Undress()
					if (collection > 0) then
							local appDB = SetCollector.db.global.collections[collection].Sets[set].Variants[selected].Appearances
							for i = 1, #appDB do
									local sourceID = appDB[i].sourceID
									local appearanceID = appDB[i].ID
									local itemID = appDB[i].itemID
									if sourceID == 0 then
											sourceID = GetSourceID(appearanceID)
									end
									if sourceID and sourceID > 0 then
											local info = C_TransmogCollection.GetAppearanceSourceInfo(sourceID)
											if info then
												if info.isCollected then
													collectedCount = collectedCount + 1
												end
												slotIndex = slotIndex + 1
												items[slotIndex] = {
														categoryID = info.category,
														appearanceID = appearanceID,
														sourceID = sourceID,
														itemID = itemID,
														isCollected = info.isCollected
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
							SetItemButton(_G["SetCollectorSetDisplayModelFrameItem" .. i], items[i].appearanceID, items[i].sourceID, items[i].itemID, items[i].isCollected)
					end

					SetCollectorSummaryButtonSummary:SetText(string.format(L["ITEMS_COLLECTED"], collectedCount, slotIndex))
					if collectedCount > 0 then
							SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-collected")
					else
							SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-uncollected")
					end
					SetCollectorSummaryButton:Show()
			else
					modelFrame:Dress()
					ClearItemButtons(slotIndex + 1)
					SetCollectorSummaryButton:Hide()
			end
	end
end

function SetCollector:SetVariantTab(self, tab)
    PanelTemplates_SetTab(self, tab)
    SetCollector:UpdateSelectedVariantTab(self)
end

--
--  Filter
--

local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
filterButton:SetAttribute("enableMouse","true")
filterButton:SetAttribute("parentKey","setFilter")

local expansionFilterButton = CreateFrame("Frame","$parentSetExpansionFilter",frame,"UIDropDownMenuTemplate")
expansionFilterButton:SetPoint("TOPRIGHT","$parentSetFilter","TOPLEFT",-100,0)
expansionFilterButton:SetAttribute("enableMouse","true")
expansionFilterButton:SetAttribute("parentKey","setFilter")

local function SetFilter(self, classIndex)
	if ( classIndex == "favorites" ) then
		SetCollector.db.char.filters.favorites = not SetCollector.db.char.filters.favorites
	elseif ( classIndex == "obtainable" ) then
		SetCollector.db.char.filters.obtainable = not SetCollector.db.char.filters.obtainable
	elseif ( classIndex == "hidden" ) then
		SetCollector.db.char.filters.hidden = not SetCollector.db.char.filters.hidden
	elseif ( tonumber(classIndex) ~= nil ) then
		SetCollector:ToggleExpansion(classIndex)
		SetCollector:AddAppearances()
	else
		-- Nothing to do
		return
	end
	if frame:IsShown() then
		scrollFrame:SetVerticalScroll(0)
		SetCollector:UpdateCollections()

		-- Clear Selection
		UnsetHighlight(SELECTED_BUTTON)
		SetCollector:SetVariantTabs()
		ClearItemButtons()
	end
end

local function InitFilter()
	local info = UIDropDownMenu_CreateInfo()

	info.func = SetFilter

	info.leftPadding = nil
	info.text = FAVORITES_FILTER
	info.checked = SetCollector.db.char.filters.favorites
	info.arg1 = "favorites"
	UIDropDownMenu_AddButton(info)

	info.leftPadding = nil
	info.text = L["OBTAIN_FILTER"] or L["MISSING_LOCALIZATION"]
	info.checked = SetCollector.db.char.filters.obtainable
	info.arg1 = "obtainable"
	UIDropDownMenu_AddButton(info)

	info.leftPadding = nil
	info.text = L["HIDDEN_FILTER"] or L["MISSING_LOCALIZATION"]
	info.checked = SetCollector.db.char.filters.hidden
	info.arg1 = "hidden"
	UIDropDownMenu_AddButton(info)
end

-- SetCollector uses 1 for Vanilla, WoW uses 0.  SetCollector uses 0 for "holiday\starters" so we
-- need to track zero-based for wow things and ones-based for SC things
local function InitExpansionFilter()
	local info = UIDropDownMenu_CreateInfo()
  info.func = SetFilter
	local min = Enum.ExpansionLevelMeta.MinValue
	local max = GetMaximumExpansionLevel() + 1
	if min < max then
		for expansion = min, max do
			local txt = L['INT_OPT_EXPANSION_00_NAME']
			if expansion > 0 then
				txt = _G['EXPANSION_NAME'..(expansion -1)]
			end
			info.leftPadding = nil
			info.text = txt
			info.checked = SetCollector:GetExpansionStatus(tostring(expansion))
			info.arg1 = tostring(expansion)
			UIDropDownMenu_AddButton(info)
		end
	end
end

function SetCollector:DropDownMenu_Initialize(frame, func)
	-- This should be used instead of UIDropDownMenu_Initialize, which causes tainting. Code reference: Altoholic
	frame.displayMode = "MENU"
	frame.initialize = func
end

function SetCollector:InitializeFilter()
	SetCollector:DebugPrint("Initializing Filters")
	SetCollector:UpdateCollections()
	local init = function() InitFilter() end
	SetCollector:DropDownMenu_Initialize(filterButton, init)
	local init2 = function() InitExpansionFilter() end
	SetCollector:DropDownMenu_Initialize(expansionFilterButton, init2)
	UIDropDownMenu_SetText(filterButton, "Filter")
	UIDropDownMenu_SetText(expansionFilterButton, "Expansions")
	SetCollector:DebugPrint("Filters Initialized")
end

--
--  Portrait
--

function SetCollector:UpdatePortrait()
	local portrait = SetCollectorFramePortrait				-- Switch to frame
	local masteryIndex = GetSpecialization()
	if (masteryIndex == nil) then
		local _, class = UnitClass("player")
		portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
		portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS[class]))
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

function SetCollector:UpdateScrollFrame(collections)
	SetCollector:DebugPrint("Updating ScrollFrame")
	if collections then
		SetCollector:DebugPrint("Received list of collections.")
		ClearCollectionList()

		local prevButton = nil
		local rowIndex = 1

		local _, class = UnitClass("player")
		local faction = UnitFactionGroup("player")

		for i=1, #collections do
			rowIndex = rowIndex + 1
			local button = GetCollectionButton(rowIndex)
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

			if collections[i].sets then
				local sortedList = SetCollector:SortList(collections[i].sets, SORT_BY, SORT_DIR)
				for j,value in sortedList do

					rowIndex = rowIndex + 1
					local titleButton = GetSetButton(rowIndex)
					titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 32)

					titleButton.Collection = i
					titleButton.Set = j
					titleButton:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
					titleButton:Hide()

					local isObtainable = SetCollector:IsSetObtainable(i, j)
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

					if SetCollector:SetIsFilteredOutByClassMask(i, j) then
						-- Keep it hidden
					elseif SetCollector.db.char.filters.obtainable == true and not isObtainable then
						-- Keep it hidden
					elseif SetCollector.db.char.filters.favorites == true and not isFavorite then
						-- Keep it hidden
					elseif SetCollector.db.char.filters.hidden and isHidden then
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

		scrollFrame:UpdateScrollChildRect()
	end
end

function SetCollector:HideUI()
	SetCollector:DebugPrint("Hiding SetCollector UI")
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE)
	HideUIPanel(frame)
end

function SetCollector:ShowUI()
	SetCollector:DebugPrint("Showing SetCollector UI")
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN)
	ShowUIPanel(frame)
end

function SetCollector:ToggleUI()
	if (frame:IsVisible()) then
		SetCollector:HideUI()
	else
		SetCollector:ShowUI()
	end
end

function SetCollector:OnShow(self)
	SetCollector:UpdatePortrait(self)
end

function SetCollector:OnHide(self)
	SetCollectorSummaryButton:Hide()
	SetCollector:SetVariantTabs()
	ClearItemButtons()
	UnsetHighlight(SELECTED_BUTTON)
end

function SetCollector:SetupUI(DEBUG)
  ResetUILocation()

	local onShowScript = function() SetCollector:OnShow() end
	frame:SetScript("OnShow", onShowScript)
	local onHideScript = function() SetCollector:OnHide() end
	frame:SetScript("OnHide", onHideScript)

	SetCollector:SetVariantTab(SetCollectorSetDisplay, 1)

	CreateMinimapButton()
	-- Other delayed build actions
end

function SetCollector:ReloadUI()
	ReloadUI()
end
