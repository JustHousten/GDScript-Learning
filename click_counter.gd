extends Node2D

signal milestone_reached(count: int)

var click_count = 0
var label: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_button()
	create_label()
	milestone_reached.connect(on_milestone_reached)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func create_label() -> void:
	label = Label.new()
	label.text = "Clicks:  " + str(click_count)
	label.position = Vector2(64, 100)
	label.size = Vector2(250, 50)
	add_child(label)

func create_button() -> void:
	var button = Button.new()
	button.text = "Click me!"
	button.position = Vector2(50, 50)
	button.size = Vector2(100, 50)
	add_child(button)
	
	button.pressed.connect(on_button_clicked)

func on_button_clicked() -> void:
	click_count += 1
	label.text = "Clicks: " + str(click_count)
	print(click_count)
	
	if click_count == 5 or click_count == 10 or click_count == 20:
		milestone_reached.emit(click_count)
		
func on_milestone_reached(count: int) -> void:
	print("Milestone reached: ", count, " clicks!")
