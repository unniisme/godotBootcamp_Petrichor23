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
	
	velocity.x = speed*(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))
	velocity.y += gravity * delta

	if Input.is_action_just_pressed("Jump"):
		if is_on_floor():
			velocity.y = -jumpSpeed
		
	move_and_slide()
	
	_animate()
	
func _animate():
	
	if not is_on_floor():
		animatedSprite.play("jump")
		return
		
	
	if velocity.x != 0:
		animatedSprite.play("run")
		return
	
	animatedSprite.play("idle")
