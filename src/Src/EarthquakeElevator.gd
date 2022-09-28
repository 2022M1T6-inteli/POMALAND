extends Area2D

var scene
# to the room A 
func _on_ElevatorArea_body_entered(body):
	if body == $"../Physics Player":
		scene = TransitionScreen.fadeIn("res://Scenes/Portal Room A.tscn")
