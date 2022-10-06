extends Node


func _on_mainClickerBtn_pressed():
	get_node("..").total += get_node("../addClickAddAmtNode").clickAddAmt
	get_node("..").updateDisplay()
