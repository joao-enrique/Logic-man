extends Panel

var conectivo := ""

func _can_drop_data(position, data):
	return typeof(data) == TYPE_STRING

func _drop_data(position, data):
	conectivo = data
	$Label.text = data
	
func _gui_input(event):

	if event is InputEventMouseButton:

		if event.pressed:

			colocar_conectivo()

	elif event is InputEventScreenTouch:

		if event.pressed:

			colocar_conectivo()

func colocar_conectivo():

	conectivo = GameManager.conectivo_selecionado

	$Label.text = conectivo
