extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var result = calculate_damage(1, 2, true)
	print("Schaden: ", result)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func calculate_damage(base_damage: int, armor: int, is_critical: bool) -> int:
	var damage = max(1, base_damage - armor)
	
	if is_critical == true:
		damage *= 2
		
	return damage
	

	
	
	
# base_damage - armor = damage
# is_critical true -> damage * 2
