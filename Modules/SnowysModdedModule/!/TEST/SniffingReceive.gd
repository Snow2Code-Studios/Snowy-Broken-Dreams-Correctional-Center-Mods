extends SexGoalBase

func _init():
	id = "SniffingReceive"

func getVisibleName():
	return "Receive sniffing"

func isPossible(_sexEngine, _domInfo, _subInfo, _data):
	if(_domInfo.getChar().hasReachableAnus() && !_subInfo.getChar().isOralBlocked()):
		return true
	
	return false

func getSubGoals(_sexEngine, _domInfo, _subInfo, _data):
	return {
		SexGoal.SubUndressDom: 1.0,
	}

func getGoalDefaultWeight():
	return 0.1

func domWantsToCum():
	return true
