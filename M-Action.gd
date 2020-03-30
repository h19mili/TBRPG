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
	timer += delta
	if timer >= 1.0:
		timer = 0.0
		old_value = timer + 1.0
		new_value  =  old_value + 1
		#self.set_value(self.get_value() - 1)
		MAttack_action()
		print(new_value)
	pass

func MAttack_action():
	if Input.is_action_just_pressed("Mattack"):# = E
		print("attack")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")







