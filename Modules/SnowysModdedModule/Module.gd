extends Module # "res://FoxLib/FoxModule.gd"

const snowyModulePath = "res://Modules/SnowysModdedModule"

var snowyModdedFloors = [{"id": "SnowyFloor", "path": snowyModulePath + "/Floors/SnowyFloor.tscn" } ]

const Snowy_Misc = preload("res://Modules/SnowysSexModule/Snowy_Misc.gd")

const BodyWritingsDB = preload("res://Game/Gameplay/BodyWritingsDB.gd")


const DBText = "text"
const DBZoneWhitelist = "zones"


const addDatabase = {
    "snowy": {
        DBText: "Snowy"
    },
    "rahi": {
        DBText: "Rahi"
    },
    "kitten~": {
        DBText: "Kitten~"
    }
}

func _init():
	id = "SnowysMod"
	author = "Snowy"

	print("\nSnowy mod shit load\n")
	
	BodyWritingsDB.database.merge(addDatabase)
	
	# for _floor in snowyModdedFloors:
	#     #                                    ID          Path
	#     GlobalRegistry.registerMapFloor(_floor.id, _floor.path)

	scenes = [
		"res://Modules/SnowysModdedModule/Scenes/SnowyCheatMenu.gd",
		"res://Modules/SnowysModdedModule/Scenes/MeScene.gd",
		"res://Modules/SnowysModdedModule/Scenes/Me/OtherStuffScene.gd"
	]
	# items = [
	# 	"res://Modules/SnowysModdedModule/Items/TracisBriefs.gd",
	# 	"res://Modules/SnowysModdedModule/Items/TracisUndershirt.gd",
	# 	"res://Modules/SnowysModdedModule/Items/SCP 1471 Sporty Briefs.gd",
	# 	"res://Modules/SnowysModdedModule/Items/SCP 1471 Undershirt.gd"
	# ]
	events = [
		"res://Modules/SnowysModdedModule/Events/SnowyEvents.gd"#,
		# "res://Modules/SnowysModdedModule/Events/SnowyFloors.gd"
	]
	# gameExtenders = [
	# 	"res://Modules/SnowysModdedModule/Gameplay/SnowBodyWritingsDB.gd"
	# ]
	
	# worldEdits = [
	# 	SnowyConfigs.snowyModulePath + "/SnowyModdedWorld.gd"
	# ]

# func resetFlagsOnNewDay():
# 	pass
