extends Node2D

@export var fish_scenes: Array[PackedScene] # Array of different fish scenes
@export var low_value: int
@export var high_value: int
var can_spawn = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if can_spawn and fish_scenes.size() > 0:
		can_spawn = false
		var fish_scene = fish_scenes[randi() % fish_scenes.size()].instantiate() as Node2D
		fish_scene.position.y = randi_range(low_value, high_value)
		$Timer.start()
		$Spawns.add_child(fish_scene)
	

func _on_timer_timeout() -> void:
	can_spawn = true
