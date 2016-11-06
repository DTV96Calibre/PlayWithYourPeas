
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(false)

func _process(delta):
	self.set_pos(get_global_mouse_pos())

func _input_event(viewport, event, shape_idx):
	if (event.is_pressed()):
		set_process(!is_processing())
		set_linear_velocity(Vector2(0,0))
		set_angular_velocity(0)


