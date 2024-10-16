extends Area2D

@export var Bullet : PackedScene

var speed = 750

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Bullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()
	if Input.is_action_just_pressed("shoot"):
		shoot() 
