extends Area2D


@onready var timer = $Timer
@onready var player_animation = $AnimatedSprite2D

func _on_body_entered(body):
	print("you died")
	print(body.get_node("AnimatedSprite2D").animation)
	body.get_node("AnimatedSprite2D").play("death")
	Engine.time_scale = 0.5
	
	timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1	
	get_tree().reload_current_scene()
