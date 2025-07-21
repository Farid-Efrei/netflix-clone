extends Node

enum ObstaclePosition {NONE, UP, DOWN}

@export var obstacle : PackedScene
@export var fuel : PackedScene

var last_obstacle_position : ObstaclePosition = ObstaclePosition.NONE
var dynamic_objects_speed : int = 700
var spawned_object_position_x : int = 1700
var health_decrease_speed : int = 2
var health_increase_by_fuel : int = 5
var health : float = 100
var score : float = 0

# Appelé à cd frame. 'delta' = elapsed time since the previous frame.
func _process(delta: float) -> void:
	for dynamic_object in get_tree().get_nodes_in_group("DynamicObject"):
		dynamic_object.position.x -= delta * dynamic_objects_speed
	
	if health > 0 :
		health -= delta * health_decrease_speed
		$"Control(UI)/ProgressBar(HealthBar)".value = health
	else: 
		game_over()
	
	# MAJ du Score: 
	score += delta
	var formatted_score = str(score)
	var decimal_index = formatted_score.find(".")
	formatted_score = formatted_score.left(decimal_index + 3)
	$"Control(UI)/ProgressBar(HealthBar)/Label(Score)".text = formatted_score
	


func _on_timer_spawner_obstacle_timeout() -> void:
	#pass # Replace with function body.
	var random = randi() % 2
	var obstacle_instance = obstacle.instantiate()
	add_child(obstacle_instance)
	obstacle_instance.body_entered.connect(_on_obstacle_collided)
	obstacle_instance.position.x = spawned_object_position_x
	
	if random == 0:
		obstacle_instance.position.y = 200
		last_obstacle_position = ObstaclePosition.UP
	else: 
		obstacle_instance.position.y = 800
		obstacle_instance.scale.y *= -1
		last_obstacle_position = ObstaclePosition.DOWN


func _on_timer_spawner_fuel_timeout() -> void:
	# pass # Replace with function body.
	var random_position = randi() % 3
	if random_position == 0 and last_obstacle_position == ObstaclePosition.UP:
		return
	if random_position == 2 and last_obstacle_position == ObstaclePosition.DOWN:
		return
	var fuel_instance = fuel.instantiate()
	add_child(fuel_instance)
	fuel_instance.body_entered.connect(_on_fuel_collided.bind(fuel_instance))
	fuel_instance.position.x = spawned_object_position_x
	fuel_instance.position.y = 300 + random_position * 200

func _on_fuel_collided(body: Node2D, fuel_instance: Area2D) -> void:
	if body.is_in_group("Player"):
		health += health_increase_by_fuel
	
		if health > 100:
			health = 100
			fuel_instance.queue_free()
	
func _on_obstacle_collided(body: Node2D) -> void:
	if body.is_in_group("Player"):
		#print("GameOver Bouh !!!")
		game_over()
		
func game_over() -> void: 
	$"Control(GameOver)".show()
	get_tree().paused = true
