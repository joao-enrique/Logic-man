extends CanvasLayer

class_name UI

@onready var center_container = $MarginContainer/CenterContainer
@onready var life_count_label = %LifeCountLabel
@onready var game_score_label = %GameScoreLabel
@onready var game_label = %GameLabel


func set_lifes(lifes):
	life_count_label.text = "%d up" % lifes
	if lifes == 0: 
		game_lost()

func set_score(score):
	game_score_label.text = "SCORE: %d" % score

func game_lost():
	$"../Timer".start()
	$"../Timer".timeout
	GameManager.conectivos.clear()
	get_tree().change_scene_to_file("res://Scenes/dictionary.tscn")

func game_won():
	abrir_porta()
	
var perguntas = preload(
	"res://Scenes/perguntas.gd"
).new()

func abrir_porta():

	var pergunta = perguntas.pegar_pergunta()

	GameManager.pergunta_atual = pergunta

	get_tree().change_scene_to_file(
		"res://Scenes/porta_scene.tscn"
	)
