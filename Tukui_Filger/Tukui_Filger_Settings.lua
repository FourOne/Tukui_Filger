local _, ns = ...

ns.Filger_Settings = {
	configmode = false,
}

--[[ CD-Example
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "CENTER", UIParent, "CENTER", 0, -100 },

			-- Wild Growth / Wildwuchs
			{ spellID = 48438, size = 32, filter = "CD" },
		},
]]

ns.Filger_Spells = {
	["DRUID"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -146 },

			-- Lifebloom / Blühendes Leben
			{ spellID = 33763, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rejuvenation / Verjüngung
			{ spellID = 774, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Regrowth / Nachwachsen
			{ spellID = 8936, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Wild Growth / Wildwuchs
			{ spellID = 48438, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -146 },

			-- Lifebloom / Blühendes Leben
			{ spellID = 33763, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Rejuvenation / Verjüngung
			{ spellID = 774, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Regrowth / Nachwachsen
			{ spellID = 8936, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Wild Growth / Wildwuchs
			{ spellID = 48438, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Eclipse (Lunar) / Mondfinsternis
			{ spellID = 48518, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eclipse (Solar) / Sonnenfinsternis
			{ spellID = 48517, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shooting Stars / Sternschnuppen
			{ spellID = 93400, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Savage Roar / Wildes Brüllen
			{ spellID = 52610, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Survival Instincts / Überlebensinstinkte
			{ spellID = 61336, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tree of Life / Baum des Lebens
			{ spellID = 33891, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting / Freizaubern
			{ spellID = 16870, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate / Anregen
			{ spellID = 29166, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Barkskin / Baumrinde
			{ spellID = 22812, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Hibernate / Winterschlaf
			{ spellID = 2637, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots / Wucherwurzeln
			{ spellID = 339, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Cyclone / Wirbelsturm
			{ spellID = 33786, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Moonfire / Mondfeuer
			{ spellID = 8921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunfire / Sonnenfeuer
			{ spellID = 93402, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Insect Swarm / Insektenschwarm
			{ spellID = 5570, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rake / Krallenhieb
			{ spellID = 1822, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rip / Zerfetzen
			{ spellID = 1079, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Lacerate / Aufschlitzen
			{ spellID = 33745, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pounce Bleed / Anspringblutung
			{ spellID = 9007, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mangle / Zerfleischen
			{ spellID = 33876, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth and Moon / Erde und Mond
			{ spellID = 48506, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Faerie Fire / Feenfeuer
			{ spellID = 770, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Hibernate / Winterschlaf
			{ spellID = 2637, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots / Wucherwurzeln
			{ spellID = 339, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Cyclone / Wirbelsturm
			{ spellID = 33786, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},

		{
			Name = "CD/HEAL",
			Direction = "UP",
			IconSide = "RIGHT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, 100 },

			-- Swiftmend / Rasche Heilung
			{ spellID = 18562, size = 32, barWidth = 200, filter = "CD" },
			-- Wild Growth / Wildwuchs
			{ spellID = 48438, size = 32, barWidth = 200, filter = "CD" },
		},
	},
	["HUNTER"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Lock and Load / Sichern und Laden
			{ spellID = 56342, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fury of the Five Flights / Furor der fünf Schwärme
			{ spellID = 60314, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Quick Shots / Schnelle Schüsse
			--{ spellID = 6150, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician / Meister der Taktik
			{ spellID = 34837, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Steady Shot / Verbesserter zuverlässiger Schuss
			{ spellID = 53224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Expose Weakness / Schwäche aufdecken
			--{ spellID = 23578, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rapid Fire / Schnellfeuer
			{ spellID = 3045, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of the Wild / Ruf der Wildnis
			{ spellID = 53434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Mend Pet / Tier heilen
			{ spellID = 136, size = 47, unitId = "pet", caster = "player", filter = "BUFF" },
			-- Feed Pet / Tier füttern
			{ spellID = 6991, size = 47, unitId = "pet", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Wyvern Sting / Wyverngift
			{ spellID = 19386, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot / Unterdrückender Schuss
			{ spellID = 34490, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Serpent Sting / Schlangengift
			{ spellID = 1978, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Widow Venom / Witwentoxin
			{ spellID = 82654, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Black Arrow / Schwarzer Pfeil
			{ spellID = 3674, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Explosive Shot / Explosivschuss
			{ spellID = 53301, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hunter's Mark/ Mal des Jägers
			{ spellID = 1130, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },

		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Wyvern Sting / Wyverngift
			{ spellID = 19386, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot / Unterdrückender Schuss
			{ spellID = 34490, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["MAGE"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Frostbite / Frostbite
			--{ spellID = 11071, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Winter's Chill / Winterkälte
			{ spellID = 28593, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Fingers of Frost / Eisige Finger
			{ spellID = 44544, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Brain Freeze / Hirnfrost
			{ spellID = 57761, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hot Streak / Kampfeshitze
			{ spellID = 44445, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Missile Barrage / Geschosssalve
			{ spellID = 54486, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting / Freizaubern
			{ spellID = 12536, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Impact / Einschlag
			{ spellID = 12358, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Polymorph / Verwandlung
			{ spellID = 118, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Arcane Blast / Arkanschlag
			{ spellID = 36032, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Improved Scorch / Verbessertes Versengen
			{ spellID = 11367, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Scorch / Versengen
			{ spellID = 2948, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Slow / Verlangsamen
			{ spellID = 31589, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Ignite / Entzünden
			{ spellID = 11119, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Living Bomb / Lebende Bombe
			{ spellID = 44457, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pyroblast! / Pyroschlag!
			{ spellID = 92315, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Polymorph / Verwandlung
			{ spellID = 118, size = 32, barWidth = 191, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["WARRIOR"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Sudden Death / Plötzlicher Tod
			{ spellID = 52437, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bloodsurge / Schäumendes Blut
			{ spellID = 46916, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Sword and Board / Schwert und Schild
			{ spellID = 50227, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Reserve / Blutreserve
			{ spellID = 64568, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spell Reflection / Zauberreflexion
			{ spellID = 23920, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victory Rush / Siegesrausch
			{ spellID = 34428, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Block / Schildblock
			{ spellID = 2565, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Last Stand / Letztes Gefecht
			{ spellID = 12975, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Wall / Schildwall
			{ spellID = 871, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Charge Stun / Sturmangriffsbetäubung
			{ spellID = 7922, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shockwave / Schockwelle
			{ spellID = 46968, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Hamstring / Kniesehne
			{ spellID = 1715, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rend / Verwunden
			{ spellID = 94009, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunder Armor /Rüstung zerreiße
			{ spellID = 7386, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Expose Armor / Rüstung schwächen
			--{ spellID = 48669, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Thunder Clap / Donnerknall
			{ spellID = 6343, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Infected Wounds / Infizierte Wunden
			{ spellID = 48484, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frost Fever / Frostfieber
			{ spellID = 55095, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Demoralizing Shout / Demoralisierender Ruf
			{ spellID = 1160, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demoralizing Roar / Demoralisierendes Gebrüll
			{ spellID = 99, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness / Fluch der Schwäche
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
	},
	["SHAMAN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -146 },

			-- Earth Shield / Erdschild
			{ spellID = 974, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Riptide / Springflut
			{ spellID = 61295, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lightning Shield / Blitzschlagschild
			{ spellID = 324, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Water Shield / Wasserschild
			{ spellID = 52127, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -146 },

			-- Earth Shield / Erdschild
			{ spellID = 974, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Riptide / Springflut
			{ spellID = 61295, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Maelstorm Weapon / Waffe des Mahlstroms
			{ spellID = 53817, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shamanistic Rage / Schamanistische Wut
			{ spellID = 30823, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting / Freizaubern
			{ spellID = 16246, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tidal Waves / Flutwellen
			{ spellID = 51562, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancestral Fortitude / Seelenstärke der Ahnen
			{ spellID = 16236, size = 47, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Hex / Verhexen
			{ spellID = 51514, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Storm Strike / Sturmschlag
			{ spellID = 17364, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth Shock / Erdschock
			{ spellID = 8042, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Shock / Frostschock
			{ spellID = 8056, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Flame Shock / Flammenschock
			{ spellID = 8050, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Hex / Verhexen
			{ spellID = 51514, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["PALADIN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -146 },

			-- Beacon of Light / Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -146 },

			-- Beacon of Light / Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Judgements of the Pure / Richturteile des Reinen
			{ spellID = 53671, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Holy Shield / Heiliger Schild
			{ spellID = 20925, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Infusion of Light / Lichtenergie
			{ spellID = 54149, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Plea / Göttliche Bitte
			{ spellID = 54428, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life / Essenz des Lebens
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Illumination / Göttliche Gunst
			{ spellID = 31842, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Hammer of Justice / Hammer der Gerechtigkeit
			{ spellID = 853, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Judgement / Richturteil
			{ spellID = 20271, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Justice
			--{ spellID = 53407, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Wisdom
			--{ spellID = 20186, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Heart of the Crusader
			--{ spellID = 54499, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Blood Corruption
			--{ spellID = 53742, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Hammer of Justice / Hammer der Gerechtigkeit
			{ spellID = 853, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["PRIEST"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -146 },

			-- Prayer of Mending / Gebet der Besserung
			{ spellID = 41635, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Guardian Spirit / Schutzgeist
			{ spellID = 47788, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Pain Suppression / Schmerzunterdrückung
			{ spellID = 33206, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Power Word: Shield / Machtwort: Schild
			{ spellID = 17, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Renew / Erneuerung
			{ spellID = 139, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fade / Verblassen
			{ spellID = 586, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fear Ward / Furchtzauberschutz
			{ spellID = 6346, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inner Fire / Inneres Feuer
			{ spellID = 588, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innerer Wille
			{ spellID = 73413, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Archangel / Erzengel
			{ spellID = 81700, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Archangel / Dunkler Erzengel
			{ spellID = 87153, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Empowered Shadow / Machterfüllte Schatten
			{ spellID = 95799, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -146 },

			-- Prayer of Mending / Gebet der Besserung
			{ spellID = 41635, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Guardian Spirit / Schutzgeist
			{ spellID = 47788, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Pain Suppression / Schmerzunterdrückung
			{ spellID = 33206, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Power Word: Shield / Machtwort: Schild
			{ spellID = 17, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Renew / Erneuerung
			{ spellID = 139, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Fear Ward / Furchtzauberschutz
			{ spellID = 6346, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Echo of Light / Echo des Lichts
			{ spellID = 77489, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Inspiration / Inspiration
			{ spellID = 15357, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Grace / Barmherzigkeit
			{ spellID = 77613, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Surge of Light / Woge des Lichts
			{ spellID = 88688, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Serendipity / Glücksfall
			{ spellID = 63735, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadow Orb / Schattenkugeln
			{ spellID = 77487, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Evangelism / Dunkler Prediger
			{ spellID = 87118, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evangelism / Prediger
			{ spellID = 81661, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dispersion / Dispersion
			{ spellID = 47585, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: Serenity / Chakra: Epiphanie
			{ spellID = 81208, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: Sanctuary / Chakra: Refugium
			{ spellID = 81206, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heartsong / Gesang des Herzens
			{ spellID = 74224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cleansing Tears / Läuternde Tränen
			{ spellID = 91139, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Darkglow / Dunkles Glühen
			{ spellID = 75173, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Shackle Undead / Untote fesseln
			{ spellID = 9484, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream / Psychischer Schrei
			{ spellID = 8122, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shadow Word: Pain / Schattenwort: Schmerz
			{ spellID = 589, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Devouring Plague / Verschlingende Seuche
			{ spellID = 2944, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Vampiric Touch / Vampirberührung
			{ spellID = 34914, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Shackle Undead / Untote fesseln
			{ spellID = 9484, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream / Psychischer Schrei
			{ spellID = 8122, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["WARLOCK"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Devious Minds / Teuflische Absichten
			{ spellID = 70840, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Soul Fire / Verbessertes Seelenfeuer
			{ spellID = 85114, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Molten Core / Geschmolzener Kern
			{ spellID = 47383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Decimation / Dezimierung
			{ spellID = 63158, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backdraft / Pyrolyse
			{ spellID = 54277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backlasha / Heimzahlen
			{ spellID = 34939, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nether Protection / Netherschutz
			{ spellID = 30301, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nightfall / Einbruch der Nacht
			{ spellID = 18095, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Burning Soul / Brennende Seele
			{ spellID = 74434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Fear / Furcht
			{ spellID = 5782, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Banish / Verbannen
			{ spellID = 710, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of the Elements / Fluch der Elemente
			{ spellID = 1490, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Tongues / Fluch der Sprachen
			{ spellID = 1714, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Exhaustion / Fluch der Erschöpfung
			{ spellID = 18223, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness / Fluch der Schwäche
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shadow Embrace / Umschlingende Schatten
			{ spellID = 32385, size = 47, unitId = "target", caster = "player", filter = "BUFF" },
			-- Corruption / Verderbnis
			{ spellID = 172, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Immolate / Feuerbrand
			{ spellID = 348, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Agony / Omen der Pein
			{ spellID = 980, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Bane of Doom / Omen der Verdammnis
			{ spellID = 603, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Unstable Affliction / Instabiles Gebrechen
			{ spellID = 30108, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Haunt / Heimsuchung
			{ spellID = 48181, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Seed of Corruption / Saat der Verderbnis
			{ spellID = 27243, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Howl of Terror / Schreckensgeheul
			{ spellID = 5484, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Death Coil / Todesmantel
			{ spellID = 6789, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Enslave Demon / Dämonensklave
			{ spellID = 1098, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demon Charge / Dämonischer Ansturm
			{ spellID = 54785, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "RIGHT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Fear / Furcht
			{ spellID = 5782, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Banish / Verbannen
			{ spellID = 710, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["ROGUE"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Sprint / Sprinten
			{ spellID = 2983, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cloak of Shadows / Mantel der Schatten
			{ spellID = 31224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Adrenaline Rush / Adrenalinrausch
			{ spellID = 13750, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evasion / Entrinnen
			{ spellID = 5277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Envenom / Vergiften
			{ spellID = 32645, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Overkill / Amok
			{ spellID = 58426, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slice and Dice / Zerhäckseln
			{ spellID = 5171, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tricks of the Trade / Schurkenhandel
			{ spellID = 57934, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Turn the Tables / Den Spieß umdrehen
			{ spellID = 51627, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Cheap Shot / Fieser Trick
			{ spellID = 1833, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Kidney Shot / Nierenhieb
			{ spellID = 408, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Blind / Blenden
			{ spellID = 2094, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sap / Kopfnuss
			{ spellID = 6770, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rupture / Blutung
			{ spellID = 1943, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Garrote / Erdrosseln
			{ spellID = 703, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Gouge / Solarplexus
			{ spellID = 1776, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Expose Armor / Rüstung schwächen
			{ spellID = 8647, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Dismantle / Zerlegen
			{ spellID = 51722, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Deadly Poison / Tödliches Gift
			{ spellID = 2818, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind-numbing Poison / Gedankenbenebelndes Gift
			{ spellID = 5760, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Crippling Poison / Verkrüppelndes Gift
			{ spellID = 3409, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Wound Poison / Wundgift
			{ spellID = 13218, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 198, 100 },

			-- Blind / Blenden
			{ spellID = 2094, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Sap / Kopfnuss
			{ spellID = 6770, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["DEATHKNIGHT"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -190 },

			-- Blood Shield / Blutschild
			{ spellID = 77513, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Force / Unheilige Kraft
			{ spellID = 67383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Strength / Unheilige Stärke
			{ spellID = 53365, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Might / Unheilige Macht
			{ spellID = 67117, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dancing Rune Weapon / Tanzende Runenwaffe
			{ spellID = 49028, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Icebound Fortitude / Eisige Gegenwehr
			{ spellID = 48792, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Anti-Magic Shell / Antimagische Hülle
			{ spellID = 48707, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Killing Machine / Tötungsmaschine
			{ spellID = 51124, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Freezing Fog / Gefrierender Nebel
			{ spellID = 59052, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bone Shield / Knochenschild
			{ spellID = 49222, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -190 },

			-- Strangulate / Strangulieren
			{ spellID = 47476, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Blood Plague / Blutseuche
			{ spellID = 59879, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Fever / Frostfieber
			{ spellID = 59921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Unholy Blight / Unheilige Verseuchung
			{ spellID = 49194, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Summon Gargoyle / Gargoyle beschwören
			{ spellID = 49206, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Death and Decay / Tod und Verfall
			{ spellID = 43265, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
	},
	["ALL"] = {
		{
			Name = "SPECIAL_P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -233 },

			-- Geisterstunde / Witching Hour
			{ spellID = 90887, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Erkenntnis des Herzens / Heart's Revelation
			{ spellID = 91027, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Richturteil des Herzens / Heart's Judgement
			{ spellID = 91041, size = 32, unitId = "player", caster = "player", filter = "BUFF" },

			-- Hyperspeed Accelerators / Hypergeschwindigkeitsbeschleuniger
			{ spellID = 54758, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Synapse Springs / Synapsenfedern
			{ spellID = 82175, size = 32, unitId = "player", caster = "player", filter = "BUFF" },

			-- Speed / Geschwindigkeit
			{ spellID = 53908, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Wild Magic / Wilde Magie
			{ spellID = 53909, size = 32, unitId = "player", caster = "player", filter = "BUFF" },

			-- Tricks of the Trade / Schurkenhandel
			{ spellID = 57934, size = 32, unitId = "player", caster = "all", filter = "BUFF" },
			-- Power Infusion / Seele der Macht
			{ spellID = 10060, size = 32, unitId = "player", caster = "all", filter = "BUFF" },
			-- Bloodlust / Kampfrausch
			{ spellID = 2825, size = 32, unitId = "player", caster = "all", filter = "BUFF" },
			-- Heroism / Heldentum
			{ spellID = 32182, size = 32, unitId = "player", caster = "all", filter = "BUFF" },
		},
		{
			Name = "PVE/PVP_P_DEBUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -198, -90 },

		-- Death Knight
			-- Gnaw (Ghoul)
			{ spellID = 47481, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Strangulate
			{ spellID = 47476, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Chains of Ice
			{ spellID = 45524, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Desecration (no duration, lasts as long as you stand in it)
			{ spellID = 55741, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Glyph of Heart Strike
			{ spellID = 58617, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Icy Clutch (Chilblains)
			--{ spellID = 50436, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hungering Cold
			{ spellID = 49203, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Druid
			-- Cyclone
			{ spellID = 33786, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hibernate
			{ spellID = 2637, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Bash
			{ spellID = 5211, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Maim
			{ spellID = 22570, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Pounce
			{ spellID = 9005, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots
			{ spellID = 339, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Feral Charge Effect
			{ spellID = 45334, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Infected Wounds
			{ spellID = 58179, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Hunter
			-- Freezing Trap Effect
			{ spellID = 3355, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Freezing Arrow Effect
			--{ spellID = 60210, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Scare Beast
			{ spellID = 1513, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Scatter Shot
			{ spellID = 19503, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Chimera Shot - Scorpid
			--{ spellID = 53359, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Snatch (Bird of Prey)
			{ spellID = 50541, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Intimidation
			{ spellID = 24394, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sonic Blast (Bat)
			{ spellID = 50519, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ravage (Ravager)
			{ spellID = 50518, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Concussive Barrage
			{ spellID = 35101, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Concussive Shot
			{ spellID = 5116, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frost Trap Aura
			{ spellID = 13810, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Glyph of Freezing Trap
			{ spellID = 61394, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Wing Clip
			{ spellID = 2974, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Counterattack
			{ spellID = 19306, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Entrapment
			{ spellID = 19185, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Pin (Crab)
			{ spellID = 50245, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Venom Web Spray (Silithid)
			{ spellID = 54706, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Web (Spider)
			{ spellID = 4167, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Froststorm Breath (Chimera)
			{ spellID = 92380, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Tendon Rip (Hyena)
			{ spellID = 50271, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Mage
			-- Dragon's Breath
			{ spellID = 31661, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Polymorph
			{ spellID = 118, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Silenced - Improved Counterspell
			{ spellID = 18469, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Deep Freeze
			{ spellID = 44572, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Freeze (Water Elemental)
			{ spellID = 33395, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frost Nova
			{ spellID = 122, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shattered Barrier
			{ spellID = 55080, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Chilled
			{ spellID = 6136, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Cone of Cold
			{ spellID = 120, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Slow
			{ spellID = 31589, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Paladin
			-- Repentance
			{ spellID = 20066, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Turn Evil
			{ spellID = 10326, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shield of the Templar
			{ spellID = 63529, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hammer of Justice
			{ spellID = 853, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Holy Wrath
			{ spellID = 2812, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Stun (Seal of Justice proc)
			{ spellID = 20170, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Avenger's Shield
			{ spellID = 31935, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Priest
			-- Psychic Horror
			{ spellID = 64058, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mind Control
			{ spellID = 605, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Psychic Horror
			{ spellID = 64044, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream
			{ spellID = 8122, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Silence
			{ spellID = 15487, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mind Flay
			{ spellID = 15407, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Rogue
			-- Dismantle
			{ spellID = 51722, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blind
			{ spellID = 2094, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Garrote - Silence
			{ spellID = 1330, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Silenced - Improved Kick
			{ spellID = 18425, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Cheap Shot
			{ spellID = 1833, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Kidney Shot
			{ spellID = 408, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blade Twisting
			{ spellID = 31125, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Crippling Poison
			{ spellID = 3409, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Deadly Throw
			{ spellID = 26679, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Shaman
			-- Hex
			{ spellID = 51514, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Earthgrab
			{ spellID = 64695, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Freeze
			{ spellID = 63685, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Stoneclaw Stun
			{ spellID = 39796, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Earthbind
			{ spellID = 3600, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frost Shock
			{ spellID = 8056, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Warlock
			-- Banish
			{ spellID = 710, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Death Coil
			{ spellID = 6789, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fear
			{ spellID = 5782, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Howl of Terror
			{ spellID = 5484, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Seduction (Succubus)
			{ spellID = 6358, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Spell Lock (Felhunter)
			{ spellID = 24259, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shadowfury
			{ spellID = 30283, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Intercept (Felguard)
			{ spellID = 30153, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Aftermath
			{ spellID = 18118, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Curse of Exhaustion
			{ spellID = 18223, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Warrior
			-- Intimidating Shout
			{ spellID = 20511, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Disarm
			{ spellID = 676, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Silenced (Gag Order)
			{ spellID = 18498, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Charge Stun
			{ spellID = 7922, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Concussion Blow
			{ spellID = 12809, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Intercept
			{ spellID = 20253, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Revenge Stun
			--{ spellID = 12798, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shockwave
			{ spellID = 46968, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Glyph of Hamstring
			{ spellID = 58373, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Improved Hamstring
			{ spellID = 23694, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hamstring
			{ spellID = 1715, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Piercing Howl
			{ spellID = 12323, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Racials
			-- War Stomp
			{ spellID = 20549, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Baradin Hold(PvP)
			-- Meteor Slash / Meteorschlag (Argaloth)
			{ spellID = 88942, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Bastion of Twilight
			-- Blackout / Blackout (Valiona & Theralion)
			{ spellID = 92879, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Engulfing Magic / Einhüllende Magie (Valiona & Theralion)
			{ spellID = 86631, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Twilight Meteorite
			{ spellID = 74792, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Waterlogged / Wasserdurchtränkt (Twilight Ascendant Council)
			{ spellID = 82762, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Burning Blood / Brennendes Blut (Twilight Ascendant Council)
			{ spellID = 82662, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Heart of Ice / Herz aus Eis (Twilight Ascendant Council)
			{ spellID = 82667, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frozen / Gefroren (Twilight Ascendant Council)
			{ spellID = 92503, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Swirling Winds / Wirbelnde Winde (Twilight Ascendant Council)
			{ spellID = 83500, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Magnetic Pull / Magnetische Anziehung (Twilight Ascendant Council)
			{ spellID = 83587, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Accelerated / Verderbnis: Beschleunigung (Cho'gall)
			{ spellID = 81836, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Malformation / Verderbnis: Missbildung (Cho'gall)
			{ spellID = 82125, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Absolute / Verderbnis: Vollendet (Cho'gall)
			{ spellID = 82170, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Sickness / Verderbnis: Krankheit (Cho'gall)
			{ spellID = 93200, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Blackwing Descent
			-- Constricting Chains / Fesselnde Ketten (Magmaw)
			{ spellID = 91911, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Parasitic Infection / Parasitäre Infektion (Magmaw)
			{ spellID = 94679, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Infectious Vomit / Infektiöses Erbrochenes (Magmaw)
			{ spellID = 91923, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Conductor (Omnitron Defense System)
			{ spellID = 91433, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shadow Infusion / Schattenmacht (Omnitron Defense System)
			{ spellID = 92048, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Flash Freeze / Blitzeis (Maloriak)
			{ spellID = 77699, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Consuming Flames / Verzehrende Flammen (Maloriak)
			{ spellID = 77786, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Finkle's Mixture / Finkels Mixtur (Chimaeron)
			{ spellID = 82705, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shadow Conductor / Schattenleiter (Nefarian)
			{ spellID = 92053, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Throne of Four Winds
			-- Wind Chill / Windkühle (Conclave of Wind)
			{ spellID = 93123, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Slicing Gale / Schneidender Orkan (Conclave of Wind)
			{ spellID = 93058, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Static Shock / Statischer Schock (Al'Akir)
			{ spellID = 87873, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Acid Rain / Säureregen (Al'Akir)
			{ spellID = 93279, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Firelands
			-- Magma Rupture (Shannox)
			{ spellID = 99840, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Crystal Prison Trap (Shannox)
			{ spellID = 99837, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Jagged Tear (Shannox)
			{ spellID = 99936, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Eruption (Lord Rhyolith)
			{ spellID = 98492, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Molten Feather (Alysrazor)
			{ spellID = 97128, size = 72, unitId = "player", caster = "all", filter = "BUFF" },
			-- Wings of Flame (Alysrazor)
			{ spellID = 98619, size = 72, unitId = "player", caster = "all", filter = "BUFF" },
			-- Blazing Power (Alysrazor)
			{ spellID = 99461, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Alysra's Razor (Alysrazor)
			{ spellID = 100029, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- The Widow's Kiss (Beth'tilac)
			{ spellID = 99506, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Torment (Baleroc)
			{ spellID = 99256, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Tormented (Baleroc)
			{ spellID = 99257, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blaze of Glory (Baleroc)
			{ spellID = 99252, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Vital Flame (Baleroc)
			{ spellID = 99262, size = 72, unitId = "player", caster = "all", filter = "BUFF" },
			-- Vital Spark (Baleroc)
			{ spellID = 99263, size = 72, unitId = "player", caster = "all", filter = "BUFF" },
			-- Searing Seeds (Majordomo Staghelm)
			{ spellID = 98450, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Burning Orbs (Majordomo Staghelm)
			{ spellID = 98451, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blazing Heat (Ragnaros)
			{ spellID = 100460, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Burning Wound (Ragnaros)
			{ spellID = 101239, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "PVP_T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 198, -90 },

			-- Aspect of the Pack
			{ spellID = 13159, size = 72, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate
			{ spellID = 29166, size = 72, unitId = "target", caster = "all", filter = "BUFF"},
			-- Spell Reflection
			{ spellID = 23920, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Aura Mastery
			{ spellID = 31821, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ice Block
			{ spellID = 45438, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Cloak of Shadows
			{ spellID = 31224, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Shield
			{ spellID = 642, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Deterrence
			{ spellID = 19263, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Anti-Magic Shell
			{ spellID = 48707, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Lichborne
			{ spellID = 49039, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Freedom
			{ spellID = 1044, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Sacrifice
			{ spellID = 6940, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
			-- Grounding Totem Effect
			{ spellID = 8178, size = 72, unitId = "target", caster = "all", filter = "BUFF" },
		},
	},
}