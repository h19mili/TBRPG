extends YSort

class_name TurnQ

onready var active_player = Battler #and Battler_M

func _ready():
	initialize()
	pass


func initialize():
	var Battlers = get_players()
	#print("BATTLERS: ")
	#print(Battlers)
	Battlers.sort_custom(self, 'sort_players')
	#Battlers.raise()
	active_player = get_child(0)
	_next_battler()
	#print(get_child_count())

func play_turn():
	yield(active_player.play_turn(), "completed")
	var new_index : int = (active_player.get_index() + 1) % get_child_count()
	active_player = get_child(new_index)
	_next_battler()
	print ("hej")

static func sort_players(a : Battler_M, b : Battler) -> bool:
	return a.Speed > b.Speed
	
static func tobbe_sort(a = [], b = []):
	return a

func _next_battler():
	var next_player_index : int = (active_player.get_index() + 1) % get_child_count()
	active_player = get_child(next_player_index)

func get_players():
		return get_children()