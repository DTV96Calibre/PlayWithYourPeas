
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"
export var DEATH_HEIGHT = 1000

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	if (self.get_global_pos().y > DEATH_HEIGHT):
		print("Died")
		get_parent().increment_bad_pea_death()
		self.queue_free()
