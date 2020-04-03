extends Node

var old_value
var new_value
var timer = 0.0
const sec = 1.0

signal Mdmg
signal completed

func _ready():
	pass 

func _process(delta):
	#MAttack_action()
	timer += delta
	if timer >= 3.0:
		print("attack")
		timer = 0
		MAttack_action()
	pass

func MAttack_action():
	#if Input.is_action_just_pressed("Mattack"):# = E
		print("attack")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")







