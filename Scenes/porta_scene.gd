extends CanvasLayer

@onready var label_pergunta = $MarginContainer/LabelPergunta
@onready var h_box_container_conectivos = $MarginContainer/VBoxContainer/HBoxContainerConectivos
@onready var resposta_slot = $MarginContainer/VBoxContainer/HBoxContainerExpressao/RespostaSlot
@onready var label_esquerda = $MarginContainer/VBoxContainer/HBoxContainerExpressao/Label
@onready var label_direita = $MarginContainer/VBoxContainer/HBoxContainerExpressao/Label2

var resposta_correta = []
@onready var painel_conectivos = $MarginContainer/VBoxContainer/HBoxContainerConectivos/Panel/HBoxContainer
var conectivo_scene = preload(
	"res://Scenes/conectivo_button.tscn"
)
@onready var btn_dicionario = $MarginContainer/VBoxContainer/DictionaryButton

var tentativas := 3
var erros := 0

@onready var slot = $MarginContainer/VBoxContainer/HBoxContainerExpressao/RespostaSlot

func _ready():

	var pergunta = GameManager.pergunta_atual

	label_pergunta.text = pergunta.texto
	label_esquerda.text = pergunta.esquerda
	label_direita.text = pergunta.direita

	resposta_correta = pergunta.respostas

	for conectivo in GameManager.conectivos:

		var btn = conectivo_scene.instantiate()

		btn.text = conectivo

		painel_conectivos.add_child(btn)

	btn_dicionario.visible = false
		

func _on_button_confirmar_pressed():

	if slot.conectivo in resposta_correta:

		$MarginContainer/VBoxContainer/AnimatedSprite2D.play("default")
		
	else:
		
		erros += 1
		
		if erros >= 3:
			btn_dicionario.visible = true


func proxima_fase():
	
	GameManager.nivel += 1

	GameManager.conectivos.clear()

	get_tree().change_scene_to_file(
		"res://Scenes/main.tscn"
	)

func _on_dictionary_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/dictionary_button.tscn")




func _on_animated_sprite_2d_animation_finished():

	if $MarginContainer/VBoxContainer/AnimatedSprite2D.animation == "default":

		proxima_fase()
