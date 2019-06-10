/// @description 
if(shipHealth <= 0){
	instance_destroy(); 	
}

y += shipSpeed; 

//General Screen Wrapping 
if(y > room_height + sprite_yoffset){
	instance_destroy(); 	
}
scrWrapping(); 