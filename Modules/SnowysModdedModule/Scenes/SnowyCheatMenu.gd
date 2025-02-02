extends SceneBase

var BodyWritingDB = load("res://Game/Gameplay/BodyWritingDB.gd")

var inventoryItems = {
	"BDSM": [
		["Ballgag", "Give yourself this.", "giveItem", ["ballgag"]],
		["Basket Muzzle", "Give yourself this.", "giveItem", ["basketmuzzle"]],
		["Blindfold", "Give yourself this.", "giveItem", ["blindfold"]],
		["Bondage Mittens", "Give yourself this.", "giveItem", ["bondagemittens"]],
		["Buttplug", "Give yourself this.", "giveItem", ["buttplug"]],
		["Canine Dildogag", "Give yourself this.", "giveItem", ["caninedildogag"]],
		["Chastity Cage", "Give yourself this.", "giveItem", ["ChastityCage"]],
		["Chastity Cage Advanced", "Give yourself this.", "giveItem", ["ChastityCageAdvanced"]],
		["Chastity Cage Permanent", "Give yourself this.", "giveItem", ["ChastityCagePermanent"]],
		["Chastity Cage Permanent Normal", "Give yourself this.", "giveItem", ["ChastityCagePermanentNormal"]],
		["Hypnovisor Disabled", "Give yourself this.", "giveItem", ["HypnovisorDisabled"]],
		["Inmate Ankle Cuffs", "Give yourself this.", "giveItem", ["inmateanklecuffs"]],
		["Inmate Collar", "Give yourself this.", "giveItem", ["inmatecollar"]],
		["Inmate Wrist Cuffs", "Give yourself this.", "giveItem", ["inmatewristcuffs"]],
		["Jacki Chastity Piercings", "Give yourself this.", "giveItem", ["JackiChastityPiercings"]],
		["Latex Straitjacket", "Give yourself this.", "giveItem", ["LatexStraitjacket"]],
		["Old Collar", "Give yourself this.", "giveItem", ["oldcollar"]],
		["Police Cuffs", "Give yourself this.", "giveItem", ["policecuffs"]],
		["Ring Gag", "Give yourself this.", "giveItem", ["ringgag"]],
		["Rope Harness", "Give yourself this.", "giveItem", ["ropeharness"]],
		["Vaginal Plug", "Give yourself this.", "giveItem", ["vaginalplug"]],
		["Zipties Ankle", "Give yourself this.", "giveItem", ["ZiptiesAnkle"]],
		["Zipties Wrist", "Give yourself this.", "giveItem", ["ZiptiesWrist"]]
	],
	"Clothes": [
		["Alex Exoskeleton", "Give you self this.", "giveItem", ["AlexExoskeleton"]],
		["Android Suit", "Give you self this.", "giveItem", ["AndroidSuit"]],
		["Casual Clothes", "Give you self this.", "giveItem", ["CasualClothes"]],
		["Engineer Clothes", "Give you self this.", "giveItem", ["EngineerClothes"]],
		["Engineer Clothes Alex", "Give you self this.", "giveItem", ["EngineerClothesAlex"]],
		["Engineer Clothes Old", "Give you self this.", "giveItem", ["EngineerClothesOld"]],
		["Guard Armor", "Give you self this.", "giveItem", ["GuardArmor"]],
		["Guard ArmorRiot", "Give you self this.", "giveItem", ["GuardArmorRiot"]],
		["Inmate Uniform General", "Give you self this.", "giveItem", ["inmateuniform"]],
		["Inmate Uniform High Sec", "Give you self this.", "giveItem", ["inmateuniformHighsec"]],
		["Inmate Uniform Sex Deviant", "Give you self this.", "giveItem", ["inmateuniformSexDeviant"]],
		["Latex Suit", "Give you self this.", "giveItem", ["LatexSuit"]],
		["Leather Jacket", "Give you self this.", "giveItem", ["LeatherJacket"]],
		["Leotard", "Give you self this.", "giveItem", ["Leotard"]],
		["Nurse Clothes", "Give you self this.", "giveItem", ["NurseClothes"]],
		["Nurse Clothes Alt", "Give you self this.", "giveItem", ["NurseClothesAlt"]],
		["Official Clothes", "Give you self this.", "giveItem", ["OfficialClothes"]],
		["Puppy Corset", "Give you self this.", "giveItem", ["PuppyCorset"]],
		["Socket Armor", "Give you self this.", "giveItem", ["SocketArmor"]],
		["Socket Backpack", "Give you self this.", "giveItem", ["SocketBackpack"]],
		["Socket Crotch Cover", "Give you self this.", "giveItem", ["SocketCrotchCover"]],
		["Socket Visor", "Give you self this.", "giveItem", ["SocketVisor"]],
		["Socket Visor Up", "Give you self this.", "giveItem", ["SocketVisorUp"]],
		["Syndi Armor", "Give you self this.", "giveItem", ["SyndiArmor"]]
	],
	"Underwear": [
		["Lace Bra", "Give you self this.", "giveItem", ["LaceBra"]],
		["Lace Panties", "Give you self this.", "giveItem", ["LacePanties"]],
		["Plain Bra", "Give you self this.", "giveItem", ["plainBra"]],
		["Plain Briefs", "Give you self this.", "giveItem", ["plainBriefs"]],
		["Plain Panties", "Give you self this.", "giveItem", ["plainPanties"]],
		["Plain Undershirt", "Give you self this.", "giveItem", ["plainUndershirt"]],
		["Sporty Briefs", "Give you self this.", "giveItem", ["sportyBriefs"]],
		["Sporty Tank Top", "Give you self this.", "giveItem", ["sportyTankTop"]],
		["Sporty Top", "Give you self this.", "giveItem", ["sportyTop"]],
		["Strapon", "Give you self this.", "giveItem", ["Strapon"]],
		["Strapon Canine", "Give you self this.", "giveItem", ["StraponCanine"]],
		["Strapon Dragon", "Give you self this.", "giveItem", ["StraponDragon"]],
		["Strapon Feeldoe", "Give you self this.", "giveItem", ["StraponFeeldoe"]],
		["Strapon Feline", "Give you self this.", "giveItem", ["StraponFeline"]]
	],
	"Unique": [
		["Alex Spine", "Give you self this.", "giveItem", ["AlexSpine"]],
		["Eliza Necklace", "Give you self this.", "giveItem", ["ElizaNecklace"]],
		["Risha Piercings", "Give you self this.", "giveItem", ["RishaPiercings"]]
	],
	"Weapons": [
		["Shiv", "Give you self this.", "giveItem", ["Shiv"]],
		["Stun Baton", "Give you self this.", "giveItem", ["StunBaton"]]
	],
	"Misc": [
		["Anaphrodisiac Pill", "Give you self this.", "giveItem", ["AnaphrodisiacPill"]],
		["Apple Item", "Give you self this.", "giveItem", ["appleitem"]],
		["Birth Control Pill", "Give you self this.", "giveItem", ["BirthControlPill"]],
		["Breast Pump", "Give you self this.", "giveItem", ["BreastPump"]],
		["Breast Pump Advanced", "Give you self this.", "giveItem", ["BreastPumpAdvanced"]],
		["Breeder Pill", "Give you self this.", "giveItem", ["BreederPill"]],
		["Canine Dildo", "Give you self this.", "giveItem", ["CanineDildo"]],
		["Condom", "Give you self this.", "giveItem", ["Condom"]],
		["Energy Drink", "Give you self this.", "giveItem", ["EnergyDrink"]],
		["Gas Mask", "Give you self this.", "giveItem", ["GasMask"]],
		["Guard Helmet", "Give you self this.", "giveItem", ["GuardHelmet"]],
		["Guard Helmet Riot", "Give you self this.", "giveItem", ["GuardHelmetRiot"]],
		["Heat Pill", "Give you self this.", "giveItem", ["HeatPill"]],
		["Horsecock Dildo", "Give you self this.", "giveItem", [""]],
		["Keyholder Key Unlock", "Give you self this.", "giveItem", ["KeyholderKeyUnlock"]],
		["Lube", "Give you self this.", "giveItem", ["Lube"]],
		["Painkillers", "Give you self this.", "giveItem", ["Painkillers"]],
		["Penis Pump", "Give you self this.", "giveItem", ["PenisPump"]],
		["Penis Pump Advanced", "Give you self this.", "giveItem", ["PenisPumpAdvanced"]],
		["Plastic Bottle", "Give you self this.", "giveItem", ["PlasticBottle"]],
		["Pregnancy Test", "Give you self this.", "giveItem", ["PregnancyTest"]],
		["Quality Condom", "Give you self this.", "giveItem", ["Quality Condom"]],
		["Restraint Key", "Give you self this.", "giveItem", ["Restraint Key"]],
		["Ring Fighter", "Give you self this.", "giveItem", ["RingFighter"]],
		["Ring Of Devotion", "Give you self this.", "giveItem", ["RingOfDevotion"]],
		["Ring Rahi", "Give you self this.", "giveItem", ["RingRahi"]],
		["SyndiHelmet", "Give you self this.", "giveItem", ["SyndiHelmet"]],
		["Wedding Veil", "Give you self this.", "giveItem", ["WeddingVeil"]]
	]#,
	# "Modded Items": [
	# 	["WThighHighsGen", "Give you self this.", "giveItem", ["WThighHighsGen"]],
	# 	["ThighHighGeneral", "Give you self this.", "giveItem", ["ThighHighGeneral"]],
	# 	["FH_TechnologyBand", "Give you self this.", "giveItem", ["FH_TechnologyBand"]],
	# 	["FH_PhoenixRing", "Give you self this.", "giveItem", ["PhoenixRing"]],
	# 	["FH_JayRing", "Give you self this.", "giveItem", ["JayRing"]],
	# 	["FH_SistersRing", "Give you self this.", "giveItem", ["SistersRing"]],
	# 	["FH_EnergizedApple", "Give you self this.", "giveItem", ["EnergizedApple"]],
	# 	["FH_EnergizedPainStopper", "Give you self this.", "giveItem", ["EnergizedPainStopper"]],
	# 	["FH_RelievingApple", "Give you self this.", "giveItem", ["RelievingApple"]],
	# 	["FH_AntiHeatBirthPills", "Give you self this.", "giveItem", ["AntiHeatBirthPill"]],
	# 	["FH_EnergizedBreederPill", "Give you self this.", "giveItem", ["EnergizedBreederPill"]],
	# 	["FH_HeatedBreederPills", "Give you self this.", "giveItem", ["HeatedBreederPills"]],
	# 	["FH_MetalScraps", "Give you self this.", "giveItem", ["MetalScraps"]],
	# 	["FH_ShockMaceParts", "Give you self this.", "giveItem", ["ShockMaceParts"]],
	# 	["FH_ShockMace", "Give you self this.", "giveItem", ["ShockMaceParts"]],
	# 	["Phobos_Striped_Stockings_1", "Give you self this.", "giveItem", ["Phobos_Striped_Stockings_1"]],
	# 	["Phobos_Striped_Stockings_2", "Give you self this.", "giveItem", ["Phobos_Striped_Stockings_2"]],
	# 	["Phobos_Striped_Panties", "Give you self this.", "giveItem", ["Phobos_Striped_Panties"]],
	# 	["Phobos_Striped_Long_Gloves_1", "Give you self this.", "giveItem", ["Phobos_Striped_Long_Gloves_1"]],
	# 	["Phobos_Striped_Long_Gloves_2", "Give you self this.", "giveItem", ["Phobos_Striped_Long_Gloves_2"]],
	# 	["LatexStraitjacket woc", "Give you self this.", "giveItem", ["LatexStraitjacket woc"]],
	# 	["Anti Breast Pill", "Give you self this.", "giveItem", ["boobshrinkerpill"]],
	# 	["Anti Dick Pill", "Give you self this.", "giveItem", ["dickshrinkerpill"]],
	# 	["Anti Fem Pill", "Give you self this.", "giveItem", ["AntiFemPill"]],
	# 	["Anti Thick Pill", "Give you self this.", "giveItem", ["AntiThickPill"]],
	# 	["Anti Vag Pill", "Give you self this.", "giveItem", ["AntiVagpill"]],
	# 	["Breast Pill", "Give you self this.", "giveItem", ["boobexpanderpill"]],
	# 	["Cheat Pill", "Give you self this.", "giveItem", ["cheatpill"]],
	# 	["Dick Pill", "Give you self this.", "giveItem", ["dickexpansionpill"]],
	# 	["Fem Pill", "Give you self this.", "giveItem", ["FemPill"]],
	# 	["Herm Pill", "Give you self this.", "giveItem", ["HermPill"]],
	# 	["Thick Pill", "Give you self this.", "giveItem", ["ThickPill"]],
	# 	["Turbo Conception Pill", "Give you self this.", "giveItem", ["TurboConceptionPill"]],
	# 	["Chastity Cage Flat", "Give you self this.", "giveItem", ["ChastityCageFlat"]],
		
	# 	#TODO: Megapack of Clothes to add
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
		
	# 	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# #	["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# 	# ["", "Give you self this.", "giveItem", [""]],
	# ]
}

var playerStuff = {
	"Credits": [
		["Add 1 Credit", "Give a single credit.", "giveCredit", {"amount": 1}],
		["Add 5 Credit", "Give a single credit.", "giveCredit", {"amount": 5}],
		["Add 10 Credit", "Give a single credit.", "giveCredit", {"amount": 10}],
		["Add 100 Credit", "Give a single credit.", "giveCredit", {"amount": 100}],
		["Add 200 Credit", "Give a single credit.", "giveCredit", {"amount": 200}],
		["Add 500 Credit", "Give a single credit.", "giveCredit", {"amount": 500}],
		["Add 1000 Credit", "Give a single credit.", "giveCredit", {"amount": 1000}],
		["Add 5000 Credit", "Give a single credit.", "giveCredit", {"amount": 5000}],
		["Add 10000 Credit", "Give a single credit.", "giveCredit", {"amount": 10000}],
		["Add 100000 Credit", "Give a single credit.", "giveCredit", {"amount": 100000}],
		["Add 1000000 Credit", "Give a single credit.", "giveCredit", {"amount": 1000000}],
		["Add 10000000 Credit", "Give a single credit.", "giveCredit", {"amount": 10000000}]
	]
}

var bodyWritingsZone = BodyWritingsZone.getRandomZone()

func _init():
	sceneID = "SnowyModdedMain"

func getSceneCreator():
	return "Snowy"

func _run():
	if(state == ""):
		saynn("Snowy's Cheat Menu")

		addButton("Inventory", "Inventory Cheat", "Inventory Options")
		addButton("Player", "Player Cheat", "Player Options")	

		addButton("Leave", "Back to menu", "endthescene")

	if(state == "Inventory Options"):
		saynn("Inventory Cheats")
		
		addButton("BDSM", "Open a sub-menu", "Inventory Options - BDSM Items")
		addButton("Clothes", "Open a sub-menu", "Inventory Options - Clothing Items")
		addButton("Underwear", "Open a sub-menu", "Inventory Options - Underwear Items")
		addButton("Unique", "Open a sub-menu", "Inventory Options - Unique Items")
		addButton("Weapons", "Open a sub-menu", "Inventory Options - Weapons")
		addButton("Misc", "Open a sub-menu", "Inventory Options - Misc Items")
		
		# if (GlobalRegistry.modsSupport == true):
		#addButton("Modded", "Open a sub-menu", "Inventory Options - Modded Items")
		
		addButton("Back", "Back to menu", "")
	
	if (state == "Inventory Options - BDSM Items"):
		saynn("Inventory Cheats - [i]BDSM Items[/i]")

		for thing in inventoryItems.BDSM:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Back", "Back to menu", "")
	elif (state == "Inventory Options - Clothing Items"):
		for thing in inventoryItems.Clothes:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Back", "Back to menu", "")
	elif (state == "Inventory Options - Underwear Items"):
		for thing in inventoryItems.Underwear:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Back", "Back to menu", "")
	elif (state == "Inventory Options - Unique Items"):
		for thing in inventoryItems.Unique:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Leave", "Back to menu", "")
	elif (state == "Inventory Options - Weapons"):
		for thing in inventoryItems.Weapons:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Leave", "Back to menu", "")
	elif (state == "Inventory Options - Misc Items"):
		for thing in inventoryItems.Misc:
			addButton(thing[0], thing[1], thing[2], thing[3])

		addButton("Leave", "Back to menu", "")
	elif (state == "Inventory Options - Modded Items"):
		for thing in inventoryItems["Modded Items"]:
			addButton(thing[0], thing[1], thing[2], thing[3])
		
		addButton("Leave", "Back to menu", "")
	
	
	
	if (state == "Player Options"):
		saynn("Player Cheats")
		
		addButton("Credits", "Open a sub-menu", "Credits Menu")
		addButton("Body Writings", "Open a sub-menu", "Body Writings Menu")
	
	if (state == "Credits Menu"):
		for thing in playerStuff.Credits:
			addButton(thing[0], thing[1], thing[2], thing[3])
			
		addButton("Leave", "Back to menu", "")

	if (state == "Body Writings Menu"):
		saynn("Body Writings Menu")

		addButton("Zone Menu", "Zone menu", "Body Writings Menu - Change Zone")
		addButton("Built-in", "Built-in writings", "Body Writings - Built-in")
		addButton("Custom", "Custom writings", "Body Writings - Custom")
			
		addButton("Leave", "Back to menu", "")

	if state == "Body Writings Menu - Change Zone":
		saynn("Body Writings Menu - Change Zone")

		addButton("Leave", "Back to Body Writings Menu", "Body Writings Menu")

		addButton("Forehead", "Add this", "BodyWritings_ChangeZone", ["Forehead"])
		addButton("CheekLeft", "Add this", "BodyWritings_ChangeZone", ["CheekLeft"])
		addButton("CheekRight", "Add this", "BodyWritings_ChangeZone", ["CheekRight"])
		addButton("Chin", "Add this", "BodyWritings_ChangeZone", ["Chin"])

		addButton("ArmLeft", "Add this", "BodyWritings_ChangeZone", ["ArmLeft"])
		addButton("ArmRight", "Add this", "BodyWritings_ChangeZone", ["ArmRight"])
		addButton("ForearmLeft", "Add this", "BodyWritings_ChangeZone", ["ForearmLeft"])
		addButton("ForearmRight", "Add this", "BodyWritings_ChangeZone", ["ForearmRight"])

		addButton("UpperChest", "Add this", "BodyWritings_ChangeZone", ["UpperChest"])

		addButton("Breasts", "Add this", "BodyWritings_ChangeZone", ["Breasts"])
		addButton("Belly", "Add this", "BodyWritings_ChangeZone", ["Belly"])
		addButton("LowerAbdomen", "Add this", "BodyWritings_ChangeZone", ["LowerAbdomen"])
		addButton("Back", "Add this", "BodyWritings_ChangeZone", ["Back"])
		addButton("LowerBack", "Add this", "BodyWritings_ChangeZone", ["LowerBack"])
		addButton("HipLeft", "Add this", "BodyWritings_ChangeZone", ["HipLeft"])
		addButton("HipRight", "Add this", "BodyWritings_ChangeZone", ["HipRight"])

		addButton("ButtcheekLeft", "Add this", "BodyWritings_ChangeZone", ["ButtcheekLeft"])
		addButton("ButtcheekRight", "Add this", "BodyWritings_ChangeZone", ["ButtcheekRight"])
		addButton("ThighLeft", "Add this", "BodyWritings_ChangeZone", ["ThighLeft"])
		addButton("ThighRight", "Add this", "BodyWritings_ChangeZone", ["ThighRight"])
		addButton("ShinLeft", "Add this", "BodyWritings_ChangeZone", ["ShinLeft"])
		addButton("ShinRight", "Add this", "BodyWritings_ChangeZone", ["ShinRight"])

	if state == "Body Writings - Built-in":
		saynn("Body Writings - Built-in")

		addButton("Leave", "Back to menu", "")

		addButton("Fuck me", "Add this", "BodyWritings_Add", ["fuckme"])
		addButton("Rape me", "Add this", "BodyWritings_Add", ["rapeme"])
		addButton("Use me", "Add this", "BodyWritings_Add", ["useme"])
		addButton("Abuse me", "Add this", "BodyWritings_Add", ["abuseme"])
		addButton("Free use", "Add this", "BodyWritings_Add", ["freeuse"])
		addButton("Free sex", "Add this", "BodyWritings_Add", ["freesex"])
		addButton("Make me squeal", "Add this", "BodyWritings_Add", ["makemesqueal"])
		addButton("Make me cum", "Add this", "BodyWritings_Add", ["makemecum"])
		addButton("No means yes", "Add this", "BodyWritings_Add", ["nomeansyes"])
		addButton("Strip me", "Add this", "BodyWritings_Add", ["stripme"])
		addButton("Punish me", "Add this", "BodyWritings_Add", ["punishme"])
		addButton("Knot me", "Add this", "BodyWritings_Add", ["knotme"])

		addButton("Cute", "Add this", "BodyWritings_Add", ["cute"])
		addButton("Cutie", "Add this", "BodyWritings_Add", ["cutie"])
		addButton("Brat", "Add this", "BodyWritings_Add", ["brat"])
		addButton("<3", "Add this", "BodyWritings_Add", ["lessthanthree"])
		addButton(":3", "Add this", "BodyWritings_Add", ["cutefacesymbol"])

		addButton("Criminal scum", "Add this", "BodyWritings_Add", ["criminalscum"])
		addButton("Criminal", "Add this", "BodyWritings_Add", ["criminal"])
		addButton("Criminal whore", "Add this", "BodyWritings_Add", ["criminalwhore"])

		addButton("Slut", "Add this", "BodyWritings_Add", ["slut"])
		addButton("Slave", "Add this", "BodyWritings_Add", ["slave"])
		addButton("Whore", "Add this", "BodyWritings_Add", ["whore"])
		addButton("Fuck toy", "Add this", "BodyWritings_Add", ["fucktoy"])
		addButton("Fuck doll", "Add this", "BodyWritings_Add", ["fuckdoll"])
		addButton("Worthless", "Add this", "BodyWritings_Add", ["worthless"])
		addButton("Bitch", "Add this", "BodyWritings_Add", ["bitch"])
		addButton("Sex addict", "Add this", "BodyWritings_Add", ["sexaddict"])
		addButton("Public toy", "Add this", "BodyWritings_Add", ["publictoy"])
		addButton("Public slut", "Add this", "BodyWritings_Add", ["publicslut"])
		addButton("Public pet", "Add this", "BodyWritings_Add", ["publicpet"])
		addButton("Size queen", "Add this", "BodyWritings_Add", ["sizequeen"])
		addButton("Submissive", "Add this", "BodyWritings_Add", ["submissive"])
		addButton("Subby", "Add this", "BodyWritings_Add", ["subby"])
		addButton("Subby slut", "Add this", "BodyWritings_Add", ["subbyslut"])
		addButton("Pet", "Add this", "BodyWritings_Add", ["pet"])
		addButton("Butt slut", "Add this", "BodyWritings_Add", ["buttslut"])
		addButton("Anal slut", "Add this", "BodyWritings_Add", ["analslut"])
		addButton("Anal whore", "Add this", "BodyWritings_Add", ["analwhore"])
		addButton("Anal only", "Add this", "BodyWritings_Add", ["analonly"])
		addButton("Pussy slut", "Add this", "BodyWritings_Add", ["pussyslut"])
		addButton("Pussy only", "Add this", "BodyWritings_Add", ["pussyonly"])

		addButton("Breedable", "Add this", "BodyWritings_Add", ["breedable"])
		addButton("Breeding Bitch", "Add this", "BodyWritings_Add", ["breedingbitch"])
		addButton("Breeding Stock", "Add this", "BodyWritings_Add", ["breedingstock"])
		addButton("Breed me", "Add this", "BodyWritings_Add", ["breedme"])
		addButton("Breed", "Add this", "BodyWritings_Add", ["breed"])
		addButton("Inseminate me", "Add this", "BodyWritings_Add", ["inseminateme"])
		addButton("Impregnate me", "Add this", "BodyWritings_Add", ["impregnateme"])
		addButton("Make me Pregnant", "Add this", "BodyWritings_Add", ["makemepregnant"])

		addButton("Cum Slut", "Add this", "BodyWritings_Add", ["Cum Slut"])
		addButton("Cum Slave", "Add this", "BodyWritings_Add", ["cumslave"])
		addButton("Cum Rag", "Add this", "BodyWritings_Add", ["cumrag"])
		addButton("Cum Dumpster", "Add this", "BodyWritings_Add", ["cumdumpster"])
		addButton("Cum Dump", "Add this", "BodyWritings_Add", ["cumdump"])

		addButton("Milk Me - Breasts", "Add this", "BodyWritings_Add", ["milkme_breasts"])
		addButton("Squeeze - Breasts", "Add this", "BodyWritings_Add", ["squeeze_breasts"])
		addButton("Funbags - Breasts", "Add this", "BodyWritings_Add", ["funbags_breasts"])
		addButton("Milk Jugs - Breasts", "Add this", "BodyWritings_Add", ["milkjugs_breasts"])
		addButton("Pinch Tug - Breasts", "Add this", "BodyWritings_Add", ["pinchtug_breasts"])
		addButton("Milkyudders - Breasts", "Add this", "BodyWritings_Add", ["milkyudders_breasts"])

		addButton("Mouth Pussy", "Add this", "BodyWritings_Add", ["mouthpussy"])
		addButton("WhOre", "Add this", "BodyWritings_Add", ["whOre"])
		addButton("Cock Sucker", "Add this", "BodyWritings_Add", ["cocksucker"])
		
		addButton("Korse Cocks Only", "Add this", "BodyWritings_Add", ["horsecocksonly"])
		addButton("Knots Only", "Add this", "BodyWritings_Add", ["knotsonly"])

		#for writing in BodyWritingDB.database:
		#	addButton(writing, "Add this", "BodyWritings_Add", [writing])
	if state == "Body Writings - Custom":
		saynn("Body Writings - Custom")

		addButton("Leave", "Back to menu", "")
		
		addButton("Snowy", "Add this", "BodyWritings_Add", ["snowy"])
		addButton("Rahi", "Add this", "BodyWritings_Add", ["rahi"])
		addButton("Kitten~", "Add this", "BodyWritings_Add", ["kitten~"])


func _react(_action: String, _args):
	print("[Snowy]: Action is '" + _action + "'")

	if (_action == "endthescene"):
		endScene()
		return

	if _action == "Body Writings Menu":
		saynn("Body Writings Menu")
		setState(_action)

	elif (_action == "giveItem"):
		print("You have recived a " + _args[0])
		GM.pc.getInventory().addItem(GlobalRegistry.createItem(_args[0]))

	elif (_action == "giveCredit"):
		print("You have recived some credits: " + str(_args.amount))
		GM.pc.addCredits(_args.amount)

	elif _action == "BodyWritings_ChangeZone":
		bodyWritingsZone = _args[0]
		return
	elif _action == "BodyWritings_Add":
		GM.pc.addBodywriting(bodyWritingsZone, _args[0])
		return
	else:
		saynn(_action)
		setState(_action)
