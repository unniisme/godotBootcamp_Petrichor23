extends CharacterBody2D

@export var speed = 100
@export var gravity = 120
@export var jumpSpeed = 400

@onready var animatedSprite = $AnimatedSprite2D

# called once at the starting of scene
func _ready():
	pass
	
	
# Called every frame
func _process(delta):
	pass
	
	
# Called Every 1/delta seconds
func _physics_process(delta):
	
	# Input horizontal movement
	velocity.x = speed*(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))
	
	# Gravity
	velocity.y += gravity * delta
	
	# Jumping
	if Input.is_action_just_pressed("Jump"):
		if is_on_floor():
			velocity.y = -jumpSpeed
		
	move_and_slide()
	
	# Function call to animation handler
	_animate()
	
func _animate():
	
	# Orientation
	if (velocity.x > 0 and animatedSprite.flip_h) or (velocity.x < 0 and not animatedSprite.flip_h):
		_flip()
	
	# Jumping animation
	if not is_on_floor():
		animatedSprite.play("jump")
		return
		
	# Running animation
	if velocity.x != 0:
		animatedSprite.play("run")
		return
	
	# Idle animation
	animatedSprite.play("idle")
	

func _flip():
	# function that flips the player sprite
	animatedSprite.flip_h = not animatedSprite.flip_h
	animatedSprite.offset.x = -animatedSprite.offset.x
