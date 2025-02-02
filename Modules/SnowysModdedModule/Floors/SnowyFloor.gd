extends SubGameWorld

func _on_theRoom_onEnter(_room):
	_room.sayn("This is a custom message added by node connection!")

	GM.main.playAnimation(StageScene.Duo, "stand", {npc="rahi", npcAction="sit"})

	GM.main.getCurrentScene().addCharacter("rahi")

	# add button
	_room.addButton("Fight!", "Why would you do this? :(", "fight")

func _on_theRoom_onReact(_room, _key):
	if _key == "fight":
		_room.runScene("FightScene", ["rahi", "Why would you do this"])

func _on_Entrance_onPreEnter(_room):
	GM.main.getCurrentScene().removeCharacter("rahi")
