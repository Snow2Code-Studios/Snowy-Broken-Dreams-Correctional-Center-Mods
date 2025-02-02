extends EventBase

func _init():
	id = "SnowyFloorEnter"


func registerTriggers(es):
    es.addTrigger(self, Trigger.EnteringRoom, "cellblock_corridor_nearstairs") # entrance
    es.addTrigger(self, Trigger.EnteringRoom, "SnowyFloorEntrance") # exit

# what happens when register
func run(_triggerID, _args):
    if _triggerID == "EnteringRoom": # safe guard even though it shouldn't be possible to have other triggers in here

        match _args[0]: # If you don't know what's this, please consult https://docs.godotengine.org/en/3.5/tutorials/scripting/gdscript/gdscript_basics.html#match
            # basically fancy if statement use to match specific strings in _args's first index
            "cellblock_corridor_nearstairs": # entrance
                sayn("\n"+"Why is there a hole in the wall?")
                addButton("Hole in the wall", "Why is nobody noticing this?", "go") # Adds a button to enter
            "SnowyFloorEntrance": # exit
                sayn("\n"+"This is weird...")
                addButton("Back", "This is weird", "leave") # Adds a button to leave

func getPriority():
    return 0

func onButton(_method, _args):
    match _method:
        "go":
            GM.pc.setLocation("SnowyFloorEntrance")
            GM.main.reRun()
        "leave":
            GM.pc.setLocation("cellblock_corridor_nearstairs")
            GM.main.reRun()
