extends Control

var finalText = [
	"[center]A gente cansou do vírus[/center]", 
	"[center]Pena que ele ainda não cansou da gente.[/center]"
]

var firstText = "[center]Não jogue fora todo o esforço que já fez, continue usando máscara, higienizando as mãos e evite ambientes com muitas pessoas.[/center]"

var finished = false
var finishedSecond = false
var textIndex = 0

func _ready():
	$AnimationPlayer.play("fadeOut")
	$Timer.set_wait_time(4)
	$Timer2.set_wait_time(6)
	$Timer.start()
	$Timer2.start()
	hideLastMenu()
	loadFirstText()
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		winScene()
		
func loadFirstText():
	$RichTextLabel3.bbcode_text = firstText
	$RichTextLabel3.percent_visible = 0
	$Tween.interpolate_property($RichTextLabel3, "percent_visible", 0, 1, 2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	
func loadText():
	if textIndex < finalText.size():		
		finished = false
		$RichTextLabel.bbcode_text = finalText[0]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property($RichTextLabel, "percent_visible", 0, 1, 2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
	textIndex += 1
	
func loadSecondText():
	$RichTextLabel2.bbcode_text = finalText[1]
	$RichTextLabel2.percent_visible = 0
	$Tween.interpolate_property($RichTextLabel2, "percent_visible", 0, 1, 2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	finished = true
		
func winScene():
	$RichTextLabel.visible = false
	$RichTextLabel2.visible = false
	$congratulations.visible = true
	$escaped.visible = true
	$ExitButton.visible = true
	$PlayButton.visible = true
		
func hideLastMenu():
	$congratulations.visible = false
	$escaped.visible = false
	$ExitButton.visible = false
	$PlayButton.visible = false

func _on_Timer_timeout():
	$RichTextLabel3.visible = false
	loadText()
	$Timer.stop()

func _on_Timer2_timeout():
	loadSecondText()
	$Timer2.stop()

