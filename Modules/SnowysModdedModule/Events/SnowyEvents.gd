extends EventBase

var articaScene = 1

func _init():
	id = "SnowyEvents"

func registerTriggers(es):
	es.addTrigger(self, Trigger.EnteringRoom, "cellblock_orange_playercell")

func run(_triggerID, _args):
	addButtonUnlessLate("Snowy Cheats", "", "cheat")
	#addButtonUnlessLate("Suck Yourself Test", "", "sucktest")

func getPriority():
	return 10000

func onButton(_method, _args):
	if(_method == "cheat"):
		runScene("SnowyModdedMain")
	elif(_method == "sucktest"):
		runScene("articaEventSelfsuck"+str(articaScene)+"Scene") # articaEventSelfsuck2Scene
		articaScene += 1
	# elif(_method == "pawtest"):
	# 	runScene("SnowyTest")
