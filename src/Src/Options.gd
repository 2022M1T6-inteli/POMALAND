extends Control

var scene

func _on_BackBtn_pressed():
	scene = get_tree().change_scene("res://Scenes/Menu.tscn")

func _ready():
	$CenterContainer2/BackBtn.grab_focus()
	
