extends Node2D
#

#var punts = 25
#
## Called when the node enters the scene tree for the first time.
func _ready():
	Global.punts = 0
	Global.max_punts = Global.llegeix_punts()
