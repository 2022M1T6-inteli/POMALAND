extends Node2D

var signsRead: int
onready var plyr = get_node("YSort/person-machado")
var readHint = false

func _ready():
	Global.level = "Earthquake"
	signsRead = 0
	ResetStars()
	ChangeLang()
# Assigns read signs to stars in the game
func Metric():
	var bed = get_node("Cama").finished
	var chest = get_node("bau").finished
	var signn = get_node("placa").finished
	var table = get_node("Mesa").finished
	if bed == true:
		Global.earthStar += 1
	if chest == true:	
		Global.earthStar += 1
	if signn == true:
		Global.earthStar += 1
	if table == true:
		Global.earthStar += 1

func ResetStars():
	if Global.earthStar != 4:
		Global.earthStar = 0

func _on_interact_body_entered(body):
	if body == $"YSort/person-machado":
		Metric()
		TransitionScreen.fadeIn("res://Scenes/Portal Room A.tscn")
		


func _on_HintArea_body_entered(body):
	if readHint == false:
		if body == plyr:
			$Hint.visible = true
			readHint = true

func _on_HintArea_body_exited(body):
	if body == plyr:
		$Hint.visible = false

func ChangeLang():
	match Global.language:
		"Portuguese":
			$Hint/Label.text = "Dica: Procure por todos os objetos espalhados pelo terremoto para ganhar estrelas"
			$Hint/Label2.text = "Tenha cuidado com os inimigos"
		"English":
			$Hint/Label.text = "Hint: Search for all the objects scattered by the earthquake to earn stars"
			$Hint/Label2.text = "Watch out for the enemies!"
