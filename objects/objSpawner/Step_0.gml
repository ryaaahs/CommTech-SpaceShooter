/// @description 
if(spawnTimer >= spawnAlarm){
	repeat(2){
		var _pick = irandom_range(0, 5); 
		show_debug_message(_pick);
		instance_create_layer(random_range(16, room_width-16), -8, "Instances", sl[_pick]);	
	}
	spawnTimer = 0; 
}else{
	spawnTimer++;	
}