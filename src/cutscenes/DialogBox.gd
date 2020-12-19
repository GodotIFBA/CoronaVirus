extends Control
# Falas dos personagens
var dialog = [
	{
		"author": "Corona",
		"message": "Oi essa é a primeira fala",
	},
	{
		"author": "Corona",
		"message": "Segunda fala do corona",
	},
	{
		"author": "Player",
		"message": "Essa é a primeira fala do jogador",
	},
	{
		"author": "Corona",
		"message": "Ultima fala do corona",
	},
	{
		"author": "Player",
		"message": "Essa é a primeira fala do jogador",
	},
	{
		"author": "Player",
		"message": "Essa é a primeira fala do jogador",
	},
]
# Variaveis auxiliares
var dialogIndex = 0
var finished = false

func _ready():
	resetState()
	loadDialog()
	
func _process(delta):
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
	dialogIndex += 1

func _on_Tween_tween_completed(object, key):
	finished = true
