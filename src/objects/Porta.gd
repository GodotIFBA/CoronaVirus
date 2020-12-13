tool
extends Area2D 

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "A Propriedade next_scene não pode ser vazia" if not next_scene else ""
	

func _on_Porta_body_entered(body) -> void:
	teleport()


func teleport() -> void:
	animation.play("fade in")
	yield(animation, "animation_finished")
	get_tree().change_scene_to(next_scene)
