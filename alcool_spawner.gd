extends Node

var pre_alcool = load("res://src/objects/alcoolGel.tscn")

var intervalo = 2

func _ready():
	set_process(true)
	pass
	

func _process(delta):
	if intervalo > 0:
		intervalo -= delta
	else:
		intervalo = rand_range(0.3,15)
		var alcoolGel = pre_alcool.instance()
		alcoolGel.set_position(Vector2(rand_range(30, 1900), -10))
		get_parent().add_child(alcoolGel)
		

