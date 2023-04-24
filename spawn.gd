extends Position2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _physics_process(delta):
	creazombies()
func creazombies():
	var escenazombie = preload ("res://enemic.tscn")
	var nouzombie = escenazombie.instance()
	nouzombie.global_position = self.global_position
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
