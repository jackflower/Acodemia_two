extends KinematicBody2D

# 2018-11-15 acodemia.pl

var klatka = 0
var ilosc_klatek = 0

func _ready():
	ilosc_klatek = $Sprite.hframes * $Sprite.vframes
	$Sprite.frame = 0
	pass


func _on_Timer_timeout():
	# klatka = klatka + 1
	klatka += 1           
	
	if(klatka >= ilosc_klatek):
		klatka = 0
	$Sprite.frame = klatka
	
	#print ($Sprite.frame)
	
	pass
	