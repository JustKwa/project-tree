extends Node2D


@onready 
var branch_spawn_end_point = get_node("branch_end_point")
@onready
var branch = preload("res://leaf.tscn")

func _ready():
	_spawn_branch()
	_spawn_branch()
	_spawn_branch()
	_spawn_branch()


func _spawn_branch():
	var instance = branch.instantiate()
	instance.position.x = 0
	instance.position.y = - (randi() % int(branch_spawn_end_point.position.y))
	add_child(instance)
