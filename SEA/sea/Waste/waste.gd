extends Area2D

@export var speed: int
var direction = Vector2.DOWN
@onready var sfx: AudioStreamPlayer2D = $sfx

func _process(delta: float) -> void:
	position += direction * speed * delta

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		sfx.play()
		Globals.calculate_waste(1)
		Globals.remove_waste(1)
		queue_free()
	
	if body.name == "OceanFloor":
		queue_free()
