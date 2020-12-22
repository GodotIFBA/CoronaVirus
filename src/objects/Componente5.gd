extends Area2D

onready var animation: AnimationPlayer = get_node("AnimationPlayer")

func _physics_process(delta):
	if Global.componentes == 4:
		visible = true

func _on_Componente5_body_entered(body):
	if(visible == true):
		
		Global.vacina = true
	animation.play("fade out")
