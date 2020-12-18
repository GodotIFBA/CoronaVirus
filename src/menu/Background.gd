extends Node

func _ready():
	$SoundDisabled.visible = false

func _on_Sound_pressed():
	Global.isMuted = !Global.isMuted
	var muted = Global.isMuted
	$BackgroundSound.stream_paused = muted
	$Sound.visible = muted
	$SoundDisabled.visible = muted
	$Sound.visible = !muted

func _on_BackgroundSound_finished():
	$BackgroundSound.play();

func _on_SoundDisabled_pressed():
	_on_Sound_pressed()
