tool
extends Area2D 

var video_class = preload("res://src/videos/VideoPlayer2.tscn").instance()

func _on_Porta_body_entered(body) -> void:
	get_parent().add_child(video_class)
