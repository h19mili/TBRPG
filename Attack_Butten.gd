extends Button


func _ready():
	pass

func _process(delta):
	pass

func _pressed():
	get_node("/root/Node2D/TurnQ/Combatant").emit_signal("Dmg")
	get_node("/root/Node2D/TurnQ/Combatant").emit_signal("completed")