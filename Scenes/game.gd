extends Node

const SPEED = Vector2(200, 200)
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var enemy = $Enemy
	#enemy.TargetPos = $Cat.global_position
	#enemy.direction = (enemy.TargetPos - enemy.position).normalized() * SPEED
	#enemy._move_move(enemy.direction)
	

	
	#func _init(enemy, params):
  #enemy.dir = (enemy.target.position - enemy.position).normalized()
#
#func _physics_process(delta):
  #var motion = enemy.dir * enemy.speed
  #enemy.move_and_slide(motion)
	pass
#func _init_astat(tile_map: TileMap):
	#astar = AStar2D.new()
	#var cells = tile_map.get_used_cells()
	#cells.sort()
	#
	#for i in range(cells.size()):
		#var cell = cells[i]
		#astar.add_point(i, tile_map.map_to_world())
