extends Node

var waste_collected: int
var waste_point: int = 0

var score: int
var score_point: int = 0

func calculate_waste(value):
	waste_collected = waste_point + value
	waste_point = waste_collected

func add_waste(value):
	score = score_point + value
	score_point = score

func remove_waste(value):
	score = score_point - value
	score_point = score

func reset_points():
	waste_point = 0
	score_point = 0
