extends Button

onready var audioS = $AudioStreamPlayer
	
func _on_ExitButton_mouse_entered():
	#grab_focus()
	audioS.play(0.0)

func _on_ExitButton_focus_entered():
	audioS.play(0.0)


func _on_ExitButton_pressed():
	get_tree().quit()

