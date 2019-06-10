/// @description 
//Set the Shader
draw_self(); 

if (flash > 0){
	
	flash -= 0.2; 
	
	shader_set(shdFlash); 
	//Blend mode creates a glow effect for the shader 
	gpu_set_blendmode(bm_add); 
	//Get the float uniform from inside the shader
	shdAlpha = shader_get_uniform(shdFlash, "_alpha"); 

	//Apply the new value to the shader 
	shader_set_uniform_f(shdAlpha, flash); 

	//Reset everything 
	draw_self(); 
	shader_reset();
	gpu_set_blendmode(bm_normal);
}
