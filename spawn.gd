extends Position2D


var radi = 200

func creazombie():
	var desplacament : Vector2 = Vector2(rand_range(0, radi), rand_range(0, radi))
	var escenazombie = preload ("res://enemic.tscn")
	var nouzombie = escenazombie.instance()
	nouzombie.global_position = self.global_position + desplacament
	Global.enemic.add_child(nouzombie)

func _on_Timer_timeout():
	creazombie()
