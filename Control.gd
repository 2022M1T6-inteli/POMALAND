extends Control


# Ao clicar no botão "voltar" mudará a cena para a startrScreen
func _on_Button_pressed():
	return get_tree().change_scene("res://src/startScreen.tscn")
