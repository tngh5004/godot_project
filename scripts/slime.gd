extends Node2D

const SPEED = 60

var direction = -1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_down = $RayCastDown
@onready var animated_sprite = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		direction = +1
		animated_sprite.flip_h = false
	elif ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	#if not ray_cast_down.is_colliding():
		#position.y += 10 * delta
	#if ray_cast_down.is_colliding():
		#position.y -= SPEED * delta
	
	position.x += direction * SPEED * delta
