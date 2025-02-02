extends EventBase

func _init():
	id = "SnowySexEvents"

func registerTriggers(es):
	es.addTrigger(self, Trigger.EnteringRoom, "cellblock_orange_playercell")

func run(_triggerID, _args):
	addButtonUnlessLate("Scenes Stuff", "", "scenesStuff")

func getPriority():
	return 10000

func onButton(_method, _args):
	if(_method == "scenesStuff"):
		runScene("SnowSexScene")
	# elif(_method == "pawtest"):
	# 	runScene("SnowyTest")
