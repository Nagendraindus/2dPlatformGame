extends Node

var score = 0
@onready var score_label = $Score
func add_score():
	score+=1
	score_label.text = "brave!! you made " +str(score)+ "coins"
	#print(score) 


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
