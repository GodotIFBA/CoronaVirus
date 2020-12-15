extends KinematicBody2D

var vel = 10
var rot = 0

func _ready():
	set_process(true)
	rot = rand_range(-4, 4)
	pass
	
func _process(delta):
	global_position = (global_position + Vector2(0,1) * vel * delta)
	rotate(rot * delta)
	pass
	
