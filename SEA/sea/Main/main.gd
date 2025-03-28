extends Node2D

@onready var player: CharacterBody2D = $Player


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if Globals.score_point == 100:
		Globals.reset_points()
		$Spawners/SurfaceSpawner.queue_free()
		$Spawners/SeaLevelSpawner.queue_free()
		TransitionLayer.change_scene("res://GameOver/game_over.tscn")
		
		var tween = get_tree().create_tween()
		tween.tween_property($Player, "speed", 0, 0.1)
	
	if Input.is_action_just_pressed("Home"):
		TransitionLayer.change_scene("res://Menu/menu.tscn")
	elif Input.is_action_just_pressed("Exit"):
		get_tree().quit()
	
	if player.global_position.x < -100 or player.global_position.x > 4500:
		TransitionLayer.change_scene("res://GameOver/game_over.tscn")
	elif player.global_position.y < 95:
		TransitionLayer.change_scene("res://GameOver/game_over.tscn")

	#if Globals.waste_point >= 10 and Globals.score_point == 20:
		#print("You won")
