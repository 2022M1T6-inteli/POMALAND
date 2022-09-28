extends Area2D

var scene

# Teleport to Hub 
func _on_ElevatorArea_body_entered(body):
		if body == $"../YSort/Physics Player":
			$"../YSort/Physics Player/Camera2D".smoothing_enabled=false
			scene = TransitionScreen.fadeIn("res://Scenes/Hub.tscn")

# Teleport to Minigame 1
func _on_interact_body_entered(body):
		if body == $"../YSort/Physics Player":
			scene = TransitionScreen.fadeIn("res://Minigames/Water World/Scenes/Water 1.tscn")
