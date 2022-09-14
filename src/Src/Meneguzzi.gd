extends StaticBody2D

var onArea: bool
var dialoguePart = 0
var texten = [
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
var textpt = [
	"null",
	"(Meneguzzi): Aahh, rápido! aqui! . eu não tenho muito tempo",
	"(Cleiton): O que aconteceu? Cade todo mundo?",
	"(Meneguzzi): Todo mundo fui infectado pelo \n virus mpj-1 e ate onde eu sei nós  \n somos os ultimos sobreviventes...",
	"(Cleiton): Os últimos sobreviventes? \n O que eu devo fazer?",
	"(Meneguzzi): você... você DEVE ACHAR A CURA",
	"(Cleiton): Que tipo de cura para algo \n deste tipo?:",
	"(Meneguzzi): POMA",
	"(Cleiton): Poma? O que isso significa?",
	"(Meneguzzi): Product Operation Maturity \n Assessment, Um modelo criado pela Dell \n isso é a cura!!!",
	"(Cleiton): Ótimo, onde posso encontra-la?",
	"(Meneguzzi): O antidoto só fica disponível \n Se você passar pelos 6 andares da dell \n e masterizar os 9 conceitos do modelo POMA",
	"(Meneguzzi): Aqui está um lembrete:",
	"Anotações obtidas!",
	"(Meneguzzi): ME PROMETA QUE VOCÊ IRÁ SALVAR\n A TODOS. BOA SORTE"]

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
			if Global.language == "English":
				if dialoguePart == len(texten) - 2:
					$"Dialogue 1/AnimatedSprite".visible = false
				if dialoguePart == len(texten) - 1:
					dialoguePart = 0
					$"Dialogue 1/AnimatedSprite".visible = true
					$"Dialogue 1".visible = false
				else:
					dialoguePart += 1
					$"Dialogue 1/Label".text = str(texten[dialoguePart])
			elif Global.language == "Portuguese":
				if dialoguePart == len(textpt) - 2:
					$"Dialogue 1/AnimatedSprite".visible = false
				if dialoguePart == len(textpt) - 1:
					dialoguePart = 0
					$"Dialogue 1/AnimatedSprite".visible = true
					$"Dialogue 1".visible = false
				else:
					dialoguePart += 1
					$"Dialogue 1/Label".text = str(textpt[dialoguePart])
	else:
		$"Dialogue 1".visible = false
		dialoguePart = 0
func _process(_delta):
	ShowDialogue1()
