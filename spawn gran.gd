extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var escena_enemic_gran = preload("res://enemicgran.tscn")
	var nou_enemic = escena_enemic_gran.instance()
	var angle_atzar = rand_range(0,360)
	nou_enemic.global_position = Global.Personatge.global_position + (Vector2.RIGHT * 1000).rotated( deg2rad(angle_atzar))
	add_child(nou_enemic)
