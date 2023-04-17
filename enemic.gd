extends KinematicBody2D

var speed = 50
var vides = 3
#var target = preload("res://Joc.tscn")
#func hostile(time):
#	var target = get_node("res://personatge.tscn")
#	#if target:
#	var velocity
##	var velocity = direction_to(target.global_position)
#	#position of player minus enemy position will give us direction
#	var dir = target.position - position
#	#get angle from direction (Note roation is in radians)  
#	get_node("AnimatedSprite").rotation = dir.angle()
#	velocity = move_and_slide(dir * speed * time)
#func _physics_process(delta):
#	var personatge = get_node("res://personatge.tscn")
	
func _on_hitbox_area_entered(area):
	if area != self:
		vides -= 1
	if vides == 0:
		queue_free()



func _on_detectorbox_body_entered(body):
	if body.is_in_group("personatge"):
		var move = position.direction_to(body.global_position)
		var dir = body.position - position
		get_node("AnimatedSprite").rotation = dir.angle()
		move_and_slide(move * speed)
