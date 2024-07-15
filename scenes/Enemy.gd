extends Node2D

var direction = 1

@onready var rc_right = $RayCastRight
@onready var rc_left = $RayCastLeft
@onready var sprite = $AnimatedSprite2D

func _process(delta):
	if rc_left.is_colliding():
		direction = 1
		sprite.flip_h = false
		
	if rc_right.is_colliding():
		direction = -1
		sprite.flip_h = true
	
	position.x += 60 * delta * direction
