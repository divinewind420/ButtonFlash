extends Node2D

@onready var klaxon: AudioStreamPlayer = $AudioStreamPlayer
var timerStart : float =  2.0
var timer : float = 0
var klaxonPlaying : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	klaxonPlaying = false
	timer = timerStart

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer -= delta
	if timer < 0:
		timer = timerStart
		#emit_signal("klaxonPlaying")
		klaxonPlaying = true
		SignalManager.klaxonPlaying.emit()
		PlaySound()
		klaxonPlaying = false

func PlaySound():
	klaxon.play()
	await klaxon.finished
	
