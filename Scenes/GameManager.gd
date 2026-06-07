extends Node

var conectivos: Array[String] = []
var nivel := 1

var pergunta_atual = {}

var conectivo_selecionado = ""

const TODOS_CONECTIVOS = [
	"∧", # E
	"∨", # OU
	"¬", # NÃO
	"→", # SE...ENTÃO
	"↔", # SE E SOMENTE SE
	"⊕"  # OU...OU
]

func adicionar_conectivo(simbolo: String):
	if simbolo not in conectivos:
		conectivos.append(simbolo)

func limpar_conectivos():
	conectivos.clear()

func pegar_conectivo_aleatorio() -> String:
	return TODOS_CONECTIVOS.pick_random()
	
