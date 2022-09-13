extends Node2D

var chrLookRight = Vector2(1, 0)
var scene

func _ready():
	$"YSort/Physics Player/animationTree".set("parameters/Idle/blend_position", chrLookRight)
	Global.portalRoom = "Water"
