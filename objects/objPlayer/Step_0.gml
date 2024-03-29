/// @description 
//Player Functionality  
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyShoot = keyboard_check(ord("K")); 
keyBomb = keyboard_check_pressed(ord("L")); 

if(global.invicibility){
	
	if(global.playerArmor > 0){
		sprite_index = sprPlayerNoHitArmor;	
	}else if(!global.invicibility){
		sprite_index = sprPlayerNoHit;	
	}
	
	if(invicAlarm > room_speed * 2){
		global.invicibility = false;
		if(global.playerArmor > 0){
			sprite_index = sprPlayerArmor;	
		}else{
			sprite_index = sprPlayer;	
		}
		image_speed = 0;
	}else{
		invicAlarm++; 
	}
}	


//Player Death 
if(death){
	if(wait < waitTimer){
		wait++	
	}else{
		audio_play_sound(sndExplosion, 75, false); 
		instance_create_layer(x + irandom_range(-25, 25), y + irandom_range(-25, 25), "Explosions", objExplosions);	
		bombTicks++; 
		wait = 0; 
	}
	if(bombTicks == 10){
		instance_destroy(); 
	}
	
}else{
	//Change sprite If the player as armor
	if(global.playerArmor > 0 && !global.invicibility){
		sprite_index = sprPlayerArmor;	
	}else if(!global.invicibility){
		sprite_index = sprPlayer;	
	}

	//Player Movement
	var lerpMovement = 0.8;
	if(keyUp){
		y = lerp(y, y - playerSpeed, lerpMovement);
	}
	if(keyDown){
		y = lerp(y, y + playerSpeed, lerpMovement);
	}
	if(keyLeft){
		x = lerp(x, x - playerSpeed, lerpMovement);
	}
	if(keyRight){
		x = lerp(x, x + playerSpeed, lerpMovement);
	}

	//Player Shooting 
	if(keyShoot){
		/*if(playerSpeed == 5){
			playerSpeed = playerSpeed / 2; 
		}*/
		//Different levels of Shooting 
		if(shootTimer >= shootAlarm){
			audio_play_sound(sndShoot, 50, false); 
			switch(shotLevel){
			case 1:
			scrShootLevelOne();
			break;
			case 2:
			scrShootLevelTwo();
			break;
			case 3:
			scrShootLevelThree();
			break;
		}
			shootTimer = 0; 
		}else{
			shootTimer++;	
		}
	}

	if(keyBomb && (global.currentBombs > 0)){
		global.flash = true;
		global.currentBombs--
		audio_play_sound(sndExplosion, 1, false)
		with(objShipBulletParent){
			instance_destroy(); 
		}
		with(objShipParent){
			shipHealth -= 0.5; 	
		
		}
	}
	y = clamp(y, 0 + sprite_yoffset, room_height - sprite_yoffset); 
	//Player wrapping 
	scrWrapping(); 

}