extends Node

@export var scene_loader: Resource

func _ready():
    Dialogic.signal_event.connect(_on_dialogic_signal)
    Dialogic.start("timeline_1");
	
func _on_dialogic_signal(argument:String):
    if argument == "load_second_scene":
        get_tree().change_scene_to_file("res://second_scene.tscn")