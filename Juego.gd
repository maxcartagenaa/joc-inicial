extends Node2D

var puntos = 0

func _ready() -> void:
	pass
func incrementarPuntos():
	puntos += 1 
	get_node("MarginContainer/VBoxContainer/LabelPuntos").text = "Puntos:" + str(puntos)
