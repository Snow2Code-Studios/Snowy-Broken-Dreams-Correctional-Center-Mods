extends Character

func _init():
	id = "snowy_traciWithPenis"
	npcCharacterType = CharacterType.Inmate
	
	pickedSkin="rockstarskins:rockstarcybernetic"
	pickedSkinRColor=Color("fff2fcf6")
	pickedSkinGColor=Color("ff9ac1ad")
	pickedSkinBColor=Color("ff155d37")
	npcSkinData={
		"hair": {
			"r": Color("ff000000"),
			"g": Color("ff000000"),
			"b": Color("ff000000")
		}
	}
	npcCharacterType = "dynamic"
	npcPersonality = {"Brat": -0.284157, "Coward": 0.045316, "Impatient": -0.245674, "Mean": -0.143149, "Naive": 0.165275, "Subby": 0.787641}
	npcFetishes = {
		"AndroBody": "Loves",
		"AverageButt": "Loves",
		"AverageCock": "Likes",
		"AverageMassBody": "ReallyDislikes",
		"BDSMRestraints": "Loves",
		"BigBreasts": "ReallyLikes",
		"BigCock": "Hates",
		"Blindfolds": "KindaLikes",
		"Bodywritings": "KindaLikes",
		"ButtPlugs": "SlightlyDislikes",
		"CoveredInCum": "Loves",
		"CoveredInLotsOfCum": "Loves",
		"ExposedAnus": "Likes",
		"ExposedBra": "SlightlyDislikes",
		"ExposedBreasts": "KindaLikes",
		"ExposedCock": "Loves",
		"ExposedPanties": "Loves",
		"ExposedPussy": "Loves",
		"FeminineBody": "ReallyLikes",
		"FullyNaked": "Loves",
		"Gags": "Loves",
		"HasCockOnly": "Likes",
		"HasVaginaAndCock": "Loves",
		"HasVaginaOnly": "KindaLikes",
		"LactatingBreasts": "Loves",
		"LooseAnus": "SlightlyDislikes",
		"LoosePussy": "ReallyLikes",
		"MasculineBody": "Likes",
		"MediumBreasts": "Likes",
		"NoBreasts": "Likes",
		"NoCock": "ReallyLikes",
		"NoVagina": "Dislikes",
		"Pregnant": "Loves",
		"SlimBody": "SlightlyDislikes",
		"SlimButt": "ReallyDislikes",
		"SmallBreasts": "ReallyLikes",
		"SmallCock": "ReallyDislikes",
		"StuffedAss": "Likes",
		"StuffedPussy": "Loves",
		"StuffedPussyOrAss": "SlightlyDislikes",
		"StuffedThroat": "SlightlyDislikes",
		"TallyMarks": "KindaLikes",
		"ThickBody": "ReallyLikes",
		"ThickButt": "Hates",
		"TightAnus": "Hates",
		"TightPussy": "ReallyLikes",
		"VaginalPlugs": "ReallyLikes"}

func _getName():
	return "Traci"

func getGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "Sylveon. Female."

func getSpecies():
	return ["sylveon"]

func getLustInterests():
	return {
		"AndroBody": "Loves",
		"AverageButt": "Loves",
		"AverageCock": "Likes",
		"AverageMassBody": "ReallyDislikes",
		"BDSMRestraints": "Loves",
		"BigBreasts": "ReallyLikes",
		"BigCock": "Hates",
		"Blindfolds": "KindaLikes",
		"Bodywritings": "KindaLikes",
		"ButtPlugs": "SlightlyDislikes",
		"CoveredInCum": "Loves",
		"CoveredInLotsOfCum": "Loves",
		"ExposedAnus": "Likes",
		"ExposedBra": "SlightlyDislikes",
		"ExposedBreasts": "KindaLikes",
		"ExposedCock": "Loves",
		"ExposedPanties": "Loves",
		"ExposedPussy": "Loves",
		"FeminineBody": "ReallyLikes",
		"FullyNaked": "Loves",
		"Gags": "Loves",
		"HasCockOnly": "Likes",
		"HasVaginaAndCock": "Loves",
		"HasVaginaOnly": "KindaLikes",
		"LactatingBreasts": "Loves",
		"LooseAnus": "SlightlyDislikes",
		"LoosePussy": "ReallyLikes",
		"MasculineBody": "Likes",
		"MediumBreasts": "Likes",
		"NoBreasts": "Likes",
		"NoCock": "ReallyLikes",
		"NoVagina": "Dislikes",
		"Pregnant": "Loves",
		"SlimBody": "SlightlyDislikes",
		"SlimButt": "ReallyDislikes",
		"SmallBreasts": "ReallyLikes",
		"SmallCock": "ReallyDislikes",
		"StuffedAss": "Likes",
		"StuffedPussy": "Loves",
		"StuffedPussyOrAss": "SlightlyDislikes",
		"StuffedThroat": "SlightlyDislikes",
		"TallyMarks": "KindaLikes",
		"ThickBody": "ReallyLikes",
		"ThickButt": "Hates",
		"TightAnus": "Hates",
		"TightPussy": "ReallyLikes",
		"VaginalPlugs": "ReallyLikes"
	}

# func getDefaultArtwork(_variant = []):
# 	if _variant.has("naked"):
# 		return "res://Modules/MaxModule/Max/Max-naked.png"
# 	return "res://Modules/MaxModule/Max/Max.png"

func getBaseLustThreshold():
	return 85

func getBasePainThreshold():
	return 85

func getBaseMaxStamina():
	return 85

func getLevel():
	return 3

func getThickness() -> int:
	return 46

func getFemininity() -> int:
	 return 48

func createBodyParts():
	var breasts = GlobalRegistry.createBodyPart("breastshyperable")
	var penis = GlobalRegistry.createBodyPart("caninepenis")
	breasts.size = 6

	penis.lengthCM = 15
	penis.ballsScale = 0.5
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("Dreads"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("vaginahyperable"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("sylveonhead3"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("Sylvebody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("sylveonarms1"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("anushyperable"))
	giveBodypartUnlessSame(breasts)
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("sylveontail2"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("Sylvelegs"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("sylveonears"))
#	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("bald"))
	giveBodypartUnlessSame(penis)

func createEquipment():
	getInventory().equipItem(GlobalRegistry.createItemNoID("inmatecollar"))
	getInventory().equipItem(GlobalRegistry.createItem("inmateuniformSexDeviant"))
	getInventory().equipItem(GlobalRegistry.createItemNoID("tracisBriefs"))
	getInventory().equipItem(GlobalRegistry.createItemNoID("tracisUndershirt"))


