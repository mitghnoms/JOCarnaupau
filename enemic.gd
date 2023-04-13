extends KinematicBody2D

var speed = 50
var vides = 3

func hostile(time):
	var target = get_node("res://personatge.tscn")
	#if target:
	
	var velocity = global_position.direction_to(target.global_position)
	#position of player minus enemy position will give us direction
	var dir = target.position - position

	#get angle from direction (Note roation is in radians)  
	get_node("AnimatedSprite").rotation = dir.angle()
	velocity = move_and_slide(velocity * speed * time)
#func _physics_process(delta):
#	move = position.direction_to(personatge.gloval_position)
#	var dir = personatge.position - position
#	get_node("AnimatedSprite").rotation = dir.angle()
#	move_and_slide(move * velocitat * delta)
func _on_detector_area_entered(area):
	if area != self:
		vides -= 1
	
	if vides == 0:
		queue_free()

