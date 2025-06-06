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

function InfoBarSetText(i, format, ...)
	if type(i) ~= "number" then
		for k, v in pairs(InfoBarStrings) do
			if v.Name == i then i = k end
		end
	end

	if not InfoBarStrings or not InfoBarStrings[i] then
		return
	end

	local btn = _G[InfoBarStrings[i].Name]
	local str = _G[InfoBarStrings[i].Name.."Text"] --or f:CreateFontString(InfoBarStrings[i].Name, "ARTWORK", "NumberFont_Outline_Med")

	if format then
		str:SetFormattedText(format, ...)
	else
		str:SetText(select(1, ...))
	end

	btn:SetWidth(str:GetStringWidth()+30)

	for i = 1, floor(#(InfoBarStrings)/2), 1 do
		local s = _G[InfoBarStrings[i].Name]

		if i == 1 then
			s:SetPoint("TOPLEFT", InfoBarFrame, "TOPLEFT", 10, 0)
		else
			s:SetPoint("TOPLEFT", _G[InfoBarStrings[(i-1)].Name], "TOPRIGHT", 0, 0)
		end
	end

	for i = #(InfoBarStrings), floor(#(InfoBarStrings)/2)+1, -1 do
		local s = _G[InfoBarStrings[i].Name]

		if i == #(InfoBarStrings) then
			s:SetPoint("TOPRIGHT", InfoBarFrame, "TOPRIGHT", -10, 0)
		else
			s:SetPoint("TOPRIGHT", _G[InfoBarStrings[(i+1)].Name], "TOPLEFT", 0, 0)
		end
	end
end
