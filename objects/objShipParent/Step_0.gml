/// @description 
if(shipHealth <= 0){
	instance_destroy(); 	
}

if(horizSpeed != 0){
	
	var _xx = lerp(x, x + horizSpeed, room_speed * 1);
	var _yy = lerp(y, y + shipSpeed, room_speed * 1); 
	show_debug_message(_xx); 
	show_debug_message(_yy); 
	direction = point_direction(x, y, _xx, _yy) + 90; 
	image_angle = direction; 
}

y += shipSpeed; 

//General Screen Wrapping 
if(y > room_height + sprite_yoffset){
	instance_destroy(); 	
}
scrWrapping(); 