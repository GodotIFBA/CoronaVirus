extends Node2D

onready var introAnimation = $AnimationPlayer

func _ready():
	introAnimation.play("fade in")
	yield(introAnimation,"animation_finished")
	introAnimation.play("Fade out ")
	yield(introAnimation,"animation_finished")
	introAnimation.play("fade in 2")
	yield(introAnimation,"animation_finished")
	introAnimation.play("fade out 2")
	yield(introAnimation,"animation_finished")
	get_parent().get_tree().change_scene("res://src/levels/Level1.tscn")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("skip"):
		get_parent().get_tree().change_scene("res://src/levels/Level1.tscn")
