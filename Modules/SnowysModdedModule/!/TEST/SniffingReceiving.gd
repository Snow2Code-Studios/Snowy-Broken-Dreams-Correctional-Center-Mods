extends FetishBase
const Sniffing_Fetish = preload("res://Modules/SnowysModdedModule/TEST/Sniffing_Fetish.gd")

func _init():
	id = Sniffing_Fetish.SniffingReceiving

func getVisibleName():
	return "Sniffing (Receiving)"

func getGoals(_sexEngine, _domFetishHolder, _dom, _sub):
	var possible = [SexGoal.Receive]
	
	return possible
