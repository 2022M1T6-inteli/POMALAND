extends Area2D

var liberarCama: bool
var onArea: bool
var dialoguePart = 0
var read = false
var texts = [ 
	"",
	"Letter from his old workmate, Luiz:", 
	"Thanks to Pablo's teachings, we were able to put aside the project mentality and start thinking about products! we got a much more agile team.",
	"Maturity level 3: Can use a stakeholder's teachings to improve the development process"
	]


func _on_Area2D_body_entered(body):
	if body == $"../YSort/person-machado":
		$dbox2.visible = true
		onArea = true

func _on_Area2D_body_exited(body):
	if body == $"../YSort/person-machado":
		$dbox2.visible = false
		onArea = false

func ShowDialogue1():
	if onArea == true:
		if Input.is_action_just_pressed("select"):
			$"Dialogue 2".visible = true
			if dialoguePart == len(texts) - 2:
				$"Dialogue 2/AnimatedSprite".visible = false
			if dialoguePart == len(texts) - 1:
				dialoguePart = 0
				$"Dialogue 2/AnimatedSprite".visible = true
				$"Dialogue 2".visible = false
			else:
				dialoguePart += 1
				$"Dialogue 2/Label".text = str(texts[dialoguePart])
	else:
		$"Dialogue 2".visible = false
		if read == false:
			read = true
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()

