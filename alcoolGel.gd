extends Node2D

var vel = 250
var intervalo = 2

func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	global_position = (global_position + Vector2(0,1) * vel * delta)
	
	pass
