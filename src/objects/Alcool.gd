extends Area2D

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

func _on_Alcool_body_entered(body):
		Global.life += 1
		print(Global.life)
		animation.play("fade out")
