extends Node2D

@onready var camera: Camera2D = $"../Camera2D"


func _ready() -> void:
	var window: Window = get_window()
	window.initial_position = Window.WINDOW_INITIAL_POSITION_ABSOLUTE
	window.size = Vector2i(400, 400)
	window.unresizable = true


func _process(delta: float) -> void:
	var window: Window = get_window()
	camera.position = window.position
