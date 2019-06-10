/// @description 
if(spawnTimer >= spawnAlarm){
	instance_create_layer(random_range(16, room_width-16), -8, "Instances", objShipRunner);
	instance_create_layer(random_range(16, room_width-16), -8, "Instances", objShipShooter);
	spawnTimer = 0; 
}else{
	spawnTimer++;	
}