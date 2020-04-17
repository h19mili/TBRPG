extends Node2D
class_name Battler_M

export var Max_HP : int
export var CM_HP : int 
export var STR : int 
export var Speed : int
export var Stamina : int
export var DEF : int

signal Mdmg
signal completed

func _ready():
	pass 

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		emit_signal("Mdmg")
		emit_signal("completed")

func _on_Combatant_Dmg():
	CM_HP -= 1
	get_node("KinematicBody2D/Monster_health").value = CM_HP
	print (CM_HP)

func init(Max_HP, CM_HP):
	self.CM_HP = Max_HP * 1.0
	self.CM_HP = clamp(CM_HP * 1.0, 0, Max_HP)

func Healthbar(value):
	self.Max_HP = Max_HP * 1.0
	self.CM_HP = clamp((CM_HP - value), 0, Max_HP)
	update()

func update():
	var percentage = CM_HP / Max_HP
func Stats():
	Speed == 4