
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
export var DEATHS_TIL_LOSS = 4
var DEAD_PEAS = 0
export var BAD_PEA_DEATHS_TIL_WIN = 1
var DEAD_BAD_PEAS = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var complete_dialog = preload("res://level_complete_dialog.tscn")
	var complete_dialog_node = complete_dialog.instance()
	add_child(complete_dialog_node)

func increment_pea_death():
	self.DEAD_PEAS += 1
	print("Dead peas:", DEAD_PEAS)
	check_state()

func increment_bad_pea_death():
	self.DEAD_BAD_PEAS += 1
	print("Dead enemy peas:", DEAD_BAD_PEAS)
	check_state()

func check_state():
	if DEATHS_TIL_LOSS <= DEAD_PEAS:
		print("You lose")
	elif BAD_PEA_DEATHS_TIL_WIN <= DEAD_BAD_PEAS:
		print("You win!")
		get_node("level_complete").popup()