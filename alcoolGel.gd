extends Node2D
onready var animation: AnimationPlayer = get_node("AnimationPlayer")
var vel = 250
var intervalo = 2

func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	global_position = (global_position + Vector2(0,1) * vel * delta)
	
	pass


func _on_alcoolGel_body_entered(body):
	if body.name == "Player":
			animation.play("fade out")
