extends Node

func _ready():
	pass 

func _process(delta):
	MAttack_action()
	pass

func MAttack_action():
	if Input.is_action_just_pressed("Mattack"):
		print("attack")
		emit_signal("Mdmg")
		get_node("TurnQ").Done("completed")
