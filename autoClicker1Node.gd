extends Node

#var total = get_node("..").total


var numOfAutoClickers = 0

func _process(delta):
	get_node("autoClicker1HSlider").value = get_node("autoClicker1Timer").time_left * 100
	


func _on_autoClicker1Button_pressed():
	if (get_node("..").total >= 10):
		get_node("..").total -= 10
		numOfAutoClickers +=1
		get_node("..").updateDisplay()


func _on_autoClicker1Timer_timeout():
	get_node("..").total += numOfAutoClickers
	get_node("..").updateDisplay()
