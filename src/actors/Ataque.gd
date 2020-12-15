extends KinematicBody2D

var motion: Vector2

func _physics_process(delta: float):
	motion.y = 300
	move_and_slide(motion)
	if is_on_wall():
		queue_free()

