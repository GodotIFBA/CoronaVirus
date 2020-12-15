extends KinematicBody2D

var motion: Vector2
var original_position = global_position

func _physics_process(delta: float):
	motion.y = 300
	move_and_slide(motion)
	if is_on_wall():
		global_position = original_position
	
