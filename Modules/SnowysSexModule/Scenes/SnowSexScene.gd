extends SceneBase

func _init():
	sceneID = "SnowSexScene"

#abcdefghijklmnopqrstuvwxyz

var charactersSex = [
    "Avy",
    "Artica",
    # "AlexRynard", #i dont find u good lookin
    #b
    # "Captain", #i dont find u good lookin
    # "CaptainInmate", #i dont find u good lookin
    # "cp_guard", #i dont find u good lookin
    #d
    "Elena",
    # "Eliza", #i dont find u good lookin

    # "femaleguard_feline", #i dont find u good lookin
    #g
    #h
    "Jacki",
    #k
    #l
    # "maleguard_canine", #i dont find u good lookin
    
    # "Nura", #i dont find u good lookin
    #o
    #p
    #q
    "Rahi",
    # "Risha", #i dont find u good lookin
    # "RishaIntro", #i dont find u good lookin
    "Rubi",
    # "rahiMineOwner", #i dont find u good lookin
    "rahipharmgirl",
    "rahiRabi",
    # "rahiAlphaCorpLady", #i dont find u good lookin
    "rahiBarGuy",

    "Skar",
    # "Stud", #i dont find u good lookin
    "Socket",

    "Traci",
    "Tavi",
    "TaviArmored",
    "TaviDemon",
    "TaviDemonFuta",
    
    "Volk",
    "futarahi:rahifuta"
]

func getSceneCreator():
	return "Snowy"

var selectedChar = ""

func _run():
    if (state == ""):
        saynn("Snowy's Menu")
        addButton("Scene", "", "theScenes")
        addButton("Leave", "Back to menu", "endthescene")
    
    if state == "theScenes" or state == "subMenu" or state == "domMenu":
        if state == "theScenes":
            addButton("You are sub", "sub", "subMenu")
            addButton("You are dom", "dom", "domMenu")
        addButton("Back", "back to main wtf??", "back")
        if state == "subMenu":
            for character in charactersSex:
                addButton(character, character, "characterMenuSub", [character])
        elif state == "domMenu":
            for character in charactersSex:
                addButton(character, character, "characterMenuDom", [character])
    elif state == "characterMenuSub" or state == "characterMenuDom":
        addButton("Back", "back to main wtf??", "back")
        if state == "characterMenuSub":
            addButton("Normal", "Start sex with " + selectedChar + " as sub :3", "scene", [selectedChar.to_lower(), "pc", SexType.DefaultSex])
            addButton("Slutwall", "Start sex with " + selectedChar + " as sub :3", "scene", [selectedChar.to_lower(), "pc", SexType.SlutwallSex])
            addButton("Stocks", "Start sex with " + selectedChar + " as sub :3", "scene", [selectedChar.to_lower(), "pc", SexType.StocksSex])
        if state == "characterMenuDom":
            addButton("Normal", "Start sex with " + selectedChar + " as sub :3", "scene", ["pc", selectedChar.to_lower(), SexType.DefaultSex])
            addButton("Slutwall", "Start sex with " + selectedChar + " as sub :3", "scene", ["pc", selectedChar.to_lower(), SexType.SlutwallSex])
            addButton("Stocks", "Start sex with " + selectedChar + " as sub :3", "scene", ["pc", selectedChar.to_lower(), SexType.StocksSex])

func _react(_action: String, _args):
    print("[Snowy]: Action is '" + _action)
    
    if _action == "characterMenuSub":
        selectedChar = _args[0]
    if _action == "characterMenuDom":
        selectedChar = _args[0]
    if _action == "back":
        setState("")
        return
    elif (_action == "endthescene"):
        endScene()
        return
    elif _action == "scene":
        print(_args)
        
#abcdefghijklmnopqrstuvwxyz
        if _args[0] == "traci":
            _args[0] = "dynamicnpc24"
        elif _args[0] == "captaininmate":
            _args[0] = "captainInmate"
        elif _args[0] == "introdetective":
            _args[0] = "intro_detective"
        elif _args[0] == "rishaintro":
            _args[0] = "rishaIntro"
        elif _args[0] == "taviarmored":
            _args[0] = "taviArmored"
        elif _args[0] == "tavidemon":
            _args[0] = "taviDemon"
        elif _args[0] == "tavidemonfuta":
            _args[0] = "taviDemonFuta"
        elif _args[0] == "rahimineowner":
            _args[0] = "rahiMineOwner"
        elif _args[0] == "rahipharmgirl":
            _args[0] = "rahiPharmGirl"
        elif _args[0] == "rahirabi":
            _args[0] = "rahiRabi"
        elif _args[0] == "rahifather":
            _args[0] = "rahifather"
        elif _args[0] == "rahialphacorplady":
            _args[0] = "rahiAlphaCorpLady"
        elif _args[0] == "rahibarguy":
            _args[0] = "rahiBarGuy"

        if _args[1] == "traci":
            _args[1] = "dynamicnpc24"
        elif _args[1] == "captaininmate":
            _args[1] = "captainInmate"
        elif _args[1] == "rishaintro":
            _args[1] = "rishaIntro"
        elif _args[1] == "introdetective":
            _args[1] = "intro_detective"
        elif _args[1] == "taviarmored":
            _args[1] = "taviArmored"
        elif _args[1] == "tavidemon":
            _args[1] = "taviDemon"
        elif _args[1] == "tavidemonfuta":
            _args[1] = "taviDemonFuta"
        elif _args[1] == "rahiMineOwner":
            _args[1] = "rahiMineOwner"
        elif _args[1] == "rahipharmgirl":
            _args[1] = "rahiPharmGirl"
        elif _args[1] == "rahirabi":
            _args[1] = "rahiRabi"
        elif _args[1] == "rahifather":
            _args[1] = "rahiFather"
        elif _args[1] == "rahialphacorplady":
            _args[1] = "rahiAlphaCorpLady"
        elif _args[1] == "rahibarguy":
            _args[1] = "rahiBarGuy"

        runScene("GenericSexScene", [_args[0], _args[1], "rahi", _args[3]])
    else:
        setState(_action)
