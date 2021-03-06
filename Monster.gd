extends Node2D
class_name Battler_M

var max_hp : int
var cm_hp : int 
var MSTR : int 
var Speed : int
var MStamina : int
var MDEF : int

signal Mdmg
signal completed
signal Done
onready var Attack = get_node("../Combatant").STR
onready var Mhealth = get_node("KinematicBody2D/Monster_health")

func _ready():
	pass 

func _process(delta):
	pass

func _on_Combatant_Dmg():
	cm_hp += MDEF - Attack
	Mhealth.value = cm_hp
	print(cm_hp)

func init(max_hp, cm_hp):
	self.cm_hp = max_hp * 1.0
	self.cm_hp = clamp(cm_hp * 1.0, 0, max_hp)

func Healthbar(value):
	self.max_hp = max_hp * 1.0
	self.cm_hp = clamp((cm_hp - value), 0, max_hp)
	update()

func update():
	var percentage = cm_hp / max_hp

func initialize(stats : Startingstats):
	max_hp = stats.Max_HP
	MStamina = stats.Max_Stamina
	MSTR = stats.STR
	MDEF = stats.DEF
	Speed = stats.Speed
	cm_hp = max_hp
	pass

func _on_Monstertimer_timeout():
	emit_signal("Done")
	pass 


func _on_Timer_timeout():
	emit_signal("completed")
	emit_signal("Mdmg")
	pass 


func _on_Button_pressed():
	emit_signal("completed")
	emit_signal("Mdmg")
