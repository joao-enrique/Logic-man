extends Control

func _ready():

	var tamanho = get_viewport_rect().size.x * 0.12

	$BtnUp.custom_minimum_size = Vector2(tamanho, tamanho)
	$BtnDown.custom_minimum_size = Vector2(tamanho, tamanho)
	$BtnLeft.custom_minimum_size = Vector2(tamanho, tamanho)
	$BtnRight.custom_minimum_size = Vector2(tamanho, tamanho)
