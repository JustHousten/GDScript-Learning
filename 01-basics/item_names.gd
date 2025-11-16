extends Node

var items = ["Trank", "Schwert", "Rüstung", "Erz", "Questgegenstand"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for item in items:
		print(item)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
