extends Node

var _player_file_name : String
var _player : Entity

func load_character(file_name: String) -> void:
	_player_file_name = file_name

	_player = ESS.entity_spawner.load_player(_player_file_name, Vector3.ZERO, 1) as Entity
	
func save() -> void:
	if _player == null or _player_file_name == "":
		return

	ESS.entity_spawner.save_player(_player, _player_file_name)
