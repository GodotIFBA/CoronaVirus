extends Node2D

signal mostrou
signal escondendo

func _process(delta: float) -> void:
	$Label.text = str("Voce pegou ", Global.componentes, "/4 Componentes")

func _ready():
	hide()
	get_parent().connect("mostrou", self, "on_mostrou")
	get_parent().connect("escondendo", self, "on_escondendo")

func on_mostrou():
	emit_signal("mostrou")
	show()
	
func on_escondendo():
	emit_signal("escondendo")
	hide()
	
