extends CharacterBody2D

var velocidad = 100
var gravedad = 600
var salto =380


func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	velocity.y += gravedad*delta
	$Anima.flip_h = false
	if Input.is_action_pressed("derecha"):
		velocity.x = velocidad
	elif Input.is_action_pressed("izquierda"):
		velocity.x = -velocidad 
		$Anima.flip_h = true	
	else:
		velocity.x = 0
	if is_on_floor():
		if Input.is_action_just_pressed("z"):
			velocity.y = -salto
			
	else:
		if Input.is_action_just_pressed("z"):
			velocity.y += 250
	move_and_slide()
	
	if is_on_floor():
		if velocity.x == 0:
			$Anima.play("idel")
		else:
			$Anima.play("run")
	else:
		$Anima.play("jump")


