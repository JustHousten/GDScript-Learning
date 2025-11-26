extends Node2D

signal red_pressed
signal green_pressed
signal blue_pressed

var red_button: Button
var green_button: Button
var blue_button: Button

var click_counter = 0
var last_button_pressed_text
var last_button_color
var button_label: Label
var counter_label: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_buttons()
	create_label()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func create_buttons() -> void:
	red_button = Button.new()
	red_button.text = "RED"
	red_button.modulate = Color.RED
	red_button.position = Vector2(50, 50)
	red_button.size = Vector2(100, 50)
	
	
	green_button = Button.new()
	green_button.text = "GREEN"
	green_button.modulate = Color.GREEN
	green_button.position = Vector2(250, 50)
	green_button.size = Vector2(100, 50)
	
	blue_button = Button.new()
	blue_button.text = "BLUE"
	blue_button.modulate = Color.BLUE
	blue_button.position = Vector2(450, 50)
	blue_button.size = Vector2(100, 50)
	
	red_button.pressed.connect(on_red_button_pressed)
	green_button.pressed.connect(on_green_button_pressed)
	blue_button.pressed.connect(on_blue_button_pressed)
	
	add_child(red_button)
	add_child(green_button)
	add_child(blue_button)
	

func create_label() -> void:
	button_label = Label.new()
	button_label.text = "Color name"
	button_label.modulate = Color.BLACK
	button_label.position = Vector2(50, 200)
	button_label.size = Vector2(400, 100)
	
	counter_label = Label.new()
	counter_label.text = "Clicks: " + str(click_counter)
	counter_label.position = Vector2(50, 400)
	counter_label.size = Vector2(400, 100)
	
	add_child(button_label)
	add_child(counter_label)


func on_red_button_pressed() -> void:
	click_counter += 1
	print(click_counter)
	button_label.text = red_button.text
	button_label.modulate = red_button.modulate
	counter_label.text = "Clicks: " + str(click_counter)
	
	red_pressed.emit()
		
func on_green_button_pressed() -> void:
	click_counter += 1
	print(click_counter)
	button_label.text = green_button.text
	button_label.modulate = green_button.modulate
	counter_label.text = "Clicks: " + str(click_counter)
	
	green_pressed.emit()
	
func on_blue_button_pressed() -> void:
	click_counter += 1
	print(click_counter)
	button_label.text = blue_button.text
	button_label.modulate = blue_button.modulate
	counter_label.text = "Clicks: " + str(click_counter)
	
	blue_pressed.emit()
