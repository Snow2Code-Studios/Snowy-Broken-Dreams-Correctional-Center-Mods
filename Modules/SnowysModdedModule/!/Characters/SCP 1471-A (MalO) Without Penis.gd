extends Character

func _init():
	id = "snowy_SCP1471-A(MalO)WithoutPenis"
	npcCharacterType = CharacterType.Inmate
	
	pickedSkin="HardcoreSkin"
	pickedSkinRColor=Color("ff2f2e2e")
	pickedSkinGColor=Color("ff282828")
	pickedSkinBColor=Color("ff28261c")
	npcSkinData={
		"hair": {
			"r": Color("ff2f2e2e"),
			"g": Color("ff282828"),
			"b": Color("ff28261c")
		}
	}
	npcCharacterType = "dynamic"
	npcPersonality = { "Brat": -0.25, "Coward": 0.5, "Impatient": -0.6, "Mean": -0.4, "Naive": -0.25, "Subby": 0.6 }
	npcFetishes = {
		"AnalSexGiving": "SlightlyDislikes",
		"AnalSexReceiving": "SlightlyLikes",
		"BeingBred": "Loves",
		"Bodywritings": "SlightlyLikes",
		"Bondage": "Likes",
		"Choking": "SlightlyLikes",
		"Condoms": "Likes",
		"DrugUse": "SlightlyLikes",
		"Exhibitionism": "ReallyLikes",
		"FeetplayGiving": "Hates",
		"FeetplayReceiving": "Likes",
		"HypnosisHypnotist": "Loves",
		"HypnosisSubject": "SlightlyLikes",
		"Lactation": "Loves",
		"Masochism": "Likes",
		"OralSexGiving": "ReallyLikes",
		"OralSexReceiving": "Likes",
		"Rigging": "SlightlyLikes",
		"RimmingGiving": "SlightlyDislikes",
		"RimmingReceiving": "Hates",
		"Sadism": "ReallyDislikes",
		"SeedMilking": "SlightlyLikes",
		"SniffingGiving": "Dislikes",
		"SniffingReceiving": "Neutral",
		"StraponSexAnal": "Hates",
		"StraponSexVaginal": "ReallyDislikes",
		"Tribadism": "ReallyLikes",
		"UnconsciousSex": "Loves",
		"VaginalSexGiving": "Loves",
		"VaginalSexReceiving": "Loves"
	}
	#skillsHolder = { "agility": 6, "sexiness": 6, "strength": 3, "vitality": 3 }

func _getName():
	return "SCP 1471-A (MalO)"

func getGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "A anthromorphic canine covered in black fur that dons a skull of an unknown animal. A special device protrudes from its collar, possibly as an extra containment method."

func getSpecies():
	return ["unknown"]

func getLustInterests():
	return {
		"AverageCock": "ReallyLikes",
		"BigCock": "Loves",
		"CoveredInCum": "Dislikes",
		"CoveredInLotsOfCum": "ReallyDislikes",
		"ExposedAnus": "KindaLikes",
		"ExposedBra": "SlightlyDislikes",
		"ExposedBreasts": "Likes",
		"ExposedCock": "Loves",
		"ExposedPanties": "SlightlyDislikes",
		"ExposedPussy": "Dislikes",
		"FeminineBody": "Dislikes",
		"FullyNaked": "Loves",
		"HasCockOnly": "ReallyLikes",
		"HasVaginaAndCock": "KindaLikes",
		"HasVaginaOnly": "ReallyDislikes",
		"LoosePussy": "Dislikes",
		"MasculineBody": "Likes",
		"NoBreasts": "KindaLikes",
		"NoCock": "Dislikes",
		"NoVagina": "Likes",
		"Pregnant": "SlightlyDislikes",
		"SmallCock": "Likes",
		"StuffedAss": "KindaLikes",
		"StuffedPussy": "KindaLikes",
		"StuffedPussyOrAss": "KindaLikes",
		"StuffedThroat": "SlightlyDislikes",
		"TightPussy": "SlightlyDislikes",
		"VaginalPlugs": "SlightlyDislikes"
	}

# func getDefaultArtwork(_variant = []):
# 	if _variant.has("naked"):
# 		return "res://Modules/MaxModule/Max/Max-naked.png"
# 	return "res://Modules/MaxModule/Max/Max.png"

func getBaseLustThreshold():
	return 100

func getBasePainThreshold():
	return 100

func getBaseMaxStamina():
	return 100

func getLevel():
	return 3

func getThickness() -> int:
	return 110

func getFemininity() -> int:
	 return 100

func createBodyParts():
	var breasts = GlobalRegistry.createBodyPart("humanbreasts")
	# var penis = GlobalRegistry.createBodyPart("caninepenis")
	var tail = GlobalRegistry.createBodyPart("caninetail")
	breasts.size = 8
	breasts.pickedSkin = "MonsterGirl"

	# penis.lengthCM = 22
	# penis.ballsScale = 0.5

	tail.tailScale = 0.9

	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("messyhair2"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("vagina"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("anus"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("skullhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("Witheredbody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("buffarms"))
	giveBodypartUnlessSame(breasts)
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("digilegs"))
	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("canineears3"))
#	giveBodypartUnlessSame(GlobalRegistry.createBodyPart("bald"))
	# giveBodypartUnlessSame(penis)

func createEquipment():
	getInventory().equipItem(GlobalRegistry.createItemNoID("inmatecollar"))
	getInventory().equipItem(GlobalRegistry.createItem("inmateuniformSexDeviant"))
	getInventory().equipItem(GlobalRegistry.createItemNoID("scp1417sportyBriefs"))
	getInventory().equipItem(GlobalRegistry.createItemNoID("scp1417undershirt"))
