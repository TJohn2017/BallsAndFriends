# This script controls the movement of the player sprite.
extends KinematicBody2D

# Constant movement variables
const MOVEMENT_SPEED = 500
# The vector containing the body's movement data.
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = MOVEMENT_SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -MOVEMENT_SPEED
	else:
		motion.x = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -MOVEMENT_SPEED
	elif Input.is_action_pressed("ui_down"):
		motion.y = MOVEMENT_SPEED
	else:
		motion.y = 0
	move_and_slide(motion)