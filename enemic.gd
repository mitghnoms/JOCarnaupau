extends KinematicBody2D

var moviment = Vector2()
var s = 150
var vides = 3
onready var personatge = get_tree().get_root().get_node("Joc/personatge")
func _process(delta):
	moviment = position.direction_to(personatge.global_position)
	var dir = personatge.position - position
	get_node("AnimatedSprite").rotation = dir.angle()
	moviment = move_and_slide(moviment * s)

func _on_hitbox_area_entered(area:Area2D):
	if area.is_in_group("bales"):
		vides -= 1
		if vides <= 0:
			var nombre_spawns = Global.Spawns.get_child_count()
			for i in range(2):
				Global.Spawns.get_child(randi() % nombre_spawns).creazombie()
			Global.punts += 1
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
			
			
			
