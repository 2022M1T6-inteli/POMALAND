extends Node2D

var chrLookUp = Vector2(0, -1)
var scene

func _ready():
	$"YSort/Physics Player/animationTree".set("parameters/Idle/blend_position", chrLookUp)

func _on_interact2_body_entered(body):
	if body == $"YSort/Physics Player":
		scene = get_tree().change_scene("res://Scenes/Hub.tscn")
