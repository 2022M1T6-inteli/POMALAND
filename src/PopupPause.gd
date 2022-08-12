extends Popup
onready var pausado = false

func pausar():
	$".".show()
	get_tree().paused = true
	pausado = true
	
func despausar():
	$".".hide()
	get_tree().paused = false
	pausado = false

# Menu de pausa
func _process(_delta):
	if Input.is_action_just_pressed("ui_esc"):
		if pausado == true:
			despausar()
		else:
			pausar()

func _on_ButtonContinuar_pressed():
	despausar()


func _on_ButtonMenu_pressed():
	get_tree().paused = false
	return get_tree().change_scene("res://src/startScreen.tscn")
