extends KinematicBody2D

const GRAVITY = 5 
const JUMP = 250 
const SPEED = 200

var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity.x = 0 
	if (Input.is_action_just_pressed("jump")) and is_on_wall():
		velocity.y -= JUMP
	elif(Input.is_action_pressed("move_right")):
		velocity.x = SPEED
	elif(Input.is_action_pressed("move_left")):
		velocity.x = -SPEED
	
	velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity,Vector2.RIGHT)
