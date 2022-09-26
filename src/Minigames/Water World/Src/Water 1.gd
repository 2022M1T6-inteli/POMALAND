extends Node2D

onready var plyr = get_node("Platform Plyr")
onready var cam = $Camera2D

var camSecret = Vector2(0, 134)
var camOriginal = Vector2(241, 134)
var scene

func _ready():
	ResetStars()
	$HoleS.visible = true
	$CanvasLayer/KeyGui.visible = false

# Make camera follow player y
func FollowPlayer():
	if plyr.position.y <= 140:
		cam.position.y = plyr.position.y - 40
	else:
		cam.position.y = plyr.position.y - 105

# Make player enter secret area
func _on_Secret_Area_body_entered(body):
	if body == plyr:
		cam.position = camSecret

# Make secret area disappear
func _on_Secret_Area_body_exited(body):
	if body == plyr:
		cam.position = camOriginal

# Make light follow player
func LightOnPlayer():
	$HoleS.position = plyr.position
	$HoleM.position = plyr.position
	$HoleL.position = plyr.position

# Return to the hub
func _on_PortalInteract_body_entered(body):
	if body == $"Platform Plyr":
		Global.portalRoom = "WaterWorld"
		Global.completeWater = true
		Metric()
		scene = get_tree().change_scene("res://Scenes/Portal Room B.tscn")

# Measure the signs read
func Metric():
	var sign1 = get_node("Sign 1").finishDialogue
	var sign2 = get_node("Sign 2").finishDialogue
	var sign3 = get_node("Sign 3").finishDialogue
	if Global.waterStar != 3:
		if sign1 == true:
			Global.waterStar += 1
		if sign2 == true:
			Global.waterStar += 1
		if sign3 == true:
			Global.waterStar += 1

# Reset the stars if not perfect score
func ResetStars():
	if Global.waterStar != 3:
		Global.waterStar = 0

# Functions that run on delta
func _physics_process(_delta):
	FollowPlayer()
	LightOnPlayer()

# REMOVE THIS LATER
func _on_Provisory_body_entered(body):
	if body == plyr:
		plyr.position = Vector2(434, -699)
