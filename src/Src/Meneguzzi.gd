extends StaticBody2D

var onArea: bool
var dialoguePart = 0
var dialogues = load("res://Src/HubDialogues.gd").new()

# Make dbox visible when player is close
func _on_Area2D_body_entered(body):
	if body == $"../Physics Player":
		$dbox.visible = true
		$"../Hints".visible = true
		ShowHint()
		onArea = true

# Make dbox invisible when player is far
func _on_Area2D_body_exited(body):
	if body == $"../Physics Player":
		$dbox.visible = false
		$"../Hints".visible = false
		onArea = false

# All dialogue
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

# Make dialogue arrow invisible when on the last page
func ArrowInvisible(dial):
	$"Dialogue 1/AnimatedSprite".visible = true
	if dialoguePart >= len(dial) - 1:
		$"Dialogue 1/AnimatedSprite".visible = false

# Change dialogue pages
func ChangeDialogue(dial):
	if dialoguePart == len(dial) - 1:
		dialoguePart = 0
		$"Dialogue 1/AnimatedSprite".visible = true
		$"Dialogue 1".visible = false
	else:
		dialoguePart += 1
		$"Dialogue 1/Label".text = str(dial[dialoguePart])

# Show what key needs to be pressed to interact
func ShowHint():
	match Global.language:
		"English":
			$"../Hints/CenterContainer/Label".text = "(Z)\nto interact"
		"Portuguese":
			$"../Hints/CenterContainer/Label".text = "(Z)\npara interagir"

# Functions that run on delta
func _process(_delta):
	ShowDialogue1()
