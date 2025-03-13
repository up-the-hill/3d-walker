extends SubViewport


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var texture = get_texture()
	await RenderingServer.frame_post_draw
	
	var image = texture.get_image()
	image.save_png("res://heightmap.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
