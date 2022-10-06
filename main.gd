extends Node2D

var total = 0

func updateDisplay():
	get_node("totalDisplayLabel").text = str(total)

