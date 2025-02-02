extends "res://Scenes/SnowSceneBase.gd"

## This code IS LITTERLY SHIT.
#    But it works ¯\_(ツ)_/¯
##   - Snowy's Acutal Words

var Snowy_Misc = preload("res://Modules/SnowysSexModule/Snowy_Misc.gd")
var scenesStuff = Snowy_Misc.getSexScene("scenes")

var character = "artica"
var selectedScene = ""

# ABCDEFGHIJKLMNOPQRSTUVWXYZ
var characters = [
	"artica",
	#b
	#c

	"dynamicnpc24",
	"dynamicnpc71",
	"dynamicnpc79",
	"dynamicnpc90",
	
	#e
	"futarahi:rahifuta", #f
	#g
	#h
	#i
	#j
	#k
	#l
	#m
	#n
	#o
	#p
	#q

	"rahi", #r
	
	"scpinmates:scpi323",
	"scpinmates:scpi1471a"
]

func _init():
	sceneID = "OtherStuffScene"

func getDevCommentary():
	return "What the, I do not know what this Dev Commentary is about."

func _run():
	if state == "":
		addButton("End Scene", "End the Scene", "endthescene")
		addButton("Change Character", "Characters", "Change Menu", ["character"])

		addButton("Scenes", "Description", "Change Menu", ["scenes"])
	elif state == "Menu":
		addButton("Back", "Back to main", "Change State", [""])
		if menu == "character":
			addButton("Characters", "Description", "Change Menu", ["character_sub"])
			addButton("Characters Text Input", "End the Scene", "Change Menu", ["character_sub-text"])
		elif menu == "character_sub":
			for _character in characters:
				print(_character)
				addButton(_character, "Character", "setcharacter_button", [_character])
		elif menu == "character_sub-text":

			var textBox:LineEdit = addTextbox("character_text")
			var _ok = textBox.connect("text_entered", self, "onTextBoxEnterPressed")
			
			addButton("Confirm", "Choose this character", "setcharacter_input")

		elif menu == "scenes":
			addButton("All Scenes", "In this, select a scene to use", "Change Menu", ["scenes_select"])
			addButton("Start Scenes", "In this, select a action to use", "Change Menu", ["scenes_actions"])
		elif menu == "scenes_select":
			for scene in scenesStuff:
				#		   Text		   	Description 			action		 			args
				addButton(scene,			scene, 			"changeScene", 		[scenesStuff[scene]])
		elif menu == "scenes_actions":
			for action in scenesStuff[selectedScene].actions:
				addButton(action, action, "doScene", {"scene": selectedScene, "action": action, "swapped": false})
				addButton(action + " but Swapped", action + " but Swapped", "doScene", {"scene": selectedScene, "action": action, "swapped": true})

func _react(_action, _args):
	if _action == "endthescene":
		endScene()
		return
	elif _action == "Change State":
		setState(_args[0], "")
	elif _action == "Change Menu":
		setState("Menu", _args[0])

	if _action == "setcharacter_text" or _action == "setcharacter_input" or _action == "changeScene":
		if _action == "setcharacter_text":
			character = _args[0]
		elif _action == "setcharacter_input":
			if(getTextboxData("character_text") == ""):
				return
			
			character = getTextboxData("character_text").to_lower()
		elif _action == "changeScene":
			selectedScene = _args[0]
		return