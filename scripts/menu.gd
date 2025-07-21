extends Control



func _on_button_play_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
