tool
extends Area2D 

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

export(String, FILE, "*tscn") var next_scene

func _on_Porta_body_entered(body) -> void:
	teleport()


func teleport() -> void:
	animation.play("fade in")
	yield(animation, "animation_finished")
	get_tree().change_scene("res://src/levels/Level5.tscn")
