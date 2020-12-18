extends Button

onready var audioS = $AudioStreamPlayer

func _on_CreditButton_mouse_entered():
	grab_focus()
	audioS.play(0.0)
	
func _on_CreditButton_Pressed():
	#get_tree().change_scene(reference_path)
	audioS.play(0.0)


func _on_CreditButton_focus_entered():
	audioS.play(0.0)

