extends Control

var PauseSwitch: bool
# FUNCTIONS
func _ready():
	PauseSwitch = false
	visible = false
# Press pause key to pause
func _input(event):
	if event.is_action_pressed("pause"):
		PauseSwitch = not PauseSwitch
		get_tree().paused = PauseSwitch
		visible = PauseSwitch
		if PauseSwitch == true:
			$CenterContainer/VBoxContainer/Return.grab_focus()
			
# Press return to return to game
func _on_Return_pressed():
	get_tree().paused = false
	PauseSwitch = not PauseSwitch
	visible = PauseSwitch
	
# Press quit to quit to menu
func _on_Quit_pressed():
	get_tree().quit()
