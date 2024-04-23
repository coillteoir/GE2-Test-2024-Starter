@tool
extends Node3D

@export var length = 10
@export var frequency = 2
@export var start_angle = 0
@export var base_size = 1
@export var multiplier = 1

func _process(delta):
	var gizmo: EditorNode3DGizmo = null
	var cube: Mesh = null
	cube.size = Vector3(base_size, base_size, base_size)
	
	gizmo.add_mesh(cube, null, Transform3D(
		Basis(
			Vector3(0,0,1), 
			Vector3(0,0,0), 
			Vector3(0,0,0)
		),global_transform.origin))
	pass

func _ready():
	if not Engine.is_editor_hint():		
		pass
	
	



