extends Node

var load_corona = preload("res://src/Ataque.tscn")
var interval = 2

func _ready():
	set_process(true)
	
	pass
	
func _process(delta):
	if interval > 0:
		interval -= delta
	else:
		interval = rand_range(0.3, 1)
		var ataque = load_corona.instance()
		ataque.set_pos(-40, rand_range(30, 610), -40)
		get_owner().add_child(ataque)
	pass

