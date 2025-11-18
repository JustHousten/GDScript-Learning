extends Node

var shop = {
	"Schwert": 100,
	"Bogen": 175,
	"Dolch": 125,
	"Axt": 150,
	"Schild": 75,
}

var max_preis: int = 0
var teuerster_name = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	find_most_expensive(shop)

	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func find_most_expensive(shop_dict: Dictionary) -> void:
	for item in shop:
		if shop[item] > max_preis:
			max_preis = shop[item]
			teuerster_name = item

	print(teuerster_name, " ist das teuerste Item mit einem Preis von ", max_preis)

#Setze max_preis auf 0
#Setze teuerster_name auf ""
   
	#Für jedes Item im Shop:
		#Wenn item_preis > max_preis:
			#Dann ...?
