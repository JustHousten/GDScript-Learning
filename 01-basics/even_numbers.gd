extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for i in range(1, 101):
		if i % 2 == 0:
			print(i)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Was brauche ich, damit ich von 1-100 nur gerade Zahlen ausgeben kann?
# Modulo Operator % der prüft, ob eine Zahl gerade ist.
# Ich soll einen For-Loop nutzen
