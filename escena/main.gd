extends  Node2D

var jugador_scene = preload("res://escena/player.tscn")
var checkpoint = false 

func _ready():
	_aparecer()
	
func _aparecer():
	var nuevo_jugador = jugador_scene.instantiate()
	if !checkpoint:
		nuevo_jugador.position = $spam_player.position
	else:
		nuevo_jugador.position = $checkPoint.position
	add_child(nuevo_jugador)
  
