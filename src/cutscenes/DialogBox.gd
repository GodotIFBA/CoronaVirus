extends Control
# Falas dos personagens
var dialog = [
	{
		"author": "Corona",
		"message": "Então você conseguiu chegar até aqui? Isso não muda nada, a ignorância da população vai continuar a mesma, afinal de contas, não passo de um gripezinha HAHAHA",
	},
	{
		"author": "Player",
		"message": "Sim, a ignorância de muitas pessoas podea até continuar a mesma, mas esses tempos dificeis mostrou o quão forte e adaptaveis nós podemos ser.",
	},
	{
		"author": "Corona",
		"message": "E o que você espera vindo até aqui me confontrar? Conversa fiada não vai me fazer mudar de ideia",
	},
	{
		"author": "Player",
		"message": "eu.. eu.. eu vim te dizer..",
	},
	{
		"author": "Player",
		"message": "[center]SE SAIA![/center]"
	},
	{
		"author": "Player",
		"message": "[center]Sobreviva por 1 minuto aos ataques do vírus[/center]"
	}
]
# Variaveis auxiliares
var dialogIndex = 0
var finished = false

func _ready():
	$RichTextLabel2.visible = false
	resetState()
	loadDialog()
	
func _process(_delta):
	$next.visible = finished
	# Verifica de o jogador apertou `enter`
	if Input.is_action_just_pressed("ui_accept"):
		resetState()
		loadDialog()

# Define a opacidade dos Sprites pra 0
func resetState():
	$Corona.modulate = Color(1, 1, 1, 0)
	$Player.modulate = Color(1, 1, 1, 0)

# Carrega o dialogo
func loadDialog():
	if dialogIndex < dialog.size():
		finished = false
		# Define a opacidade do Sprite pra 1 dependendo do autor da mensagem
		if dialog[dialogIndex].author == "Corona":
			$Tween.interpolate_property($Corona, "modulate", Color(1, 1, 1, 0), Color(1, 1, 1, 1), Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		else:
			$Tween.interpolate_property($Player, "modulate", Color(1, 1, 1, 0), Color(1, 1, 1, 1), Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		# Reseta a visibilidade da messagem pra 0 e faz o efeito das letras aparecendo 
		$RichTextLabel.bbcode_text = dialog[dialogIndex].message
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property($RichTextLabel, "percent_visible", 0, 1, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
	else:
		queue_free()
		get_tree().change_scene("res://src/levels/Level5.tscn")
	dialogIndex += 1

func _on_Tween_tween_completed(_object, _key):
	finished = true
