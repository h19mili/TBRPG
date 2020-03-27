extends Node

signal Mdmg
signal completed

func _ready():
	pass 

func _process(delta):
	MAttack_action()
	pass

func MAttack_action():
	if Input.is_action_just_pressed("Mattack"):# = E
		print("attack")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")
