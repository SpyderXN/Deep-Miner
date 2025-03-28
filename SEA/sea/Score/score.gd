extends Control

@onready var label: Label = $PanelContainer/MarginContainer/Label
@onready var label_2: Label = $PanelContainer2/MarginContainer/Label2
@onready var label_3: Label = $PanelContainer3/MarginContainer/Label3



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	update_collection()
	update_waste_count()
	show_text()

func update_collection():
	label.text = "Waste Collected: " + str(Globals.waste_point)

func update_waste_count():
	label_2.text = "Pollution Level: " + str(Globals.score_point) + "%"

func show_text():
	label_3.text = "Esc to menu and E to exit"
