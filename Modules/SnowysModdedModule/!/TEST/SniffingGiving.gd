extends FetishBase
const Sniffing_Fetish = preload("res://Modules/SnowysModdedModule/TEST/Sniffing_Fetish.gd")

func _init():
    id = Sniffing_Fetish.SniffingGiving

func getVisibleName():
    return "Sniffing (Giving)"

func getGoals(_sexEngine, _domFetishHolder, _dom, _sub):
    var possible = [SexGoal.SniffSub]

    return possible
