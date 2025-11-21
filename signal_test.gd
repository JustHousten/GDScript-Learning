extends Node2D

signal player_died


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_button()
	connect_signal()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func create_button():
	var button = Button.new()
	button.text = "Kill Player"
	button.position = Vector2(50, 50)
	button.size = Vector2(150, 50)
	
	button.pressed.connect(on_button_pressed)
	
	add_child(button)

func on_button_pressed():
	print("Button wurde geklickt!")
	player_died.emit()

func connect_signal():
	player_died.connect(on_player_died)
	
func on_player_died():
	print("Signal received: Player died")
	print("Game Over!")
