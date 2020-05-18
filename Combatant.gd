extends Node2D
class_name Battler

var Max_HP : int
var CM_HP : int 
var Stamina : int
var Speed : int
var STR : int 
var DEF : int

signal Dmg
signal Player
signal completed
signal Done
onready var Health = get_node("KinematicBody2D/Player_health")
onready var Mattack = get_node("../Monster").MSTR
onready var MMattack = get_node("../Monster2").MSTR

func _ready():
	pass 

func _process(delta):
	pass

func _on_Monster_Mdmg():
	CM_HP -= DEF + MMattack
	CM_HP += DEF - Mattack
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
	pass

func Butten_pressed():
	get_node("../../Monstertimer").start(3)
	emit_signal("Done")
	pass

func initialize(stats : Startingstats):
	Max_HP = stats.Max_HP
	Stamina = stats.Max_Stamina
	STR = stats.STR
	DEF = stats.DEF
	Speed = stats.Speed
	CM_HP = Max_HP
	pass





