extends Node2D

func _ready():
	make_pancakes()
	print_greeting()
	print_farewell()

func print_greeting():
	print("hello, Nicolas")

func print_farewell():
	print("goodbye!")

func make_batter():
	print("Hello, world!")

func make_pancakes():
	make_batter()
	
