extends RigidBody2D

@export var power:float = 0
@export var rot_power:float = 360

@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D



var f

var can_fire = true;

func _ready():
	# bullet = load("res://bullet.tscn")
	# bullet_spawn = get_node("shoot_point")
	
	pass
	
func _physics_process(delta):
	
<<<<<<< HEAD
<<<<<<< HEAD
	var r = Input.get_axis("turn_left", "turn_right")
=======
	var r = Input.get_axis("turn_left", "turn_left")
>>>>>>> bb5f40e80b73069e85d7ffc68436e713392cb601
=======
	var r = Input.get_axis("left", "right")
>>>>>>> 344b3500755176c7aaf1b180a630655787f55e8f
	apply_torque(rot_power * r)
	
	f = Input.get_axis("back", "forward")
	
	var force = power * -transform.y * f
	## DebugDraw2D.set_text("Force", force)
	if (force.length() > 0):
		apply_central_force(force)
		pass
	# print("right: " + str(transform.x))
	# print("up:" + str(transform.y))
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn.global_position
		b.global_rotation = bullet_spawn.global_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
	
	pass
	

func _on_timer_timeout():
	can_fire = true
	pass # Replace with function body.
