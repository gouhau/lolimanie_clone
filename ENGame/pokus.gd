extends KinematicBody2D

const GRAVITY = 500

const WALK_SPEED = 200

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += delta * GRAVITY

	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = -500
	elif Input.is_action_pressed("move_left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("move_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0
	move_and_slide(velocity, Vector2(0, -1))
