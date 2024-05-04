extends CharacterBody2D

const FIREBLAST = preload("res://Scenes/fire_blast.tscn")
var SUS = Vector2(10, -100)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _move_move(vel):
	velocity = vel
	#position += velocity * delta
	move_and_slide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_move_move(SUS)
	##position += transform.x * speed
	#vel.x = speed * delta
	#translate(vel)
	#velocity = Vector2(11,-111)
	##position += velocity * delta
	#move_and_slide()
	#print(vel, " * ", speed, " * ", delta, " = ", vel*speed*delta)


	


func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()

	# Replace with function body.

func _on_area_2d_area_entered(area):
	if area.name == "enemy":
		var FireBlast = FIREBLAST.instantiate()
		FireBlast.position = $".".global_position
		get_parent().add_child(FireBlast)
		FireBlast.emitting = true
		queue_free()# Replace with function body.

# Replace with function body.

#
#func _on_area_2d_body_entered(CharacterBody2D):
	#if CharacterBody2D.name == "Enemy":
		#queue_free()
	# Replace with function body.



