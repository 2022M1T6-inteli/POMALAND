extends KinematicBody2D

var movSpeed = Vector2.ZERO
var movVector = Vector2.ZERO
var movAcel = 600
var movMaxSpeed = 100
var movFriction = 800

func _physics_process(delta):
	movVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movVector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	movVector = movVector.normalized()
	if movVector != Vector2.ZERO:
		movSpeed = movSpeed.move_toward(movVector * movMaxSpeed, movAcel * delta)
	else:
		movSpeed = movSpeed.move_toward(Vector2.ZERO, movFriction * delta)
	movSpeed = move_and_slide(movSpeed)
func _ready():
	pass # Replace with function body.
