extends StaticBody2D

var onArea: bool
var dialoguePart = 0
var texts = [
	"null",
	"(Meneguzzi): Aahh, quick! here! . I do not have much time….",
	"(Cleiton): What happened? Where is everyone?",
	"(Meneguzzi): Everyone is infected with the \n mpj-1 virus and as far as I know we are the \n only survivors…",
	"(Cleiton): The only survivors!? \n What should I do?",
	"(Meneguzzi): You... you, MUST FIND THE CURE!",
	"(Cleiton): What kind of cure for something \n like that?",
	"(Meneguzzi): POMA",
	"(Cleiton): Poma? What does this mean?",
	"(Meneguzzi): Product Operation Maturity \n Assessment, a model created by Dell and it \n is the cure!!!",
	"(Cleiton): Where can I find the cure?",
	"(Meneguzzi): The antidote is only available \n if you pass through the six floors of Dell \n headquarters and master the nine concepts \n of the POMA model",
	"(Meneguzzi): Here is a quick reminder:",
	"PAPER obtained!",
	"(Meneguzzi): PROMISE ME YOU WILL SAVE \n EVERYONE. BEST OF LUCK!"]


func _on_Area2D_body_entered(body):
	if body == $"../Physics Player":
		$dbox.visible = true
		onArea = true

func _on_Area2D_body_exited(body):
	if body == $"../Physics Player":
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
