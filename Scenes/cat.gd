extends CharacterBody2D


const speed = 350.0
const JUMP_VELOCITY = -400.0
const FIREBALL = preload("res://Scenes/fireball.tscn")
const SPACE = preload("res://Scenes/FireHands.tscn")
const FIRECAMP = preload("res://Scenes/fire_blast.tscn")



# Get the gravity from the project settings to be synced with RigidBody nodes.
#$AnimatedSprite2D = $AnimatedSprite2D
#@onready var animation = AnimatedSprite2D
#func _ready():
	#func _init_astar(tile_map:TileMap):
		#var astarion = Astar2D.new()
		#v

func move_player(delta):
	var velocity = Vector2.ZERO
	var direction: Vector2 = Vector2(Input.get_axis("move_left", "move_right"), Input.get_axis("move_up", "move_down")).normalized()
	if direction != Vector2(0,0):
		$AnimatedSprite2D.play("Run")
		if direction.x == 1:
			$AnimatedSprite2D.flip_h = true
		elif direction.x == -1:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.play("Idle")
	velocity = direction * speed
	position += velocity * delta
	move_and_slide()
	
func Fire(delta):
	var pos = $FireMarker.global_position
	$FireMarker.look_at(get_global_mouse_position())
	var FireBall = FIREBALL.instantiate()
	FireBall.position = $FireMarker.global_position + Vector2(10,0)
	FireBall.rotation = $FireMarker.rotation
	var direction = Vector2.from_angle($FireMarker.rotation)
	
	FireBall.SUS = Vector2(direction.x * speed * 2, direction.y * speed * 2) 


	get_parent().add_child(FireBall)
	#FireBall.SUS = Vector2(-111,111)
	#print("speed =", speed)
	#print("velocity = ", FireBall.velocity)
	#print("direction = ", direction)
	#print("position = ", FireBall.position)
	#FireBall.move_and_slide()	
	

	
func _process(delta):
	var pos = $FireMarker.global_position
	move_player(delta)
	
	if Input.is_action_just_pressed("ui_up"):
		show()
	if Input.is_action_just_pressed("ui_down"):
		hide()
	if Input.is_action_just_pressed("Shoot"):
		Fire(delta)
		#var FireBall = fireball.instantiate()
		#var Coster = FIRECAMP.instantiate()
		#if $AnimatedSprite2D.flip_h:
			#FireBall.speed = speed * 1.5
			#
			#Coster.process_material.set("direction", Vector3(1,0,0) )
	#
			#Coster.position = $FireMarker.global_position + Vector2(10,0)
			#FireBall.position = $FireMarker.global_position + Vector2(10,0)
			#
		#else:
			#FireBall.speed = (-1.5 * speed)
			#Coster.process_material.set("direction", Vector3(-1,0,0) )
			#
			#Coster.position = $FireMarker.global_position - Vector2(10,0)
			#FireBall.position = $FireMarker.global_position - Vector2(10,0)
#
		#get_parent().add_child(FireBall)
		#get_parent().add_child(Coster)
		#Coster.emitting = true
		#while Coster.emitting == true:
			#print(Coster.emitting)
			#Coster.position = $FireMarker.global_position
		
	if Input.is_action_pressed("ui_right"):	
		var Space = SPACE.instantiate()
		
		
		if $AnimatedSprite2D.flip_h:
			Space.process_material.set("direction", Vector3(100,0,0) )
			Space.position = $FireMarker.global_position + Vector2(20,0) 
		else:
			Space.process_material.set("direction", Vector3(-100,0,0) )
			Space.position = $FireMarker.global_position - Vector2(20,0)
		get_parent().add_child(Space)
		Space.emitting = true
		
		

		
	#if velocity.length() > 0:
		#velocity = velocity.normalized() * speed
		##$AnimatedSprite2D.play
		##$AnimatedSprite2D.animation = "Run"
		###$AnimatedSprite2D.play
	##else:
		##$AnimatedSprite2D.stop
	##if velocity.x !=0:
		##$AnimatedSprite2D.animation = "Run"
		##if velocity.x < 0:
			##$AnimatedSprite2D.flip_h = false
		##else:
			##$AnimatedSprite2D.flip_h = true
	##else:
		##$AnimatedSprite2D.animation = "Idle"
		###$AnimationSpirt2D.flip_v == velocity.x < 0
		#
	#position += velocity * delta
	##print(position)
	##position = position.clamp(Vector2.ZERO, screen_size)
	#
#
	#move_and_slide()
	
