extends Area2D

var onArea: bool
var dialoguePart = 0
var texts = [ "", 
	"Congratulations, Pablo!!!!!!!!",
	"Thank you for your guidance to our team, we were able to double the amount of revenue for our company!",
	"This shows how important it is to have a healthy relationship with the Stakeholder :) "
]


func _on_Area2D_body_entered(body):
	if body == $"../YSort/person-machado":
		$dbox.visible = true
		onArea = true

func _on_Area2D_body_exited(body):
	if body == $"../YSort/person-machado":
		$dbox.visible = false
		onArea = false

func ShowDialogue1():
	if onArea == true:
		if Input.is_action_just_pressed("select"):
			$"Dialogue 1".visible = true
			if dialoguePart == len(texts) - 2:
				$"Dialogue 1/AnimatedSprite".visible = false
			if dialoguePart == len(texts) - 1:
				dialoguePart = 0
				$"Dialogue 1/AnimatedSprite".visible = true
				$"Dialogue 1".visible = false
			else:
				dialoguePart += 1
				$"Dialogue 1/Label".text = str(texts[dialoguePart])
	else:
		$"Dialogue 1".visible = false
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()
