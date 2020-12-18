extends Area2D

var ContarPartes = 0

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

func _on_ParteVacina_body_entered(body):
	if body.name == "Player":
		animation.play("fade out")
		ContarPartes += 1
		
