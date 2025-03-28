extends Control


func _on_restart_pressed() -> void:
	TransitionLayer.change_scene("res://Main/main.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
