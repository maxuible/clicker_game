extends Node

var total = 1000

func _ready():
	updateDisplay()




var coinPerClick = 1
var coinPerClickCost = 5

var coinPerSecAmt = 0
var coinPerSecCost = 100


func _on_ClickerBtn_pressed():
	total += coinPerClick
	updateDisplay()


func updateDisplay():
	get_node("TotalCLab").text = str(total)
	


func _on_1CoinPerClickBtn_pressed():
	if(total >= coinPerClickCost):
		coinPerClick += 1
		total -= coinPerClickCost
		coinPerClickCost += 5 + round(coinPerClick * .10)
		get_node("ClickerBtn/coinsPerClick").text =str(coinPerClick)
		get_node("1CoinPerClickBtn/cost").text = str(coinPerClickCost)
	updateDisplay()


func _on_1CoinPerSec_pressed():
	if(total >= coinPerSecCost):
		coinPerSecAmt += 1
		total -= coinPerSecCost
		coinPerSecCost += 100 + round(coinPerSecCost * .10)
		get_node("1CoinPerSec/cost").text = str(coinPerSecCost)
		get_node("1CoinPerSec/amt").text = str(coinPerSecAmt)
	updateDisplay()





func _on_1CoinPerSecTimer_timeout():
	total += coinPerSecAmt
	updateDisplay()
