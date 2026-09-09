extends Node2D

var max_health = 100
var current_health = 100
var potions_remaining = 3
var potion_strength = 40

func get_status():
	# HP: 100/100 | Potions: 3
	var hp = "HP: " + str(current_health) + "/" + str(max_health)
	var potions = "Potions: " + str(potions_remaining)
	return hp + " | " + potions

func take_damage(amount):
	current_health = clamp(current_health - amount, 0, max_health)

func drink_potion():
	# current_health = current_health + potion_strength
	current_health += potion_strength
	current_health = clamp(current_health, 0, max_health)
	# potions_remaining = potions_remaining - 1
	potions_remaining -= 1

func is_alive():
	return current_health > 0

func _ready():
	print(get_status())
	take_damage(70)
	print(get_status())
	drink_potion()
	print(get_status())
	drink_potion()
	print(get_status())
	drink_potion()
	print(get_status())
	take_damage(200)
	print(get_status())
	# Alive: true
	var alive = is_alive()
	print("Alive: " + str(alive))
