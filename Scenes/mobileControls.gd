extends CanvasLayer

@export var player: Player




func _on_btn_up_pressed():
	player.mobile_direction = Vector2.UP


func _on_btn_down_pressed():
	player.mobile_direction = Vector2.DOWN


func _on_btn_left_pressed():
	player.mobile_direction = Vector2.LEFT


func _on_btn_right_pressed():
	player.mobile_direction = Vector2.RIGHT
