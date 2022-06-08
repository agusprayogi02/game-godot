extends KinematicBody2D

var lajuCepat = 400
var lajuNormal = 120
var laju = lajuNormal
var speed = Vector2.ZERO
var lajuLompat = -420
var grafitasi = 20

onready var sprite = $Sprite

func _physics_process(_delta):
	speed.y = speed.y + grafitasi
	
	if (Input.is_action_pressed("ui_right")):
		speed.x = laju
	if (Input.is_action_pressed("ui_left")):
		speed.x = -laju
	if (Input.is_action_pressed("lompat") and is_on_floor()):
		speed.y = lajuLompat
	
	if (Input.is_action_just_pressed("lari_cepat")):
		laju = lajuCepat
		$Timer.start()
		
	speed.x = lerp(speed.x, 0, 0.4)
	speed = move_and_slide(speed, Vector2.UP)
	update_animasi()

func update_animasi():
	if is_on_floor():
		if speed.x < (laju * 0.5) and speed.x > (-laju * 0.5):
			sprite.play("Diam")
		else:
			sprite.play("Lari")
	else:
		if speed.y > 0:
		# jatuh
			sprite.play("Jatuh")
		else:
		#lompat
			sprite.play("Lompat")
	sprite.flip_h = false
	if speed.x < 0:
		sprite.flip_h = true


func _on_Timer_timeout():
	laju = lajuNormal
