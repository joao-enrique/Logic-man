extends Area2D

class_name Pellet

signal pellet_eaten(should_allow_eating_ghosts: bool)

@export var should_allow_eating_ghosts = false
@export var simbolo := ""

@onready var label = $Label

func _ready():

	simbolo = GameManager.pegar_conectivo_aleatorio()

	if label:
		label.text = simbolo

func _on_body_entered(body):

	if body is Player:

		GameManager.adicionar_conectivo(simbolo)

		pellet_eaten.emit(should_allow_eating_ghosts)

		queue_free()
