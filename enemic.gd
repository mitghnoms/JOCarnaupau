extends KinematicBody2D

var move = Vector2.ZERO
var velocitat = 150
var vides = 3

func _physics_process(delta):
	
	move = move.normalized() * velocitat
	move = move_and_slide(move)
	
func _on_detector_area_entered(area):
	if area != self:
		vides -= 1
	
	if vides == 0:
		queue_free()
