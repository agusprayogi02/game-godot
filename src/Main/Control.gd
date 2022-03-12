extends Control

var speed = 5;

func _ready():
	pass

#func _process(delta):
#	if (Input.is_action_pressed("ui_left")):
#		$Player.position.x -= speed
#		$Player/AnimatedSprite.speed_scale = speed
#		$Player/AnimatedSprite.play("run")
#		$Player/AnimatedSprite.flip_h = true
#	elif (Input.is_action_pressed("ui_right")):
#		$Player.position.x += speed
#		$Player/AnimatedSprite.speed_scale = speed
#		$Player/AnimatedSprite.play("run")
#		$Player/AnimatedSprite.flip_h = false
#	else:
#		$Player/AnimatedSprite.play("default")

func _input(event):
	if (Input.is_action_pressed("ui_left")):
		$Player.position.x -= speed
		$Player/AnimatedSprite.speed_scale = speed/2
		$Player/AnimatedSprite.play("run")
		$Player/AnimatedSprite.flip_h = true
	elif (Input.is_action_pressed("ui_right")):
		$Player.position.x += speed
		$Player/AnimatedSprite.play("run")
		$Player/AnimatedSprite.flip_h = false
	else:
		$Player/AnimatedSprite.play("default")
