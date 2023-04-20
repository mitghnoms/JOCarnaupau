extends KinematicBody2D

var moviment = Vector2()
var s = 210
var vides = 3
onready var personatge = get_tree().get_root().get_node("Joc/personatge")
func _process(delta):
	print (personatge)
	moviment = position.direction_to(personatge.global_position)
	var dir = personatge.position - position
	get_node("AnimatedSprite").rotation = dir.angle()
	moviment = move_and_slide(moviment * s)

func _on_hitbox_area_entered(area):
	if area != self:
		if area != $detector:
			vides -= 1
	if vides == 0:
		queue_free()
#func _moure(body):
#				moviment = position.direction_to(body.global_position)
#				var dir = body.position - position
#				get_node("AnimatedSprite").rotation = dir.angle()
#				moviment = move_and_slide(moviment * s)
#
#
#func _on_detector_body_entered(body):
#	if body != self:
#		if body.is_in_group("personatge"):
#			print("detectat")
#			_moure(body)
			
			
			
