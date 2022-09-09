extends KinematicBody2D

# variables
onready var animation: AnimationPlayer = get_node("animation")
onready var sprite: Sprite = get_node("Sprite")
var player_ref = null
var velocity: Vector2
export (int) var speed

# function physics
func _physics_process(_delta:float) -> void:
	move()
	animate()
	verifyDirection()
	
# function of moviment
func move() -> void:
	if player_ref != null:
		var distance: Vector2 = player_ref.global_position - global_position
		var direction: Vector2 = distance.normalized()
		var distanceLength: float = distance.length()
		if distanceLength <= 15:
			velocity = Vector2.ZERO
		else:
			velocity = speed * direction
	else: 
		velocity = Vector2.ZERO
	velocity = move_and_slide(velocity)
	
# function of animation
func animate() -> void:
	if velocity != Vector2.ZERO: 
		animation.play("walk")
	else: 
		animation.play("idle")
		
# function verify if the person will going to be left or right		
func verifyDirection() -> void:
	if velocity.x >0:
		sprite.flip_h = true
	elif velocity.x < 0:
		sprite.flip_h = false
	
#functions detect the player or no
func _on_detection_body_entered(body):
	if body.is_in_group("player"): 
		player_ref = body

func _on_detection_body_exited(body):
	if body.is_in_group("player"):
		player_ref = null

