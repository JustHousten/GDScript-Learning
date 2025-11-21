extends Node2D

var max_hp = 100
var current_hp = 10

var health_bar = ProgressBar.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_health_bar(0, 100 , 75)
	take_damage(76)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func create_health_bar(min_value: int, max_value: int, start_value: int) -> void:
	health_bar.min_value = min_value
	health_bar.max_value = max_value
	health_bar.value = start_value
	health_bar.position = Vector2(15, 15)
	health_bar.size = Vector2(150, 25)
	health_bar.modulate = Color.RED
	add_child(health_bar)
	
	
func take_damage(amount: int):
	current_hp -= amount
	current_hp = clamp(current_hp, 0, max_hp)
	health_bar.value = current_hp
	
	if current_hp <= 0:
		print("You died!")
	
	
	
func heal(value: int):
	current_hp += value
	current_hp = clamp(current_hp, 0, max_hp)
	health_bar.value = current_hp
