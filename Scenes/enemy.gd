extends CharacterBody2D

var direction = Vector2(0,0)
var TargetPos = Vector2(0,0)
const FIREHANDS = preload("res://Scenes/FireHands.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
func _move_move(direction):
	velocity = direction
	#position += velocity * delta
	move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_move_move
	pass

#func _on_visible_on_screen_notifier_2d_screen_exited():
	#queue_free()


func _on_enemy_area_entered(area):
	if area.name == "FireBall_area":
		var CampFire = FIREHANDS.instantiate()
		CampFire.position = $".".global_position
		get_parent().add_child(CampFire)
		CampFire.process_material.set("direction", Vector3(0,0,0) )
		
		CampFire.emitting = true
		position = TargetPos - Vector2(randi_range(-300, 300), randi_range(-300, 300))
		print(randi_range(100, 400)) # Replace  # Replace with function body.
