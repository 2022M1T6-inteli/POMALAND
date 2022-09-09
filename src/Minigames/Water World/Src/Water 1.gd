extends Node2D

onready var plyr = get_node("Platform Plyr")
onready var cam = $Camera2D

func FollowPlayer():
	if plyr.position.y <= 140:
		cam.position.y = plyr.position.y - 40
	else:
		cam.position.y = plyr.position.y - 105

func _physics_process(_delta):
	FollowPlayer()

