//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float _alpha; 

void main() // <----- Oh main, this is not gamemaker... 
{
	// 132, 227, 255 Light Blue
	vec4 colour = texture2D( gm_BaseTexture, v_vTexcoord);
	if(colour.a != 0.0){
		gl_FragColor = vec4(132, 227, 255, _alpha);	
	}
}
