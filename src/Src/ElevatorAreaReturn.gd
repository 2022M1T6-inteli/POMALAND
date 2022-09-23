extends Area2D

var scene


# Go to the minigame
func _on_interact_body_entered(body):
	if body == $"../YSort/Physics Player":
		scene = get_tree().change_scene("res://Minigames/Earthquake World/cenas/minigame3-level.tscn")

# Return to hub
func _on_ElevatorArea_body_entered(body):
	if body == $"../YSort/Physics Player":
		scene = get_tree().change_scene("res://Scenes/Hub.tscn")
