extends Node2D

@export var waste: PackedScene
@export var low_value: int
@export var high_value: int
var can_spawn = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (can_spawn):
		can_spawn = false
		var waste_scene = waste.instantiate() as Area2D
		waste_scene.position.x = randi_range(low_value, high_value)
		$Timer.start()
		$Spawns.add_child(waste_scene)
		Globals.add_waste(1)
	
	#if Globals.score_point >= 10:
		#can_spawn = false
		#$Timer.stop()


func _on_timer_timeout() -> void:
	can_spawn = true
