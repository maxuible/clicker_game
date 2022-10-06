extends Node

var clickAddAmt = 1

func _on_addClickAddAmtBtn_pressed():
	if(get_node("..").total >= 5):
		clickAddAmt += 1
		get_node("..").total -= 5
		get_node("..").updateDisplay()
