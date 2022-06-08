extends Node2D

func _on_ZonaJatuh_body_entered(body):
	if body.name == 'Player':
		get_tree().change_scene("res://src/scene/Level1.tscn")
