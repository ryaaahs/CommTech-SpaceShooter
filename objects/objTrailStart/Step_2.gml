/// @description 
//Follow the player 
if(!instance_exists(objPlayer)){
	instance_destroy();	
}

if(instance_exists(objPlayer)){
	x = irandom_range(-2, 2) + lerp(x, objPlayer.x, 0.5); 
	y = irandom_range(-2, 2) + lerp(y, (objPlayer.y + sprite_yoffset * 2), 0.5); 
}