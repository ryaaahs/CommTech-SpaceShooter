/// @description 
//Take damage
audio_play_sound(sndHit, 1, false); 
shipHealth += -0.2; 
flash = 1; 

if(shipHealth <= 0){
	if(global.combo != 2.5){
		global.combo += 0.1;
	}	
}

with(other){
	instance_destroy(); 
}	