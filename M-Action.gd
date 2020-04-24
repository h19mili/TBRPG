extends Node

var old_value
var new_value
var timer = 0.0
const sec = 1.0

signal Mdmg
signal completed
signal Done

func _ready():
	pass 

func _process(delta):
	pass

func MAttack_action():
	#if Input.is_action_just_pressed("Mattack"):# = E
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")

func _onDone():
	yield(get_node("/root/Node2D/TurnQ/Monster"), "Done")
	MAttack_action()
	print("Monster done")