/// @description Collision with Ships
//Destroy both the player and the other ship

if(!death){
	if(global.playerArmor == 1){
		global.playerArmor--; 	
	}else{
		global.playerHealth -= 1; 
		death = true; 
	}

	flash = 1; 
	instance_destroy(other); 
}


