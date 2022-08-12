extends Control

# Quando o video de introdução acabar a cena mudara para a tela inicial
func _on_VideoPlayer_finished():
	return get_tree().change_scene("res://src/startScreen.tscn")
