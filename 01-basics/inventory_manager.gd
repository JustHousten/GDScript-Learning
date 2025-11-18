extends Node

var inventory = {
	"Schwert": 1,
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_item("Trank", 1)
	print_inventory()
	remove_item("Trank", 1)
	print_inventory()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_item(item_name: String, amount: int) -> void:
	if item_name in inventory:
		inventory[item_name] += amount
	else:
		inventory[item_name] = amount
	
func remove_item(item_name: String, amount: int) -> void:
	if item_name in inventory:
		inventory[item_name] -= amount
		
		if inventory[item_name] <= 0:
			inventory.erase(item_name)
			
func print_inventory() -> void:
	print("---Inventory---")
	for item in inventory:
		print(item, ": ", inventory[item])
