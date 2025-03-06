shader_type canvas_item;

uniform sampler2D noise;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 uv = (UV * 2.) - 1.0;
	float dist = length(uv);
	vec4 distance_map = vec4(vec3(dist), 1.);

	vec4 noise_texture = texture(noise, UV);

	//COLOR = noise_texture;
	COLOR = vec4(noise_texture.xyz - distance_map.xyz, 1);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
