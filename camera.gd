
extends Camera2D

# member variables here, example:
# var a=2
# var b="textvar"
export var CAMERA_SPEED = 100

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
func _fixed_process(delta):
	# On every frame, move camera if need be
	var camera_velocity = Vector2(0, 0)
	if (Input.is_action_pressed("ui_right")):
		camera_velocity.x = CAMERA_SPEED
	elif (Input.is_action_pressed("ui_left")):
		camera_velocity.x = -1*CAMERA_SPEED
	self.translate(camera_velocity*delta)
