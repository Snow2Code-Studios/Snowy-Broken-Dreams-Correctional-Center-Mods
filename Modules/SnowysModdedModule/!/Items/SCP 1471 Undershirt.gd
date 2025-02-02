extends ItemBase

func _init():
	id = "scp1417undershirt"
	clothesColor = Color("#FFD1D1D1")

func getVisibleName():
	return "SCP 1417's Undershirt"
	
func getDescription():
	var text = "Sleeveless shirt that covers your chest."

	return text

func getClothingSlot():
	return InventorySlot.UnderwearTop

func getBuffs():
	return [
		]

func getTakingOffStringLong(withS):
	if(withS):
		return "takes off your undershirt"
	else:
		return "take off your undershirt"

func getPuttingOnStringLong(withS):
	if(withS):
		return "puts on the undershirt"
	else:
		return "put on the undershirt"

func getPrice():
	return 1

func getTags():
	return [
		ItemTag.SoldByUnderwearVendomat,
		]

func generateItemState():
	itemState = BraState.new()
	itemState.casualName = "undershirt"
	itemState.canActuallyBeDamaged = true

func getRiggedParts(_character):
	if(itemState.isRemoved() || itemState.isBraPulledUp()):
		return null
	if(itemState.isDamaged()):
		return {
			"top": "res://Inventory/RiggedModels/Undershirt/UndershirtDamaged.tscn",
		}
	return {
		"top": "res://Inventory/RiggedModels/Undershirt/Undershirt.tscn",
	}

func getHidesParts(_character):
	if(itemState.isRemoved() || itemState.isBraPulledUp() || itemState.isDamaged()):
		return null
	return {
		BodypartSlot.Breasts: true,
	}

func getInventoryImage():
	return "res://Images/Items/underwear/tanktop.png"

func canDye():
	return true
