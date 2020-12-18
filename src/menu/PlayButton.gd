extends Button

export var reference_path = ""
export(bool) var start_focused = false
onready var audioS = $AudioStreamPlayer

func _ready():
	if(start_focused):
		grab_focus()
	
func _on_PlayButton_mouse_entered():
	audioS.play(0.0)
	grab_focus()

func _on_PlayButton_focus_entered():
	audioS.play(0.0)

func _on_PlayButton_pressed():
	audioS.play(0.0)
	get_tree().change_scene(reference_path)
