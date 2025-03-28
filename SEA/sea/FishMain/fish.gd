extends Area2D

@export var speed = 0
var direction = Vector2.RIGHT

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * speed * delta
