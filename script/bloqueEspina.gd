extends Area2D

func _ready():
	$AnimationPlayer.play("jump")

func _on_body_entered(body):
	if body.is_in_group("player"):
		body.queue_free()
		get_parent().get_parent()._aparecer()
