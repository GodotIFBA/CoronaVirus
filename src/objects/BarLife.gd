extends Node2D

var barraVerde = preload("res://assets/objects/barraVerde.jpeg")
var barraCinza = preload("res://assets/objects/barraCinza.jpeg")
var barraLaranja = preload("res://assets/objects/barraLaranja.jpeg")
var barraAmarela = preload("res://assets/objects/barraAmarela.jpeg")

onready var lifeBar = $LifeBar

func _ready():
	lifeBar.max_value = Global.life
		
func _process(delta):
	global_rotation = 0
	atualizarBarra(Global.life)

func atualizarBarra(value):
	lifeBar.texture_progress = barraVerde
	if value < lifeBar.max_value * 0.7:
		lifeBar.texture_progress = barraAmarela
	if value < lifeBar.max_value * 0.35:
		lifeBar.texture_progress = barraLaranja
	lifeBar.value = value
	
