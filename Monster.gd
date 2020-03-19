extends Node2D
#Monster
class_name Battler_M

export var Max_HP : int
export var STR : int 
export var Speed : int 
signal Mdmg
signal completed

func _ready():
	pass 

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		emit_signal("Mdmg")
		emit_signal("completed")

func _on_Combatant_Dmg():
	print (Max_HP)
	pass # Replace with function body.

func Stats():
	Speed == 4