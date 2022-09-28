extends Node2D


func _ready():
	if Global.portalRoom == "Earthquake":
		$"Physics Player".position = Vector2(401, 37)
	elif Global.portalRoom == "Water":
		$"Physics Player".position = Vector2(446.450836, 123.73774)
	elif Global.portalRoom == "WaterWorld":
		$"Physics Player".position = Vector2(177, 65)
		
