extends Area2D

@onready var game_manager = %"GAME MANAGER"
@onready var animation_player = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_score()
	#queue_free()
	animation_player.play("new_animation")
	
	
	

	#animation_player.play("pickup")
