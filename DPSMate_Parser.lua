-- Notes
-- "Smbd reflects..." (Thorns etc.)
-- (%s%(%a-%))
-- /script local t = {}; for a,b,c,d in string.gfind("You hit Peter Hallow for 184.", "You (%a%a?)\it (.+) for (%d+)%.%s?(.*)") do t[1]=a;t[2]=b;t[3]=c;t[4]=d end; DPSMate:SendMessage(t[3]); DPSMate:SendMessage(t[4])
-- CHAT_MSG_SPELL_FAILED_LOCALPLAYER -> Examples: You fail to cast Heal: Interrupted. You fail to perform Bear Form: Not enough mana
-- SPELLCAST_INTERRUPTED

-- Global Variables
DPSMate.Parser.procs = {
	-- General
	[GetSpellInfo(25891)] = true, -- Earthstrike
	[GetSpellInfo(16322)] = true, -- Juju Flurry
	[GetSpellInfo(20007)] = true, -- Holy Strength
	[GetSpellInfo(23271)] = true, -- Ephemeral Power
	[GetSpellInfo(27675)] = true, -- Chromatic Infusion
	[GetSpellInfo(24590)] = true, -- Brittle Armor
	[GetSpellInfo(24659)] = true, -- Unstable Power
	[GetSpellInfo(28204)] = true, -- Ascendance
	[GetSpellInfo(28779)] = true, -- Essence of Sapphiron
	[GetSpellInfo(15601)] = true, -- Hand of Justice
	[GetSpellInfo(12815)] = true, -- Sword Specialization
	[GetSpellInfo(21153)] = true, -- Bonereaver's Edge
	[GetSpellInfo(16551)] = true, -- Felstriker
	[GetSpellInfo(22850)] = true, -- Sanctuary
	[GetSpellInfo(15494)] = true, -- Fury of Forgewright
	[GetSpellInfo(24255)] = true, -- Primal Blessing
	[GetSpellInfo(21186)] = true, -- Spinal Reaper
	[GetSpellInfo(22008)] = true, -- Netherwind Focus
	[GetSpellInfo(23548)] = true, -- Parry
	[GetSpellInfo(23719)] = true, -- Untamed Fury
	[GetSpellInfo(28862)] = true, -- The Eye of Diminution
	[GetSpellInfo(28866)] = true, -- Kiss of the Spider
	[GetSpellInfo(28773)] = true, -- Glyph of Deflection
	[GetSpellInfo(28780)] = true, -- The Eye of the Dead
	[GetSpellInfo(28777)] = true, -- Slayer's Crest
	[GetSpellInfo(26480)] = true, -- Badge of the Swarmguard
	[GetSpellInfo(26400)] = true, -- Arcane Shroud
	[GetSpellInfo(26470)] = true, -- Persistent Shield
	[GetSpellInfo(29604)] = true, -- Jom Gabbar
	[GetSpellInfo(29506)] = true, -- The Burrower's Shell
	[GetSpellInfo(12787)] = true, -- Thrash
	[GetSpellInfo(6615)] = true, -- Free Action
	[GetSpellInfo(24364)] = true, -- Living Free Action
	[GetSpellInfo(11359)] = true, -- Restoration
	[GetSpellInfo(17498)] = true, -- Speed
	[GetSpellInfo(3169)] = true, -- Invulnerability
	[GetSpellInfo(23688)] = true, -- Aura of the Blue Dragon
	[GetSpellInfo(23060)] = true, -- Battle Squawk
	[GetSpellInfo(24352)] = true, -- Devilsaur Fury
	[GetSpellInfo(3149)] = true, -- Furious Howl
	[GetSpellInfo(17534)] = true, -- Healing Potion
	[GetSpellInfo(22732)] = true, -- Major Rejuvenation Potion
	[GetSpellInfo(11903)] = true, -- Restore Mana
	[GetSpellInfo(15822)] = true, -- Dreamless Sleep
	
	-- Rogue
	[GetSpellInfo(43547)] = true, -- Slice and Dice
	[GetSpellInfo(13877)] = true, -- Blade Flurry
	[GetSpellInfo(2983)] = true, -- Sprint
	[GetSpellInfo(13750)] = true, -- Adrenaline Rush
	[GetSpellInfo(11329)] = true, -- Vanish
	[GetSpellInfo(14181)] = true, -- Relentless Strikes Effect
	[GetSpellInfo(14161)] = true, -- Ruthlessness
	[GetSpellInfo(27788)] = true, -- Rogue Armor Energize
	[GetSpellInfo(8065)] = true, -- Invigorate
	[GetSpellInfo(28813)] = true, -- Head Rush
	[GetSpellInfo(23726)] = true, -- Venomous Totem
	[GetSpellInfo(15087)] = true, -- Evasion
	[GetSpellInfo(9512)] = true, -- Restore Energy
	[GetSpellInfo(14148)] = true, -- Remorseless Attacks
	[GetSpellInfo(35546)] = true, -- Combat Potency
	[GetSpellInfo(14179)] = true, -- Relentless Strikes
	
	-- Mage
	[GetSpellInfo(12042)] = true, -- Arcane Power
	[GetSpellInfo(11129)] = true, -- Combustion
	[GetSpellInfo(23723)] = true, -- Mind Quickening
	[GetSpellInfo(26128)] = true, -- Enigma Resist Bonus
	[GetSpellInfo(26127)] = true, -- Enigma Blizzard Bonus
	[GetSpellInfo(28764)] = true, -- Adaptive Warding
	[GetSpellInfo(28762)] = true, -- Not There
	[GetSpellInfo(12472)] = true, -- Cold Snap
	[GetSpellInfo(12043)] = true, -- Presence of Mind
	[GetSpellInfo(11958)] = true, -- Ice Block
	
	-- Priest
	[GetSpellInfo(10060)] = true, -- Power Infusion
	[GetSpellInfo(26169)] = true, -- Oracle Healing Bonus
	[GetSpellInfo(28804)] = true, -- Epiphany
	[GetSpellInfo(23780)] = true, -- Aegis of Preservation
	[GetSpellInfo(15363)] = true, -- Inspiration
	[GetSpellInfo(27818)] = true, -- Blessed Recovery
	[GetSpellInfo(14743)] = true, -- Focused Casting
	[GetSpellInfo(15338)] = true, -- Spirit Tap
	
	-- Druid
	[GetSpellInfo(26107)] = true, -- Symbols of Unending Life Finisher Bonus
	[GetSpellInfo(23724)] = true, -- Metamorphosis Rune
	[GetSpellInfo(12536)] = true, -- Clearcasting
	[GetSpellInfo(16886)] = true, -- Nature's Grace
	
	-- Paladin
	[GetSpellInfo(26975)] = true, -- Battlegear of Eternal Justice
	[GetSpellInfo(23733)] = true, -- Blinding Light
	[GetSpellInfo(20216)] = true, -- Divine Favor
	[GetSpellInfo(13874)] = true, -- Divine Shield
	[GetSpellInfo(20137)] = true, -- Redoubt
	[GetSpellInfo(9800)] = true, -- Holy Shield
	[GetSpellInfo(8602)] = true, -- Vengeance
	[GetSpellInfo(1044)] = true, -- Blessing of Freedom
	[GetSpellInfo(20729)] = true, -- Blessing of Sacrifice
	[GetSpellInfo(1022)] = true, -- Blessing of Protection
	
	-- Shaman
	[GetSpellInfo(26121)] = true, -- Stormcaller's Wrath
	[GetSpellInfo(23734)] = true, -- Nature Aligned
	[GetSpellInfo(16166)] = true, -- Elemental Mastery
	[GetSpellInfo(10486)] = true, -- Windfury Weapon
	[GetSpellInfo(10613)] = true, -- Windfury Totem
	[GetSpellInfo(17116)] = true, -- Nature's Swiftness
	[GetSpellInfo(16240)] = true, -- Ancestral Healing
	[GetSpellInfo(21169)] = true, -- Reincarnation
	[GetSpellInfo(25504)] = true, -- WF Attack
	
	-- Warlock
	[GetSpellInfo(28839)] = true, -- Vampirism
	[GetSpellInfo(18095)] = true, -- Nightfall
	[GetSpellInfo(19028)] = true, -- Soul Link
	
	-- Warrior
	[GetSpellInfo(28846)] = true, -- Cheat Death
	[GetSpellInfo(23783)] = true, -- Gift of Life
	[GetSpellInfo(2687)] = true, -- Bloodrage
	[GetSpellInfo(12974)] = true, -- Flurry
	[GetSpellInfo(12880)] = true, -- Enrage
	[GetSpellInfo(12723)] = true, -- Sweeping Strikes
	[GetSpellInfo(12328)] = true, -- Death Wish
	[GetSpellInfo(13847)] = true, -- Recklessness
	[GetSpellInfo(17528)] = true, -- Mighty Rage
	[GetSpellInfo(6613)] = true, -- Great Rage
	[GetSpellInfo(9174)] = true, -- Rage
	[GetSpellInfo(18499)] = true, -- Berserker Rage
	[GetSpellInfo(15062)] = true, -- Shield Wall
	[GetSpellInfo(20230)] = true, -- Retaliation
	[GetSpellInfo(24427)] = true, -- Diamond Flask
	[GetSpellInfo(12169)] = true, -- Shield Block
	[GetSpellInfo(12976)] = true, -- Last Stand
	
	-- Hunter
	[GetSpellInfo(23721)] = true, -- Arcane Infused
	[GetSpellInfo(6150)] = true, -- Quick Shots
	[GetSpellInfo(3045)] = true, -- Rapid Fire
	
	-- Boss debuffs
	[GetSpellInfo(19703)] = true, -- Lucifron's Curse
	[GetSpellInfo(19716)] = true, -- Gehennas' Curse
	[GetSpellInfo(19408)] = true, -- Panic
	[GetSpellInfo(20475)] = true, -- Living Bomb
	[GetSpellInfo(23170)] = true, -- Brood Affliction: Bronze
	[GetSpellInfo(18431)] = true, -- Bellowing Roar
	[GetSpellInfo(12542)] = true, -- Fear
	[GetSpellInfo(1121)] = true, -- Entangle
	[GetSpellInfo(26476)] = true, -- Digestive Acid
	[GetSpellInfo(28786)] = true, -- Locust Swarm
	[GetSpellInfo(28622)] = true, -- Web Wrap
	[GetSpellInfo(28169)] = true, -- Mutating Injection
	[GetSpellInfo(14100)] = true, -- Terrifying Roar
}

DPSMate.Parser.BuffExceptions = {
	[GetSpellInfo(15494)] = true, -- Fury of Forgewright
	[GetSpellInfo(23581)] = true, -- Bloodfang
}

DPSMate.Parser.OtherExceptions = {
	[GetSpellInfo(17528)] = true, -- Mighty Rage
	[GetSpellInfo(2687)] = true, -- Bloodrage
	[GetSpellInfo(20007)] = true, -- Holy Strength
	[GetSpellInfo(15822)] = true, -- Dreamless Sleep
	[GetSpellInfo(28839)] = true, -- Vampirism
}
DPSMate.Parser.DmgProcs = {
	-- General
	[GetSpellInfo(20004)] = true, -- Life Steal
	[GetSpellInfo(21992)] = true, -- Thunderfury
	[GetSpellInfo(23581)] = true, -- Bloodfang
	[GetSpellInfo(10373)] = true, -- Fatal Wound
	[GetSpellInfo(25669)] = true, -- Decapitate
	[GetSpellInfo(21151)] = true, -- Gutgore Ripper
	[GetSpellInfo(11765)] = true, -- Firebolt
	[GetSpellInfo(7140)] = true, -- Expose Weakness
	[GetSpellInfo(12528)] = true, -- Silence
	[GetSpellInfo(12486)] = true, -- Chilled
	[GetSpellInfo(26108)] = true, -- Glimpse of Madness
	[GetSpellInfo(21978)] = true, -- Engulfing Shadows
	[GetSpellInfo(28772)] = true, -- Elemental Vulnerability
	[GetSpellInfo(5926)] = true, -- Holy Power
	[GetSpellInfo(28815)] = true, -- Revealed Flaw
	[GetSpellInfo(28827)] = true, -- Totemic Power
	[GetSpellInfo(29164)] = true, -- Stygian Grasp
	[GetSpellInfo(29151)] = true, -- Electric Discharge
	[GetSpellInfo(18958)] = true, -- Flame Lash
	[GetSpellInfo(23605)] = true, -- Spell Vulnerability
	[GetSpellInfo(16614)] = true, -- Lightning Strike
}
DPSMate.Parser.TargetParty = {}
DPSMate.Parser.RCD = {
	[GetSpellInfo(15062)] = true, -- Shield Wall
	[GetSpellInfo(13847)] = true, -- Recklessness
	[GetSpellInfo(20230)] = true, -- Retaliation
	[GetSpellInfo(12976)] = true, -- Last Stand
	[GetSpellInfo(29166)] = true, -- Innervate
	[GetSpellInfo(13874)] = true, -- Divine Shield
	[GetSpellInfo(1022)] = true, -- Blessing of Protection
	[GetSpellInfo(23783)] = true, -- Gift of Life
	[GetSpellInfo(10322)] = true, -- Redemption
	[GetSpellInfo(20484)] = true, -- Rebirth
	[GetSpellInfo(2006)] = true, -- Resurrection
	[GetSpellInfo(21169)] = true, -- Reincarnation
	[GetSpellInfo(2008)] = true, -- Ancestral Spirit
	[GetSpellInfo(20765)] = true, -- Soulstone Resurrection
}
DPSMate.Parser.FailDT = {
	-- PRE TBC
	[GetSpellInfo(11990)] = true, -- Rain of Fire
	[GetSpellInfo(19630)] = true, -- Cone of Fire
	[GetSpellInfo(20474)] = true, -- Lava Bomb
	[GetSpellInfo(20527)] = true, -- Eruption
	[GetSpellInfo(19798)] = true, -- Earthquake
	[GetSpellInfo(19780)] = true, -- Hand of Ragnaros
	[GetSpellInfo(20566)] = true, -- Wrath of Ragnaros
	[GetSpellInfo(19428)] = true, -- Conflagration
	[GetSpellInfo(11876)] = true, -- War Stomp
	[GetSpellInfo(19397)] = true, -- Incinerate
	[GetSpellInfo(8245)] = true, -- Corrosive Acid
	[GetSpellInfo(23189)] = true, -- Frost Burn
	[GetSpellInfo(23316)] = true, -- Ignite Flesh
	[GetSpellInfo(23312)] = true, -- Time Lapse
	[GetSpellInfo(9633)] = true, -- Whirlwind
	[GetSpellInfo(6178)] = true, -- Charge
	[GetSpellInfo(12766)] = true, -- Poison Cloud
	[GetSpellInfo(25672)] = true, -- Arcane Eruption
	[GetSpellInfo(10093)] = true, -- Harsh Winds
	[GetSpellInfo(26656)] = true, -- Sand Trap
	[GetSpellInfo(568)] = true, -- Arcane Burst
	[GetSpellInfo(32950)] = true, -- Eye Beam
	[GetSpellInfo(26029)] = true, -- Dark Glare
	[GetSpellInfo(29660)] = true, -- Negative Charge
	[GetSpellInfo(29659)] = true, -- Positive Charge
	[GetSpellInfo(28863)] = true, -- Void Zone
	[GetSpellInfo(3256)] = true, -- Plague Cloud
	[GetSpellInfo(10)] = true, -- Blizzard
	[GetSpellInfo(21098)] = true, -- Chill
	[GetSpellInfo(21099)] = true, -- Frost Breath
	[GetSpellInfo(27820)] = true, -- Mana Detonation
	[GetSpellInfo(27810)] = true, -- Shadow Fissure
	
}
DPSMate.Parser.FailDB = {
	-- PRE TBC
	[GetSpellInfo(22247)] = true, -- Suppression Aura
	[GetSpellInfo(18431)] = true, -- Bellowing Roar
}
DPSMate.Parser.CC = {
	[GetSpellInfo(2070)] = true, -- Sap
	[GetSpellInfo(12540)] = true, -- Gouge
	[GetSpellInfo(12098)] = true, -- Sleep
	[GetSpellInfo(118)] = true, -- Polymorph
	[GetSpellInfo(22274)] = true, -- Greater Polymorph
	[GetSpellInfo(228)] = true, -- Polymorph: Chicken
	[GetSpellInfo(28272)] = true, -- Polymorph: Pig
	[GetSpellInfo(851)] = true, -- Polymorph: Sheep
	[GetSpellInfo(21060)] = true, -- Blind
	[GetSpellInfo(14309)] = true, -- Freezing Trap Effect
	[GetSpellInfo(5246)] = true, -- Intimidating Shout
	[GetSpellInfo(19503)] = true, -- Scatter Shot
	[GetSpellInfo(19386)] = true, -- Wyvern Sting
	[GetSpellInfo(20407)] = true, -- Seduction
	[GetSpellInfo(20066)] = true, -- Repentance
	[GetSpellInfo(11444)] = true, -- Shackle Undead
	[GetSpellInfo(13327)] = true, -- Reckless Charge
}

DPSMate.Parser.Dispels = {
	[GetSpellInfo(15729)] = true, -- Remove Curse
	[GetSpellInfo(4987)] = true, -- Cleanse
	[GetSpellInfo(475)] = true, -- Remove Lesser Curse
	[GetSpellInfo(1152)] = true, -- Purify
	[GetSpellInfo(21076)] = true, -- Dispel Magic
	[GetSpellInfo(14253)] = true, -- Abolish Poison
	[GetSpellInfo(552)] = true, -- Abolish Disease
	[GetSpellInfo(20428)] = true, -- Devour Magic
	[GetSpellInfo(528)] = true, -- Cure Disease
	[GetSpellInfo(8166)] = true, -- Poison Cleansing Totem
	[GetSpellInfo(8947)] = true, -- Cure Poison
	[GetSpellInfo(8170)] = true, -- Disease Cleansing Totem
	[GetSpellInfo(370)] = true, -- Purge
	[GetSpellInfo(23787)] = true, -- Powerful Anti-Venom
	[GetSpellInfo(11359)] = true, -- Restoration
	[GetSpellInfo(17550)] = true, -- Purification
	[GetSpellInfo(17572)] = true, -- Purification Potion
	[GetSpellInfo(11522)] = true, -- Restorative Potion
}
DPSMate.Parser.DeCurse = {
	[GetSpellInfo(15729)] = true, -- Remove Curse
	[GetSpellInfo(475)] = true, -- Remove Lesser Curse
	[GetSpellInfo(11359)] = true, -- Restoration
	[GetSpellInfo(17550)] = true, -- Purification
	[GetSpellInfo(17572)] = true, -- Purification Potion
}
DPSMate.Parser.DeMagic = {
	[GetSpellInfo(21076)] = true, -- Dispel Magic
	[GetSpellInfo(20428)] = true, -- Devour Magic
	[GetSpellInfo(370)] = true, -- Purge
	[GetSpellInfo(11359)] = true, -- Restoration
}
DPSMate.Parser.DeDisease = {
	[GetSpellInfo(1152)] = true, -- Purify
	[GetSpellInfo(552)] = true, -- Abolish Disease
	[GetSpellInfo(528)] = true, -- Cure Disease
	[GetSpellInfo(8170)] = true, -- Disease Cleansing Totem
	[GetSpellInfo(11359)] = true, -- Restoration
	[GetSpellInfo(17550)] = true, -- Purification
	[GetSpellInfo(17572)] = true, -- Purification Potion
}
DPSMate.Parser.DePoison = {
	[GetSpellInfo(14253)] = true, -- Abolish Poison
	[GetSpellInfo(1152)] = true, -- Purify
	[GetSpellInfo(8166)] = true, -- Poison Cleansing Totem
	[GetSpellInfo(8947)] = true, -- Cure Poison
	[GetSpellInfo(23787)] = true, -- Powerful Anti-Venom
	[GetSpellInfo(11359)] = true, -- Restoration
	[GetSpellInfo(17550)] = true, -- Purification
	[GetSpellInfo(17572)] = true, -- Purification Potion
}
DPSMate.Parser.DebuffTypes = {}
DPSMate.Parser.HotDispels = {
	[GetSpellInfo(14253)] = true, -- Abolish Poison
	[GetSpellInfo(552)] = true, -- Abolish Disease
	[GetSpellInfo(11359)] = true, -- Restoration
}

DPSMate.Parser.Kicks = {
	[GetSpellInfo(12528)] = true, -- Silence
	[GetSpellInfo(12540)] = true, -- Gouge
	[GetSpellInfo(408)] = true, -- Kidney Shot
	[GetSpellInfo(14902)] = true, -- Cheap Shot
	[GetSpellInfo(19503)] = true, -- Scatter Shot
	[GetSpellInfo(19415)] = true, -- Improved Concussive Shot
	[GetSpellInfo(19386)] = true, -- Wyvern Sting
	[GetSpellInfo(19577)] = true, -- Intimidation
	[GetSpellInfo(7922)] = true, -- Charge Stun
	[GetSpellInfo(20615)] = true, -- Intercept Stun
	[GetSpellInfo(12809)] = true, -- Concussion Blow
	[GetSpellInfo(16979)] = true, -- Feral Charge
	[GetSpellInfo(19675)] = true, -- Feral Charge Effect
	[GetSpellInfo(5211)] = true, -- Bash
	[GetSpellInfo(9005)] = true, -- Pounce
	[GetSpellInfo(12360)] = true, -- Impact
	[GetSpellInfo(20066)] = true, -- Repentance
	[GetSpellInfo(853)] = true, -- Hammer of Justice
	[GetSpellInfo(18096)] = true, -- Pyroclasm
	[GetSpellInfo(6789)] = true, -- Death Coil
	[GetSpellInfo(15326)] = true, -- Blackout
	[GetSpellInfo(835)] = true, -- Tidal Charm
	[GetSpellInfo(13327)] = true, -- Reckless Charge
	[GetSpellInfo(28730)] = true, -- Arcane Torrent
}
DPSMate.Parser.player = UnitName("player")
DPSMate.Parser.playerclass = nil

-- Local Variables
local Execute = {}
local _,playerclass = UnitClass("player")
local DB = DPSMate.DB
local _G = getfenv(0)
local string_find = string.find
local strgfind = string.gmatch
local UL = UnitLevel
local t = {}
local UnitName = UnitName
local spellSchoolToString = {
	[1] = "physical",
	[2] = "holy",
	[4] = "fire",
	[8] = "nature",
	[16] = "frost",
	[32] = "shadow",
	[64] = "arcane",
}
local strupper = string.upper
local strsub = string.sub
local strlower = string.lower
local tinsert = table.insert
local tnbr = tonumber
local FixCaps = function(capsstr)
	return strupper(strsub(capsstr,1,1))..strlower(strsub(capsstr,2))
end
local overheal = 0
local GetTime = GetTime
local SuccessfulCasts = {}
local GetSpellSource = function(spellName, dstName)
	local owner, secPrio = DPSMate.L["unknown"]
	for c, v in pairs(SuccessfulCasts) do
		if v then
			if (GetTime()-v[1])>2 then
				SuccessfulCasts[c]=nil
			else
				if v[2]==spellName then
					if v[4]==dstName then
						owner = v[3]
					else
						secPrio = v[3]
					end
				end
			end
		end
	end
	return secPrio or owner
end

-- Begin Functions

function DPSMate.Parser:OnLoad()
	if (not DPSMateUser[self.player]) then
		DPSMateUser[self.player] = {
			[1] = DPSMate:TableLength(DPSMateUser)+1,
			[2] = strlower(playerclass),
		}
	end
	DPSMateUser[self.player][8] = UL("player")
	-- Prevent this addon from causing issues
	if SW_FixLogStrings then
		DPSMate:SendMessage("Please disable SW_StatsFixLogStrings and SW_Stats. Those addons causes issues.")
	end
	
	-- Prevent error messages of NPCDB
	local oldError = _G.error
	_G.error = function(message, prio)
		if string_find(message, "NPCDB") then
			return
		end
		oldError(message, prio)
	end
	
	-- Changing the GetTranslation function
	local oldGetTranslation = DPSMate.BabbleSpell.GetTranslation
	DPSMate.BabbleSpell.GetTranslation = function(self, msg)
		if msg=="" or msg==" " then
			return msg
		else
			if DPSMate.BabbleSpell:HasTranslation(msg) then
				return oldGetTranslation(self, msg)
			elseif DPSMate.BabbleSpell:HasReverseTranslation(msg) then
				local revTra = DPSMate.BabbleSpell:GetReverseTranslation(msg)
				if DPSMate.BabbleSpell:HasTranslation(revTra) then
					return oldGetTranslation(self, revTra)
				else
					return msg
				end
			else
				return msg
			end
		end
	end
end

function DPSMate.Parser:GetPlayerValues()
	self.player = UnitName("player")
	_,playerclass = UnitClass("player")
	self.playerclass = playerclass
	DPSMatePlayer[1] = self.player
	DPSMatePlayer[2] = playerclass
	local _, fac = UnitFactionGroup("player")
	if fac == "Alliance" then
		DPSMatePlayer[3] = 1
	elseif fac == "Horde" then
		DPSMatePlayer[3] = -1
	end
	DPSMatePlayer[4] = GetRealmName()
	DPSMatePlayer[5] = GetGuildInfo("player")
	DPSMatePlayer[6] = GetLocale()
	self:OnLoad()
end

function DPSMate.Parser:OnEvent(event)
	if arg2 and Execute[arg2] then
		Execute[arg2](nil,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15,arg16,arg17,arg18,arg19,arg20,arg21,arg22)
		return
	end
	if Execute[event] then
		Execute[event](nil,arg1,arg2,arg3,arg4,arg5)
	end
end

function DPSMate.Parser:GetUnitByName(target)
	local unit = self.TargetParty[target]
	if not unit then
		if target==self.player then
			unit="player"
		elseif target==UnitName("target") then
			unit="target"
		end
	end
	return unit
end
function DPSMate.Parser:GetOverhealByName(amount, target)
	local result, unit = 0, self:GetUnitByName(target)
	if unit then result = amount-(UnitHealthMax(unit)-UnitHealth(unit)) end
	if result<0 then return 0 else return result end 
end
function DPSMate.Parser:UnitAuraDispels(unit)
	for i=1, 4 do
		local name, _, _, _, dispelType = UnitDebuff(unit, i)
		if not name then break end
		DB:BuildAbility(name, dispelType)
		DPSMateAbility[name][2] = dispelType
	end
end

function DPSMate.Parser:SwingDamage(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,amount, school, resisted, blocked, absorbed, critical, glancing, crushing)
	t = {}
	if critical then t[1]=0;t[2]=critical end
	if resisted then t[1]=0;t[3]=resisted end
	if blocked then t[1]=0;t[4]=blocked end
	if glancing then t[1]=0;t[5]=glancing end
	if crushing then t[1]=0;t[6]=crushing end
	if DPSMate:IsNPC(srcGUID) then
		DB:EnemyDamage(false, DPSMateEDD, dstName, DPSMate.L["AutoAttack"], t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, srcName, t[4] or 0, t[6] or 0)
		DB:DamageTaken(dstName, DPSMate.L["AutoAttack"], t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, srcName, t[6] or 0)
	else
		DB:EnemyDamage(true, DPSMateEDT, srcName, DPSMate.L["AutoAttack"], t[1] or 1, t[2] or 0, 0, 0, 0, t[3] or 0, amount, dstName, t[4] or 0, t[6] or 0)
		DB:DamageDone(srcName, DPSMate.L["AutoAttack"], t[1] or 1, t[2] or 0, 0, 0, 0, t[3] or 0, amount, t[4] or 0, t[5] or 0)
		if DPSMate.Parser.TargetParty[dstName] and DPSMate.Parser.TargetParty[srcName] then DB:BuildFail(1, dstName, srcName, DPSMate.L["AutoAttack"], amount) end
	end
	DB:DeathHistory(dstName, srcName, DPSMate.L["AutoAttack"], amount, t[1] or 1, t[2] or 0, 0, t[6] or 0)
	if absorbed then
		DB:SetUnregisterVariables(absorbed, DPSMate.L["AutoAttack"], srcName)
	end
end

function DPSMate.Parser:SwingMissed(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, missType)
	t = {}
	if missType == DPSMate.L["pabsorb"] then
		DB:Absorb(DPSMate.L["AutoAttack"], dstName, srcName)
		return -- Cant rly return here, can I?
	end
	if missType == DPSMate.L["pmiss"] then t[2]=1 end
	if missType == DPSMate.L["pdodge"] then t[3]=1 end
	if missType == DPSMate.L["pparry"] then t[4]=1 end
	if missType == DPSMate.L["presist"] then t[5]=1 end -- TO CONFIRM
	if missType == DPSMate.L["pblock"] then t[6]=1 end -- TO CONFIRM
	if DPSMate:IsNPC(srcGUID) then
		DB:EnemyDamage(false, DPSMateEDD, dstName, DPSMate.L["AutoAttack"], 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, srcName, t[6] or 0, 0)
		DB:DamageTaken(dstName, DPSMate.L["AutoAttack"], 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, srcName, 0)
	else
		DB:EnemyDamage(true, DPSMateEDT, srcName, DPSMate.L["AutoAttack"], 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, dstName, t[6] or 0, 0)
		DB:DamageDone(srcName, DPSMate.L["AutoAttack"], 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, 0, t[6] or 0)
	end
end

function DPSMate.Parser:SpellDamage(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, amount, school, resisted, blocked, absorbed, critical, glancing, crushing)
	t = {}
	if critical then t[1]=0;t[2]=1 end
	if resisted then t[1]=0;t[3]=1 end
	if blocked then t[1]=0;t[4]=1 end
	if glancing then t[1]=0;t[5]=1 end
	if crushing then t[1]=0;t[6]=1 end
	if eventtype == "SPELL_PERIODIC_DAMAGE" then
		spellName = spellName..DPSMate.L["periodic"]
	end
	if DPSMate:IsNPC(srcGUID) then
		if DPSMate.Parser.FailDT[spellName] then DB:BuildFail(2, spellName, dstName, srcName, amount) end -- TO TEST
		DB:EnemyDamage(false, DPSMateEDD, dstName, spellName, t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, srcName, t[4] or 0, t[6] or 0)
		DB:DamageTaken(dstName, spellName, t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, srcName, t[6] or 0)
	else
		if DPSMate.Parser.Kicks[spellName] then DB:AssignPotentialKick(srcName, spellName, dstName, GetTime()) end
		if DPSMate.Parser.DmgProcs[spellName] then DB:BuildBuffs(srcName, srcName, spellName, true) end
		DB:EnemyDamage(true, DPSMateEDT, srcName, spellName, t[1] or 1, t[2] or 0, 0, 0, 0, t[3] or 0, amount, dstName, t[4] or 0, t[6] or 0)
		DB:DamageDone(srcName, spellName, t[1] or 1, t[2] or 0, 0, 0, 0, t[3] or 0, amount, t[4] or 0, t[5] or 0)
		if DPSMate.Parser.TargetParty[dstName] and DPSMate.Parser.TargetParty[srcName] then DB:BuildFail(1, dstName, srcName, spellName, amount) end
	end
	DB:UnregisterPotentialKick(srcName, spellName, GetTime())
	DB:AddSpellSchool(spellName,spellSchoolToString[spellSchool])
	DB:DeathHistory(dstName, srcName, spellName, amount, t[1] or 1, t[2] or 0, 0, t[6] or 0)
	if absorbed then
		DB:SetUnregisterVariables(absorbed, spellName, srcName)
	end
end

function DPSMate.Parser:SpellMissed(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, missType)
	t = {}
	if missType == DPSMate.L["pabsorb"] then
		DB:Absorb(spellName, dstName, srcName)
		return -- Cant rly return here, can I?
	end
	if missType == DPSMate.L["pmiss"] then t[2]=1 end
	if missType == DPSMate.L["pdodge"] then t[3]=1 end
	if missType == DPSMate.L["pparry"] then t[4]=1 end
	if missType == DPSMate.L["presist"] then t[5]=1 end -- TO CONFIRM
	if missType == DPSMate.L["pblock"] then t[6]=1 end -- TO CONFIRM
	if DPSMate:IsNPC(srcGUID) then
		DB:EnemyDamage(false, DPSMateEDD, dstName, spellName, 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, srcName, t[6] or 0, 0)
		DB:DamageTaken(dstName, spellName, 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, srcName, 0)
	else
		DB:EnemyDamage(true, DPSMateEDT, srcName, spellName, 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, dstName, t[6] or 0, 0)
		DB:DamageDone(srcName, spellName, 0, 0, t[2] or 0, t[4] or 0, t[3] or 0, t[5] or 0, 0, 0, t[6] or 0)
	end
end

function DPSMate.Parser:EnvironmentalDamage(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,enviromentalType, amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing)
	t = {}
	if critical then t[1]=0;t[2]=1 end
	if resisted then t[1]=0;t[3]=1 end
	if blocked then t[1]=0;t[4]=1 end
	if glancing then t[1]=0;t[5]=1 end
	if crushing then t[1]=0;t[6]=1 end
	DB:EnemyDamage(false, DPSMateEDD, dstName, FixCaps(enviromentalType), t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, DPSMate.L["penvironment"], t[4] or 0, t[6] or 0)
	DB:DamageTaken(dstName, FixCaps(enviromentalType), t[1] or 1, t[2] or 0, 0, 0, 0, 0, amount, DPSMate.L["penvironment"], t[6] or 0)
	DB:DeathHistory(dstName, DPSMate.L["penvironment"], FixCaps(enviromentalType), amount, t[1] or 1, t[2] or 0, 0, t[6] or 0)
end

function DPSMate.Parser:SpellHeal(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, spellId, spellName, spellSchool, amount, critical)
	t = {}
	if critical then t[1]=0;t[2]=critical end
	if eventtype == "SPELL_PERIODIC_HEAL" then
		spellName = spellName..DPSMate.L["periodic"]
	end
	DB:UnregisterPotentialKick(srcName, spellName, GetTime())
	overheal = DPSMate.Parser:GetOverhealByName(amount, dstName) -- Gotta localize those functions
	DB:HealingTaken(DPSMateHealingTaken, dstName, spellName, t[1] or 1, t[2] or 0, amount, srcName)
	DB:HealingTaken(DPSMateEHealingTaken, dstName, spellName, t[1] or 1, t[2] or 0, amount-overheal, srcName)
	DB:Healing(0, DPSMateEHealing, srcName, spellName, t[1] or 1, t[2] or 0, amount-overheal, dstName)
	DB:Healing(1, DPSMateTHealing, srcName, spellName, t[1] or 1, t[2] or 0, amount, dstName)
	DB:DeathHistory(dstName, srcName, spellName, amount, t[1] or 1, t[2] or 0, 1, 0)
	if overheal>0 then
		DB:Healing(2, DPSMateOverhealing, srcName, spellName, t[1] or 1, t[2] or 0, overheal, dstName)
		DB:HealingTaken(DPSMateOverhealingTaken, dstName, spellName, t[1] or 1, t[2] or 0, overheal, srcName)
	end
end

function DPSMate.Parser:SpellAuraDispelled(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSpellSchool)
	DPSMate.DB:Dispels(srcName, spellName, dstName, extraSpellName)
end

-- auraType: BUFF/DEBUFF => Replace DB in auras evaluation
function DPSMate.Parser:SpellAuraApplied(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, auraType)
	srcName = srcName or GetSpellSource(spellName, dstName)
	if DPSMate:IsNPC(dstGUID) then
		if DPSMate.Parser.CC[spellName] then DB:BuildActiveCC(dstName, spellName) end -- TO TEST
	else
		if DPSMate.Parser.RCD[spellName] then DPSMate:Broadcast(1, dstName, spellName) end -- TO TEST
		if DPSMate.Parser.FailDB[spellName] then DB:BuildFail(3, srcName, dstName, spellName, 0) end -- TO TEST
		DPSMate.DB:BuildBuffs(srcName, dstName, spellName, false)
	end
	if DPSMate.Parser.Kicks[spellName] then DB:AssignPotentialKick(srcName, spellName, dstName, GetTime()); end
	if DB.ShieldFlags[spellName] then DB:RegisterAbsorb(srcName, spellName, dstName) end
end

function DPSMate.Parser:SpellAuraRemoved(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, auraType)
	if not DPSMate:IsNPC(dstGUID) then
		DB:UnregisterPotentialKick(dstName, spellName, GetTime())
		DPSMate.DB:DestroyBuffs(dstName, spellName)
		if DPSMate.Parser.RCD[spellName] then DPSMate:Broadcast(6, dstName, spellName) end -- TO TEST
		DB:RemoveActiveCC(dstName, spellName) -- TO TEST
	end
	if DB.ShieldFlags[spellName] then DB:UnregisterAbsorb(spellName, dstName) end
end

function DPSMate.Parser:Interrupt(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSpellSchool)
	DPSMate.DB:Kick(srcName, dstName, spellName, extraSpellName)
end

function DPSMate.Parser:UnitDied(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags) -- Killingblows :D
	if DPSMate:IsNPC(dstGUID) then
		DB:Attempt(false, true, dstName)
	else
		DB:UnregisterDeath(dstName)
	end
end

function DPSMate.Parser:Test(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, amount)
	DB.NextSwing[srcName] = {
		[1] = amount,
		[2] = spellName
	}
	DB.NextSwingEDD[srcName] = {
		[1] = amount,
		[2] = spellName
	}
	DB:BuildBuffs(srcName, srcName, spellName, true)
	DB:DestroyBuffs(srcName, spellName)
end

function DPSMate.Parser:SpellCastStart(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool)
	if not DPSMate:IsNPC(srcGUID) then
		if DPSMate.Parser.RCD[spellName] then DPSMate:Broadcast(2, srcName, dstName or DPSMate.L["unknown"], spellName) end -- TO TEST MAYBE: SPELL_RESURRECT 
	end
	DB:RegisterPotentialKick(srcName, spellName, GetTime())
end

function DPSMate.Parser:SpellCastSuccess(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool)
	tinsert(SuccessfulCasts, {GetTime(), spellName, srcName, dstName})
end

local linkQuality = {
	["9d9d9d"] = 0,
	["ffffff"] = 1,
	["1eff00"] = 2,
	["0070dd"] = 3,
	["a335ee"] = 4,
	["ff8000"] = 5
}
function DPSMate.Parser:Loot(msg)
	for a,b,c,d,e in strgfind(msg, DPSMate.L["loot1"]) do
		DB:Loot(a, linkQuality[b], tnbr(c), e)
		return
	end
	for a,b,c,d in strgfind(msg, DPSMate.L["loot2"]) do
		DB:Loot(DPSMate.Parser.player, linkQuality[a], tnbr(b), d)
		return
	end
end

function DPSMate.Parser:Energize(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags,spellId, spellName, spellSchool, amount, powerType) -- Potential to add here mana etc. gained mode
	if DPSMate.Parser.procs[spellName] then
		DB:BuildBuffs(srcName, dstName, spellName, true)
		DB:DestroyBuffs(dstName, spellName)
	end
end

Execute = {
	["SWING_DAMAGE"] = DPSMate.Parser.SwingDamage, 
	["SWING_MISSED"] = DPSMate.Parser.SwingMissed,
	["SPELL_DAMAGE"] = DPSMate.Parser.SpellDamage,
	["RANGE_DAMAGE"] = DPSMate.Parser.SpellDamage,
	["SPELL_PERIODIC_DAMAGE"] = DPSMate.Parser.SpellDamage,
	["DAMAGE_SHIELD"] = DPSMate.Parser.SpellDamage,
	["DAMAGE_SPLIT"] = DPSMate.Parser.SpellDamage,
	["ENVIRONMENTAL_DAMAGE"] = DPSMate.Parser.EnvironmentalDamage,
	["SPELL_MISSED"] = DPSMate.Parser.SpellMissed,
	["RANGE_MISSED"] = DPSMate.Parser.SpellMissed,
	["SPELL_PERIODIC_MISSED"] = DPSMate.Parser.SpellMissed,
	["DAMAGE_SHIELD_MISSED"] = DPSMate.Parser.SpellMissed,
	["SPELL_HEAL"] = DPSMate.Parser.SpellHeal,
	["SPELL_PERIODIC_HEAL"] = DPSMate.Parser.SpellHeal,
	["SPELL_DISPEL"] = DPSMate.Parser.SpellAuraDispelled,
	["SPELL_STOLEN"] = DPSMate.Parser.SpellAuraDispelled, -- Merging purge and dispel for now
	["SPELL_AURA_APPLIED"] = DPSMate.Parser.SpellAuraApplied,
	["SPELL_AURA_REMOVED"] = DPSMate.Parser.SpellAuraRemoved,
	["SPELL_INTERRUPT"] = DPSMate.Parser.Interrupt, -- Not taking stuns into account // Also not taking silences into account (atleast not aoe silence)
	["UNIT_DIED"] = DPSMate.Parser.UnitDied,
	["UNIT_DESTROYED"] = DPSMate.Parser.UnitDied,
	["SPELL_CAST_START"] = DPSMate.Parser.SpellCastStart,
	["SPELL_CAST_SUCCESS"] = DPSMate.Parser.SpellCastSuccess,
	["UNIT_AURA"] = DPSMate.Parser.UnitAuraDispels,
	["SPELL_ENERGIZE"] = DPSMate.Parser.Energize, -- Potential to add mana gained meter etc.
	["SPELL_PERIODIC_ENERGIZE"] = DPSMate.Parser.Energize,
	
	["CHAT_MSG_LOOT"] = DPSMate.Parser.Loot,
	
	--["SPELL_CAST_FAILED"] = DPSMate.Parser.Test2,
	
	-- TO BE FOUND OUT
	["SPELL_EXTRA_ATTACKS"] = DPSMate.Parser.Test -- Will find out what that is 
	
	-- TO BE TESTED
	--["SPELL_DRAIN"] = Recount.SpellDrainLeech, -- Elsia: Drains and leeches.
	--["SPELL_LEECH"] = Recount.SpellDrainLeech,
	--["SPELL_PERIODIC_DRAIN"] = Recount.SpellDrainLeech,
	--["SPELL_PERIODIC_LEECH"] = Recount.SpellDrainLeech,
	
	-- TO BE IMPLEMENTED
	--["SPELL_AURA_APPLIED_DOSE"] = DPSMate.Parser.Test,  -- Getting a stack more of Vengeance for example
	--["SPELL_AURA_REMOVED_DOSE"] = DPSMate.Parser.Test,
	
	-- Maybe for shields?
	--["SPELL_AURA_BROKEN"] = Recount.SpellAuraBroken, -- New with 2.4.3
	--["SPELL_AURA_BROKEN_SPELL"] = Recount.SpellAuraBroken, -- New with 2.4.3
	--["SPELL_AURA_REFRESH"] = Recount.SpellAuraAppliedRemoved, -- New with 2.4.3
	
	-- Maybe I can do sth with this
	--["SPELL_CAST_START"] = Recount.SpellCastStartSuccess, -- Elsia: Spell casts
	--["SPELL_CAST_SUCCESS"] = Recount.SpellCastStartSuccess,
	--["SPELL_INSTAKILL"] = Recount.SpellCastStartSuccess,
	--["SPELL_DURABILITY_DAMAGE"] = Recount.SpellCastStartSuccess,
	--["SPELL_DURABILITY_DAMAGE_ALL"] = Recount.SpellCastStartSuccess,
	--["SPELL_CAST_FAILED"] = Recount.SpellCastFailed, -- Elsia: Spell aborts/fails
}