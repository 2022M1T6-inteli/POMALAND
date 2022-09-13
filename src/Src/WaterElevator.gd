extends Area2D

var scene

func _on_ElevatorArea_2_body_entered(body):
	if body == $"../Physics Player":
		scene = get_tree().change_scene("res://Scenes/Portal Room B.tscn")
