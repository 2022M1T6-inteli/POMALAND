extends Area2D

var scene



func _on_interact_body_entered(body):
	if body == $"../YSort/Physics Player":
		TransitionScreen.fadeIn("res://Minigames/Earthquake World/cenas/minigame3-level.tscn")
		


func _on_ElevatorArea_body_entered(body):
	if body == $"../YSort/Physics Player":
		TransitionScreen.fadeIn("res://Scenes/Hub.tscn")
