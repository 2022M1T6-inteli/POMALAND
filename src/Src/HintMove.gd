extends Area2D

# Enter to show hint
func _on_HintMove_body_entered(body):
	if body == $"../Physics Player":
		$"../Hints".visible = true
		match Global.language:
			"English":
				$"../Hints/CenterContainer/Label".text = "(↑ ↓ ← →)\nto move"
			"Portuguese":
				$"../Hints/CenterContainer/Label".text = "(↑ ↓ ← →)\npara se movimentar"

func _on_HintMove_body_exited(body):
	if body == $"../Physics Player":
		$"../Hints".visible = false
