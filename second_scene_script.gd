extends Node

var started_dialogue := false

func _ready():
    Dialogic.signal_event.connect(_on_dialogic_signal)

func _process(delta):
    if !started_dialogue:
        started_dialogue = true
        Dialogic.start("timeline_2")

func _on_dialogic_signal(argument:String):
    pass