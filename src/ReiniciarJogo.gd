extends Button

func _on_Button_pressed():
	Global.life = Global.max_life
	Global.score = 0
	Global.componentes = 0
	get_tree().change_scene("res://src/menu/Background.tscn")
