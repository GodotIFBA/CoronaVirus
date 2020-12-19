extends Area2D

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

func _on_Componente1_body_entered(body):
	Global.componentes +=1
	animation.play("fade out")
