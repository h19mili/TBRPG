extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _pressed():
	get_node("/root/Node2D/TurnQ/Combatant").emit_signal("Dmg")
	get_node("/root/Node2D/TurnQ/Combatant").emit_signal("completed")