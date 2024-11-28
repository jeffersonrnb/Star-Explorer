extends Sprite2D

var image_names = ["_001.png", "_003.png", "_005.png", "_007.png"]
var turbo_status = ["Normal_flight", "Turbo_flight"]
var image_path = "res://assets/PNG_Animations/Exhaust/Ship3/"
var current_image = 0
var current_turbo = 0
var exhaust_path

func change_exhaust():
	exhaust_path = image_path + turbo_status[current_turbo] + "/Ship3_" + turbo_status[current_turbo] + image_names[current_image]
	texture = load(exhaust_path)
	current_image += 1
	current_image = current_image % 4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	change_exhaust()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("right"):
		current_turbo = 1
	else:
		current_turbo = 0
		
	change_exhaust()
