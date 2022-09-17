extends Area2D

var onArea: bool
var dialoguePart = 0
var texts = [ "", 
	"plaque: Leader´s Mansion - Dell Technologies - Primary Stakeholder: Pablo",
	" (CLEITON): Here was the first place of the earthquake caused by the movement of the MPJ-1. ",
	"(CLEITON): Here used to be the home of the main product model leaders… now it is totally destroyed and with marks on the ground.",
	"Maturity Level 1: Now, you know  what´s a Stakeholder(leader)"
	]


func _on_Area2D_body_entered(body):
	if body == $"../YSort/person-machado":
		$dbox4.visible = true
		onArea = true

func _on_Area2D_body_exited(body):
	if body == $"../YSort/person-machado":
		$dbox4.visible = false
		onArea = false

func ShowDialogue1():
	if onArea == true:
		if Input.is_action_just_pressed("select"):
			$"Dialogue 4".visible = true
			if dialoguePart == len(texts) - 2:
				$"Dialogue 4/AnimatedSprite".visible = false
			if dialoguePart == len(texts) - 1:
				dialoguePart = 0
				$"Dialogue 4/AnimatedSprite".visible = true
				$"Dialogue 4".visible = false
			else:
				dialoguePart += 1
				$"Dialogue 4/Label".text = str(texts[dialoguePart])
	else:
		$"Dialogue 4".visible = false
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()
