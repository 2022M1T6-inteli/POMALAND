extends Area2D

var scene

# Teleport to Hub 
func _on_ElevatorArea_body_entered(body):
		if body == $"../YSort/Physics Player":
			$"../YSort/Physics Player/Camera2D".smoothing_enabled=false
			scene = get_tree().change_scene("res://Scenes/Hub.tscn")

# Teleport to Minigame 1
func _on_interact_body_entered(body):
		if body == $"../YSort/Physics Player":
			scene = get_tree().change_scene("res://Minigames/Water World/Scenes/Water 1.tscn")
