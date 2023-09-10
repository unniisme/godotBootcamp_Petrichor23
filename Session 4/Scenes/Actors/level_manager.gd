extends Node2D

var score = 0
@export_file var nextLevel : String

func _increment_score():
	score += 1
	print("score = " + str(score))
	

func _switch_level():
	get_tree().change_scene_to_file(nextLevel)
	

func _on_coin_collected(body):
	if body.name == "Player":
		_increment_score()


func _on_end_area_body_entered(body):
	if body.name == "Player":
		_switch_level()
