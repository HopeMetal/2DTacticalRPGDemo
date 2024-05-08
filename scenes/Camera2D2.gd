extends Camera2D

@export var zoom_speed = 3
@export var wasd_speed = 100

var drag = false
var drag_position = Vector2()

var ad_speed = Vector2(wasd_speed,0)
var ws_speed = Vector2(0,wasd_speed)

var zoom_min = Vector2(0.2,0.2)
var zoom_max = Vector2(1.8,1.8)

func _unhandled_input(event):
	## Move camera
	# Move by mouse
	if event.is_action_pressed("DragMouse", true):
		drag = true
		drag_position = get_global_mouse_position()
	elif event.is_action_released("DragMouse"):
		drag = false
	elif event.is_class("InputEventMouseMotion") and drag:
		position -= event.relative
	
	# Move by WASD
	if event.is_action_pressed("ui_left",true):
		position -= ad_speed
	if event.is_action_pressed("ui_right",true):
		position += ad_speed
	if event.is_action_pressed("ui_down",true):
		position += ws_speed
	if event.is_action_pressed("ui_up",true):
		position -= ws_speed
	
	
	# Zoom in and zoom out
	if event.is_action_pressed("ZoomIn",true):
		zoom *= zoom_speed
		if zoom > zoom_max:
			zoom = zoom_max
		
	if event.is_action_pressed("ZoomOut",true):
		zoom /= zoom_speed
		if zoom < zoom_min:
			zoom = zoom_min


func _on_visual_combat_camera_position(pos):
	print(pos)
	position = pos
