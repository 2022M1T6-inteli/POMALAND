extends StaticBody2D

var onArea: bool
var dialoguePart = 0
var dialogues = load("res://Src/HubDialogues.gd").new()

# Make dbox visible when player is close
func _on_Area2D_body_entered(body):
	if body == $"../Physics Player":
		$dbox.visible = true
		onArea = true

# Make dbox invisible when player is far
func _on_Area2D_body_exited(body):
	if body == $"../Physics Player":
		$dbox.visible = false
		onArea = false


func ShowDialogue1():
	if onArea == true:
		if Input.is_action_just_pressed("select"):
			$"Dialogue 1".visible = true
			match Global.language:
				"English":
					ChangeDialogue(dialogues.meneguzziTalk["english"])
					ArrowInvisible(dialogues.meneguzziTalk["english"])
				"Portuguese":
					ArrowInvisible(dialogues.meneguzziTalk["portuguese"])
					ChangeDialogue(dialogues.meneguzziTalk["portuguese"])
	else:
		$"Dialogue 1".visible = false
		dialoguePart = 0

func ArrowInvisible(dial):
	if dialoguePart == len(dial) - 2:
		$"Dialogue 1/AnimatedSprite".visible = false

func ChangeDialogue(dial):
	if dialoguePart == len(dial) - 1:
		dialoguePart = 0
		$"Dialogue 1/AnimatedSprite".visible = true
		$"Dialogue 1".visible = false
	else:
		dialoguePart += 1
		$"Dialogue 1/Label".text = str(dial[dialoguePart])

func _process(_delta):
	ShowDialogue1()

func _ready():
	print(Global.language)
