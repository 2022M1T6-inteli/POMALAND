extends Control

# Grab focus to start button
func _ready():
	$Center/Vertical/Start.grab_focus()

# Press start to start the game
func _on_Start_pressed():
	return get_tree().change_scene("res://Scenes/Hub.tscn")

# COMPLETE THIS!!!!
func _on_Options_pressed():
	return get_tree().change_scene("res://Scenes/Options.tscn")

# Press quit to quit the game
func _on_Quit_pressed():
	return get_tree().quit()

func ready():
	$Center/Vertical/Start.grab_focus()
	
