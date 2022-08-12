extends Control

# função criada para que no botão de jogar esteja com "focus"
func _ready():
	$controls/startBtn.grab_focus()

# Ao clicar em jogar mudara a cena para a World
func _on_startBtn_pressed():
	return get_tree().change_scene("res://src/World.tscn")

# Ao clicar em controles mudara a cena para control
func _on_controlsBtn_pressed():
	return get_tree().change_scene("res://src/Control.tscn")

# Ao clicar em sair o jogo fechará
func _on_quitBtn_pressed():
	return get_tree().quit()
