extends Node

func _ready():
    Dialogic.signal_event.connect(_on_dialogic_signal)
    Dialogic.start("timeline_2");

func _on_dialogic_signal(argument:String):
    pass