extends Area2D

var onArea: bool
var dialoguePart = 0
var texts = [ 
	"", 
	"Meneguzzi´s diary in his last days of work:",
	"After 10 years of experience with the Stakeholder, I managed to solve the crisis that almost destroyed our company!",
	"Those were hard days, but the product model saved us.",
	"Maybe, if I hadn't met Pablo back then, the story would've been different… very different.", 
	"To prevent a future crisis of this magnitude, I kept the equipment that helped me in those turbulent times… I hope I don’t have to use it again.",
	"Maturity level 4: Can replicate the knowledge of a stakeholder in another situation"
	]


func _on_Area2D_body_entered(body):
	if body == $"../YSort/person-machado":
		$dbox3.visible = true
		onArea = true

func _on_Area2D_body_exited(body):
	if body == $"../YSort/person-machado":
		$dbox3.visible = false
		onArea = false

func ShowDialogue1():
	if onArea == true:
		if Input.is_action_just_pressed("select"):
			$"Dialogue 3".visible = true
			if dialoguePart == len(texts) - 2:
				$"Dialogue 3/AnimatedSprite".visible = false
			if dialoguePart == len(texts) - 1:
				dialoguePart = 0
				$"Dialogue 3/AnimatedSprite".visible = true
				$"Dialogue 3".visible = false
			else:
				dialoguePart += 1
				$"Dialogue 3/Label".text = str(texts[dialoguePart])
	else:
		$"Dialogue 3".visible = false
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()
