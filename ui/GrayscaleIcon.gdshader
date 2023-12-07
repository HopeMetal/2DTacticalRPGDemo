shader_type canvas_item;
uniform float color_factor : hint_range(0.0, 1.0, 1.0); 

void fragment() {
	vec4 sample = texture(TEXTURE, UV);
	float gray = 0.21 * sample.r + 0.71 * sample.g + 0.07 * sample.b;
	COLOR = vec4(sample.rgb * (1.0 - color_factor) + (gray * color_factor), sample.a);
}