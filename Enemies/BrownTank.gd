extends Tank

onready var shootTimer = $ShootTimer
onready var player = get_node("../Player")

func _ready():
	.set_color(Color.brown)

func _physics_process(delta):
	._physics_process(delta)
	point(player.global_position - global_position)
	shoot_if_ready()
