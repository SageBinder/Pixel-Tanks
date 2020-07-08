extends Tank

onready var player = get_node("../Player")

func _ready():
	.set_color(Color.brown)

func _physics_process(delta):
	._physics_process(delta)
	
	var enemy_to_player = player.global_position - global_position
	point(enemy_to_player)
	shoot_if_line_of_sight()

func shoot_if_line_of_sight():
	var space_state = get_world_2d().get_direct_space_state()
	var result = space_state.intersect_ray(global_position, player.global_position, [ self ])
	
	if result.get("collider") == player:
		shoot_if_ready()
