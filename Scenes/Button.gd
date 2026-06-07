extends Button

func _pressed():

	GameManager.conectivo_selecionado = text

	scale = Vector2(1.2, 1.2)

func _get_drag_data(at_position):

	var preview = duplicate()

	set_drag_preview(preview)

	return text
