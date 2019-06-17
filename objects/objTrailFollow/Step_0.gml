/// @description 
//show_message("hello");
if(!instance_exists(objPlayer)){
	instance_destroy();	
}

if(instance_exists(follow)){
	x = irandom_range(-2, 2) + lerp(x, follow.x, movement); 
	y = irandom_range(-2, 2) + lerp(y, (follow.y + sprite_yoffset * 2), movement); 
}

if(idVal > 5){
	instance_destroy(); 	
}

