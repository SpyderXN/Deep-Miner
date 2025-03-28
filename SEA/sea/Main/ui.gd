extends CanvasLayer

@onready var game_over_ui: Control = $GameOverUI


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.score_point >= 10:
		game_over_ui.visible = true
	elif  Globals.score_point <= 10:
		game_over_ui.visible = false
