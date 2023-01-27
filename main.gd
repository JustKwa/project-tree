extends Node2D


func _ready():
	randomize()


func _on_button_pressed():
	get_tree().reload_current_scene()
