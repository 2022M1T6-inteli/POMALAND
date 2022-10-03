extends Node2D

# Variables
var dialogues = load("res://Src/HubDialogues.gd").new()


# Change player position according to the room
func _ready():
	if Global.portalRoom == "Earthquake":
		$"Physics Player".position = Vector2(401, 37)
	elif Global.portalRoom == "Water":
		$"Physics Player".position = Vector2(446.450836, 123.73774)
	elif Global.portalRoom == "WaterWorld":
		$"Physics Player".position = Vector2(177, 65)
		

# Show hint when on area
func _on_Directions_body_entered(body):
	if body == $"Physics Player":
		match Global.language:
			"English":
				$HintCanvas/Label.text = dialogues.textenMoveHint
			"Portuguese":
				$HintCanvas/Label.text = dialogues.textportMoveHint
		$HintCanvas.visible = true

# Hide hint when on area
func _on_Directions_body_exited(body):
	if body == $"Physics Player":
		$HintCanvas.visible = false
