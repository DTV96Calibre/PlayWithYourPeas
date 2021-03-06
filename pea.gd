
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var is_grabbed = false
export var DEATH_HEIGHT = 1000

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	if (is_grabbed):
		self.set_pos(get_global_mouse_pos())
	if (self.get_global_pos().y > DEATH_HEIGHT):
		print("Died")
		get_parent().increment_pea_death()
		self.queue_free()

func _input_event(viewport, event, shape_idx):
	if (event.is_pressed()):
		is_grabbed = !is_grabbed
		set_linear_velocity(Vector2(0,0))
		set_angular_velocity(0)
