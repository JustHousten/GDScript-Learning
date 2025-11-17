extends Node

var item_shop = {
	"Heiltrank": 10,
	"Schwert": 150,
	"Schild": 100,
	"Manatrank": 15,
	"Bogen": 200
}

var Früchte = {
	"Apfel": 1,
	"Birne": 2,
	"Banane": 3,
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for item in item_shop:
		print(item, " kostet ", item_shop[item], " Gold")

	for Frucht in Früchte:
		print(Frucht, " kostet ", Früchte[Frucht], " Gold")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Die Aufgabe ist es, einen "Item-Shop" zu schreiben mittels Array.
# Dafür brauchen wir den Itemnamen sowie den dazugehörigen Preis.
# 
