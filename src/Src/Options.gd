extends Control

var scene

func _on_BackBtn_pressed():
	scene = get_tree().change_scene("res://Scenes/Menu.tscn")
	
func _on_LangButton_pressed():
	if Global.language == "English":
		Global.language = "Portuguese"
		$LangButton.text = "Portuguese"
	elif Global.language == "Portuguese":
		Global.language = "English"
		$LangButton.text = "English"

func _ready():
	$CenterContainer2/BackBtn.grab_focus()
	
	
