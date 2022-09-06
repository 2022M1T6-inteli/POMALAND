extends StaticBody2D

var onArea: bool
var dialoguePart = 0
var texts = [
	"(Meneguzzi): Aahh, quick! here! . I do not have much time….",
	"(Cleiton): What happened? Where is everyone?",
	"(Meneguzzi): Everyone is infected with the mpj-1 virus \n and as far as I know we are the only survivors…",
	"(Cleiton): The only survivors!? What should I do?",
	"(Meneguzzi): You…..you, MUST FIND THE CURE!",
	"(Cleiton): What kind of cure for something like that?",
	"(Meneguzzi): POMA",
	"(Cleiton): Poma? What does this mean?",
	"(Meneguzzi): Product Operation Maturity Assessment, \n a model created by Dell and it is the cure!!!",
	"(Cleiton): Where can I find the cure?",
	"(Meneguzzi): The antidote is only available \n if you pass through the six floors of Dell headquarters \n and master the nine concepts of the POMA model",
	"(Meneguzzi): Here is a quick reminder:",
	"PAPER obtained!",
	"(Meneguzzi): PROMISE ME YOU WILL SAVE EVERYONE. BEST OF LUCK!"]


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
			$"Dialogue 1/CenterContainer/Label".visible = true
			if dialoguePart == len(texts) - 1:
				dialoguePart = 0
				$"Dialogue 1/CenterContainer/Label".visible = false
			else:
				dialoguePart += 1
				$"Dialogue 1/CenterContainer/Label".text = str(texts[dialoguePart])
	else:
		$"Dialogue 1/CenterContainer/Label".visible = false
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()
