extends AudioStreamPlayer

func _ready():
	self.stream_paused = Global.isMuted

func _on_FinalBossSound_finished():
	play();
