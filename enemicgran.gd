extends KinematicBody2D

var moviment = Vector2()
var s = 100
var vides = 50
onready var personatge = get_tree().get_root().get_node("Joc/personatge")
func _process(delta):
	var dir = global_position.direction_to(personatge.global_position)

	$AnimatedSprite.rotation = dir.angle() + deg2rad(90)
	moviment = move_and_slide(dir * s)

func _on_hitbox_area_entered(area:Area2D):
	if area.is_in_group("bales"):
		vides -= 1
		if vides <= 0:
			Global.punts += 100
			queue_free()
