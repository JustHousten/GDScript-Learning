extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_enemies(11, 60)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func spawn_enemies(count: int, spacing: int) -> void:
	
	for i in range(count):
		var enemy = ColorRect.new()
		enemy.position = Vector2(i * spacing, 0)
		enemy.size = Vector2(50, 50)
		enemy.color = Color.RED
		enemy.name = "Enemy_" + str(i)
		add_child(enemy)
