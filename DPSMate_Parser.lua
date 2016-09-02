-- Notes
-- "Smbd reflects..." (Thorns etc.)
-- (%s%(%a-%))
-- /script local t = {}; for a,b,c,d in string.gfind("You hit Peter Hallow for 184.", "You (%a%a?)\it (.+) for (%d+)%.%s?(.*)") do t[1]=a;t[2]=b;t[3]=c;t[4]=d end; DPSMate:SendMessage(t[3]); DPSMate:SendMessage(t[4])
-- CHAT_MSG_SPELL_FAILED_LOCALPLAYER -> Examples: You fail to cast Heal: Interrupted. You fail to perform Bear Form: Not enough mana
-- SPELLCAST_INTERRUPTED

-- Global Variables
DPSMate.Parser.procs = {
	-- General
	[DPSMate.BabbleSpell:GetTranslation("Earthstrike")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Juju Flurry")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Holy Strength")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ephemeral Power")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Chromatic Infusion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Brittle Armor")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Unstable Power")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Zandalarian Hero Medallion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ascendance")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Essence of Sapphiron")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Hand of Justice")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sword Specialization")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bonereaver's Edge")] = true,
	
	--New
	[DPSMate.BabbleSpell:GetTranslation("Felstriker")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sanctuary")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Fury of Forgewright")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Primal Blessing")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Spinal Reaper")] = true, -- To test
	[DPSMate.BabbleSpell:GetTranslation("Netherwind Focus")] = true, -- To test
	[DPSMate.BabbleSpell:GetTranslation("Parry")] = true, -- To test
	[DPSMate.BabbleSpell:GetTranslation("Untamed Fury")] = true,
	[DPSMate.BabbleSpell:GetTranslation("The Eye of Diminution")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Kiss of the Spider")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Glyph of Deflection")] = true,
	[DPSMate.BabbleSpell:GetTranslation("The Eye of the Dead")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Slayer's Crest")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Badge of the Swarmguard")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Arcane Shroud")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Persistent Shield")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Jom Gabbar")] = true,
	[DPSMate.BabbleSpell:GetTranslation("The Burrower's Shell")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Thrash")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Free Action")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Living Free Action")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Speed")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Invulnerability")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Aura of the Blue Dragon")] = true, -- Mana Darkmoon card
	[DPSMate.BabbleSpell:GetTranslation("Invulnerability")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Battle Squawk")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Devilsaur Fury")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Furious Howl")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Healing Potion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Major Rejuvenation Potion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Mana Potion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restore Mana")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Dreamless Sleep")] = true,
	
	
	-- Rogue
	[DPSMate.BabbleSpell:GetTranslation("Slice and Dice")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blade Flurry")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sprint")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Adrenaline Rush")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Vanish")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Relentless Strikes Effect")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ruthlessness")] = true, -- To Test!!!!
	[DPSMate.BabbleSpell:GetTranslation("Rogue Armor Energize Effect")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Rogue Armor Energize")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Invigorate")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Head Rush")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Venomous Totem")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Evasion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restore Energy")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Remorseless Attacks")] = true,
	[GetSpellInfo(35546)] = true, -- Combat Potency
	[GetSpellInfo(14179)] = true, -- Relentless Strikes
	
	-- Mage
	[DPSMate.BabbleSpell:GetTranslation("Arcane Power")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Combustion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Mind Quickening")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Enigma Resist Bonus")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Enigma Blizzard Bonus")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Adaptive Warding")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Not There")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cold Snap")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Presence of Mind")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ice Block")] = true,
	
	-- Priest
	[DPSMate.BabbleSpell:GetTranslation("Power Infusion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Oracle Healing Bonus")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Epiphany")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Aegis of Preservation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Inspiration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blessed Recovery")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Focused Casting")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Spirit Tap")] = true,
	
	-- Druid
	[DPSMate.BabbleSpell:GetTranslation("Symbols of Unending Life Finisher Bonus")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Metamorphosis Rune")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Clearcasting")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Nature's Grace")] = true,
	
	-- Paladin
	[DPSMate.BabbleSpell:GetTranslation("Battlegear of Eternal Justice")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blinding Light")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Divine Favor")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Divine Shield")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Redoubt")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Holy Shield")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Vengeance")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blessing of Freedom")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blessing of Sacrifice")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blessing of Protection")] = true,
	
	-- Shaman
	[DPSMate.BabbleSpell:GetTranslation("Stormcaller's Wrath")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Nature Aligned")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Elemental Mastery")] = true,
	
	[DPSMate.BabbleSpell:GetTranslation("Windfury Weapon")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Windfury Totem")] = true,
	[GetSpellInfo(25504)] = true, -- WF Attack
	
	[DPSMate.BabbleSpell:GetTranslation("Nature's Swiftness")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ancestral Healing")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Reincarnation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Elemental Mastery")] = true,
	
	-- Warlock
	[DPSMate.BabbleSpell:GetTranslation("Vampirism")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Nightfall")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Soul Link")] = true,
	
	-- Warrior
	[DPSMate.BabbleSpell:GetTranslation("Cheat Death")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Gift of Life")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bloodrage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Flurry")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Enrage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sweeping Strikes")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Death Wish")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Recklessness")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Mighty Rage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Great Rage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Rage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Berserker Rage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Shield Wall")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Retaliation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Diamond Flask")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Shield Block")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Last Stand")] = true,
	
	-- Hunter
	[DPSMate.BabbleSpell:GetTranslation("Arcane Infused")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Quick Shots")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Rapid Fire")] = true,
	
	-- Boss Spells
	[DPSMate.BabbleSpell:GetTranslation("Lucifron's Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Gehennas' Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Panic")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Living Bomb")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Brood Affliction: Bronze")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bellowing Roar")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Fear")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Entangle")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Digestive Acid")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Locust Swarm")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Web Wrap")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Mutating Injection")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Terrifying Roar")] = true,
}

DPSMate.Parser.BuffExceptions = {
	[DPSMate.BabbleSpell:GetTranslation("Fury of Forgewright")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bloodfang")] = true,
}

DPSMate.Parser.OtherExceptions = {
	[DPSMate.BabbleSpell:GetTranslation("Mighty Rage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bloodrage")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Holy Strength")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Dreamless Sleep")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Vampirism")] = true,
}
DPSMate.Parser.DmgProcs = {
	-- General
	[DPSMate.BabbleSpell:GetTranslation("Life Steal")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Thunderfury")] = true,
	-- New
	[DPSMate.BabbleSpell:GetTranslation("Bloodfang")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Fatal Wound")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Decapitate")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Gutgore Ripper")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Firebolt")] = true,
	-- Can't add Hand of Ragnaros
	[DPSMate.BabbleSpell:GetTranslation("Expose Weakness")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Silence")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Chilled")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Glimpse of Madness")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Engulfing Shadows")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Elemental Vulnerability")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Holy Power")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Revealed Flaw")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Totemic Power")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Stygian Grasp")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Electric Discharge")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Flame Lash")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Spell Vulnerability")] = true, -- To Test
	[DPSMate.BabbleSpell:GetTranslation("Lightning Strike")] = true, -- To Test
	-- Deathbringer Skipped
}
DPSMate.Parser.TargetParty = {}
DPSMate.Parser.RCD = {
	[DPSMate.BabbleSpell:GetTranslation("Shield Wall")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Recklessness")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Retaliation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Last Stand")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Innervate")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Divine Shield")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blessing of Protection")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Gift of Life")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Redemption")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Rebirth")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Resurrection")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Reincarnation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ancestral Spirit")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Soulstone Resurrection")] = true,
}
DPSMate.Parser.FailDT = {
	-- Molten Core
	[DPSMate.BabbleSpell:GetTranslation("Rain of Fire")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cone of Fire")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Lava Bomb")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Eruption")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Earthquake")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Hand of Ragnaros")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Wrath of Ragnaros")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Conflagration")] = true,
	
	-- Blackwing Lair
	[DPSMate.BabbleSpell:GetTranslation("War Stomp")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Incinerate")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Corrosive Acid")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Frost Burn")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Ignite Flesh")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Time Lapse")] = true,
	
	-- Zul Gurub
	[DPSMate.BabbleSpell:GetTranslation("Whirlwind")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Charge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Poison Cloud")] = true,
	
	-- AQ 20
	[DPSMate.BabbleSpell:GetTranslation("Arcane Eruption")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Harsh Winds")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sand Trap")] = true,
	
	-- AQ 40
	[DPSMate.BabbleSpell:GetTranslation("Toxin Cloud")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Arcane Burst")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Eye Beam")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Dark Glare")] = true,
	
	-- Naxx
	[DPSMate.BabbleSpell:GetTranslation("Negative Charge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Positive Charge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Void Zone")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Plague Cloud")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blizzard")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Chill")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Frost Breath")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Mana Detonation")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Shadow Fissure")] = true,
	
}
DPSMate.Parser.FailDB = {
	-- Molten Core
	
	-- Blackwing Lair
	[DPSMate.BabbleSpell:GetTranslation("Suppression Aura")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bellowing Roar")] = true,
}
DPSMate.Parser.CC = {
	[DPSMate.BabbleSpell:GetTranslation("Sap")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Gouge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Sleep")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Greater Polymorph")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph: Chicken")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph: Cow")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph: Pig")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph: Sheep")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Polymorph: Turtle")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Blind")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Freezing Trap Effect")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Intimidating Shout")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Magic Dust")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Scatter Shot")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Wyvern Sting")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Seduction")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Repentance")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Shackle Undead")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Reckless Charge")] = true,
}

DPSMate.Parser.Dispels = {
	[DPSMate.BabbleSpell:GetTranslation("Remove Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cleanse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Remove Lesser Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purify")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Dispel Magic")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Abolish Poison")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Abolish Disease")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Devour Magic")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cure Disease")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Poison Cleansing Totem")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cure Poison")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Disease Cleansing Totem")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purge")] = true,
	-- Potion
	[DPSMate.BabbleSpell:GetTranslation("Powerful Anti-Venom")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purification")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purification Potion")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restorative Potion")] = true,
}
DPSMate.Parser.DeCurse = {
	[DPSMate.BabbleSpell:GetTranslation("Remove Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Remove Lesser Curse")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purification")] = true,
}
DPSMate.Parser.DeMagic = {
	[DPSMate.BabbleSpell:GetTranslation("Dispel Magic")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Devour Magic")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
}
DPSMate.Parser.DeDisease = {
	[DPSMate.BabbleSpell:GetTranslation("Purify")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Abolish Disease")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cure Disease")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Disease Cleansing Totem")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purification")] = true,
}
DPSMate.Parser.DePoison = {
	[DPSMate.BabbleSpell:GetTranslation("Abolish Poison")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purify")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Poison Cleansing Totem")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cure Poison")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Powerful Anti-Venom")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Purification")] = true,
}
DPSMate.Parser.DebuffTypes = {}
DPSMate.Parser.HotDispels = {
	[DPSMate.BabbleSpell:GetTranslation("Abolish Poison")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Abolish Disease")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Restoration")] = true,
}

DPSMate.Parser.Kicks = {
	-- Interrupts
	-- Rogue
	--[DPSMate.BabbleSpell:GetTranslation("Kick")] = true,
	-- Warrior
	--[DPSMate.BabbleSpell:GetTranslation("Pummel")] = true,
	--[DPSMate.BabbleSpell:GetTranslation("Shield Bash")] = true,
	
	-- Mage
	--[DPSMate.BabbleSpell:GetTranslation("Counterspell")] = true,
	
	-- Shaman
	--[DPSMate.BabbleSpell:GetTranslation("Earth Shock")] = true,
	
	-- Priest
	[DPSMate.BabbleSpell:GetTranslation("Silence")] = true,
	
	-- Stuns
	-- Rogue
	[DPSMate.BabbleSpell:GetTranslation("Gouge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Kidney Shot")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Cheap Shot")] = true,
	
	-- Hunter
	[DPSMate.BabbleSpell:GetTranslation("Scatter Shot")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Improved Concussive Shot")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Wyvern Sting")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Intimidation")] = true,
	
	-- Warrior
	[DPSMate.BabbleSpell:GetTranslation("Charge Stun")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Intercept Stun")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Concussion Blow")] = true,
	
	-- Druid
	[DPSMate.BabbleSpell:GetTranslation("Feral Charge")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Feral Charge Effect")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Bash")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Pounce")] = true,
	
	-- Mage
	[DPSMate.BabbleSpell:GetTranslation("Impact")] = true,
	
	-- Paladin
	[DPSMate.BabbleSpell:GetTranslation("Repentance")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Hammer of Justice")] = true,
	
	-- Warlock
	[DPSMate.BabbleSpell:GetTranslation("Pyroclasm")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Death Coil")] = true,
	
	-- Priest
	[DPSMate.BabbleSpell:GetTranslation("Blackout")] = true,
	
	-- General
	[DPSMate.BabbleSpell:GetTranslation("Tidal Charm")] = true,
	[DPSMate.BabbleSpell:GetTranslation("Reckless Charge")] = true,
	["Arcane Torrent"] = true,
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