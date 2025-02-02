extends SceneBase

func _init():
	sceneID = "SnowyTest"

func _run():
	addCharacter("artica")
	addCharacter("rahi")

	playAnimation(StageScene.SelfSuck, "sex", {pc="artica", npc="rahi", bodyState={naked=true, hard=true}})
	
func _react(_action: String, _args):
	setState(_action)
