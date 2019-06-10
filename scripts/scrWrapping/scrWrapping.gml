/// scrWrapping();

//Wraps the Object throughout the room 

//x
if(x >= room_width + sprite_xoffset){
	x = 0 - (sprite_xoffset / 2);	
}else if(x <= 0 - sprite_xoffset){
	x = room_width + (sprite_xoffset / 2);
}



