/// @description Collision with Ship Bullets

//When armor is added, do a check for that first then lives 
if(playerArmor > 0){
	playerArmor -= 1; 	
}else{
	global.playerHealth -= 1;
	flash = 1; 
	instance_destroy(); 
}

instance_destroy(other);	


