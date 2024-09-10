extends Area2D

@onready var timer = $Timer

func _on_body_entered(body) -> void: #the parameter inside this func decides on enter of which type of node does the function work on
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() # as we got body from the arguments of this function , we will reference the collision shape node of that body and remove it -- it will make the player fall from the level
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
