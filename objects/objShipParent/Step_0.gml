/// @description 
if(shipHealth <= 0){
	audio_play_sound(sndExplosion, 1, false); 
	instance_create_layer(x + irandom_range(-5, 5), y + irandom_range(-5, 5), "Instances", objExplosions); 	
	repeat(choose(3, 5)){
		audio_play_sound(sndExplosion, 1, false);
		instance_create_layer(x + irandom_range(-35, 35), y + irandom_range(-35, 35), "Instances", objExplosions); 	
	}
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