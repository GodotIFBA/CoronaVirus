extends Button

func _on_Button_pressed():
	Global.life = 6
	Global.score = 0
	Global.componentes = 0
	get_tree().change_scene("res://src/menu/Background.tscn")
