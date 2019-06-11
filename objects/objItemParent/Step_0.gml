/// @description 
y += vMovment;

//Destroy the instance off screen 
if(y >= room_height + sprite_yoffset){
	instance_destroy(); 	
}