extends Button

onready var audioS = $AudioStreamPlayer

func _on_CreditButton_mouse_entered():
	grab_focus()
	audioS.play(0.0)
	
#func _on_CreditButton_Pressed():
#	print("entrou")
#	OS.shell_open("https://drive.google.com/file/d/1AtxLUGjoL0dvivJLzRRYymoY_oAVr6G6/view?usp=sharing")
#	audioS.play(0.0)


func _on_CreditButton_focus_entered():
	audioS.play(0.0)



func _on_CreditButton_pressed():
	OS.shell_open("https://drive.google.com/file/d/1AtxLUGjoL0dvivJLzRRYymoY_oAVr6G6/view?usp=sharing")
	audioS.play(0.0)
