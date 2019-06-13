/// @description Collision with Ship Bullets

//When armor is added, do a check for that first then lives 

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

