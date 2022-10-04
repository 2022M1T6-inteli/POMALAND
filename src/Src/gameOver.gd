extends CanvasLayer
var scene 

func _on_ButtonRetry_pressed() -> void:
	match Global.level:
		"Water":
			scene = get_tree().change_scene("res://Minigames/Water World/Scenes/Water 1.tscn")
		"Earthquake":
			scene = get_tree().change_scene("res://Minigames/Earthquake World/cenas/minigame3-level.tscn")
