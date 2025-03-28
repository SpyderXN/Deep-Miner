extends Node2D





func _on_exit_pressed() -> void:
	visible = false
	get_tree().quit()


func _on_play_pressed() -> void:
	visible = false
	TransitionLayer.change_scene("res://Main/main.tscn")
