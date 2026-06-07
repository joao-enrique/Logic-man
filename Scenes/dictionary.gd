extends Control


func _ready():
	$AnimationPlayer.play("main")


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
