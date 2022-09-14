extends Node2D

onready var plyr = get_node("Platform Plyr")
onready var cam = $Camera2D

var camSecret = Vector2(0, 134)
var camOriginal = Vector2(241, 134)

func _ready():
	$HoleS.visible = true
	
func FollowPlayer():
	if plyr.position.y <= 140:
		cam.position.y = plyr.position.y - 40
	else:
		cam.position.y = plyr.position.y - 105

func _physics_process(_delta):
	FollowPlayer()
	LightOnPlayer()

func _on_Secret_Area_body_entered(body):
	if body == plyr:
		cam.position = camSecret

func _on_Secret_Area_body_exited(body):
	if body == plyr:
		cam.position = camOriginal

func LightOnPlayer():
	$HoleS.position = plyr.position
	$HoleM.position = plyr.position
	$HoleL.position = plyr.position
