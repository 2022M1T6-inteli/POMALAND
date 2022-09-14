extends Area2D

var scene

func _on_ElevatorArea_body_entered(body):
		if body == $"../YSort/Physics Player":
			scene = get_tree().change_scene("res://Scenes/Hub.tscn")

func _on_interact_body_entered(body):
		if body == $"../YSort/Physics Player":
			scene = get_tree().change_scene("res://Minigames/Water World/Scenes/Water 1.tscn")
