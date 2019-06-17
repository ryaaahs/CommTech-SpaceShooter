/// @description Collision with Ship Bullets

//When armor is added, do a check for that first then lives 
if(!global.invicibility){
	if(!death){
		if(global.playerArmor == 1){
			audio_play_sound(sndHit, 1, false); 
			global.playerArmor--; 	
		}else{
			audio_play_sound(sndHit, 1, false); 
			global.playerHealth -= 1; 
			death = true; 
		}
		
		instance_destroy(other); 
	}
}

