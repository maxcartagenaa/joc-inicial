extends Area2D

@export var color_entrada = Color(255,255,255)


func _on_body_entered(body: Node2D) -> void:
	get_parent().call("incrementarPuntos")
	queue_free()
