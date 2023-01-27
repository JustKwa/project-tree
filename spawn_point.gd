extends Node2D

@export_range(0, 10) var spawn_range: int

@onready var leaf = preload("res://leaf.tscn")


func _ready():
	_spawn_leaf(randi_range(1, 2))
	return


func _spawn_leaf(amount: int):
	for i in range(0, amount):
		var instance = leaf.instanciate()
		add_child(instance)
	return