extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
<<<<<<< HEAD
	if body.name == "jumpgirl":
=======
	if body.name == "jump_dude":
>>>>>>> 94a4982f0cedb7f8377bd6a02c0d27d115fe11f4
		body.score = body.score + 1
		self.queue_free()
	pass # Replace with function body.
