extends Node


var bales
var enemic
var Spawns : Node2D
var LabelPunts : Label
var punts := 0 setget canvi_punts
var Personatge : KinematicBody2D

func canvi_punts(nous_punts):
	punts = nous_punts
	LabelPunts.text = str(punts)

