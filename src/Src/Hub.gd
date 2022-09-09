extends Node2D


func _ready():
	if Global.PortalRoom == "Earthquake":
		$"Physics Player".position = Vector2(401, 37)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
