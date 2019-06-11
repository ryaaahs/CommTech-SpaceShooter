/// @description 
// Inherit the parent event
event_inherited();

if(instance_exists(objPlayer)){
	var playerX = objPlayer.x; 
	var playerY = objPlayer.y;
	direction = point_direction(x, y, playerX, playerY); 
	image_angle = direction + 90;
	//Enemy Shooting
	if(shootTimer >= shootAlarm){
		with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
			speed = 4; 
			direction = point_direction(x, y, playerX, playerY); 
			image_angle = direction; 
		}
	shootTimer = 0; 
	}else{
		shootTimer++;	
	}
}





