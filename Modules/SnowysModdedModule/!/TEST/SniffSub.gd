extends SexGoalBase

func _init():
	id = SexGoal.SniffSub

func getVisibleName():
	return "Sniff sub"

func isPossible(_sexEngine, _domInfo, _subInfo, _data):
	if(_subInfo.getChar().hasReachableAnus() && !_domInfo.getChar().isOralBlocked()):
		return true
	
	return false

func getSubGoals(_sexEngine, _domInfo, _subInfo, _data):
	return {
		SexGoal.SubUndressSub: 1.0,
	}

func getGoalDefaultWeight():
	return 0.1
