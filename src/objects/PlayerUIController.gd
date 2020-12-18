extends CanvasLayer

func _process(delta: float) -> void:
	$Score.text = str("Auxilio: ", GameState.score)
	
func _on_TryAgain_pressed() -> void:
	get_tree().reload_current_scene()
	get_tree().paused = false


func _on_MainMenu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene("res://src/menu/Background.tscn")


func _on_Quit_pressed() -> void:
	get_tree().quit()


func _on_Back_pressed() -> void:
	get_tree().paused = false
	$Pause.visible = false 
