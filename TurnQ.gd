extends YSort

class_name TurnQ
signal completed
onready var active_player = Battler
onready var active_monster = Battler_M
onready var Allfighter = active_monster and active_player
var new_index

func _ready():
	initialize()
	pass


func initialize():
	var Battlers = get_players()
	print("BATTLERS: ")
	print(Battlers)
	Battlers.sort_custom(self, 'sort_players')
	Battlers[1].raise()
	print("BATTLERS efter: ")
	print(Battlers)
	Allfighter = get_child(0)
	#print(get_child(0))
	play_turn()
	#active_monster = get_child(0)
	#_next_battler()
	#print(get_child_count())

func play_turn():
	yield(Allfighter, "completed")
	print("fight")
	var new_index : int = (Allfighter.get_index() + 1) % get_child_count()
	Allfighter = get_child(new_index)
	#_next_battler()
	print (get_child_count())

static func sort_players(a : Battler_M, b : Battler) -> bool:
	return a.Speed > b.Speed

func _next_battler():
	var new_index : int = (Allfighter.get_index() + 1) % get_child_count()
	Allfighter = get_child(new_index)

func get_players():
		return get_children()

func Done():
	emit_signal("completed")
	pass 
