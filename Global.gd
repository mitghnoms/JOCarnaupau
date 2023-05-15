extends Node


var bales
var enemic
var Spawns : Node2D
var LabelPunts : Label
var LabelMaxPunts : Label
var punts := 0 setget canvi_punts
var max_punts := 0 setget canvi_max_punts
var Personatge : KinematicBody2D
const fitxer_dades = "user://dades.txt"

func canvi_punts(nous_punts):
	punts = nous_punts
	if punts > max_punts:
		self.max_punts = punts
		desa_punts(max_punts)
	LabelPunts.text = str(punts)

func canvi_max_punts(nous_max_punts):
	max_punts = nous_max_punts
	LabelMaxPunts.text = str(max_punts)

func desa_punts(p):
	var fitxer = File.new()
	fitxer.open(fitxer_dades, File.WRITE)
	fitxer.store_string(var2str(p))
	fitxer.close()


func llegeix_punts():
	var fitxer = File.new()
	var error = fitxer.open(fitxer_dades, File.READ)
	if error == 0:
		var max_punts = str2var(fitxer.get_as_text())
		fitxer.close()
	else:
		max_punts = 0
	return max_punts

