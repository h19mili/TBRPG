extends Node2D
class_name Battler

export var Max_HP : int
var CM_HP = 40
export var Max_Stamina : int
export var Speed : int
export var STR : int 
export var DEF : int
signal Dmg
signal Player
signal completed
signal Done
onready var Health = get_node("KinematicBody2D/Player_health")
# var M_STR = Battler_M

func _ready():
	pass 

func _process(delta):
	pass

func _on_Monster_Mdmg():
	CM_HP -= 1
	Health.value = CM_HP
	print (CM_HP)

func init(Max_HP, CM_HP):
	self.CM_HP = Max_HP * 1.0
	self.CM_HP = clamp(CM_HP * 1.0, 0, Max_HP)

func Healthbar(value):
	self.Max_HP = Max_HP * 1.0
	self.CM_HP = clamp((CM_HP - value), 0, Max_HP)
	update()
	CM_HP < 0 

func update():
	var percentage = CM_HP / Max_HP

func Stats():
	Speed == 3

func Butten_pressed():
	get_node("../../Monstertimer").start(3)
	emit_signal("Done")
	pass
