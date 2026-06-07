extends Node

var perguntas_random = [

	# E (∧)

	{
		"texto": "Complete a expressão para que seja verdadeira",
		"esquerda": "(5 > 3)",
		"direita": "(8 > 2)",
		"respostas": ["∧"],
		"conectivos": [],
		"slots": 1
	},

	{
		"texto": "Complete a expressão para que seja falsa",
		"esquerda": "(5 > 3)",
		"direita": "(1 > 4)",
		"respostas": ["∧"],
		"conectivos": [],
		"slots": 1
	},

	# OU (∨)

	{
		"texto": "Qual conectivo torna a expressão verdadeira?",
		"esquerda": "(2 > 5)",
		"direita": "(8 > 3)",
		"respostas": ["∨"],
		"conectivos": [],
		"slots": 1
	},

	{
		"texto": "Qual conectivo representa OU?",
		"esquerda": "(1 > 4)",
		"direita": "(9 > 2)",
		"respostas": ["∨"],
		"conectivos": [],
		"slots": 1
	},

	# SE...ENTÃO (→)

	{
		"texto": "Escolha o conectivo correto",
		"esquerda": "(7 > 3)",
		"direita": "(10 > 5)",
		"respostas": ["→"],
		"conectivos": [],
		"slots": 1
	},

	{
		"texto": "Qual símbolo representa 'Se... então'?",
		"esquerda": "(4 > 1)",
		"direita": "(6 > 2)",
		"respostas": ["→"],
		"conectivos": [],
		"slots": 1
	},

	# SE E SOMENTE SE (↔)

	{
		"texto": "Escolha o conectivo correto",
		"esquerda": "(5 > 2)",
		"direita": "(8 > 4)",
		"respostas": ["↔"],
		"conectivos": [],
		"slots": 1
	},

	{
		"texto": "Qual símbolo representa 'Se e somente se'?",
		"esquerda": "(2 < 4)",
		"direita": "(1 < 3)",
		"respostas": ["↔"],
		"conectivos": [],
		"slots": 1
	},

	# NEGAÇÃO

	{
		"texto": "Negue a proposição",
		"esquerda": "",
		"direita": "(2 > 8)",
		"respostas": ["¬"],
		"conectivos": [],
		"slots": 1
	},

	# OU...OU (XOR)

	{
		"texto": "Qual conectivo representa OU...OU?",
		"esquerda": "(3 > 1)",
		"direita": "(5 > 2)",
		"respostas": ["⊕"],
		"conectivos": [],
		"slots": 1
	}

]

var ultima_pergunta = -1

func pegar_pergunta():

	var indice = randi_range(
		0,
		perguntas_random.size() - 1
	)

	while indice == ultima_pergunta:

		indice = randi_range(
			0,
			perguntas_random.size() - 1
		)

	ultima_pergunta = indice

	return perguntas_random[indice]
