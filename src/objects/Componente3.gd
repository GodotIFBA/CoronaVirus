extends Area2D

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

func _on_Componente3_body_entered(body):
	animation.play("fade out")
	Global.componentes += 1