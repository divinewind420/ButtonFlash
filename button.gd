extends Button

@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalManager.connect("klaxonPlaying",FlashButton)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func FlashButton():
	animation_player.play("Flash")
	await animation_player.animation_finished
	pass
