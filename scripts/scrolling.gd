extends Node2D

#var speed : int = 700 supprimé car l'autre script parent couvre celui ci

# Appelé à cd frame. 'delta' = elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.x -= delta * speed
	
	if position.x <= -1600:
		position.x = 0
