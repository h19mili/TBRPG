extends Node

var old_value
var new_value
var timer = 0.0
const sec = 1.0
onready var cspeed = get_node("/root/Node2D/TurnQ/Combatant").Speed
onready var speed = get_node("/root/Node2D/TurnQ/Monster").Speed
signal Mdmg
signal completed
signal Done

func _ready():
	Rstart()
	pass

func _process(delta):
	pass

func MAttack_action():
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("completed")
		get_node("/root/Node2D/TurnQ/Monster").emit_signal("Mdmg")

func _onDone():
	yield(get_node("/root/Node2D/TurnQ/Monster"), "Done")
	MAttack_action()

func Rstart():
	if speed > cspeed: 
		get_node("/root/Node2D/Timer").start(1)
		pass
