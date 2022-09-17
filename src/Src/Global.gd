extends Node

var portalRoom: String
var language = "English"
var masterBus = AudioServer.get_bus_index("Master")

func DisableMouse():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
