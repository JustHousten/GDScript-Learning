extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	grade_calculator(66)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func grade_calculator(points: int) -> String:
	if points >= 90:
		return "A"
	elif points >= 80:
		return "B"
	elif points >= 70:
		return "C"
	elif points >= 60:
		return "D"
	else:
		return "F"
