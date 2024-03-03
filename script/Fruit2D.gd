extends Area2D

var lista =[]
var menu = "res://escena/menu.tscn"

func _on_body_entered(body):
	lista = get_children()
	if lista.size() == 0:
		get_tree().change_scene_to_file(menu)
	queue_free()
	print(lista)
	
	

