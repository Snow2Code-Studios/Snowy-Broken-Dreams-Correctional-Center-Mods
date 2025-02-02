extends SnowSceneBase

## This code IS LITTERLY SHIT.
#    But it works ¯\_(ツ)_/¯
##   - Snowy's Acutal Words

func _init():
	sceneID = "OtherStuffScene"

var setpc = "pc"
var selectedScene = ""

var Snowy_Misc = preload("res://Modules/SnowysSexModule/Snowy_Misc.gd")

var scenesStuff = Snowy_Misc.getSexScene("scenes")

func getDevCommentary():
	return "What the, I do not know what this Dev Commentary is about."

func _run():
	setpc = "pc"
	# addCharacter("artica", ["naked"])

	if state == "":
		addButton("End Scene", "End the Scene", "endthescene")
		addButton("Change Character", "End the Scene", "Change Menu", ["character"])
		#addButton("Change PC", "Change who does the thing", "changepc", [null])
		# addButton("beg", "", "beg_menu", [null]) # Before I changed to the uh, fuckin scenesStuff
		
		addButton("Scenes", "", "scenes")


		# addButton("", "", "_menu", [null])
		# addButton("-swapped", "", "-swap_menu", [null])

	if state == "menu" or state == "Scenes":
		addButton("Back", "Go back to inital menu", "Back to Main", [null])

		if state == "Scenes":
			#print(scenesStuff)
			for scene in scenesStuff:
				#		    Text		   Description 		action		 args
				addButton(scene,			scene, 			"menu", 	[scenesStuff[scene]])
		elif state == "menu":
			#print(scenesStuff[selectedScene].actions
			for action in scenesStuff[selectedScene].actions:
				addButton(action, action, "doScene", {"scene": selectedScene, "action": action, "swapped": false})
				addButton(action + " but Swapped", action + " but Swapped", "doScene", {"scene": selectedScene, "action": action, "swapped": true})

func _react(_action: String, _args):
	print(_args)
	if _action == "endthescene":
		endScene()
		return
	elif _action == "Back to Main":
		setState("")
	elif _action == "menu":
		for arg in _args:
			selectedScene = arg.name
		setState(_action)
	elif _action == "Scene":
		var pc = "pc"
		var npc = "artica"
		var npc2 = "dynamicnpc4"

		if _args.swapped == true:
			pc = "artica"
			npc = "pc"
		else:
			pc = "pc"
			npc = "artica"
		
		var animationArgs = {pc=pc, npc=npc, npc2=npc2, pcCum=true, npcCum=true, npc2Cum=true, bodyState = {naked=true, hard=true}, npcBodyState =  {naked=true, hard=true}, npc2BodyState =  {naked=true, hard=true}}
		
		playAnimation(StageScene[_args.scene], _args.action, animationArgs)
		return
