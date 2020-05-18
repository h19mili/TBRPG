tool
extends Node

class_name Job

onready var stats = get_node("..")

export var Startingstats : Resource
func _ready():
	stats.initialize(Startingstats)
	pass 


