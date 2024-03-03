extends CanvasLayer

var coins = 0

func _ready():
	$coinsColletedText.text = str(coins)
	

func handlecoincollected():
	print("¡Moneda recogida!")
	coins+= 1
	$coinsColletedText.text = str(coins)
