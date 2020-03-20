extends Node2D
class_name Battler

export var Max_HP : int
var CM_HP = 10
export var Max_Stamina : int
export var Speed : int
export var STR : int 
export var DEF : int
signal Dmg
signal Player
signal completed
onready var Healthbar = get_node("KinematicBody2D/Player_health")

func _ready():
	
	pass 

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("Dmg")
	if Input.is_action_just_pressed("ui_right"):
		print(CM_HP)
		emit_signal("completed")
		print("Jag är klar")
	if Input.is_action_just_pressed("ui_down"):
		print("hi")

func _on_Monster_Mdmg():
	get_node("KinematicBody2D/Player_health").value(1.0)
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
	Speed == 3