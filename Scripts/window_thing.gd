extends SubViewportContainer

@onready var sub_viewport: SubViewport = $SubViewport
@onready var world: Node2D = $SubViewport/World

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	var screen: Vector2 = DisplayServer.screen_get_size()
	var mouse: Vector2 = DisplayServer.mouse_get_position()
	var center: Vector2 = mouse - size/2.0
	var maxClamp: Vector2 = screen - size
	var clampX: float = clamp(center.x, 0, maxClamp.x)
	var clampY: float = clamp(center.y, 0, maxClamp.y)
	position = Vector2(clampX, clampY)
	
	world.position = -position
	
	pass
