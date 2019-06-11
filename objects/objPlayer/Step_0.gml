/// @description 
//Player Functionality  
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyShoot = keyboard_check(ord("K")); 
keyBomb = keyboard_check_pressed(ord("L")); 

show_debug_message(playerArmor); 
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

if(keyBomb){
	global.flash = true;
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