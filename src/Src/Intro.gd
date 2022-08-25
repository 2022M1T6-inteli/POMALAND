extends Control

#Finish -> Scene Change
func _on_VideoPlayer_finished():
	return get_tree().change_scene("res://Scenes/Menu.tscn")

func _process(_delta):
	if Input.is_action_just_pressed("ui_interact"):
		return get_tree().change_scene("res://Scenes/Menu.tscn")
