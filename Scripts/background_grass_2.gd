@tool
extends Node2D


const HALF_PI: float = PI/2
const QUARTER_PI: float = PI/4


func _ready() -> void:
	var size: Vector2i = DisplayServer.screen_get_size()

#	var world_border: Line2D  = Line2D.new()
#	world_border.points = [Vector2(0,0), Vector2(size.x, 0), Vector2(size.x, size.y), Vector2(0, size.y)]
#	world_border.closed = true
#	add_child(world_border)

	for clumps: int in range(200):
		var clump_pos: Vector2 = Vector2(randf_range(0, size.x), randf_range(0, size.y))
		for blade: int in range(randi_range(2, 3)):
			var blade_dir: Vector2 = Vector2.from_angle(PI + HALF_PI + randf_range(-QUARTER_PI, QUARTER_PI)) #random angle like:  \|/
			blade_dir *= randf_range(5, 10) #length of the blade
			var blade_end: Vector2 = clump_pos + blade_dir

			var line: Line2D  = Line2D.new()
			line.points = [clump_pos + Vector2(randf_range(-1, 1), 0), blade_end]
			line.default_color = Color.GREEN
			line.antialiased = true
			line.begin_cap_mode = Line2D.LINE_CAP_ROUND
			line.end_cap_mode = Line2D.LINE_CAP_ROUND
			line.width = 1
			add_child(line)
