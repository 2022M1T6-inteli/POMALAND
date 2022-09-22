extends Node2D

export var signsRead: int

func _ready():
	signsRead = 0

func _process(_delta):
	print("outside", signsRead)
