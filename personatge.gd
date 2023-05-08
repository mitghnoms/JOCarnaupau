extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func _ready():
	Global.Personatge = self

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()
	if Input.is_action_pressed("ves_avall"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("ves_amunt"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
	
	
	if Input.is_action_just_pressed("disparar"):
		dispara()

	
func dispara():
	var escena_bala = preload("res://bala.tscn")
	var nova_bala = escena_bala.instance()
	nova_bala.global_position = $Position2D.global_position
	nova_bala.direccio = global_position.direction_to(get_global_mouse_position())
	Global.bales.add_child(nova_bala)



func _on_Area2D_body_entered(body):
	if body.is_in_group("enemic"):
		$AnimatedSprite.play("mort")
		
