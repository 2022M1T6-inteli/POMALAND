extends Node2D

var chrLookUp = Vector2(0, -1)
var scene

func _ready():
	$"YSort/Physics Player/animationTree".set("parameters/Idle/blend_position", chrLookUp)
	Global.portalRoom = "Earthquake"
