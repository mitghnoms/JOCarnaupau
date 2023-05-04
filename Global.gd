extends Node


var bales
var enemic
var Spawns : Node2D
var LabelPunts : Label
var punts := 0 setget canvi_punts

func canvi_punts(nous_punts):
	punts = nous_punts
	LabelPunts.text = "Puntuació actual: " + str(punts)

