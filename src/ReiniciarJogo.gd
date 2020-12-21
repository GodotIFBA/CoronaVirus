extends Button

export var reference_path = ""
export(bool) var start_focused = false
onready var audioS = $AudioStreamPlayer

func _ready():
		grab_focus()
	
func _on_ReiniciarJogo_mouse_entered():
	grab_focus()


func _on_ReiniciarJogo_pressed():
	get_tree().change_scene("res://src/levels/Level1.tscn")
