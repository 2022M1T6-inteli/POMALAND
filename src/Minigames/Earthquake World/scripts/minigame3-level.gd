extends Node2D
var signsRead: int
onready var bed = get_node("Cama")
onready var chest = get_node("bau")
onready var signn = get_node("placa")
onready var table = get_node("Mesa")

func _ready():
	signsRead = 0
	ResetStars()

# Assigns read signs to stars in the game
func Metric():
	print(bed.finished2, chest.finished1, signn.finished4, table.finished3)
	if bed.finished2 == true:
		Global.earthStar += 1
	if chest.finished1 == true:	
		Global.earthStar += 1
	if signn.finished4 == true:
		Global.earthStar += 1
	if table.finished3 == true:
		Global.earthStar += 1

func ResetStars():
	if Global.earthStar != 4:
		Global.earthStar = 0

func _on_interact_body_entered(body):
	if body == $"YSort/person-machado":
		TransitionScreen.fadeIn("res://Scenes/Portal Room A.tscn")
	Metric()
