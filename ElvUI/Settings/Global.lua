﻿local E, L, V, P, G = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB

--Global Settings
G['general'] = {
	["autoScale"] = true,
	["minUiScale"] = 0.64,
	["eyefinity"] = false,
	['smallerWorldMap'] = true,
	["fadeMapWhenMoving"] = true,
	["mapAlphaWhenMoving"] = 0.35,
	['WorldMapCoordinates'] = {
		["enable"] = true,
		["position"] = "BOTTOMLEFT",
		["xOffset"] = 0,
		["yOffset"] = 0,
	},
	["disableTutorialButtons"] = true,
	["commandBarSetting"] = "ENABLED_RESIZEPARENT",
}

G['classtimer'] = {}

G["nameplate"] = {
	['filters'] = {
		['TestFilter'] = {
			['triggers'] = {
				['enable'] = true,
				['name'] = "", --leave blank to not check
				['level'] = 0, --set to 0 to disable, set to -1 for bosses
				['nameplateType'] = {
					['enable'] = false,
					['friendlyPlayer'] = false,
					['friendlyNPC'] = false,
					['healer'] = true,
					['enemyPlayer'] = true,
					['enemyNPC'] = true,
					['neutral'] = false
				},
				['buffs'] = {
					['mustHaveAll'] = false,
					['names'] = {
						['Divine Protection'] = true
					},
				},
				['debuffs'] = {
					['mustHaveAll'] = false,
					['names'] = {
						['Forbearance'] = true,
					},
				},
				['inCombat'] = true, -- check for incombat to run
				['outOfCombat'] = true, -- check for out of combat to run
			},
			['actions'] = {
				['color'] = {
					['enable'] = true,
					['color'] = {r=1,g=1,b=1},
				},
				['hide'] = true,
				['scale'] = 1.0,
			},
		},
	},
}

G["chat"] = {
	["classColorMentionExcludedNames"] = {},
}

G["bags"] = {
	["ignoredItems"] = {},
}

G["datatexts"] = {
	["customCurrencies"] = {},
}

G['unitframe'] = {
	['aurafilters'] = {},
	['buffwatch'] = {},
	["spellRangeCheck"] = {
		["PRIEST"] = {
			["enemySpells"] = {
				[585] = true, -- Smite (40 yards)
				[589] = true, -- Shadow Word: Pain (40 yards)
			},
			["longEnemySpells"] = {},
			["friendlySpells"] = {
				[2061] = true, -- Flash Heal (40 yards)
				[17] = true, -- Power Word: Shield (40 yards)
			},
			["resSpells"] = {
				[2006] = true, -- Resurrection (40 yards)
			},
			["petSpells"] = {},
		},
		["DRUID"] = {
			["enemySpells"] = {
				[8921] = true, -- Moonfire (40 yards, all specs, lvl 3)
			},
			["longEnemySpells"] = {},
			["friendlySpells"] = {
				[8936] = true, -- Regrowth (40 yards, all specs, lvl 5)
			},
			["resSpells"] = {
				[50769] = true, -- Revive (40 yards, all specs, lvl 14)
			},
			["petSpells"] = {},
		},
		["PALADIN"] = {
			["enemySpells"] = {
				[20271] = true, -- Judgement (30 yards)
			},
			["longEnemySpells"] = {
				[20473] = true, -- Holy Shock (40 yards)
			},
			["friendlySpells"] = {
				[19750] = true, -- Flash of Light (40 yards)
			},
			["resSpells"] = {
				[7328] = true, -- Redemption (40 yards)
			},
			["petSpells"] = {},
		},
		["SHAMAN"] = {
			["enemySpells"] = {
				[188196] = true, -- Lightning Bolt (Elemental) (40 yards)
				[187837] = true, -- Lightning Bolt (Enhancement) (40 yards)
				[403] = true, -- Lightning Bolt (Resto) (40 yards)
			},
			["longEnemySpells"] = {},
			["friendlySpells"] = {
				[8004] = true, -- Healing Surge (Resto/Elemental) (40 yards)
				[188070] = true, -- Healing Surge (Enhancement) (40 yards)
			},
			["resSpells"] = {
				[2008] = true, -- Ancestral Spirit (40 yards)
			},
			["petSpells"] = {},
		},
		["WARLOCK"] = {
			["enemySpells"] = {
				[5782] = true, -- Fear (30 yards)
			},
			["longEnemySpells"] = {
				[234153] = true, -- Drain Life (40 yards)
				[198590] = true, --Drain Soul (40 yards)
				[232670] = true, --Shadow Bolt (40 yards, lvl 1 spell)
				[686] = true, --Shadow Bolt (Demonology) (40 yards, lvl 1 spell)
			},
			["friendlySpells"] = {
				[20707] = true, -- Soulstone (40 yards)
			},
			["resSpells"] = {},
			["petSpells"] = {
				[755] = true, -- Health Funnel (45 yards)
			},
		},
		["MAGE"] = {
			["enemySpells"] = {
				[118] = true, -- Polymorph (30 yards)
			},
			["longEnemySpells"] = {
				[116] = true, -- Frostbolt (Frost) (40 yards)
				[44425] = true, -- Arcane Barrage (Arcane) (40 yards)
				[133] = true, -- Fireball (Fire) (40 yards)
			},
			["friendlySpells"] = {
				[130] = true, -- Slow Fall (40 yards)
			},
			["resSpells"] = {},
			["petSpells"] = {},
		},
		["HUNTER"] = {
			["enemySpells"] = {
				[75] = true, -- Auto Shot (40 yards)
			},
			["longEnemySpells"] = {},
			["friendlySpells"] = {},
			["resSpells"] = {},
			["petSpells"] = {
				[982] = true, -- Mend Pet (45 yards)
			},
		},
		["DEATHKNIGHT"] = {
			["enemySpells"] = {
				[49576] = true, -- Death Grip
			},
			["longEnemySpells"] = {
				[47541] = true, -- Death Coil (Unholy) (40 yards)
			},
			["friendlySpells"] = {},
			["resSpells"] = {
				[61999] = true, -- Raise Ally (40 yards)
			},
			["petSpells"] = {},
		},
		["ROGUE"] = {
			["enemySpells"] = {
				[185565] = true, -- Poisoned Knife (Assassination) (30 yards)
				[185763] = true, -- Pistol Shot (Outlaw) (20 yards)
				[114014] = true, -- Shuriken Toss (Sublety) (30 yards)
				[1725] = true, -- Distract (30 yards)
			},
			["longEnemySpells"] = {},
			["friendlySpells"] = {
				[57934] = true, -- Tricks of the Trade (100 yards)
			},
			["resSpells"] = {},
			["petSpells"] = {},
		},
		["WARRIOR"] = {
			["enemySpells"] = {
				[5246] = true, -- Intimidating Shout (Arms/Fury) (8 yards)
				[100] = true, -- Charge (Arms/Fury) (8-25 yards)
			},
			["longEnemySpells"] = {
				[355] = true, -- Taunt (30 yards)
			},
			["friendlySpells"] = {},
			["resSpells"] = {},
			["petSpells"] = {},
		},
		["MONK"] = {
			["enemySpells"] = {
				[115546] = true, -- Provoke (30 yards)
			},
			["longEnemySpells"] = {
				[117952] = true, -- Crackling Jade Lightning (40 yards)
			},
			["friendlySpells"] = {
				[116694] = true, -- Effuse (40 yards)
			},
			["resSpells"] = {
				[115178] = true, -- Resuscitate (40 yards)
			},
			["petSpells"] = {},
		},
		["DEMONHUNTER"] = {
			["enemySpells"] = {
				[183752] = true, -- Consume Magic (20 yards)
			},
			["longEnemySpells"] = {
				[185123] = true, -- Throw Glaive (Havoc) (30 yards)
				[204021] = true, -- Fiery Brand (Vengeance) (30 yards)
			},
			["friendlySpells"] = {},
			["resSpells"] = {},
			["petSpells"] = {},
		},
	},
}