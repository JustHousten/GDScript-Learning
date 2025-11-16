extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var parameter = 313
	var result = even_or_odd(parameter)
	if result:
		print(parameter, " ist gerade!")
	else:
		print(parameter, " ist ungerade!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Ich soll eine func erstellen, die sagt ob eine Zahl gerade oder ungerade ist.


func even_or_odd(parameter: int) -> bool:
	if parameter % 2 == 0:
		return true
	else:
		return false

		
