extends CharacterBody2D

@export var speed: float = 200.0  # Maximum movement speed
@export var acceleration: float = 800.0  # How fast the player reaches max speed
@export var friction: float = 600.0  # How fast the player slows down when no input
@onready var sfx_move: AudioStreamPlayer = $sfx_move

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	if input_vector.length() > 0:
		input_vector = input_vector.normalized()
		velocity = velocity.move_toward(input_vector * speed, acceleration * delta)
		$GPUParticles2D.emitting = true
		sfx_move.playing = true
		sfx_move.pitch_scale = randf_range(1, 3)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
		$GPUParticles2D.emitting = false
		sfx_move.playing = false
	
	if input_vector.x < 0:
		$Sprite2D.flip_h = false
		$GPUParticles2D.position.x = 15
	elif input_vector.x > 0:
		$Sprite2D.flip_h = true
		$GPUParticles2D.position.x = -15
	
	move_and_slide()
