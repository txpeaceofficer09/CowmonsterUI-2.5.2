local InfoBarXPtoggle
local playerName = UnitName("player")
local playerRealm = GetRealmName()
local tmr = 0
local InfoBarStrings = {
	{
		["Name"] = "InfoBarMoney",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarMoney_OnEnter",
			["OnLeave"] = "InfoBarMoney_OnLeave",
			["OnEvent"] = "InfoBarMoney_OnEvent",
			["OnClick"] = "InfoBarMoney_OnClick",
		},
		["Events"] = {
			"PLAYER_MONEY",
			"PLAYER_ENTERING_WORLD",
		},
	},
	--[[
	{
		["Name"] = "InfoBarXP",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarXP_OnEnter",
			["OnLeave"] = "InfoBarXP_OnLeave",
			["OnClick"] = "InfoBarXP_OnClick",
			["OnEvent"] = "InfoBarXP_OnEvent",
		},
		["Events"] = {
			"UPDATE_FACTION",
			"CHAT_MSG_COMBAT_FACTION_CHANGE",
			"CHAT_MSG_COMBAT_XP_GAIN",
			"CHAT_MSG_COMBAT_GUILD_XP_GAIN",
			"GUILD_XP_UPDATE",
		},
	},
	]]
	{
		["Name"] = "InfoBarMem",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarMem_OnEnter",
			["OnLeave"] = "InfoBarMem_OnLeave",
			["OnUpdate"] = "InfoBarMem_OnUpdate",
		},
	},
	{
		["Name"] = "InfoBarBags",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnClick"] = "InfoBarBags_OnClick",
			["OnEvent"] = "InfoBarBags_OnEvent",
		},
		["Events"] = {
			"BAG_UPDATE",
			"PLAYER_ENTERING_WORLD",
		},
	},
	{
		["Name"] = "InfoBarCoords",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarCoords_OnUpdate",
		},
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
		},
	},
	--[[
	{
		["Name"] = "InfoBarAvoidance",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarAvoidance_OnUpdate",
			["OnEnter"] = "InfoBarAvoidance_OnEnter",
			["OnLeave"] = "InfoBarAvoidance_OnLeave",
		},
	},
	]]
	{
		["Name"] = "InfoBarSpellBonus",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarSpellBonus_OnUpdate",
			["OnEnter"] = "InfoBarSpellBonus_OnEnter",
			["OnLeave"] = "InfoBarSpellBonus_OnLeave",
		},
	},
	--[[
	{
		["Name"] = "InfoBarProfessions",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEvent"] = "InfoBarProfessions_OnEvent",
		},
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
			"TRADE_SKILL_LEVEL_CHANGED",
		},
	},
	]]
	{
		["Name"] = "InfoBarRecords",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEvent"] = "InfoBarRecords_OnEvent",
			["OnUpdate"] = "InfoBarRecords_OnUpdate",
			["OnEnter"] = "InfoBarRecords_OnEnter",
			["OnLeave"] = "InfoBarRecords_OnLeave",
			["OnClick"] = "InfoBarRecords_OnClick",
		},
		["Events"] = {
			"COMBAT_LOG_EVENT_UNFILTERED",
			"ADDON_LOADED",
			"VARIABLES_LOADED",
		},
	},
	--[[
	{
		["Name"] = "InfoBarDPS",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEvent"] = "InfoBarDPS_OnEvent",
			["OnEnter"] = "InfoBarDPS_OnEnter",
			["OnLeave"] = "InfoBarDPS_OnLeave",
			["OnClick"] = "InfoBarDPS_OnClick",
			["OnUpdate"] = "InfoBarDPS_OnUpdate",
		},
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
			"COMBAT_LOG_EVENT_UNFILTERED",
		},
	},
	]]
	{
		["Name"] = "InfoBarGuild",
		["JustifyH"] = "LEFT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarGuild_OnEnter",
			["OnLeave"] = "InfoBarGuild_OnLeave",
			["OnClick"] = "InfoBarGuild_OnClick",
			--["OnUpdate"] = "InfoBarGuild_OnUpdate",
			["OnEvent"] = "InfoBarGuild_OnEvent",
		},
		["Events"] = {
			"GUILD_ROSTER_UPDATE",
			"PLAYER_ENTERING_WORLD",
			--"CHAT_MSG_SYSTEM",
			--"GUILD_EVENT_GUILD_ROSTER_CHANGED",
			--"VARIABLES_LOADED",
		},
	},
	--[[
	{
		["Name"] = "InfoBarMicroMenu",
		["JustifyH"] = "RIGHT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarMicroMenu_OnEnter",
			["OnLeave"] = "InfoBarMicroMenu_OnLeave",
			["OnEvent"] = "InfoBarMicroMenu_OnEvent",
			["OnClick"] = "InfoBarMicroMenu_OnClick",
			--["OnMouseUp"] = "InfoBarMicroMenu_OnClick",
		},
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
		},
	},
	]]
	--[[
	{
		["Name"] = "InfoBarLFG",
		["JustifyH"] = "RIGHT",
		["Scripts"] = {
			["OnEnter"] = "InfoBarLFG_OnEnter",
			["OnLeave"] = "InfoBarLFG_OnLeave",
			["OnEvent"] = "InfoBarLFG_OnEvent",
			["OnClick"] = "InfoBarLFG_OnClick",
		},
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
			"LFG_QUEUE_STATUS_UPDATE",
		},
	},
	]]
	{
		["Name"] = "InfoBarLat",
		["JustifyH"] = "RIGHT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarLat_OnUpdate",
		},
	},
	{
		["Name"] = "InfoBarFPS",
		["JustifyH"] = "RIGHT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarFPS_OnUpdate",
		},
	},
	{
		["Name"] = "InfoBarClock",
		["JustifyH"] = "RIGHT",
		["Scripts"] = {
			["OnUpdate"] = "InfoBarClock_OnUpdate",
		},
	},
--[[
	{
		["Name"] = "InfoBarMail",
		["JustifyH"] = "RIGHT",
		["Events"] = {
			"PLAYER_ENTERING_WORLD",
			"UPDATE_PENDING_MAIL",
		},
	},
]]
}

local f = CreateFrame("Frame", "InfoBarFrame", UIParent)
local t = CreateFrame("GameTooltip", "InfoBarTooltip", UIParent, "GameTooltipTemplate")

f:SetHeight(20)
f:ClearAllPoints()
f:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 0, 0)
f:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 0)

--f:SetBackdrop({bgFile = [[Interface\AddOns\CowmonsterUI_InfoBar\textures\bar_serenity.blp]], tile = true, tileSize = 16, insets = {left = 0, right = 0, top = 0, bottom = 0}})
--f:SetBackdrop({bgFile = "Interface\\TargetingFrame\\UI-StatusBar", tile = true, tileSize = 16, insets = {left = 0, right = 0, top = 0, bottom = 0}})

f.background = f:CreateTexture(nil, "BACKGROUND")
f.background:SetAllPoints(f)
f.background:SetTexture("Interface\\AddOns\\CowmonsterUI_InfoBar\\textures\\bar_serenity")
f.background:SetVertexColor(0, 0, 0, 0.8)

for k, v in ipairs(InfoBarStrings) do
	local b = CreateFrame("Button", v.Name, InfoBarFrame)
	local s = b:CreateFontString(v.Name.."Text", "ARTWORK")
	s:SetFont("Fonts\\ARIALN.ttf", 14, "OUTLINE")

	s:SetAllPoints(b)

	s:SetJustifyH(v.JustifyH)
	b:SetHeight(f:GetHeight())

	if v.Scripts then
		for i, a in pairs(v.Scripts) do
			--b:SetScript(i, _G[v.Name.."_"..i])
			b:SetScript(i, _G[a])
		end
	end

	if v.Events then
		for i, a in pairs(v.Events) do
			b:RegisterEvent(a)
		end
	end

	s:Show()
	b:Show()
end

f:Show()

function f.OnEvent(self, event, ...)
	if event == "VARIABLES_LOADED" then
		CowmonsterUIDB[GetRealmName()] = CowmonsterUIDB[GetRealmName()] or {}
		CowmonsterUIDB[GetRealmName()][UnitName("player")] = CowmonsterUIDB[GetRealmName()][UnitName("player")] or {["Settings"]={}}

		--self:SetPoint("CENTER", UIParent, "CENTER", 0, 10-(GetScreenHeight()/2))
		--if not IsAddOnLoaded("CowmonsterUI_ActionBars") then
			MainMenuBar:ClearAllPoints()
			MainMenuBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 60, 20)

			for i=1,12,1 do
				if i == 1 then
					_G["MultiBarLeftButton"..i]:ClearAllPoints()
					_G["MultiBarLeftButton"..i]:SetPoint("LEFT", ActionButton12, "RIGHT", 14, 0)
				else
					_G["MultiBarLeftButton"..i]:ClearAllPoints()
					_G["MultiBarLeftButton"..i]:SetPoint("LEFT", _G["MultiBarLeftButton"..(i-1)], "RIGHT", 6, 0)
				end

				_G["MultiBarRightButton"..i]:ClearAllPoints()
				_G["MultiBarRightButton"..i]:SetPoint("BOTTOM", _G["MultiBarBottomRightButton"..i], "TOP", 0, 4)
			end

			for i = 1, #MICRO_BUTTONS do
				local button, previousButton = _G[MICRO_BUTTONS[i]], _G[MICRO_BUTTONS[i-1]]
				button:ClearAllPoints()

				if i == 1 then
					button:SetPoint("BOTTOMRIGHT", MainMenuBarBackpackButton, "TOPRIGHT", 0, 4)
				else
					button:SetPoint("RIGHT", previousButton, "LEFT", -4, 0)
				end
			end

			MainMenuBarBackpackButton:ClearAllPoints()
			MainMenuBarBackpackButton:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 20)

			--[[
			MainMenuBarPerformanceBarFrameButton:ClearAllPoints()
			MainMenuBarPerformanceBarFrameButton:SetPoint("RIGHT", KeyRingButton, "LEFT", -4, 0)

			MainMenuBarPerformanceBar:ClearAllPoints()
			MainMenuBarPerformanceBar:SetPoint("RIGHT", KeyRingButton, "LEFT", -4, 0)
			]]

			MainMenuBarPerformanceBarFrame:Hide()
			MainMenuBarPerformanceBar:Hide()

--MainMenuBarPerformanceBarFrame:SetFrameStrata("HIGH")
--MainMenuBarPerformanceBarFrame:SetScale((HelpMicroButton:GetWidth() / MainMenuBarPerformanceBarFrame:GetWidth()) * (1 / 3))

--MainMenuBarPerformanceBar:SetRotation(math.pi * 0.5)
--MainMenuBarPerformanceBar:ClearAllPoints()
--MainMenuBarPerformanceBar:SetPoint("BOTTOM", HelpMicroButton, -1, -24)

--MainMenuBarPerformanceBarFrameButton:ClearAllPoints()
--MainMenuBarPerformanceBarFrameButton:SetPoint("BOTTOMLEFT", MainMenuBarPerformanceBar, -(MainMenuBarPerformanceBar:GetWidth() / 2), 0)
--MainMenuBarPerformanceBarFrameButton:SetPoint("TOPRIGHT", MainMenuBarPerformanceBar, MainMenuBarPerformanceBar:GetWidth() / 2, -28)
			--for i=1,12,1 do
			--	_G[("ActionButton%d"):format(i)]:SetParent(UIParent)
			--end

			--[[
			local kids = { MainMenuBarArtFrame:GetChildren() }
			for _, kid in pairs(kids) do
				kid:SetParent(UIParent)
			end

			MainMenuBarArtFrame:Hide()
			]]

			self.menuOffsetLeft = MainMenuBar:GetLeft()
			self.menuOffsetBottom = MainMenuBar:GetBottom()
		--end
	end
end

f:RegisterEvent("VARIABLES_LOADED")
f:SetScript("OnEvent", f.OnEvent)

f:SetScript("OnUpdate", function(self, elapsed)
	self.timer = (self.timer or 0) + elapsed
	self.menuOffsetLeft = self.menuOffsetLeft or 0
	self.menuOffsetBottom = self.menuOffsetBottom or 0

	if self.timer >= 1 then
		if MainMenuBar:GetLeft() ~= self.menuOffsetLeft or MainMenuBar:GetBottom() ~= self.menuOffsetBottom then
			MainMenuBar:ClearAllPoints()
			MainMenuBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 60, 20)
		end

		self.timer = 0
	end
end)

local t = f:CreateTexture(nil, "ARTWORK")
t:SetAllPoints(f)
t:Show()
t:SetTexture("Interface\\TARGETINGFRAME\\UI-TargetingFrame-BarFill")
t:SetVertexColor(0.2, 0.2, 0.2)
