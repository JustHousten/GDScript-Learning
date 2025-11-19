extends Node

var time_left = 10.0
var is_running = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_running:
		return
		
	time_left -= delta
	print("Time remaining: ", time_left)
	
	if time_left <=0:
		print("Time's up!")
		is_running = false

# Alternative: set_process(false) | deaktiviert den _process aber dauerhaft
