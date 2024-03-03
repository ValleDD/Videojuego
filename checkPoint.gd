extends Area2D

func _ready():
	$AnimatedSprite2D.play("idle")
func _on_body_entered(body):
	if body.name == "Player":
		$AnimatedSprite2D.play("idle2")
		await ($AnimatedSprite2D.animation_finished)
		$AnimatedSprite2D.play("idle3")
		get_parent().checkpoint = true
