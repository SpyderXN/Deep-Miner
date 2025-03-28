extends parent_spawner



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.score_point >= 5:
		$Timer.stop()
