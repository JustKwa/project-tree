extends Marker2D

enum Direction { LEFT = 0, RIGHT = 1 }

var rotate_angle = Vector2(-10, 60)

@onready var sprite = get_node("Branch")


func _ready():
	var flip_horizontal = randi_range(0, 1)
	match flip_horizontal:
		Direction.LEFT:
			self.rotation_degrees = randf_range(rotate_angle.x, rotate_angle.y)
			var rand_scale_size =randf_range(0.8, 1)
			self.scale = Vector2(rand_scale_size, rand_scale_size) 
			return
		Direction.RIGHT:
			self.rotation_degrees = - randf_range(rotate_angle.x, rotate_angle.y)
			sprite.flip_h = true
			sprite.position = Vector2(3, 4)
			var rand_scale_size =randf_range(0.8, 1)
			self.scale = Vector2(rand_scale_size, rand_scale_size) 
