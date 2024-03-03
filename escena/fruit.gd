extends Node2D

var lista =[]
var menu = "res://escena/menu.tscn"
func _on_fruit_2d_body_entered(body):
	
		lista = get_children()
		
		if lista.size() == 0:
			get_parent().get_node("Label").visible=true
			await (get_tree().create_timer(2.0).timeout)
			get_tree().change_scene_to_file(menu)
		
