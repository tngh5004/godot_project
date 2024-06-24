extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("Wasted!")
	Engine.time_scale = 0.5
	var zoom = body.get_node("Camera2D").zoom
	body.get_node("Camera2D").set_zoom(Vector2(zoom.x*1.25,zoom.y*1.25))
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
