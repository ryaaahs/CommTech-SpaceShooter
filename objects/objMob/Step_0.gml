/// @description 
// Inherit the parent event
event_inherited();

if(instance_exists(objPlayer)){
	var playerX = objPlayer.x; 
	var playerY = objPlayer.y;
	direction = point_direction(x, y, playerX, playerY); 
	image_angle = direction + 90;
	//Enemy Shooting
	if(canFire > room_speed * 1.5){
		sprite_index = sprMobShoot;
		repeat(irandom_range(3,5)){
			if(shootTimer >= shootAlarm){
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 2; 
					direction = point_direction(x, y, playerX, playerY) + irandom_range(5, -5); 
					image_angle = direction; 
				}
			shootTimer = 0; 
			}else{
				shootTimer++;	
			}
		}
		//canFire = 0; 
	}else{
		sprite_index = sprMob;
		canFire++; 	
	}
}

if(y < 0 - sprite_height){
	instance_destroy(); 	
}





