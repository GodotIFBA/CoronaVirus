tool
extends Area2D 

var video_class = load("res://src/videos/VideoPlayer.tscn")

func _on_Porta_body_entered(body) -> void:
	get_parent().add_child(video_class.instance())
