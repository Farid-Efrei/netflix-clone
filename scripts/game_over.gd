extends Control


func _on_button_restart_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
