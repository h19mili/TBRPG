extends Node

func _ready():
	pass 

func _process(delta):
	Attack_action()
	pass

func Attack_action():
	if Input.is_action_just_pressed("Attack"):
		print("attack")
		emit_signal("Dmg")
		get_node("TurnQ").Done("completed")
		pass