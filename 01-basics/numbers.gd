extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var number: int = 1
	
	while number <= 100:
		print(number)
		number += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



# Was brauche ich damit das Script von 1-100 zählt?
# Einen Loop!
# Die Idee -> While(condition < 100) zähle bis 100
# print(i)
# i++
