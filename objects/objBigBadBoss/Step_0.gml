/// @description 
// Inherit the parent event
event_inherited();
if(shipHealth < 25){
	quick = 2;  
	if(wait < waitTimer / quick){
		wait++	
	}else{
		audio_play_sound(sndExplosion, 1, false); 
		instance_create_layer(x + irandom_range(-25, 25), y + irandom_range(-25, 25), "Explosions", objExplosions);	
		bombTicks++; 
		wait = 0; 
	}
}




if(y >= room_height / 8){
	shipSpeed = 0 ;
	if(state == 1){
		if(instance_exists(objPlayer)){
			var playerX = objPlayer.x; 
			var playerY = objPlayer.y;
			direction = point_direction(x, y, playerX, playerY); 
			image_angle = direction + 90;
			//Enemy Shooting
	
			if(shootTimer >= (shootAlarm / 4) / quick){
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					direction = point_direction(x, y, playerX, playerY); 
					image_angle = direction; 
				}
			shootTimer = 0; 
			shotAmount++
			}else{
				shootTimer++;	
			}
		
			if(shotAmount >= 15){
				state = choose(2, 2, 2, 3, 3, 4);
				shotAmount = 0; 
				shootTimer = 0;
			}
		}
	}

	if(state == 2){
	
	
		var val = choose(270, 230, 240, 250, 260, 300); 
		if(shootTimer > (room_speed / 3) / quick){
		
		
			for(var i = 0; i < 15; i++){
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
						speed = 2; 
						direction = val + i;   
						image_angle = direction; 
				}	
				direction = val + i; 
				image_angle = direction + 90; 
			}
		
			shotAmount++; 
			shootTimer = 0;
		}else{
			shootTimer++; 	
		}
		 
		
		if(shotAmount >= 15){
			state = choose(1, 1, 3, 3, 4, 4); 
			shotAmount = 0; 
			shootTimer = 0;
		}
	}
	
	if(state == 3){
		image_angle = 0; 
		if(shootTimer > (room_speed ) / quick){
			repeat(irandom_range(6, 10)){
				instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", objShipRunner);	
			}	
			state = choose(4, 4, 4, 4, 2, 2, 1, 1);  
			shotAmount = 0; 
			shootTimer = 0;
		}else{
			shootTimer++
		}
		
	}
	
	if(state == 4){
		if(instance_exists(objPlayer)){
			var playerX = objPlayer.x; 
			var playerY = objPlayer.y;
			direction = point_direction(x, y, playerX, playerY); 
			image_angle = direction + 90;
			//Enemy Shooting
	
			if(shootTimer >= (shootAlarm / 2) / quick){
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					var _xx = lerp(x, x + speed, room_speed * 1);
					var _yy = lerp(y, y + speed, room_speed * 1); 
					direction = point_direction(x, y, _xx, _yy); 
					image_angle = direction; 
				}
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					var _xx = lerp(x, x + speed, room_speed * 1);
					var _yy = lerp(y, y + speed, room_speed * 1); 
					direction = point_direction(x, y, _xx, _yy) - 90; 
					image_angle = direction; 
				}
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					var _xx = lerp(x, x + speed, room_speed * 1);
					var _yy = lerp(y, y + speed, room_speed * 1); 
					direction = point_direction(x, y, _xx, _yy) - 75;
					image_angle = direction; 
				}
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					var _xx = lerp(x, x + speed, room_speed * 1);
					var _yy = lerp(y, y + speed, room_speed * 1); 
					direction = point_direction(x, y, _xx, _yy)  - 15;
					image_angle = direction; 
				}
				with(instance_create_layer(x, y,"Instances" ,objShipBullet)){
					speed = 4; 
					direction = point_direction(x, y, playerX, playerY); 
					image_angle = direction; 
				}
			shootTimer = 0; 
			shotAmount++
			}else{
				shootTimer++;	
			}
		
			if(shotAmount >= 8){
				state = choose(1, 1, 2, 2, 3, 4); 
				shotAmount = 0; 
				shootTimer = 0;
			}
		}
	}
}
	
	








