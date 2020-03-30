extends Node2D

signal Dmg
signal completed

func _ready():
	pass 

func _process(delta):
	Attack_action()
	pass

func Attack_action():
	if Input.is_action_just_pressed("Attack"):# = Q
		get_node("/root/Node2D/TurnQ/Combatant").emit_signal("Dmg")
		get_node("/root/Node2D/TurnQ/Combatant").emit_signal("completed")
		print("attack")
