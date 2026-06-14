@tool
extends Node2D


const HALF_PI: float = PI/2
const QUARTER_PI: float = PI/4


func _draw() -> void:
	var window: Window = get_window()
	var size: Vector2 = window.size
	
	for clumps: int in range(200):
		var clumpPos: Vector2 = Vector2(randf_range(0, size.x), randf_range(0, size.y))
		for blade: int in range(randi_range(2, 3)):
			var bladeDir: Vector2 = Vector2.from_angle(PI + HALF_PI + randf_range(-QUARTER_PI, QUARTER_PI)) #random angle like:  \|/
			bladeDir *= randf_range(5, 10) #length of the blade
			var bladeEnd: Vector2 = clumpPos + bladeDir
			draw_line(clumpPos + Vector2(randf_range(-1, 1), 0), bladeEnd, Color.GREEN, 1, true)
