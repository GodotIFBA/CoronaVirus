extends Area2D

onready var animation: AnimationPlayer = get_node("AnimationPlayer")


func _on_Dinheiro_body_entered(body):
	Global.score += 100
	animation.play("fade out")
