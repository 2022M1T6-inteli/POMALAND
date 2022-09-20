extends Node

var portalRoom: String
var language = "English"
var masterBus = AudioServer.get_bus_index("Master")
var completeWater = false
var waterStar: int

func DisableMouse():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
