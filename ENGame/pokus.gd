extends KinematicBody2D

const GRAVITY = 5 
const JUMP = 250 
const SPEED = 200 

var velocity = Vector2.ZERO

func _physics_process(delta):
	
	velocity.x = 0 
	if(Input.is_action_pressed("move_right")):
		velocity.x = SPEED
	elif(Input.is_action_pressed("move_left")):
		velocity.x = -SPEED
	
	velocity.y += GRAVITY
	
	if (Input.is_action_just_pressed("jump")):
		velocity.y -= JUMP
		
	velocity = move_and_slide(velocity)
