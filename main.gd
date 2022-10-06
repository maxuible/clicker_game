extends Node2D

var total = 0



func _ready():
	updateDisplay()

func updateDisplay():
	get_node("totalDisplayLabel").text = str(total)
	get_node("addClickAddAmtNode/addClickAddAmtCntLabel").text = "Amt Per Click: \n"+str(get_node("addClickAddAmtNode").clickAddAmt)
	get_node("autoClicker1Node/amtLabel").text = "Amt Of AutoClicker :\n"+str(get_node("autoClicker1Node").numOfAutoClickers)
