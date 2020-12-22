extends VideoPlayer

func _ready():
	get_tree().set_pause(true)

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		_on_VideoPlayer_finished()

func _on_VideoPlayer_finished():
	get_tree().set_pause(false)
	get_tree().change_scene("res://src/levels/Level2.tscn")
