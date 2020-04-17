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
	#yield(Battler_M, "completed")
	#print("hi")
	timer += delta
	if timer >= 5.0:
		timer = 0
		MAttack_action()


func MAttack_action():
	#if Input.is_action_just_pressed("Mattack"):# = E
		print("attack")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")







