extends CanvasLayer
var scene 

func _on_ButtonRetry_pressed() -> void:
	scene = get_tree().change_scene("res://Minigames/Earthquake World/cenas/minigame3-level.tscn")
