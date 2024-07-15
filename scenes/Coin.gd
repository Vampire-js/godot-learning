extends Area2D


@onready var game_manager = %GameManager
@onready var label = $"../../Label"

func _on_body_entered(body):
	print(body)
	label.text = "Score is" + str(game_manager.addPoint())
	queue_free()
