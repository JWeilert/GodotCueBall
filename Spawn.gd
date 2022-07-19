extends Node2D

const Billiard = preload("res://Billiard2D.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	spawn()
	pass # Replace with function body.

func spawn():
	randomize()
	var billiard = Billiard.instance()
	var pos = Vector2()
	
	var spawnPointOne = $SpawnP1.global_position.x
	var spawnPointTwo = $SpawnP2.global_position.x
	var spawnPointThree = $SpawnP1.global_position.y
	var spawnPointFour = $SpawnP3.global_position.y
	
	pos.x = rand_range(spawnPointOne, spawnPointTwo)
	pos.y = rand_range(spawnPointThree, spawnPointFour)
	billiard.set_position(pos)
	get_node("Container").add_child(billiard)
	
