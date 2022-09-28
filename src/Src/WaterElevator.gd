extends Area2D

var scene

# Teleport to Portal Room B
func _on_ElevatorArea_2_body_entered(body):
	if body == $"../Physics Player":
		$"../Physics Player/Camera2D".smoothing_enabled=false
		scene = TransitionScreen.fadeIn("res://Scenes/Portal Room B.tscn")
